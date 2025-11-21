defmodule AWS.ClientTest do
  use ExUnit.Case, async: true

  setup do
    %{client: %AWS.Client{}}
  end

  describe "decode!/3" do
    test "parses valid json", %{client: client} do
      assert AWS.Client.decode!(client, "{\"body\":\"content\"}", :json) == %{"body" => "content"}
    end

    test "parses valid xml", %{client: client} do
      assert AWS.Client.decode!(client, "<body>content</body>", :xml) == %{"body" => "content"}
    end
  end

  describe "encode!/3" do
    test "encodes into json", %{client: client} do
      assert AWS.Client.encode!(client, %{"body" => "content"}, :json) == "{\"body\":\"content\"}"
    end

    test "encodes into xml", %{client: client} do
      assert AWS.Client.encode!(client, %{"body" => "content"}, :xml) == "<body>content</body>"
    end

    test "encodes into query", %{client: client} do
      assert AWS.Client.encode!(client, %{"q1" => "v1", "q2" => "v2"}, :query) == "q1=v1&q2=v2"
    end
  end

  describe "request/6" do
    setup do
      bypass = Bypass.open()
      {:ok, bypass: bypass}
    end

    test "sends a POST request to HTTP server", %{client: client, bypass: bypass} do
      headers = [{"authorization", "Bearer 123"}, {"content-type", "application/json"}]
      expected_body = "{\"data\": \"ok\"}"

      Bypass.expect_once(bypass, "POST", "/publish", fn conn ->
        assert true == Enum.all?(headers, fn header -> Enum.member?(conn.req_headers, header) end)
        Plug.Conn.resp(conn, 200, expected_body)
      end)

      result = AWS.Client.request(client, :post, "#{url(bypass)}/publish", "", headers)
      assert {:ok, %{status_code: 200, body: ^expected_body}} = result
    end

    test "sends a HEAD request to HTTP server", %{client: client, bypass: bypass} do
      headers = [{"authorization", "Bearer 123"}, {"content-type", "application/json"}]

      Bypass.expect_once(bypass, "HEAD", "/head_object", fn conn ->
        assert true == Enum.all?(headers, fn header -> Enum.member?(conn.req_headers, header) end)
        Plug.Conn.resp(conn, 200, "")
      end)

      result = AWS.Client.request(client, :head, "#{url(bypass)}/head_object", "", headers)
      assert {:ok, %{status_code: 200, body: ""}} = result
    end

    test "overrides config request options with call options", %{client: client, bypass: bypass} do
      Bypass.expect_once(bypass, "GET", "/timeout", fn conn ->
        :timer.sleep(200)
        Plug.Conn.resp(conn, 200, "")
      end)

      result =
        AWS.Client.request(client, :get, "#{url(bypass)}/timeout", "", [], recv_timeout: 10)

      assert {:error, :timeout} = result

      # Bypass should not assert on the request having been completed.
      Bypass.pass(bypass)
    end

    test "retries failed requests", %{client: client, bypass: bypass} do
      # Setup a Counter
      counter = :counters.new(1, [:atomics])

      Bypass.expect(bypass, "GET", "/timeout", fn conn ->
        # Increase counter
        :counters.add(counter, 1, 1)
        # Return 500 so we force a retry from AWS.Client
        Plug.Conn.resp(conn, 500, "")
      end)

      assert {:ok, %{status_code: 500}} =
               AWS.Client.request(client, :get, "#{url(bypass)}timeout", "", [],
                 # Enable retries
                 enable_retries?: true
               )

      # Assert 1 request + 10 (default max_retries value) retries was made
      assert :counters.get(counter, 1) == 1 + 10
    end

    test "retries failed requests with retry_opts", %{client: client, bypass: bypass} do
      # Setup a Counter
      counter = :counters.new(1, [:atomics])

      Bypass.expect(bypass, "GET", "/timeout", fn conn ->
        # Increase counter
        :counters.add(counter, 1, 1)
        # Return 500 so we force a retry from AWS.Client
        Plug.Conn.resp(conn, 500, "")
      end)

      max_retries = 2

      assert {:ok, %{status_code: 500}} =
               AWS.Client.request(client, :get, "#{url(bypass)}timeout", "", [],
                 # Enable retries
                 enable_retries?: true,
                 # Set retry  options
                 retry_opts: [max_retries: max_retries, base_sleep_time: 10, cap_sleep_time: 1000]
               )

      # Assert 1st request + N retries was made
      assert :counters.get(counter, 1) == 1 + max_retries
    end
  end

  describe "create/n" do
    setup :prune_envs

    test "create/0 reads region from AWS_DEFAULT_REGION and builds client" do
      System.put_env("AWS_ACCESS_KEY_ID", "AK")
      System.put_env("AWS_SECRET_ACCESS_KEY", "SK")
      System.put_env("AWS_DEFAULT_REGION", "us-east-1")

      client = AWS.Client.create()

      assert %AWS.Client{
               access_key_id: "AK",
               secret_access_key: "SK",
               session_token: nil,
               region: "us-east-1",
               endpoint: nil
             } == client
    end

    test "create/0 raises when AWS_DEFAULT_REGION missing" do
      System.put_env("AWS_ACCESS_KEY_ID", "AK")
      System.put_env("AWS_SECRET_ACCESS_KEY", "SK")

      assert_raise RuntimeError, "missing default region", fn ->
        AWS.Client.create()
      end
    end

    test "create/1 reads credentials, token and endpoint from env" do
      System.put_env("AWS_ACCESS_KEY_ID", "AK")
      System.put_env("AWS_SECRET_ACCESS_KEY", "SK")
      System.put_env("AWS_SESSION_TOKEN", "TOK")
      System.put_env("AWS_ENDPOINT", "example.com")

      client = AWS.Client.create("us-west-2")

      assert %AWS.Client{
               access_key_id: "AK",
               secret_access_key: "SK",
               session_token: "TOK",
               region: "us-west-2",
               endpoint: "example.com"
             } == client
    end

    test "create/1 without token uses nil and endpoint from env" do
      System.put_env("AWS_ACCESS_KEY_ID", "AK")
      System.put_env("AWS_SECRET_ACCESS_KEY", "SK")
      System.put_env("AWS_ENDPOINT", "example.com")

      client = AWS.Client.create("eu-west-1")

      assert %AWS.Client{
               access_key_id: "AK",
               secret_access_key: "SK",
               session_token: nil,
               region: "eu-west-1",
               endpoint: "example.com"
             } == client
    end

    test "create/1 raises when access key is missing" do
      System.put_env("AWS_SECRET_ACCESS_KEY", "SK")

      assert_raise RuntimeError, "missing access key id", fn ->
        AWS.Client.create("us-east-2")
      end
    end

    test "create/1 raises when secret access key is missing" do
      System.put_env("AWS_ACCESS_KEY_ID", "AK")

      assert_raise RuntimeError, "missing secret access key", fn ->
        AWS.Client.create("us-east-2")
      end
    end

    test "create/3 sets fields without token or endpoint" do
      client = AWS.Client.create("AK", "SK", "eu-north-1")

      assert %AWS.Client{
               access_key_id: "AK",
               secret_access_key: "SK",
               session_token: nil,
               region: "eu-north-1",
               endpoint: nil
             } == client
    end

    test "create/4 sets token and leaves endpoint nil" do
      client = AWS.Client.create("AK", "SK", "TOKEN", "ap-south-1")

      assert %AWS.Client{
               access_key_id: "AK",
               secret_access_key: "SK",
               session_token: "TOKEN",
               region: "ap-south-1",
               endpoint: nil
             } == client
    end

    test "create/5 sets token and endpoint" do
      client = AWS.Client.create("AK", "SK", "TOKEN", "sa-east-1", "custom.local")

      assert %AWS.Client{
               access_key_id: "AK",
               secret_access_key: "SK",
               session_token: "TOKEN",
               region: "sa-east-1",
               endpoint: "custom.local"
             } == client
    end

    test "create/3 equals create/5 with nil token and endpoint" do
      c3 = AWS.Client.create("AK", "SK", "us-east-1")
      c5 = AWS.Client.create("AK", "SK", nil, "us-east-1", nil)
      assert c3 == c5
    end
  end

  defp prune_envs(_context) do
    keys =
      [
        "AWS_ACCESS_KEY_ID",
        "AWS_SECRET_ACCESS_KEY",
        "AWS_SESSION_TOKEN",
        "AWS_ENDPOINT",
        "AWS_DEFAULT_REGION"
      ]

    on_exit(fn -> Enum.each(keys, &System.delete_env/1) end)

    :ok
  end

  defp url(bypass), do: "http://localhost:#{bypass.port}/"
end
