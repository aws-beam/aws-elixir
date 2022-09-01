# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSOOIDC do
  @moduledoc """
  AWS Single Sign-On (SSO) OpenID Connect (OIDC) is a web service that enables a
  client (such as AWS CLI or a native application) to register with AWS SSO.

  The service also enables the client to fetch the user’s access token upon
  successful authentication and authorization with AWS SSO. This service conforms
  with the OAuth 2.0 based implementation of the device authorization grant
  standard
  ([https://tools.ietf.org/html/rfc8628](https://tools.ietf.org/html/rfc8628)).  For general information about AWS SSO, see [What is AWS Single
  Sign-On?](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)
  in the *AWS SSO User Guide*.

  This API reference guide describes the AWS SSO OIDC operations that you can call
  programatically and includes detailed information on data types and errors.

  AWS provides SDKs that consist of libraries and sample code for various
  programming languages and platforms such as Java, Ruby, .Net, iOS, and Android.
  The SDKs provide a convenient way to create programmatic access to AWS SSO and
  other AWS services. For more information about the AWS SDKs, including how to
  download and install them, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2019-06-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "oidc",
      global?: false,
      protocol: "rest-json",
      service_id: "SSO OIDC",
      signature_version: "v4",
      signing_name: "awsssooidc",
      target_prefix: nil
    }
  end

  @doc """
  Creates and returns an access token for the authorized client.

  The access token issued will be used to fetch short-term credentials for the
  assigned roles in the AWS account.
  """
  def create_token(%Client{} = client, input, options \\ []) do
    url_path = "/token"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Registers a client with AWS SSO.

  This allows clients to initiate device authorization. The output should be
  persisted for reuse through many authentication requests.
  """
  def register_client(%Client{} = client, input, options \\ []) do
    url_path = "/client/register"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Initiates device authorization by requesting a pair of verification codes from
  the authorization service.
  """
  def start_device_authorization(%Client{} = client, input, options \\ []) do
    url_path = "/device_authorization"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
