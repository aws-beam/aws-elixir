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

  @typedoc """

  ## Example:

      delete_connection_request() :: %{}

  """
  @type delete_connection_request() :: %{}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{}

  """
  @type forbidden_exception() :: %{}

  @typedoc """

  ## Example:

      get_connection_request() :: %{}

  """
  @type get_connection_request() :: %{}

  @typedoc """

  ## Example:

      get_connection_response() :: %{
        "ConnectedAt" => non_neg_integer(),
        "Identity" => identity(),
        "LastActiveAt" => non_neg_integer()
      }

  """
  @type get_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gone_exception() :: %{}

  """
  @type gone_exception() :: %{}

  @typedoc """

  ## Example:

      identity() :: %{
        required("SourceIp") => String.t(),
        required("UserAgent") => String.t()
      }

  """
  @type identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{}

  """
  @type limit_exceeded_exception() :: %{}

  @typedoc """

  ## Example:

      payload_too_large_exception() :: %{
        "Message" => String.t()
      }

  """
  @type payload_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_to_connection_request() :: %{
        required("Data") => binary()
      }

  """
  @type post_to_connection_request() :: %{String.t() => any()}

  @type delete_connection_errors() ::
          limit_exceeded_exception() | gone_exception() | forbidden_exception()

  @type get_connection_errors() ::
          limit_exceeded_exception() | gone_exception() | forbidden_exception()

  @type post_to_connection_errors() ::
          payload_too_large_exception()
          | limit_exceeded_exception()
          | gone_exception()
          | forbidden_exception()

  def metadata do
    %{
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
  @spec delete_connection(map(), String.t(), delete_connection_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_connection_errors()}
  def delete_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path = "/@connections/#{AWS.Util.encode_uri(connection_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  @spec get_connection(map(), String.t(), list()) ::
          {:ok, get_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connection_errors()}
  def get_connection(%Client{} = client, connection_id, options \\ []) do
    url_path = "/@connections/#{AWS.Util.encode_uri(connection_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sends the provided data to the specified connection.
  """
  @spec post_to_connection(map(), String.t(), post_to_connection_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, post_to_connection_errors()}
  def post_to_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path = "/@connections/#{AWS.Util.encode_uri(connection_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
