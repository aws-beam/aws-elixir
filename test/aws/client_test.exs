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
  end

  defp url(bypass), do: "http://localhost:#{bypass.port}/"
end
