# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Cognito do
  @moduledoc """
  Amazon Cognito

  Amazon Cognito is a web service that delivers scoped temporary credentials
  to mobile devices and other untrusted environments. Amazon Cognito uniquely
  identifies a device and supplies the user with a consistent identity over
  the lifetime of an application.

  Using Amazon Cognito, you can enable authentication with one or more
  third-party identity providers (Facebook, Google, or Login with Amazon),
  and you can also choose to support unauthenticated access from your app.
  Cognito delivers a unique identifier for each user and acts as an OpenID
  token provider trusted by AWS Security Token Service (STS) to access
  temporary, limited-privilege AWS credentials.

  To provide end-user credentials, first make an unsigned call to `GetId`. If
  the end user is authenticated with one of the supported identity providers,
  set the `Logins` map with the identity provider token. `GetId` returns a
  unique identifier for the user.

  Next, make an unsigned call to `GetCredentialsForIdentity`. This call
  expects the same `Logins` map as the `GetId` call, as well as the
  `IdentityID` originally returned by `GetId`. Assuming your identity pool
  has been configured via the `SetIdentityPoolRoles` operation,
  `GetCredentialsForIdentity` will return AWS credentials for your use. If
  your pool has not been configured with `SetIdentityPoolRoles`, or if you
  want to follow legacy flow, make an unsigned call to `GetOpenIdToken`,
  which returns the OpenID token necessary to call STS and retrieve AWS
  credentials. This call expects the same `Logins` map as the `GetId` call,
  as well as the `IdentityID` originally returned by `GetId`. The token
  returned by `GetOpenIdToken` can be passed to the STS operation
  [AssumeRoleWithWebIdentity](http://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoleWithWebIdentity.html)
  to retrieve AWS credentials.

  If you want to use Amazon Cognito in an Android, iOS, or Unity application,
  you will probably want to make API calls via the AWS Mobile SDK. To learn
  more, see the [AWS Mobile SDK Developer
  Guide](http://docs.aws.amazon.com/mobile/index.html).
  """

  @doc """
  Creates a new identity pool. The identity pool is a store of user identity
  information that is specific to your AWS account. The limit on identity
  pools is 60 per account. The keys for `SupportedLoginProviders` are as
  follows: <ul> <li>Facebook: `graph.facebook.com`</li> <li>Google:
  `accounts.google.com`</li> <li>Amazon: `www.amazon.com`</li> <li>Twitter:
  `api.twitter.com`</li> <li>Digits: `www.digits.com`</li> </ul> You must use
  AWS Developer credentials to call this API.
  """
  def create_identity_pool(client, input, options \\ []) do
    request(client, "CreateIdentityPool", input, options)
  end

  @doc """
  Deletes identities from an identity pool. You can specify a list of 1-60
  identities that you want to delete.

  You must use AWS Developer credentials to call this API.
  """
  def delete_identities(client, input, options \\ []) do
    request(client, "DeleteIdentities", input, options)
  end

  @doc """
  Deletes a user pool. Once a pool is deleted, users will not be able to
  authenticate with the pool.

  You must use AWS Developer credentials to call this API.
  """
  def delete_identity_pool(client, input, options \\ []) do
    request(client, "DeleteIdentityPool", input, options)
  end

  @doc """
  Returns metadata related to the given identity, including when the identity
  was created and any associated linked logins.

  You must use AWS Developer credentials to call this API.
  """
  def describe_identity(client, input, options \\ []) do
    request(client, "DescribeIdentity", input, options)
  end

  @doc """
  Gets details about a particular identity pool, including the pool name, ID
  description, creation date, and current number of users.

  You must use AWS Developer credentials to call this API.
  """
  def describe_identity_pool(client, input, options \\ []) do
    request(client, "DescribeIdentityPool", input, options)
  end

  @doc """
  Returns credentials for the provided identity ID. Any provided logins will
  be validated against supported login providers. If the token is for
  cognito-identity.amazonaws.com, it will be passed through to AWS Security
  Token Service with the appropriate role for the token.

  This is a public API. You do not need any credentials to call this API.
  """
  def get_credentials_for_identity(client, input, options \\ []) do
    request(client, "GetCredentialsForIdentity", input, options)
  end

  @doc """
  Generates (or retrieves) a Cognito ID. Supplying multiple logins will
  create an implicit linked account.

  This is a public API. You do not need any credentials to call this API.
  """
  def get_id(client, input, options \\ []) do
    request(client, "GetId", input, options)
  end

  @doc """
  Gets the roles for an identity pool.

  You must use AWS Developer credentials to call this API.
  """
  def get_identity_pool_roles(client, input, options \\ []) do
    request(client, "GetIdentityPoolRoles", input, options)
  end

  @doc """
  Gets an OpenID token, using a known Cognito ID. This known Cognito ID is
  returned by `GetId`. You can optionally add additional logins for the
  identity. Supplying multiple logins creates an implicit link.

  The OpenId token is valid for 15 minutes.

  This is a public API. You do not need any credentials to call this API.
  """
  def get_open_id_token(client, input, options \\ []) do
    request(client, "GetOpenIdToken", input, options)
  end

  @doc """
  Registers (or retrieves) a Cognito `IdentityId` and an OpenID Connect token
  for a user authenticated by your backend authentication process. Supplying
  multiple logins will create an implicit linked account. You can only
  specify one developer provider as part of the `Logins` map, which is linked
  to the identity pool. The developer provider is the "domain" by which
  Cognito will refer to your users.

  You can use `GetOpenIdTokenForDeveloperIdentity` to create a new identity
  and to link new logins (that is, user credentials issued by a public
  provider or developer provider) to an existing identity. When you want to
  create a new identity, the `IdentityId` should be null. When you want to
  associate a new login with an existing authenticated/unauthenticated
  identity, you can do so by providing the existing `IdentityId`. This API
  will create the identity in the specified `IdentityPoolId`.

  You must use AWS Developer credentials to call this API.
  """
  def get_open_id_token_for_developer_identity(client, input, options \\ []) do
    request(client, "GetOpenIdTokenForDeveloperIdentity", input, options)
  end

  @doc """
  Lists the identities in a pool.

  You must use AWS Developer credentials to call this API.
  """
  def list_identities(client, input, options \\ []) do
    request(client, "ListIdentities", input, options)
  end

  @doc """
  Lists all of the Cognito identity pools registered for your account.

  You must use AWS Developer credentials to call this API.
  """
  def list_identity_pools(client, input, options \\ []) do
    request(client, "ListIdentityPools", input, options)
  end

  @doc """
  Retrieves the `IdentityID` associated with a `DeveloperUserIdentifier` or
  the list of `DeveloperUserIdentifier`s associated with an `IdentityId` for
  an existing identity. Either `IdentityID` or `DeveloperUserIdentifier` must
  not be null. If you supply only one of these values, the other value will
  be searched in the database and returned as a part of the response. If you
  supply both, `DeveloperUserIdentifier` will be matched against
  `IdentityID`. If the values are verified against the database, the response
  returns both values and is the same as the request. Otherwise a
  `ResourceConflictException` is thrown.

  You must use AWS Developer credentials to call this API.
  """
  def lookup_developer_identity(client, input, options \\ []) do
    request(client, "LookupDeveloperIdentity", input, options)
  end

  @doc """
  Merges two users having different `IdentityId`s, existing in the same
  identity pool, and identified by the same developer provider. You can use
  this action to request that discrete users be merged and identified as a
  single user in the Cognito environment. Cognito associates the given source
  user (`SourceUserIdentifier`) with the `IdentityId` of the
  `DestinationUserIdentifier`. Only developer-authenticated users can be
  merged. If the users to be merged are associated with the same public
  provider, but as two different users, an exception will be thrown.

  You must use AWS Developer credentials to call this API.
  """
  def merge_developer_identities(client, input, options \\ []) do
    request(client, "MergeDeveloperIdentities", input, options)
  end

  @doc """
  Sets the roles for an identity pool. These roles are used when making calls
  to `GetCredentialsForIdentity` action.

  You must use AWS Developer credentials to call this API.
  """
  def set_identity_pool_roles(client, input, options \\ []) do
    request(client, "SetIdentityPoolRoles", input, options)
  end

  @doc """
  Unlinks a `DeveloperUserIdentifier` from an existing identity. Unlinked
  developer users will be considered new identities next time they are seen.
  If, for a given Cognito identity, you remove all federated identities as
  well as the developer user identifier, the Cognito identity becomes
  inaccessible.

  You must use AWS Developer credentials to call this API.
  """
  def unlink_developer_identity(client, input, options \\ []) do
    request(client, "UnlinkDeveloperIdentity", input, options)
  end

  @doc """
  Unlinks a federated identity from an existing account. Unlinked logins will
  be considered new identities next time they are seen. Removing the last
  linked login will make this identity inaccessible.

  This is a public API. You do not need any credentials to call this API.
  """
  def unlink_identity(client, input, options \\ []) do
    request(client, "UnlinkIdentity", input, options)
  end

  @doc """
  Updates a user pool.

  You must use AWS Developer credentials to call this API.
  """
  def update_identity_pool(client, input, options \\ []) do
    request(client, "UpdateIdentityPool", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "cognito-identity"}
    host = get_host("cognito-identity", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AWSCognitoIdentityService.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
