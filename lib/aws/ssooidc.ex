# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSOOIDC do
  @moduledoc """
  AWS Single Sign-On (SSO) OpenID Connect (OIDC) is a web service that
  enables a client (such as AWS CLI or a native application) to register with
  AWS SSO. The service also enables the client to fetch the user’s access
  token upon successful authentication and authorization with AWS SSO. This
  service conforms with the OAuth 2.0 based implementation of the device
  authorization grant standard
  ([https://tools.ietf.org/html/rfc8628](https://tools.ietf.org/html/rfc8628)).

  For general information about AWS SSO, see [What is AWS Single
  Sign-On?](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)
  in the *AWS SSO User Guide*.

  This API reference guide describes the AWS SSO OIDC operations that you can
  call programatically and includes detailed information on data types and
  errors.

  <note> AWS provides SDKs that consist of libraries and sample code for
  various programming languages and platforms such as Java, Ruby, .Net, iOS,
  and Android. The SDKs provide a convenient way to create programmatic
  access to AWS SSO and other AWS services. For more information about the
  AWS SDKs, including how to download and install them, see [Tools for Amazon
  Web Services](http://aws.amazon.com/tools/).

  </note>
  """

  @doc """
  Creates and returns an access token for the authorized client. The access
  token issued will be used to fetch short-term credentials for the assigned
  roles in the AWS account.
  """
  def create_token(client, input, options \\ []) do
    path_ = "/token"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Registers a client with AWS SSO. This allows clients to initiate device
  authorization. The output should be persisted for reuse through many
  authentication requests.
  """
  def register_client(client, input, options \\ []) do
    path_ = "/client/register"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Initiates device authorization by requesting a pair of verification codes
  from the authorization service.
  """
  def start_device_authorization(client, input, options \\ []) do
    path_ = "/device_authorization"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "awsssooidc"}
    host = build_host("oidc", client)
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

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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
