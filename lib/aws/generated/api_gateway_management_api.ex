# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApiGatewayManagementApi do
  @moduledoc """
  The Amazon API Gateway Management API allows you to directly manage runtime
  aspects of your deployed APIs.

  To use it, you must explicitly set the SDK's endpoint to point to the endpoint
  of your deployed API. The endpoint will be of the form
  https://{api-id}.execute-api.{region}.amazonaws.com/{stage}, or will be the
  endpoint corresponding to your API's custom domain and base path, if applicable.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-11-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "execute-api",
      global?: false,
      protocol: "rest-json",
      service_id: "ApiGatewayManagementApi",
      signature_version: "v4",
      signing_name: "execute-api",
      target_prefix: nil
    }
  end

  @doc """
  Delete the connection with the provided id.
  """
  def delete_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path = "/@connections/#{URI.encode(connection_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Get information about the connection with the provided id.
  """
  def get_connection(%Client{} = client, connection_id, options \\ []) do
    url_path = "/@connections/#{URI.encode(connection_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Sends the provided data to the specified connection.
  """
  def post_to_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path = "/@connections/#{URI.encode(connection_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end