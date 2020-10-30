# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSO do
  @moduledoc """
  AWS Single Sign-On Portal is a web service that makes it easy for you to
  assign user access to AWS SSO resources such as the user portal. Users can
  get AWS account applications and roles assigned to them and get federated
  into the application.

  For general information about AWS SSO, see [What is AWS Single
  Sign-On?](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)
  in the *AWS SSO User Guide*.

  This API reference guide describes the AWS SSO Portal operations that you
  can call programatically and includes detailed information on data types
  and errors.

  <note> AWS provides SDKs that consist of libraries and sample code for
  various programming languages and platforms, such as Java, Ruby, .Net, iOS,
  or Android. The SDKs provide a convenient way to create programmatic access
  to AWS SSO and other AWS services. For more information about the AWS SDKs,
  including how to download and install them, see [Tools for Amazon Web
  Services](http://aws.amazon.com/tools/).

  </note>
  """

  @doc """
  Returns the STS short-term credentials for a given role name that is
  assigned to the user.
  """
  def get_role_credentials(client, account_id, role_name, access_token, options \\ []) do
    path_ = "/federation/credentials"
    headers = []
    headers = if !is_nil(access_token) do
      [{"x-amz-sso_bearer_token", access_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(role_name) do
      [{"role_name", role_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(account_id) do
      [{"account_id", account_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all roles that are assigned to the user for a given AWS account.
  """
  def list_account_roles(client, account_id, max_results \\ nil, next_token \\ nil, access_token, options \\ []) do
    path_ = "/assignment/roles"
    headers = []
    headers = if !is_nil(access_token) do
      [{"x-amz-sso_bearer_token", access_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next_token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max_result", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(account_id) do
      [{"account_id", account_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all AWS accounts assigned to the user. These AWS accounts are
  assigned by the administrator of the account. For more information, see
  [Assign User
  Access](https://docs.aws.amazon.com/singlesignon/latest/userguide/useraccess.html#assignusers)
  in the *AWS SSO User Guide*. This operation returns a paginated response.
  """
  def list_accounts(client, max_results \\ nil, next_token \\ nil, access_token, options \\ []) do
    path_ = "/assignment/accounts"
    headers = []
    headers = if !is_nil(access_token) do
      [{"x-amz-sso_bearer_token", access_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next_token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max_result", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Removes the client- and server-side session that is associated with the
  user.
  """
  def logout(client, input, options \\ []) do
    path_ = "/logout"
    {headers, input} =
      [
        {"accessToken", "x-amz-sso_bearer_token"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "awsssoportal"}
    host = build_host("portal.sso", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
