# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSOOIDC do
  @moduledoc """
  IAM Identity Center OpenID Connect (OIDC) is a web service that enables a client
  (such as CLI or a
  native application) to register with IAM Identity Center.

  The service also enables the client to fetch the
  user’s access token upon successful authentication and authorization with IAM
  Identity Center.

  ## API namespaces

  IAM Identity Center uses the `sso` and `identitystore` API namespaces. IAM
  Identity Center
  OpenID Connect uses the `sso-oauth` namespace.

  ## Considerations for using this guide

  Before you begin using this guide, we recommend that you first review the
  following
  important information about how the IAM Identity Center OIDC service works.

    *
  The IAM Identity Center OIDC service currently implements only the portions of
  the OAuth 2.0 Device
  Authorization Grant standard
  ([https://tools.ietf.org/html/rfc8628](https://tools.ietf.org/html/rfc8628)) that are necessary to enable single
  sign-on authentication with the CLI.

    *
  With older versions of the CLI, the service only emits OIDC access tokens, so to
  obtain a new token, users must explicitly re-authenticate. To access the OIDC
  flow that
  supports token refresh and doesn’t require re-authentication, update to the
  latest CLI
  version (1.27.10 for CLI V1 and 2.9.0 for CLI V2) with support for OIDC token
  refresh
  and configurable IAM Identity Center session durations. For more information,
  see [Configure Amazon Web Services access portal session duration
  ](https://docs.aws.amazon.com/singlesignon/latest/userguide/configure-user-session.html).

    *
  The access tokens provided by this service grant access to all Amazon Web
  Services account
  entitlements assigned to an IAM Identity Center user, not just a particular
  application.

    *
  The documentation in this guide does not describe the mechanism to convert the
  access
  token into Amazon Web Services Auth (“sigv4”) credentials for use with
  IAM-protected Amazon Web Services service
  endpoints. For more information, see
  [GetRoleCredentials](https://docs.aws.amazon.com/singlesignon/latest/PortalAPIReference/API_GetRoleCredentials.html) in the *IAM Identity Center Portal API Reference
  Guide*.

  For general information about IAM Identity Center, see [What is
  IAM Identity
  Center?](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)
  in the *IAM Identity Center User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom(),
        "reason" => list(any())
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authorization_pending_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom()
      }

  """
  @type authorization_pending_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_additional_details() :: %{
        "identityContext" => String.t() | atom()
      }

  """
  @type aws_additional_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_token_request() :: %{
        optional("code") => String.t() | atom(),
        optional("codeVerifier") => String.t() | atom(),
        optional("deviceCode") => String.t() | atom(),
        optional("redirectUri") => String.t() | atom(),
        optional("refreshToken") => String.t() | atom(),
        optional("scope") => list(String.t() | atom()),
        required("clientId") => String.t() | atom(),
        required("clientSecret") => String.t() | atom(),
        required("grantType") => String.t() | atom()
      }

  """
  @type create_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_token_response() :: %{
        "accessToken" => String.t() | atom(),
        "expiresIn" => integer(),
        "idToken" => String.t() | atom(),
        "refreshToken" => String.t() | atom(),
        "tokenType" => String.t() | atom()
      }

  """
  @type create_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_token_with_iam_request() :: %{
        optional("assertion") => String.t() | atom(),
        optional("code") => String.t() | atom(),
        optional("codeVerifier") => String.t() | atom(),
        optional("redirectUri") => String.t() | atom(),
        optional("refreshToken") => String.t() | atom(),
        optional("requestedTokenType") => String.t() | atom(),
        optional("scope") => list(String.t() | atom()),
        optional("subjectToken") => String.t() | atom(),
        optional("subjectTokenType") => String.t() | atom(),
        required("clientId") => String.t() | atom(),
        required("grantType") => String.t() | atom()
      }

  """
  @type create_token_with_iam_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_token_with_iam_response() :: %{
        "accessToken" => String.t() | atom(),
        "awsAdditionalDetails" => aws_additional_details(),
        "expiresIn" => integer(),
        "idToken" => String.t() | atom(),
        "issuedTokenType" => String.t() | atom(),
        "refreshToken" => String.t() | atom(),
        "scope" => list(String.t() | atom()),
        "tokenType" => String.t() | atom()
      }

  """
  @type create_token_with_iam_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      expired_token_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom()
      }

  """
  @type expired_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_client_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom()
      }

  """
  @type invalid_client_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_client_metadata_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom()
      }

  """
  @type invalid_client_metadata_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_grant_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom()
      }

  """
  @type invalid_grant_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_redirect_uri_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom()
      }

  """
  @type invalid_redirect_uri_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom(),
        "reason" => list(any())
      }

  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_request_region_exception() :: %{
        "endpoint" => String.t() | atom(),
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom(),
        "region" => String.t() | atom()
      }

  """
  @type invalid_request_region_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_scope_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom()
      }

  """
  @type invalid_scope_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_client_request() :: %{
        optional("entitledApplicationArn") => String.t() | atom(),
        optional("grantTypes") => list(String.t() | atom()),
        optional("issuerUrl") => String.t() | atom(),
        optional("redirectUris") => list(String.t() | atom()),
        optional("scopes") => list(String.t() | atom()),
        required("clientName") => String.t() | atom(),
        required("clientType") => String.t() | atom()
      }

  """
  @type register_client_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_client_response() :: %{
        "authorizationEndpoint" => String.t() | atom(),
        "clientId" => String.t() | atom(),
        "clientIdIssuedAt" => float(),
        "clientSecret" => String.t() | atom(),
        "clientSecretExpiresAt" => float(),
        "tokenEndpoint" => String.t() | atom()
      }

  """
  @type register_client_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slow_down_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom()
      }

  """
  @type slow_down_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_device_authorization_request() :: %{
        required("clientId") => String.t() | atom(),
        required("clientSecret") => String.t() | atom(),
        required("startUrl") => String.t() | atom()
      }

  """
  @type start_device_authorization_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_device_authorization_response() :: %{
        "deviceCode" => String.t() | atom(),
        "expiresIn" => integer(),
        "interval" => integer(),
        "userCode" => String.t() | atom(),
        "verificationUri" => String.t() | atom(),
        "verificationUriComplete" => String.t() | atom()
      }

  """
  @type start_device_authorization_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_client_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom()
      }

  """
  @type unauthorized_client_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unsupported_grant_type_exception() :: %{
        "error" => String.t() | atom(),
        "error_description" => String.t() | atom()
      }

  """
  @type unsupported_grant_type_exception() :: %{(String.t() | atom()) => any()}

  @type create_token_errors() ::
          unsupported_grant_type_exception()
          | unauthorized_client_exception()
          | slow_down_exception()
          | invalid_scope_exception()
          | invalid_request_exception()
          | invalid_grant_exception()
          | invalid_client_exception()
          | internal_server_exception()
          | expired_token_exception()
          | authorization_pending_exception()
          | access_denied_exception()

  @type create_token_with_iam_errors() ::
          unsupported_grant_type_exception()
          | unauthorized_client_exception()
          | slow_down_exception()
          | invalid_scope_exception()
          | invalid_request_region_exception()
          | invalid_request_exception()
          | invalid_grant_exception()
          | invalid_client_exception()
          | internal_server_exception()
          | expired_token_exception()
          | authorization_pending_exception()
          | access_denied_exception()

  @type register_client_errors() ::
          unsupported_grant_type_exception()
          | slow_down_exception()
          | invalid_scope_exception()
          | invalid_request_exception()
          | invalid_redirect_uri_exception()
          | invalid_client_metadata_exception()
          | internal_server_exception()

  @type start_device_authorization_errors() ::
          unauthorized_client_exception()
          | slow_down_exception()
          | invalid_request_exception()
          | invalid_client_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2019-06-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "oidc",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SSO OIDC",
      signature_version: "v4",
      signing_name: "sso-oauth",
      target_prefix: nil
    }
  end

  @doc """
  Creates and returns access and refresh tokens for clients that are authenticated
  using
  client secrets.

  The access token can be used to fetch short-lived credentials for the assigned
  AWS accounts or to access application APIs using `bearer` authentication.
  """
  @spec create_token(map(), create_token_request(), list()) ::
          {:ok, create_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_token_errors()}
  def create_token(%Client{} = client, input, options \\ []) do
    url_path = "/token"
    headers = []
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

  @doc """
  Creates and returns access and refresh tokens for authorized client applications
  that are
  authenticated using any IAM entity, such as a service
  role or user.

  These tokens might contain defined scopes that specify permissions such as
  `read:profile` or `write:data`. Through downscoping, you can use the scopes
  parameter to request tokens with reduced permissions compared to the original
  client application's permissions or, if applicable, the refresh token's scopes.
  The access token can be used to fetch short-lived credentials for the assigned
  Amazon Web Services accounts or to access application APIs using `bearer`
  authentication.

  This API is used with Signature Version 4. For more information, see [Amazon Web Services Signature
  Version 4 for API
  Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html).
  """
  @spec create_token_with_iam(map(), create_token_with_iam_request(), list()) ::
          {:ok, create_token_with_iam_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_token_with_iam_errors()}
  def create_token_with_iam(%Client{} = client, input, options \\ []) do
    url_path = "/token?aws_iam=t"
    headers = []
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

  @doc """
  Registers a public client with IAM Identity Center.

  This allows clients to perform authorization using
  the authorization code grant with Proof Key for Code Exchange (PKCE)
  or the device
  code grant.
  """
  @spec register_client(map(), register_client_request(), list()) ::
          {:ok, register_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_client_errors()}
  def register_client(%Client{} = client, input, options \\ []) do
    url_path = "/client/register"
    headers = []
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

  @doc """
  Initiates device authorization by requesting a pair of verification codes from
  the
  authorization service.
  """
  @spec start_device_authorization(map(), start_device_authorization_request(), list()) ::
          {:ok, start_device_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_device_authorization_errors()}
  def start_device_authorization(%Client{} = client, input, options \\ []) do
    url_path = "/device_authorization"
    headers = []
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
