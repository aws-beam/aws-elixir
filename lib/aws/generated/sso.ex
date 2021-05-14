# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSO do
  @moduledoc """
  AWS Single Sign-On Portal is a web service that makes it easy for you to assign
  user access to AWS SSO resources such as the user portal.

  Users can get AWS account applications and roles assigned to them and get
  federated into the application.

  For general information about AWS SSO, see [What is AWS Single Sign-On?](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)
  in the *AWS SSO User Guide*.

  This API reference guide describes the AWS SSO Portal operations that you can
  call programatically and includes detailed information on data types and errors.

  AWS provides SDKs that consist of libraries and sample code for various
  programming languages and platforms, such as Java, Ruby, .Net, iOS, or Android.
  The SDKs provide a convenient way to create programmatic access to AWS SSO and
  other AWS services. For more information about the AWS SDKs, including how to
  download and install them, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  in the *AWS SSO User Guide*. This operation returns a paginated response.
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
  Removes the client- and server-side session that is associated with the user.
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
