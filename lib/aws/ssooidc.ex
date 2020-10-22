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
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
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

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
