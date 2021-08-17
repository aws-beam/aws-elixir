defmodule AWS.SignatureTest do
  use ExUnit.Case, async: true

  alias AWS.Client
  alias AWS.Signature

  test "sign_v4/6 sets default region when service is global" do
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
end
