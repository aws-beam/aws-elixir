# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Signin do
  @moduledoc """
  AWS Sign-In manages authentication for AWS services.

  This service provides
  secure authentication flows for accessing AWS resources from the console and
  developer tools.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "error" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_token() :: %{
        "accessKeyId" => [String.t() | atom()],
        "secretAccessKey" => [String.t() | atom()],
        "sessionToken" => [String.t() | atom()]
      }

  """
  @type access_token() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_o_auth2_token_request() :: %{
        required("tokenInput") => create_o_auth2_token_request_body()
      }

  """
  @type create_o_auth2_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_o_auth2_token_request_body() :: %{
        "clientId" => String.t() | atom(),
        "code" => String.t() | atom(),
        "codeVerifier" => String.t() | atom(),
        "grantType" => String.t() | atom(),
        "redirectUri" => String.t() | atom(),
        "refreshToken" => String.t() | atom()
      }

  """
  @type create_o_auth2_token_request_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_o_auth2_token_response() :: %{
        "tokenOutput" => create_o_auth2_token_response_body()
      }

  """
  @type create_o_auth2_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_o_auth2_token_response_body() :: %{
        "accessToken" => access_token(),
        "expiresIn" => integer(),
        "idToken" => String.t() | atom(),
        "refreshToken" => String.t() | atom(),
        "tokenType" => String.t() | atom()
      }

  """
  @type create_o_auth2_token_response_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "error" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_requests_error() :: %{
        "error" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type too_many_requests_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "error" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type create_o_auth2_token_errors() ::
          validation_exception()
          | too_many_requests_error()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2023-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "signin",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Signin",
      signature_version: "v4",
      signing_name: "signin",
      target_prefix: nil
    }
  end

  @doc """
  CreateOAuth2Token API

  Path: /v1/token
  Request Method: POST
  Content-Type: application/json or application/x-www-form-urlencoded

  This API implements OAuth 2.0 flows for AWS Sign-In CLI clients, supporting
  both:
  1.

  Authorization code redemption (grant_type=authorization_code) - NOT idempotent
  2. Token refresh (grant_type=refresh_token) - Idempotent within token validity
  window

  The operation behavior is determined by the grant_type parameter in the request
  body:

  ## Authorization Code Flow (NOT Idempotent):
  - JSON or form-encoded body with client_id, grant_type=authorization_code, code,
  redirect_uri, code_verifier
  - Returns access_token, token_type, expires_in, refresh_token, and id_token
  - Each authorization code can only be used ONCE for security (prevents replay
  attacks)

  ## Token Refresh Flow (Idempotent):
  - JSON or form-encoded body with client_id, grant_type=refresh_token,
  refresh_token
  - Returns access_token, token_type, expires_in, and refresh_token (no id_token)
  - Multiple calls with same refresh_token return consistent results within
  validity window

  Authentication and authorization:
  - Confidential clients: sigv4 signing required with signin:ExchangeToken
  permissions
  - CLI clients (public): authn/authz skipped based on client_id & grant_type

  Note: This operation cannot be marked as @idempotent because it handles both
  idempotent
  (token refresh) and non-idempotent (auth code redemption) flows in a single
  endpoint.
  """
  @spec create_o_auth2_token(map(), create_o_auth2_token_request(), list()) ::
          {:ok, create_o_auth2_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_o_auth2_token_errors()}
  def create_o_auth2_token(%Client{} = client, input, options \\ []) do
    url_path = "/v1/token"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
