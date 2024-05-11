# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSOOIDC do
  @moduledoc """
  IAM Identity Center OpenID Connect (OIDC) is a web service that enables a client
  (such as CLI
  or a native application) to register with IAM Identity Center.

  The service also enables the client to
  fetch the user’s access token upon successful authentication and authorization
  with
  IAM Identity Center.

  IAM Identity Center uses the `sso` and `identitystore` API namespaces.

  ## Considerations for Using This Guide

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
  refresh and
  configurable IAM Identity Center session durations. For more information, see
  [Configure Amazon Web Services access portal session duration
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
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authorization_pending_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type authorization_pending_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_token_request() :: %{
        optional("code") => String.t(),
        optional("codeVerifier") => String.t(),
        optional("deviceCode") => String.t(),
        optional("redirectUri") => String.t(),
        optional("refreshToken") => String.t(),
        optional("scope") => list(String.t()()),
        required("clientId") => String.t(),
        required("clientSecret") => String.t(),
        required("grantType") => String.t()
      }

  """
  @type create_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_token_response() :: %{
        "accessToken" => String.t(),
        "expiresIn" => integer(),
        "idToken" => String.t(),
        "refreshToken" => String.t(),
        "tokenType" => String.t()
      }

  """
  @type create_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_token_with_iam_request() :: %{
        optional("assertion") => String.t(),
        optional("code") => String.t(),
        optional("codeVerifier") => String.t(),
        optional("redirectUri") => String.t(),
        optional("refreshToken") => String.t(),
        optional("requestedTokenType") => String.t(),
        optional("scope") => list(String.t()()),
        optional("subjectToken") => String.t(),
        optional("subjectTokenType") => String.t(),
        required("clientId") => String.t(),
        required("grantType") => String.t()
      }

  """
  @type create_token_with_iam_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_token_with_iam_response() :: %{
        "accessToken" => String.t(),
        "expiresIn" => integer(),
        "idToken" => String.t(),
        "issuedTokenType" => String.t(),
        "refreshToken" => String.t(),
        "scope" => list(String.t()()),
        "tokenType" => String.t()
      }

  """
  @type create_token_with_iam_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      expired_token_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type expired_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_client_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type invalid_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_client_metadata_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type invalid_client_metadata_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_grant_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type invalid_grant_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_redirect_uri_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type invalid_redirect_uri_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_region_exception() :: %{
        "endpoint" => String.t(),
        "error" => String.t(),
        "error_description" => String.t(),
        "region" => String.t()
      }

  """
  @type invalid_request_region_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_scope_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type invalid_scope_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_client_request() :: %{
        optional("entitledApplicationArn") => String.t(),
        optional("grantTypes") => list(String.t()()),
        optional("issuerUrl") => String.t(),
        optional("redirectUris") => list(String.t()()),
        optional("scopes") => list(String.t()()),
        required("clientName") => String.t(),
        required("clientType") => String.t()
      }

  """
  @type register_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_client_response() :: %{
        "authorizationEndpoint" => String.t(),
        "clientId" => String.t(),
        "clientIdIssuedAt" => float(),
        "clientSecret" => String.t(),
        "clientSecretExpiresAt" => float(),
        "tokenEndpoint" => String.t()
      }

  """
  @type register_client_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slow_down_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type slow_down_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_device_authorization_request() :: %{
        required("clientId") => String.t(),
        required("clientSecret") => String.t(),
        required("startUrl") => String.t()
      }

  """
  @type start_device_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_device_authorization_response() :: %{
        "deviceCode" => String.t(),
        "expiresIn" => integer(),
        "interval" => integer(),
        "userCode" => String.t(),
        "verificationUri" => String.t(),
        "verificationUriComplete" => String.t()
      }

  """
  @type start_device_authorization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_client_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type unauthorized_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_grant_type_exception() :: %{
        "error" => String.t(),
        "error_description" => String.t()
      }

  """
  @type unsupported_grant_type_exception() :: %{String.t() => any()}

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

  The access token can be used to fetch short-term credentials for the assigned
  AWS accounts or to access application APIs using `bearer` authentication.
  """
  @spec create_token(map(), create_token_request(), list()) ::
          {:ok, create_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_token_errors()}
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
      200
    )
  end

  @doc """
  Creates and returns access and refresh tokens for clients and applications that
  are
  authenticated using IAM entities.

  The access token can be used to fetch short-term credentials
  for the assigned Amazon Web Services accounts or to access application APIs
  using `bearer`
  authentication.
  """
  @spec create_token_with_iam(map(), create_token_with_iam_request(), list()) ::
          {:ok, create_token_with_iam_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_token_with_iam_errors()}
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
      200
    )
  end

  @doc """
  Registers a client with IAM Identity Center.

  This allows clients to initiate device authorization.
  The output should be persisted for reuse through many authentication requests.
  """
  @spec register_client(map(), register_client_request(), list()) ::
          {:ok, register_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_client_errors()}
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
          | {:error, start_device_authorization_errors()}
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
      200
    )
  end
end
