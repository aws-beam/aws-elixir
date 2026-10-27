# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Signin do
  @moduledoc """
  AWS Sign-In manages authentication for AWS services.

  It implements OAuth 2.0, providing secure token exchange and refresh
  capabilities.
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

      create_o_auth2_token_with_iam_request() :: %{
        required("grantType") => String.t() | atom(),
        required("resource") => String.t() | atom()
      }

  """
  @type create_o_auth2_token_with_iam_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_o_auth2_token_with_iam_response() :: %{
        "accessToken" => String.t() | atom(),
        "expiresIn" => integer(),
        "tokenType" => String.t() | atom()
      }

  """
  @type create_o_auth2_token_with_iam_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_o_auth2_token_with_token_exchange_request() :: %{
        optional("resource") => String.t() | atom(),
        optional("scope") => String.t() | atom(),
        optional("subjectToken") => String.t() | atom(),
        optional("subjectTokenType") => String.t() | atom(),
        required("grantType") => String.t() | atom()
      }

  """
  @type create_o_auth2_token_with_token_exchange_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_o_auth2_token_with_token_exchange_response() :: %{
        "accessToken" => String.t() | atom(),
        "expiresIn" => integer(),
        "issuedTokenType" => String.t() | atom(),
        "tokenType" => String.t() | atom()
      }

  """
  @type create_o_auth2_token_with_token_exchange_response() :: %{(String.t() | atom()) => any()}

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

      introspect_o_auth2_token_with_iam_request() :: %{
        optional("tokenTypeHint") => String.t() | atom(),
        required("token") => String.t() | atom()
      }

  """
  @type introspect_o_auth2_token_with_iam_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      introspect_o_auth2_token_with_iam_response() :: %{
        "accountId" => String.t() | atom(),
        "active" => [boolean()],
        "aud" => [String.t() | atom()],
        "clientId" => [String.t() | atom()],
        "exp" => [float()],
        "iat" => [float()],
        "iss" => [String.t() | atom()],
        "jti" => [String.t() | atom()],
        "nbf" => [float()],
        "resource" => String.t() | atom(),
        "signinSession" => [String.t() | atom()],
        "sub" => [String.t() | atom()],
        "tokenType" => String.t() | atom(),
        "userId" => [String.t() | atom()]
      }

  """
  @type introspect_o_auth2_token_with_iam_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_grant_exception() :: %{
        "error" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type invalid_grant_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_scope_exception() :: %{
        "error" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type invalid_scope_exception() :: %{(String.t() | atom()) => any()}

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

      revoke_o_auth2_token_with_iam_request() :: %{
        required("token") => String.t() | atom()
      }

  """
  @type revoke_o_auth2_token_with_iam_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      revoke_o_auth2_token_with_iam_response() :: %{}

  """
  @type revoke_o_auth2_token_with_iam_response() :: %{}

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

      service_unavailable_exception() :: %{
        "error" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

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

  @type create_o_auth2_token_with_iam_errors() ::
          validation_exception()
          | too_many_requests_error()
          | internal_server_exception()
          | access_denied_exception()

  @type create_o_auth2_token_with_token_exchange_errors() ::
          validation_exception()
          | too_many_requests_error()
          | service_unavailable_exception()
          | invalid_scope_exception()
          | invalid_grant_exception()
          | internal_server_exception()

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

  @type introspect_o_auth2_token_with_iam_errors() ::
          validation_exception()
          | too_many_requests_error()
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

  @type revoke_o_auth2_token_with_iam_errors() ::
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
  Exchanges an authorization code or refresh token for an OAuth 2.0 access token
  and refresh token.
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
  Exchanges client credentials for an OAuth 2.0 access token scoped to a resource,
  which you can use to access AWS services from applications.
  """
  @spec create_o_auth2_token_with_iam(map(), create_o_auth2_token_with_iam_request(), list()) ::
          {:ok, create_o_auth2_token_with_iam_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_o_auth2_token_with_iam_errors()}
  def create_o_auth2_token_with_iam(%Client{} = client, input, options \\ []) do
    url_path = "/v1/token?x-amz-client-auth-method=iam"
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
  Exchanges a supported token for an OAuth 2.0 access token scoped to a resource,
  which you can use to access AWS services from applications.
  """
  @spec create_o_auth2_token_with_token_exchange(
          map(),
          create_o_auth2_token_with_token_exchange_request(),
          list()
        ) ::
          {:ok, create_o_auth2_token_with_token_exchange_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_o_auth2_token_with_token_exchange_errors()}
  def create_o_auth2_token_with_token_exchange(%Client{} = client, input, options \\ []) do
    url_path = "/v1/token?x-amz-oauth-token-method=token-exchange"
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
  Inspects the metadata and active state of an OAuth 2.0 access token or refresh
  token.

  Implements RFC 7662 OAuth 2.0 Token Introspection over a SigV4-authenticated
  endpoint. Returns the claims associated with a token issued by AWS Sign-In.
  """
  @spec introspect_o_auth2_token_with_iam(
          map(),
          introspect_o_auth2_token_with_iam_request(),
          list()
        ) ::
          {:ok, introspect_o_auth2_token_with_iam_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, introspect_o_auth2_token_with_iam_errors()}
  def introspect_o_auth2_token_with_iam(%Client{} = client, input, options \\ []) do
    url_path = "/v1/introspect?x-amz-client-auth-method=iam"
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

  @doc """
  Revokes an OAuth 2.0 refresh token and its associated token chain.
  """
  @spec revoke_o_auth2_token_with_iam(map(), revoke_o_auth2_token_with_iam_request(), list()) ::
          {:ok, revoke_o_auth2_token_with_iam_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_o_auth2_token_with_iam_errors()}
  def revoke_o_auth2_token_with_iam(%Client{} = client, input, options \\ []) do
    url_path = "/v1/revoke?x-amz-client-auth-method=iam"
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
