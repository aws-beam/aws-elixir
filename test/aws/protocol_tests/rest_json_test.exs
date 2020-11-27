defmodule AWS.ProtocolTests.RestJSONTest do
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
      content_type: "application/json",
      credential_scope: nil,
      endpoint_prefix: "foo",
      global?: false,
      protocol: "json",
      service_id: "Foo",
      signature_version: "v4",
      signing_name: "foo",
      target_prefix: nil
    }

    %{client: client, metadata: service_metadata}
  end

  describe "URI parameter, querystring params, headers and JSON body" do
    test "case #1", %{client: client, metadata: metadata} do
      input = %{"Config" => %{"A" => "one", "B" => "two"}}
      path = "/2014-01-01/jobsByPipeline/foo"

      query_params = %{
        "Ascending" => true,
        "PipelineId" => "foo"
      }

      headers = [{"Checksum", "12345"}]

      bypass = Bypass.open()
      client = %{client | port: bypass.port}

      Bypass.expect(bypass, fn conn ->
        [content_type] = Plug.Conn.get_req_header(conn, "content-type")
        assert content_type == metadata.content_type

        {:ok, body, conn} = Plug.Conn.read_body(conn)

        assert body == "{\"Config\":{\"B\":\"two\",\"A\":\"one\"}}"

        assert conn.request_path == path
        assert conn.query_string == "Ascending=true&PipelineId=foo"

        conn = Plug.Conn.put_resp_header(conn, "BlobHeader", "aGVsbG8=")

        Plug.Conn.resp(
          conn,
          200,
          "{\"Str\": \"myname\", \"Num\": 123, \"FalseBool\": false, \"TrueBool\": true, \"Float\": 1.2, \"Double\": 1.3, \"Long\": 200, \"Char\": \"a\", \"Timestamp\": \"2015-01-25T08:00:00Z\", \"Blob\": \"aGVsbG8=\"}"
        )
      end)

      {:ok, body, _} =
        Request.request_rest(
          client,
          metadata,
          :post,
          path,
          query_params,
          headers,
          input,
          [response_header_parameters: [{"BlobHeader", "BlobHeader"}]],
          200
        )

      # NOTE: Blob fields are not parsed correctly yet.
      assert body == %{
               "Str" => "myname",
               "Num" => 123,
               "FalseBool" => false,
               "TrueBool" => true,
               "Float" => 1.2,
               "Double" => 1.3,
               "Long" => 200,
               "Char" => "a",
               "Timestamp" => "2015-01-25T08:00:00Z",
               "BlobHeader" => "aGVsbG8=",
               "Blob" => "aGVsbG8="
             }

      Bypass.down(bypass)
    end
  end
end
