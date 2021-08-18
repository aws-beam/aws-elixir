defmodule AWS.SignatureTest do
  use ExUnit.Case, async: true

  alias AWS.Client
  alias AWS.Signature

  describe "sign_v4/6" do
    test "sets default region when service is global" do
      client = %Client{
        access_key_id: "access-key-id",
        secret_access_key: "secret-access-key",
        region: nil,
        service: "mturk-requester"
      }

      now = ~N[2015-05-14 16:50:05]
      method = "GET"
      url = "https://mturk-requester.us-east-1.amazonaws.com/"
      headers = [{"Host", "mturk-requester.us-east-1.amazonaws.com"}, {"Header", "Value"}]
      actual = Signature.sign_v4(client, now, method, url, headers, "")

      expected = [
        {"Authorization",
         "AWS4-HMAC-SHA256 Credential=access-key-id/20150514/us-east-1/mturk-requester/aws4_request,SignedHeaders=header;host;x-amz-content-sha256;x-amz-date,Signature=6439abf51dc410707084e0bba5d973f15cd09005776f099b7e68557a8fc99143"},
        {"X-Amz-Content-SHA256",
         "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"},
        {"X-Amz-Date", "20150514T165005Z"},
        {"Host", "mturk-requester.us-east-1.amazonaws.com"},
        {"Header", "Value"}
      ]

      assert expected == actual
    end

    test "adds X-Amz-Security-Token header when client has a session token" do
      client = %Client{
        access_key_id: "access-key-id",
        secret_access_key: "secret-access-key",
        session_token: "session-token",
        region: "us-west-2",
        service: "kms"
      }

      now = DateTime.utc_now()
      method = "POST"

      url = "https://kms.us-west-2.amazonaws.com/"
      headers = [{"Host", "kms.us-west-2.amazonaws.com"}]

      signed_headers = Signature.sign_v4(client, now, method, url, headers, "")
      security_token = :proplists.get_value("X-Amz-Security-Token", signed_headers)

      assert security_token == "session-token"

      authorization = :proplists.get_value("Authorization", signed_headers)

      assert authorization =~ "x-amz-security-token"
    end
  end

  test "sign_options/1" do
    client = %Client{service: "kms"}

    assert Signature.sign_options(client) == []

    s3_client = %{client | service: "s3"}

    assert Signature.sign_options(s3_client) == [uri_encode_path: false]
  end
end
