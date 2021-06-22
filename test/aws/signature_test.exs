defmodule AWS.SignatureTest do
  use ExUnit.Case, async: true

  alias AWS.Client
  alias AWS.Signature

  test "sign_v4/6 generates an AWS signature version 4 for a request in a list of headers" do
    client = %Client{
      access_key_id: "access-key-id",
      secret_access_key: "secret-access-key",
      region: "us-east-1",
      service: "ec2"
    }

    now = ~N[2015-05-14 16:50:05]
    method = "GET"
    url = "https://ec2.us-east-1.amazonaws.com/?Action=DescribeInstances&Version=2014-10-01"
    headers = [{"Host", "ec2.us-east-1.amazonaws.com"}, {"Header", "Value"}]
    actual = Signature.sign_v4(client, now, method, url, headers, "")

    expected = [
      {"Authorization",
       "AWS4-HMAC-SHA256 Credential=access-key-id/20150514/us-east-1/ec2/aws4_request, SignedHeaders=header;host;x-amz-content-sha256;x-amz-date, Signature=595529f9989556c9ce375ddec1b3e63f9d551fe063738b45909c28b25a34a6cb"},
      {"X-Amz-Content-SHA256",
       "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"},
      {"X-Amz-Date", "20150514T165005Z"},
      {"Host", "ec2.us-east-1.amazonaws.com"},
      {"Header", "Value"}
    ]

    assert expected == actual
  end

  test "sign_v4/6 generate signature with similar headers correctly (sorting problem)" do
    client = AWS.Client.create("my-access-key-id", "my-secret-access-key", "us-east-1")
    client = %{client | service: "s3"}

    host = "https://aws-beam-projects-test.s3.amazonaws.com"
    path = "/foo/my_important_file.txt.enc"

    {:ok, now, _} = DateTime.from_iso8601("2021-04-05T15:10:53Z")

    result =
      Signature.sign_v4(
        client,
        now,
        :put,
        host <> path,
        [
          {"User-Agent", "aws-sdk-ruby3/3.113.1 ruby/2.7.2 x86_64-linux aws-sdk-s3/1.93.0"},
          {"X-Amz-Server-Side-Encryption-Customer-Algorithm", "AES256"},
          {"X-Amz-Server-Side-Encryption-Customer-Key",
           "TIjv09mJiv+331Evgfq8eONO2y/G4aztRqEeAwx9y2U="},
          {"X-Amz-Server-Side-Encryption-Customer-Key-Md5", "BaUscNABVnd0nRlQecUFPA=="},
          {"Content-Md5", "VDMfSlWzfS823+nFvkpWzg=="},
          {"Host", "aws-beam-projects-test.s3.amazonaws.com"}
        ],
        "My important file..."
      )

    {_name, auth_header} = List.keyfind(result, "Authorization", 0)

    assert auth_header ==
             "AWS4-HMAC-SHA256 Credential=my-access-key-id/20210405/us-east-1/s3/aws4_request, SignedHeaders=content-md5;host;user-agent;x-amz-content-sha256;x-amz-date;x-amz-server-side-encryption-customer-algorithm;x-amz-server-side-encryption-customer-key;x-amz-server-side-encryption-customer-key-md5, Signature=90865b5a1fb55c2766e0aff1d6ae1a8c72ab7e58471aa02204f31aecfacfaf58"
  end

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
       "AWS4-HMAC-SHA256 Credential=access-key-id/20150514/us-east-1/mturk-requester/aws4_request, SignedHeaders=header;host;x-amz-content-sha256;x-amz-date, Signature=6439abf51dc410707084e0bba5d973f15cd09005776f099b7e68557a8fc99143"},
      {"X-Amz-Content-SHA256",
       "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"},
      {"X-Amz-Date", "20150514T165005Z"},
      {"Host", "mturk-requester.us-east-1.amazonaws.com"},
      {"Header", "Value"}
    ]

    assert expected == actual
  end

  test "sign_v4_query/6 returns a map with header/value pairs suitable for use in a query string" do
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
    actual = Signature.sign_v4_query(client, now, method, url, headers, "")

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
end
