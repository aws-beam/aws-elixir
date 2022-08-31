defmodule AWS.ProtocolTests.JSONPostTest do
  use ExUnit.Case, async: true

  alias AWS.Request

  setup do
    client = %AWS.Client{
      access_key_id: "my-access-key-id",
      secret_access_key: "my-secret-access-key",
      endpoint: "localhost",
      region: "local",
      proto: "http"
    }

    service_metadata = %{
      abbreviation: "Foo",
      api_version: "2017-08-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "foo",
      global?: false,
      protocol: "json",
      service_id: "Foo",
      signature_version: "v4",
      signing_name: "foo",
      target_prefix: "com.amazonaws.foo"
    }

    %{client: client, metadata: service_metadata}
  end

  describe "Scalar members" do
    test "case #1", %{client: client, metadata: metadata} do
      input = %{"Name" => "myname"}
      name = "OperationName"

      bypass = Bypass.open()
      client = %{client | port: bypass.port}

      Bypass.expect(bypass, fn conn ->
        [target] = Plug.Conn.get_req_header(conn, "x-amz-target")
        assert target == "com.amazonaws.foo.OperationName"

        [content_type] = Plug.Conn.get_req_header(conn, "content-type")
        assert content_type == "application/x-amz-json-1.1"

        {:ok, body, conn} = Plug.Conn.read_body(conn)

        assert body == ~s|{"Name":"myname"}|

        assert conn.request_path == "/"

        Plug.Conn.resp(
          conn,
          200,
          "{\"Str\": \"myname\", \"Num\": 123, \"FalseBool\": false, \"TrueBool\": true, \"Float\": 1.2, \"Double\": 1.3, \"Long\": 200, \"Char\": \"a\"}"
        )
      end)

      {:ok, body, _} =
        Request.request_post(
          client,
          metadata,
          name,
          input,
          []
        )

      assert body == %{
               "Str" => "myname",
               "Num" => 123,
               "FalseBool" => false,
               "TrueBool" => true,
               "Float" => 1.2,
               "Double" => 1.3,
               "Long" => 200,
               "Char" => "a"
             }

      Bypass.down(bypass)
    end
  end
end
