defmodule AWS.ProtocolTests.QueryPostTest do
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

    service_metadata = %AWS.ServiceMetadata{
      abbreviation: "Foo",
      api_version: "2014-01-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "foo",
      global?: false,
      protocol: "query",
      service_id: "Foo",
      signature_version: "v4",
      signing_name: "foo",
      target_prefix: nil
    }

    %{client: client, metadata: service_metadata}
  end

  defp query_body_eql?(actual, expected) do
    actual_params = URI.query_decoder(actual) |> Enum.sort() |> Enum.to_list()
    expected_params = URI.query_decoder(expected) |> Enum.sort() |> Enum.to_list()

    actual_params == expected_params
  end

  describe "Scalar members" do
    test "case #1", %{client: client, metadata: metadata} do
      input = %{"Foo" => "val1", "Bar" => "val2"}
      name = "OperationName"

      bypass = Bypass.open()
      client = %{client | port: bypass.port}

      Bypass.expect(bypass, fn conn ->
        [content_type] = Plug.Conn.get_req_header(conn, "content-type")
        assert content_type == metadata.content_type

        {:ok, body, conn} = Plug.Conn.read_body(conn)

        assert query_body_eql?(body, "Action=OperationName&Version=2014-01-01&Foo=val1&Bar=val2")

        assert conn.request_path == "/"

        Plug.Conn.resp(
          conn,
          200,
          "<OperationNameResponse><OperationNameResult><Str>myname</Str><FooNum>123</FooNum><FalseBool>false</FalseBool><TrueBool>true</TrueBool><Float>1.2</Float><Double>1.3</Double><Long>200</Long><Char>a</Char><Timestamp>2015-01-25T08:00:00Z</Timestamp></OperationNameResult><ResponseMetadata><RequestId>request-id</RequestId></ResponseMetadata></OperationNameResponse>"
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

      # TODO: the actual expect result is only the map
      # inside `OperationNameResult`, so we need to fix
      # that.
      assert body == %{
               "OperationNameResponse" => %{
                 "OperationNameResult" => %{
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
                 "ResponseMetadata" => %{"RequestId" => "request-id"}
               }
             }

      Bypass.down(bypass)
    end
  end
end
