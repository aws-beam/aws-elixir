defmodule AWS.HTTPClientTest do
  use ExUnit.Case, async: true

  alias AWS.HTTPClient

  setup do
    bypass = Bypass.open()
    {:ok, bypass: bypass}
  end

  describe "hackney-based client" do
    test "request/5 with success response", %{bypass: bypass} do
      headers = [
        {"authorization", "Bearer 123"},
        {"content-type", "application/json"}
      ]

      expected_body = "{\"data\": \"ok\"}"

      Bypass.expect_once(bypass, "POST", "/operation", fn conn ->
        assert true == Enum.all?(headers, fn header -> Enum.member?(conn.req_headers, header) end)
        Plug.Conn.resp(conn, 200, expected_body)
      end)

      result =
        HTTPClient.Hackney.request(
          :post,
          "#{url(bypass)}/operation",
          "",
          headers,
          _options = []
        )

      assert {:ok, %{status_code: 200, body: ^expected_body}} = result
    end
  end

  describe "finch-based client" do
    test "request/5 with success response with default finch_name", %{bypass: bypass} do
      start_supervised!({Finch, name: AWS.Finch})

      headers = [
        {"authorization", "Bearer 123"},
        {"content-type", "application/json"}
      ]

      expected_body = "{\"data\": \"ok\"}"

      Bypass.expect_once(bypass, "POST", "/operation", fn conn ->
        assert true == Enum.all?(headers, fn header -> Enum.member?(conn.req_headers, header) end)
        Plug.Conn.resp(conn, 200, expected_body)
      end)

      result =
        HTTPClient.Finch.request(
          :post,
          "#{url(bypass)}/operation",
          "",
          headers,
          _options = []
        )

      assert {:ok, %{status_code: 200, body: ^expected_body}} = result
    end

    test "request/5 with success response with custom finch_name", %{bypass: bypass} do
      start_supervised!({Finch, name: MyFinch})

      headers = [
        {"authorization", "Bearer 123"},
        {"content-type", "application/json"}
      ]

      expected_body = "{\"data\": \"ok\"}"

      Bypass.expect_once(bypass, "POST", "/operation", fn conn ->
        assert true == Enum.all?(headers, fn header -> Enum.member?(conn.req_headers, header) end)
        Plug.Conn.resp(conn, 200, expected_body)
      end)

      result =
        HTTPClient.Finch.request(
          :post,
          "#{url(bypass)}/operation",
          "",
          headers,
          _options = [finch_name: MyFinch]
        )

      assert {:ok, %{status_code: 200, body: ^expected_body}} = result
    end
  end

  defp url(bypass), do: "http://localhost:#{bypass.port}/"
end
