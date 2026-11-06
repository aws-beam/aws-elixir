# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AccountAccessRuntime do
  @moduledoc """
  Use the Account Access Runtime API to list the roles that you can access and
  retrieve temporary Amazon Web Services credentials for those roles.

  You authenticate with a bearer token from IAM Identity Center. Each request is
  scoped to a tenant.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_details() :: %{
        "accountId" => String.t() | atom(),
        "accountName" => [String.t() | atom()],
        "roleArn" => [String.t() | atom()]
      }

  """
  @type access_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_role_credentials_request() :: %{
        optional("sessionDuration") => [integer()],
        optional("sessionName") => String.t() | atom(),
        required("accessType") => list(any()),
        required("roleArn") => [String.t() | atom()],
        required("tenantId") => String.t() | atom()
      }

  """
  @type get_role_credentials_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_role_credentials_response() :: %{
        "credentialsDetails" => list()
      }

  """
  @type get_role_credentials_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_roles_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("tenantId") => String.t() | atom()
      }

  """
  @type list_roles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_roles_response() :: %{
        "nextToken" => [String.t() | atom()],
        "roles" => list(access_details())
      }

  """
  @type list_roles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      programmatic_access_details() :: %{
        "accessKeyId" => [String.t() | atom()],
        "expiresAt" => [non_neg_integer()],
        "secretAccessKey" => [String.t() | atom()],
        "sessionToken" => [String.t() | atom()]
      }

  """
  @type programmatic_access_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type get_role_credentials_errors() ::
          validation_exception()
          | unauthorized_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_roles_errors() ::
          validation_exception()
          | unauthorized_exception()
          | throttling_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "account-access-runtime",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Account Access Runtime",
      signature_version: nil,
      signing_name: "account-access-runtime",
      target_prefix: nil
    }
  end

  @doc """
  Returns temporary Amazon Web Services credentials for a role that you are
  entitled to assume within a tenant.

  You can use these credentials for programmatic access with the CLI or an Amazon
  Web Services SDK. If you aren't entitled to the role, the request fails with an
  `AccessDeniedException` error.
  """
  @spec get_role_credentials(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_role_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_role_credentials_errors()}
  def get_role_credentials(
        %Client{} = client,
        access_type,
        role_arn,
        session_duration \\ nil,
        session_name \\ nil,
        tenant_id,
        options \\ []
      ) do
    url_path = "/access/credentials"
    headers = []
    query_params = []

    query_params =
      if !is_nil(access_type) do
        [{"accessType", access_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(role_arn) do
        [{"roleArn", role_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(session_duration) do
        [{"sessionDuration", session_duration} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(session_name) do
        [{"sessionName", session_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(tenant_id) do
        [{"tenantId", tenant_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the roles that you are entitled to access within a tenant.

  The results are paginated. Use a returned role with `GetRoleCredentials` to
  obtain temporary credentials.
  """
  @spec list_roles(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_roles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_roles_errors()}
  def list_roles(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        tenant_id,
        options \\ []
      ) do
    url_path = "/access"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(tenant_id) do
        [{"tenantId", tenant_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
