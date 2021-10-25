defmodule AWS.RequestTest do
  use ExUnit.Case, async: true

  alias AWS.Client
  alias AWS.Request

  describe "request_rest/9" do
    defmodule TestClient do
      @behaviour AWS.HTTPClient

      @impl true
      def request(method, url, body, headers, options) do
        send(self(), {:request, method, url, body, headers, options})

        {status, _opts} = Keyword.pop(options, :return_status_code, 200)

        {:ok, %{status_code: status, headers: [], body: "{\"Response\":\"foo\"}"}}
      end
    end

    setup do
      client =
        Client.create("access-key-id", "secret-access-key", "us-east1")
        |> Map.put(:http_client, {TestClient, []})

      metadata = %AWS.ServiceMetadata{
        api_version: "2014-06-05",
        content_type: "application/x-amz-json-1.1",
        endpoint_prefix: "mobileanalytics",
        global?: false,
        protocol: "rest-json",
        signature_version: "v4",
        signing_name: "mobileanalytics"
      }

      [client: client, metadata: metadata]
    end

    test "send get request with params", %{client: client, metadata: metadata} do
      assert {:ok, _response, _http_response} =
               Request.request_rest(
                 client,
                 metadata,
                 :get,
                 "/foo/bar",
                 [{"q", "x&y="}, {"size", 5}],
                 [],
                 nil,
                 [],
                 nil
               )

      assert_receive {:request, :get, url, body, _headers, _options}

      assert body == ""

      assert url == "https://mobileanalytics.us-east1.amazonaws.com/foo/bar?q=x%26y%3D&size=5"

      assert {:ok, _response, _http_response} =
               Request.request_rest(
                 client,
                 metadata,
                 :get,
                 "/foo/bar?format=sdk&pretty=true",
                 [{"q", "x&y="}, {"size", 5}],
                 [],
                 nil,
                 [],
                 nil
               )

      assert_receive {:request, :get, url, body, _headers, _options}

      assert body == ""

      assert url ==
               "https://mobileanalytics.us-east1.amazonaws.com/foo/bar?format=sdk&pretty=true&q=x%26y%3D&size=5"
    end

    test "send post request", %{client: client, metadata: metadata} do
      assert {:ok, response, http_response} =
               Request.request_rest(
                 client,
                 metadata,
                 :post,
                 "/foo/bar",
                 [],
                 [],
                 %{"Body" => "data"},
                 [],
                 200
               )

      assert response == %{"Response" => "foo"}
      assert http_response == %{body: "{\"Response\":\"foo\"}", headers: [], status_code: 200}

      assert_receive {:request, :post, url, body, headers, options}

      assert url == "https://mobileanalytics.us-east1.amazonaws.com/foo/bar"
      assert body == "{\"Body\":\"data\"}"

      header_names = Enum.map(headers, fn {header_name, _} -> header_name end)

      assert Enum.sort(header_names) == [
               "Authorization",
               "Content-Type",
               "Host",
               "X-Amz-Content-SHA256",
               "X-Amz-Date"
             ]

      assert List.keyfind(headers, "Content-Type", 0) ==
               {"Content-Type", "application/x-amz-json-1.1"}

      assert List.keyfind(headers, "Host", 0) ==
               {"Host", "mobileanalytics.us-east1.amazonaws.com"}

      assert options == []
    end

    test "send post request with body as binary/payload", %{client: client, metadata: metadata} do
      assert {:ok, response, _http_response} =
               Request.request_rest(
                 client,
                 metadata,
                 :post,
                 "/foo/bar",
                 [],
                 [],
                 %{"Body" => "data"},
                 [send_body_as_binary?: true],
                 200
               )

      assert response == %{"Response" => "foo"}
      assert_receive {:request, :post, _url, body, _headers, options}

      assert body == "data"

      assert options == []
    end

    test "do not decode response when it is a binary", %{client: client, metadata: metadata} do
      assert {:ok, response, _http_response} =
               Request.request_rest(
                 client,
                 metadata,
                 :post,
                 "/foo/bar",
                 [],
                 [],
                 %{"Body" => "data"},
                 [receive_body_as_binary?: true],
                 200
               )

      assert response == %{"Body" => "{\"Response\":\"foo\"}"}
      assert_receive {:request, :post, _url, _body, _headers, options}

      assert options == []
    end

    test "accept success code other than 200", %{client: client, metadata: metadata} do
      {http_client, _opts} = client.http_client
      client = %{client | http_client: {http_client, [return_status_code: 206]}}

      assert {:ok, response, http_response} =
               Request.request_rest(
                 client,
                 metadata,
                 :post,
                 "/foo/bar",
                 [],
                 [],
                 %{"Body" => "data"},
                 [],
                 nil
               )

      assert response == %{"Response" => "foo"}
      assert http_response == %{body: "{\"Response\":\"foo\"}", headers: [], status_code: 206}

      assert {:ok, _response, _http_response} =
               Request.request_rest(
                 client,
                 metadata,
                 :post,
                 "/foo/bar",
                 [],
                 [],
                 %{"Body" => "data"},
                 [],
                 206
               )

      # Does not accept only if explicitly tells the expected code.
      assert {:error, error} =
               Request.request_rest(
                 client,
                 metadata,
                 :post,
                 "/foo/bar",
                 [],
                 [],
                 %{"Body" => "data"},
                 [],
                 200
               )

      assert {:unexpected_response,
              %{body: "{\"Response\":\"foo\"}", headers: [], status_code: 206}} = error
    end
  end
end
