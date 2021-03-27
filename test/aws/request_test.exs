defmodule AWS.RequestTest do
  use ExUnit.Case, async: true

  alias AWS.Client
  alias AWS.Request

  test "sign_v4 extracts credentials, service and region information from a Client map, generates an AWS signature version 4 for a request, and returns a new set of HTTP headers with Authorization and X-Aws-Date headers" do
    client = %Client{
      access_key_id: "access-key-id",
      secret_access_key: "secret-access-key",
      region: "us-east-1",
      service: "ec2"
    }

    now = ~N[2015-05-14 16:50:05]
    method = "GET"
    url = "https://ec2.us-east-1.amazonaws.com?Action=DescribeInstances&Version=2014-10-01"
    headers = [{"Host", "ec2.us-east-1.amazonaws.com"}, {"Header", "Value"}]
    actual = Request.sign_v4(client, now, method, url, headers, "")

    expected = [
      {"Authorization",
       "AWS4-HMAC-SHA256 Credential=access-key-id/20150514/us-east-1/ec2/aws4_request, SignedHeaders=header;host;x-amz-content-sha256;x-amz-date, Signature=0d8cc4ca3b83dbd62a9b1870d04005dc03ab2fc5f6d1398513e197c04f5cbb53"},
      {"X-Amz-Content-SHA256",
       "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"},
      {"X-Amz-Date", "20150514T165005Z"},
      {"Host", "ec2.us-east-1.amazonaws.com"},
      {"Header", "Value"}
    ]

    assert expected == actual
  end

  test "sign_v4_query returns a map with header/value pairs suitable for use in a query string" do
    client = %Client{
      access_key_id: "access-key-id",
      secret_access_key: "secret-access-key",
      region: "us-east-1",
      service: "ec2"
    }

    now = ~N[2015-05-14 16:50:05]
    method = "GET"
    url = "https://s3.us-east-1.amazonaws.com/bucket"
    headers = [{"Host", "ec2.us-east-1.amazonaws.com"}, {"X-Amz-Expires", "86400"}]
    actual = Request.sign_v4_query(client, now, method, url, headers, "")

    expected = [
      {"X-Amz-Expires", "86400"},
      {"X-Amz-Algorithm", "AWS4-HMAC-SHA256"},
      {"X-Amz-Credential", "access-key-id/20150514/us-east-1/ec2/aws4_request"},
      {"X-Amz-Date", "20150514T165005Z"},
      {"X-Amz-SignedHeaders", "host;x-amz-date;x-amz-expires"},
      {"X-Amz-Signature", "c16e00732fa6c75a2b4d88a5980e2050af10be730e98a9b5e0352f331c292874"}
    ]

    assert expected == actual
  end

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

      assert url == "https://mobileanalytics.us-east1.amazonaws.com:443/foo/bar"
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

