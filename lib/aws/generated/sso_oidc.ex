# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSOOIDC do
  @moduledoc """
  IAM Identity Center OpenID Connect (OIDC) is a web service that enables a client
  (such as CLI or a native application) to register with IAM Identity Center.

  The service also enables the client to fetch the user’s access token upon
  successful authentication and authorization with IAM Identity Center.

  IAM Identity Center uses the `sso` and `identitystore` API namespaces.

  ## Considerations for Using This Guide

  Before you begin using this guide, we recommend that you first review the
  following important information about how the IAM Identity Center OIDC service
  works.

    * The IAM Identity Center OIDC service currently implements only the
  portions of the OAuth 2.0 Device Authorization Grant standard
  ([https://tools.ietf.org/html/rfc8628](https://tools.ietf.org/html/rfc8628)) that are necessary to enable single sign-on authentication with the CLI.

    * With older versions of the CLI, the service only emits OIDC access
  tokens, so to obtain a new token, users must explicitly re-authenticate. To
  access the OIDC flow that supports token refresh and doesn’t require
  re-authentication, update to the latest CLI version (1.27.10 for CLI V1 and
  2.9.0 for CLI V2) with support for OIDC token refresh and configurable IAM
  Identity Center session durations. For more information, see [Configure Amazon
  Web Services access portal session duration
  ](https://docs.aws.amazon.com/singlesignon/latest/userguide/configure-user-session.html).

    * The access tokens provided by this service grant access to all
  Amazon Web Services account entitlements assigned to an IAM Identity Center
  user, not just a particular application.

    * The documentation in this guide does not describe the mechanism to
  convert the access token into Amazon Web Services Auth (“sigv4”) credentials for
  use with IAM-protected Amazon Web Services service endpoints. For more
  information, see
  [GetRoleCredentials](https://docs.aws.amazon.com/singlesignon/latest/PortalAPIReference/API_GetRoleCredentials.html) in the *IAM Identity Center Portal API Reference Guide*.

  For general information about IAM Identity Center, see [What is IAM Identity
  Center?](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)
  in the *IAM Identity Center User Guide*.
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
      signing_name: "sso-oauth",
      target_prefix: nil
    }
  end

  @doc """
  Creates and returns access and refresh tokens for clients that are authenticated
  using client secrets.

  The access token can be used to fetch short-term credentials for the assigned
  AWS accounts or to access application APIs using `bearer` authentication.
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
  Creates and returns access and refresh tokens for clients and applications that
  are authenticated using IAM entities.

  The access token can be used to fetch short-term credentials for the assigned
  AWS accounts or to access application APIs using `bearer` authentication.
  """
  def create_token_with_iam(%Client{} = client, input, options \\ []) do
    url_path = "/token?aws_iam=t"
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
  Registers a client with IAM Identity Center.

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
