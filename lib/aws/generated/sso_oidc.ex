# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSOOIDC do
  @moduledoc """
  Amazon Web Services Single Sign On OpenID Connect (OIDC) is a web service that
  enables a client (such as Amazon Web Services CLI or a native application) to
  register with Amazon Web Services SSO.

  The service also enables the client to fetch the user’s access token upon
  successful authentication and authorization with Amazon Web Services SSO.

  Although Amazon Web Services Single Sign-On was renamed, the `sso` and
  `identitystore` API namespaces will continue to retain their original name for
  backward compatibility purposes. For more information, see [Amazon Web Services SSO
  rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed).

  ## Considerations for Using This Guide

  Before you begin using this guide, we recommend that you first review the
  following important information about how the Amazon Web Services SSO OIDC
  service works.

    * The Amazon Web Services SSO OIDC service currently implements only
  the portions of the OAuth 2.0 Device Authorization Grant standard
  ([https://tools.ietf.org/html/rfc8628](https://tools.ietf.org/html/rfc8628)) that are necessary to enable single sign-on authentication with the AWS CLI.
  Support for other OIDC flows frequently needed for native applications, such as
  Authorization Code Flow (+ PKCE), will be addressed in future releases.

    * The service emits only OIDC access tokens, such that obtaining a
  new token (For example, token refresh) requires explicit user re-authentication.

    * The access tokens provided by this service grant access to all AWS
  account entitlements assigned to an Amazon Web Services SSO user, not just a
  particular application.

    * The documentation in this guide does not describe the mechanism to
  convert the access token into AWS Auth (“sigv4”) credentials for use with
  IAM-protected AWS service endpoints. For more information, see
  [GetRoleCredentials](https://docs.aws.amazon.com/singlesignon/latest/PortalAPIReference/API_GetRoleCredentials.html)
  in the *Amazon Web Services SSO Portal API Reference Guide*.

  For general information about Amazon Web Services SSO, see [What is Amazon Web Services
  SSO?](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html) in
  the *Amazon Web Services SSO User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  assigned roles in the Amazon Web Services account.
  """
  def create_token(%Client{} = client, input, options \\ []) do
    url_path = "/token"
    headers = []
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

  @doc """
  Registers a client with Amazon Web Services SSO.

  This allows clients to initiate device authorization. The output should be
  persisted for reuse through many authentication requests.
  """
  def register_client(%Client{} = client, input, options \\ []) do
    url_path = "/client/register"
    headers = []
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

  @doc """
  Initiates device authorization by requesting a pair of verification codes from
  the authorization service.
  """
  def start_device_authorization(%Client{} = client, input, options \\ []) do
    url_path = "/device_authorization"
    headers = []
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
