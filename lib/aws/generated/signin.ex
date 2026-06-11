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

      conflict_exception() :: %{
        "error" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

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

      delete_console_authorization_configuration_input() :: %{
        optional("targetId") => String.t() | atom()
      }

  """
  @type delete_console_authorization_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_console_authorization_configuration_output() :: %{
        "consoleAuthorizationEnabled" => [boolean()],
        "scope" => [String.t() | atom()],
        "targetId" => String.t() | atom()
      }

  """
  @type delete_console_authorization_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_resource_permission_statement_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("statementId") => String.t() | atom()
      }

  """
  @type delete_resource_permission_statement_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_resource_permission_statement_output() :: %{}

  """
  @type delete_resource_permission_statement_output() :: %{}

  @typedoc """

  ## Example:

      get_console_authorization_configuration_input() :: %{
        optional("targetId") => String.t() | atom()
      }

  """
  @type get_console_authorization_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_console_authorization_configuration_output() :: %{
        "consoleAuthorizationEnabled" => [boolean()],
        "scope" => [String.t() | atom()],
        "targetId" => String.t() | atom()
      }

  """
  @type get_console_authorization_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_policy_input() :: %{}

  """
  @type get_resource_policy_input() :: %{}

  @typedoc """

  ## Example:

      get_resource_policy_output() :: %{
        "signinResourceBasedPolicy" => signin_resource_based_policy()
      }

  """
  @type get_resource_policy_output() :: %{(String.t() | atom()) => any()}

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

      list_resource_permission_statements_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_resource_permission_statements_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_permission_statements_output() :: %{
        "nextToken" => String.t() | atom(),
        "permissionStatements" => list(permission_statement_summary())
      }

  """
  @type list_resource_permission_statements_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      permission_statement_summary() :: %{
        "condition" => map(),
        "sid" => String.t() | atom()
      }

  """
  @type permission_statement_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_statement() :: %{
        "action" => list([String.t() | atom()]()),
        "condition" => map(),
        "effect" => [String.t() | atom()],
        "principal" => map(),
        "resource" => [String.t() | atom()]
      }

  """
  @type policy_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_console_authorization_configuration_input() :: %{
        optional("targetId") => String.t() | atom()
      }

  """
  @type put_console_authorization_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_console_authorization_configuration_output() :: %{
        "consoleAuthorizationEnabled" => [boolean()],
        "scope" => [String.t() | atom()],
        "targetId" => String.t() | atom()
      }

  """
  @type put_console_authorization_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_permission_statement_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("consoleSourceVpce") => String.t() | atom(),
        optional("excludedPrincipal") => String.t() | atom(),
        optional("requestedRegion") => String.t() | atom(),
        optional("signinSourceVpce") => String.t() | atom(),
        optional("sourceIp") => String.t() | atom(),
        optional("sourceVpc") => String.t() | atom(),
        optional("vpcSourceIp") => String.t() | atom()
      }

  """
  @type put_resource_permission_statement_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_permission_statement_output() :: %{
        "statementId" => String.t() | atom()
      }

  """
  @type put_resource_permission_statement_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "error" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "error" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      signin_resource_based_policy() :: %{
        "statement" => list(policy_statement()),
        "version" => [String.t() | atom()]
      }

  """
  @type signin_resource_based_policy() :: %{(String.t() | atom()) => any()}

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

  @type delete_console_authorization_configuration_errors() ::
          validation_exception()
          | too_many_requests_error()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type delete_resource_permission_statement_errors() ::
          validation_exception()
          | too_many_requests_error()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_console_authorization_configuration_errors() ::
          validation_exception()
          | too_many_requests_error()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_resource_policy_errors() ::
          too_many_requests_error()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_resource_permission_statements_errors() ::
          validation_exception()
          | too_many_requests_error()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_console_authorization_configuration_errors() ::
          validation_exception()
          | too_many_requests_error()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type put_resource_permission_statement_errors() ::
          validation_exception()
          | too_many_requests_error()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
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

  @doc """
  Delete console authorization configuration with automatic scope detection
  """
  @spec delete_console_authorization_configuration(
          map(),
          delete_console_authorization_configuration_input(),
          list()
        ) ::
          {:ok, delete_console_authorization_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_console_authorization_configuration_errors()}
  def delete_console_authorization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/delete-console-authorization-configuration"
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

  @doc """
  Remove a permission statement from the account's SignIn resource-based policy
  """
  @spec delete_resource_permission_statement(
          map(),
          delete_resource_permission_statement_input(),
          list()
        ) ::
          {:ok, delete_resource_permission_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_permission_statement_errors()}
  def delete_resource_permission_statement(%Client{} = client, input, options \\ []) do
    url_path = "/delete-resource-permission-statement"
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

  @doc """
  Get console authorization configuration with automatic scope detection
  """
  @spec get_console_authorization_configuration(
          map(),
          get_console_authorization_configuration_input(),
          list()
        ) ::
          {:ok, get_console_authorization_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_console_authorization_configuration_errors()}
  def get_console_authorization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/get-console-authorization-configuration"
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

  @doc """
  Retrieve the account's consolidated SignIn resource-based policy
  """
  @spec get_resource_policy(map(), get_resource_policy_input(), list()) ::
          {:ok, get_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/get-resource-policy"
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

  @doc """
  Retrieve all permission statements in the account's SignIn resource-based policy
  """
  @spec list_resource_permission_statements(
          map(),
          list_resource_permission_statements_input(),
          list()
        ) ::
          {:ok, list_resource_permission_statements_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_permission_statements_errors()}
  def list_resource_permission_statements(%Client{} = client, input, options \\ []) do
    url_path = "/list-resource-permission-statements"
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

  @doc """
  Enable console authorization configuration with automatic scope detection
  """
  @spec put_console_authorization_configuration(
          map(),
          put_console_authorization_configuration_input(),
          list()
        ) ::
          {:ok, put_console_authorization_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_console_authorization_configuration_errors()}
  def put_console_authorization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/put-console-authorization-configuration"
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

  @doc """
  Create a permission statement in the account's SignIn resource-based policy
  """
  @spec put_resource_permission_statement(
          map(),
          put_resource_permission_statement_input(),
          list()
        ) ::
          {:ok, put_resource_permission_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_permission_statement_errors()}
  def put_resource_permission_statement(%Client{} = client, input, options \\ []) do
    url_path = "/put-resource-permission-statement"
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
