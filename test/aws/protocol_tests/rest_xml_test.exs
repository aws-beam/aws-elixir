defmodule AWS.ProtocolTests.RestXMLTest do
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
      api_version: "2014-01-01",
      content_type: "application/xml",
      credential_scope: nil,
      endpoint_prefix: "foo",
      global?: false,
      protocol: "rest-xml",
      service_id: "Foo",
      signature_version: "v4",
      signing_name: "foo",
      target_prefix: nil
    }

    %{client: client, metadata: service_metadata}
  end

  describe "Basic XML serialization" do
    test "case #1", %{client: client, metadata: metadata} do
      input = %{"Name" => "foo", "Description" => "bar"}
      path = "/2014-01-01/hostedzone"

      bypass = Bypass.open()
      client = %{client | port: bypass.port}

      Bypass.expect(bypass, fn conn ->
        [content_type] = Plug.Conn.get_req_header(conn, "content-type")
        assert content_type == metadata.content_type

        {:ok, body, conn} = Plug.Conn.read_body(conn)

        assert body == "<Description>bar</Description><Name>foo</Name>"

        assert conn.request_path == path

        conn =
          conn
          |> Plug.Conn.put_resp_header("ImaHeader", "test")
          |> Plug.Conn.put_resp_header("BlobHeader", "aGVsbG8=")
          |> Plug.Conn.put_resp_header("X-Foo", "abc")

        Plug.Conn.resp(
          conn,
          200,
          "<OperationNameResponse><Str>myname</Str><FooNum>123</FooNum><FalseBool>false</FalseBool><TrueBool>true</TrueBool><Float>1.2</Float><Double>1.3</Double><Long>200</Long><Char>a</Char><Timestamp>2015-01-25T08:00:00Z</Timestamp><Blob>aGVsbG8=</Blob></OperationNameResponse>"
        )
      end)

      {:ok, body, _} =
        Request.request_rest(
          client,
          metadata,
          :post,
          path,
          %{},
          [],
          input,
          [
            response_header_parameters: [
              {"BlobHeader", "BlobHeader"},
              {"ImaHeader", "ImaHeader"},
              {"X-Foo", "ImaHeaderLocation"}
            ]
          ],
          200
        )

      # NOTE: Blob fields are not parsed correctly yet.
      assert body == %{
               "OperationNameResponse" => %{
                 "Blob" => "aGVsbG8=",
                 "Char" => "a",
                 "Double" => "1.3",
                 "FalseBool" => "false",
                 "Float" => "1.2",
                 "Long" => "200",
                 "Str" => "myname",
                 "Timestamp" => "2015-01-25T08:00:00Z",
                 "TrueBool" => "true",
                 "FooNum" => "123"
               },
               "ImaHeaderLocation" => "abc",
               "BlobHeader" => "aGVsbG8=",
               "ImaHeader" => "test"
             }

      Bypass.down(bypass)
    end
  end
end
