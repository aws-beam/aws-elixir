# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSO do
  @moduledoc """
  AWS IAM Identity Center (successor to AWS Single Sign-On) Portal is a web
  service that makes it easy for you to assign user access to
  IAM Identity Center resources such as the AWS access portal.

  Users can get AWS account applications and roles
  assigned to them and get federated into the application.

  Although AWS Single Sign-On was renamed, the `sso` and
  `identitystore` API namespaces will continue to retain their original name for
  backward compatibility purposes. For more information, see [IAM Identity Center rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed).

  This reference guide describes the IAM Identity Center Portal operations that
  you can call
  programatically and includes detailed information on data types and errors.

  AWS provides SDKs that consist of libraries and sample code for various
  programming
  languages and platforms, such as Java, Ruby, .Net, iOS, or Android. The SDKs
  provide a
  convenient way to create programmatic access to IAM Identity Center and other
  AWS services. For more
  information about the AWS SDKs, including how to download and install them, see
  [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      account_info() :: %{
        "accountId" => String.t(),
        "accountName" => String.t(),
        "emailAddress" => String.t()
      }

  """
  @type account_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_role_credentials_request() :: %{
        required("accessToken") => String.t(),
        required("accountId") => String.t(),
        required("roleName") => String.t()
      }

  """
  @type get_role_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_role_credentials_response() :: %{
        "roleCredentials" => role_credentials()
      }

  """
  @type get_role_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_account_roles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("accessToken") => String.t(),
        required("accountId") => String.t()
      }

  """
  @type list_account_roles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_account_roles_response() :: %{
        "nextToken" => String.t(),
        "roleList" => list(role_info()())
      }

  """
  @type list_account_roles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_accounts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("accessToken") => String.t()
      }

  """
  @type list_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_accounts_response() :: %{
        "accountList" => list(account_info()()),
        "nextToken" => String.t()
      }

  """
  @type list_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logout_request() :: %{
        required("accessToken") => String.t()
      }

  """
  @type logout_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      role_credentials() :: %{
        "accessKeyId" => String.t(),
        "expiration" => float(),
        "secretAccessKey" => String.t(),
        "sessionToken" => String.t()
      }

  """
  @type role_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      role_info() :: %{
        "accountId" => String.t(),
        "roleName" => String.t()
      }

  """
  @type role_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @type get_role_credentials_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | invalid_request_exception()

  @type list_account_roles_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | invalid_request_exception()

  @type list_accounts_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | invalid_request_exception()

  @type logout_errors() ::
          unauthorized_exception() | too_many_requests_exception() | invalid_request_exception()

  def metadata do
    %{
      api_version: "2019-06-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "portal.sso",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SSO",
      signature_version: "v4",
      signing_name: "awsssoportal",
      target_prefix: nil
    }
  end

  @doc """
  Returns the STS short-term credentials for a given role name that is assigned to
  the
  user.
  """
  @spec get_role_credentials(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_role_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_role_credentials_errors()}
  def get_role_credentials(%Client{} = client, account_id, role_name, access_token, options \\ []) do
    url_path = "/federation/credentials"
    headers = []

    headers =
      if !is_nil(access_token) do
        [{"x-amz-sso_bearer_token", access_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(role_name) do
        [{"role_name", role_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id) do
        [{"account_id", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all roles that are assigned to the user for a given AWS account.
  """
  @spec list_account_roles(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_account_roles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_roles_errors()}
  def list_account_roles(
        %Client{} = client,
        account_id,
        max_results \\ nil,
        next_token \\ nil,
        access_token,
        options \\ []
      ) do
    url_path = "/assignment/roles"
    headers = []

    headers =
      if !is_nil(access_token) do
        [{"x-amz-sso_bearer_token", access_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_result", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id) do
        [{"account_id", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all AWS accounts assigned to the user.

  These AWS accounts are assigned by the
  administrator of the account. For more information, see [Assign User Access](https://docs.aws.amazon.com/singlesignon/latest/userguide/useraccess.html#assignusers)
  in the *IAM Identity Center User Guide*. This operation
  returns a paginated response.
  """
  @spec list_accounts(map(), String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_accounts_errors()}
  def list_accounts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        access_token,
        options \\ []
      ) do
    url_path = "/assignment/accounts"
    headers = []

    headers =
      if !is_nil(access_token) do
        [{"x-amz-sso_bearer_token", access_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_result", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Removes the locally stored SSO tokens from the client-side cache and sends an
  API call to
  the IAM Identity Center service to invalidate the corresponding server-side IAM
  Identity Center sign in
  session.

  If a user uses IAM Identity Center to access the AWS CLI, the user’s IAM
  Identity Center sign in session is
  used to obtain an IAM session, as specified in the corresponding IAM Identity
  Center permission set.
  More specifically, IAM Identity Center assumes an IAM role in the target account
  on behalf of the user,
  and the corresponding temporary AWS credentials are returned to the client.

  After user logout, any existing IAM role sessions that were created by using IAM
  Identity Center
  permission sets continue based on the duration configured in the permission set.
  For more information, see [User authentications](https://docs.aws.amazon.com/singlesignon/latest/userguide/authconcept.html)
  in the *IAM Identity Center User
  Guide*.
  """
  @spec logout(map(), logout_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, logout_errors()}
  def logout(%Client{} = client, input, options \\ []) do
    url_path = "/logout"

    {headers, input} =
      [
        {"accessToken", "x-amz-sso_bearer_token"}
      ]
      |> Request.build_params(input)

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