defmodule AWS.Request.InternalTest do
  use ExUnit.Case
  alias AWS.Request.Internal

  test "add_authorization_header/2 add an Authorization header to a list of HTTP headers" do
    expected = [{"Authorization", "AWS4-HMAX-SHA256"}, {"Host", "example.com"}]

    assert expected ==
             Internal.add_authorization_header(
               [{"Host", "example.com"}],
               "AWS4-HMAX-SHA256"
             )
  end

  test "add_date_header/2 adds an X-Amz-Date header to a list of HTTP headers" do
    expected = [{"X-Amz-Date", "20150326T221217Z"}, {"Host", "example.com"}]

    assert expected ==
             Internal.add_date_header(
               [{"Host", "example.com"}],
               "20150326T221217Z"
             )
  end

  test "canonical_header/1 lowercases and colon-joins a header name and value and adds a trailing newline" do
    expected = "host:example.com\n"
    assert expected == Internal.canonical_header({"host", "example.com"})
  end

  test "canonical_header/1 strips leading and trailing whitespace from the header name and value" do
    expected = "host:example.com\n"
    assert expected == Internal.canonical_header({" host ", " example.com "})
  end

  test "canonical_headers/1 returns a newline-delimited list of trimmed and lowecase headers, sorted in alphabetical order, and with a trailing newline" do
    expected = "host:example.com\nx-amz-date:20150325T105958Z\n"

    assert expected ==
             Internal.canonical_headers([
               {"X-Amz-Date", "20150325T105958Z"},
               {"Host", "example.com"}
             ])
  end

  test "canonical_request/4 converts an HTTP method, URL, headers and body into a canonical request for AWS signature version 4" do
    expected =
      Enum.join(
        [
          "GET",
          "/",
          "",
          "host:example.com",
          "x-amz-date:20150325T105958Z",
          "",
          "host;x-amz-date",
          "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
        ],
        "\n"
      )

    actual =
      Internal.canonical_request(
        "GET",
        "https://example.com/",
        [{"Host", "example.com"}, {"X-Amz-Date", "20150325T105958Z"}],
        ""
      )

    assert expected == actual
  end

  test "canonical_request/4 converts an HTTP method, represented as an atom, into a string before generating a canonical request for AWS signature version 4" do
    expected =
      Enum.join(
        [
          "GET",
          "/",
          "",
          "host:example.com",
          "x-amz-date:20150325T105958Z",
          "",
          "host;x-amz-date",
          "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
        ],
        "\n"
      )

    actual =
      Internal.canonical_request(
        :get,
        "https://example.com/",
        [{"Host", "example.com"}, {"X-Amz-Date", "20150325T105958Z"}],
        ""
      )

    assert expected == actual
  end

  test "credential_scope/3 combines a short date, region and service name and signature identifier into a slash-joined binary value" do
    expected = "20150325/us-east-1/iam/aws4_request"
    assert expected == Internal.credential_scope("20150325", "us-east-1", "iam")
  end

  test "signed_header/1 lowercases the header name" do
    assert "host" = Internal.signed_header({"Host", "example.com"})
  end

  test "signed_header/1 lowercases and strips leading and trailing whitespace from the header name" do
    assert "host" = Internal.signed_header({" Host ", "example.com"})
  end

  test "signed_headers/1 lowercases and semicolon-joins header names in alphabetic order" do
    expected = "header;host;x-amz-date"

    actual =
      Internal.signed_headers([
        {"X-Amz-Date", "20150325T105958Z"},
        {"Host", "example.com"},
        {"Header", "Value"}
      ])

    assert expected == actual
  end

  test "signing_key/4 creates a signing key from a secret access key, short date, region identifier and service identifier" do
    expected =
      <<108, 238, 174, 127, 62, 29, 151, 251, 60, 200, 152, 110, 95, 108, 195, 104, 208, 222, 84,
        216, 129, 34, 102, 127, 208, 93, 22, 61, 71, 54, 199, 206>>

    assert expected == Internal.signing_key("secret-access-key", "20150326", "us-east-1", "s3")
  end

  test "split_url/1 transforms a URL into {path, normalized_query_string}" do
    expected = {"/index", "none=&one=1&two=2"}
    actual = Internal.split_url("https://example.com/index?two=2&none&one=1")
    assert expected == actual
  end

  test "split_url/1 returns an empty binary if no query string is present" do
    assert {"/index", ""} = Internal.split_url("https://example.com/index?")
  end

  test "string_to_sign/3 combines a long date, credential scope and hash canonical request into a binary value that's ready to sign" do
    long_date = "20150326T202136Z"
    credential_scope = Internal.credential_scope("20150325", "us-east-1", "iam")

    canonical_request =
      Internal.canonical_request(
        "GET",
        "https://example.com",
        [{"Host", "example.com"}, {"X-Amz-Date", "20150325T105958Z"}],
        ""
      )

    hashed_canonical_request = AWS.Util.sha256_hexdigest(canonical_request)

    expected =
      Enum.join(
        ["AWS4-HMAC-SHA256", long_date, credential_scope, hashed_canonical_request],
        "\n"
      )

    assert expected ==
             Internal.string_to_sign(long_date, credential_scope, hashed_canonical_request)
  end
end
