# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSO do
  @moduledoc """
  AWS IAM Identity Center (successor to AWS Single Sign-On) Portal is a web
  service that makes it easy for you to assign user access to IAM Identity Center
  resources such as the AWS access portal.

  Users can get AWS account applications and roles assigned to them and get
  federated into the application.

  Although AWS Single Sign-On was renamed, the `sso` and `identitystore` API
  namespaces will continue to retain their original name for backward
  compatibility purposes. For more information, see [IAM Identity Center rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed).

  This reference guide describes the IAM Identity Center Portal operations that
  you can call programatically and includes detailed information on data types and
  errors.

  AWS provides SDKs that consist of libraries and sample code for various
  programming languages and platforms, such as Java, Ruby, .Net, iOS, or Android.
  The SDKs provide a convenient way to create programmatic access to IAM Identity
  Center and other AWS services. For more information about the AWS SDKs,
  including how to download and install them, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2019-06-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "portal.sso",
      global?: false,
      protocol: "rest-json",
      service_id: "SSO",
      signature_version: "v4",
      signing_name: "awsssoportal",
      target_prefix: nil
    }
  end

  @doc """
  Returns the STS short-term credentials for a given role name that is assigned to
  the user.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all roles that are assigned to the user for a given AWS account.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all AWS accounts assigned to the user.

  These AWS accounts are assigned by the administrator of the account. For more
  information, see [Assign User Access](https://docs.aws.amazon.com/singlesignon/latest/userguide/useraccess.html#assignusers)
  in the *IAM Identity Center User Guide*. This operation returns a paginated
  response.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Removes the locally stored SSO tokens from the client-side cache and sends an
  API call to the IAM Identity Center service to invalidate the corresponding
  server-side IAM Identity Center sign in session.

  If a user uses IAM Identity Center to access the AWS CLI, the user’s IAM
  Identity Center sign in session is used to obtain an IAM session, as specified
  in the corresponding IAM Identity Center permission set. More specifically, IAM
  Identity Center assumes an IAM role in the target account on behalf of the user,
  and the corresponding temporary AWS credentials are returned to the client.

  After user logout, any existing IAM role sessions that were created by using IAM
  Identity Center permission sets continue based on the duration configured in the
  permission set. For more information, see [User authentications](https://docs.aws.amazon.com/singlesignon/latest/userguide/authconcept.html)
  in the *IAM Identity Center User Guide*.
  """
  def logout(%Client{} = client, input, options \\ []) do
    url_path = "/logout"

    {headers, input} =
      [
        {"accessToken", "x-amz-sso_bearer_token"}
      ]
      |> Request.build_params(input)

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
      nil
    )
  end
end
