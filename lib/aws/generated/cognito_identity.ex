# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CognitoIdentity do
  @moduledoc """
  Amazon Cognito Federated Identities

  Amazon Cognito Federated Identities is a web service that delivers scoped
  temporary credentials to mobile devices and other untrusted environments.

  It uniquely identifies a device and supplies the user with a consistent identity
  over the lifetime of an application.

  Using Amazon Cognito Federated Identities, you can enable authentication with
  one or more third-party identity providers (Facebook, Google, or Login with
  Amazon) or an Amazon Cognito user pool, and you can also choose to support
  unauthenticated access from your app. Cognito delivers a unique identifier for
  each user and acts as an OpenID token provider trusted by AWS Security Token
  Service (STS) to access temporary, limited-privilege AWS credentials.

  For a description of the authentication flow from the Amazon Cognito Developer
  Guide see [Authentication Flow](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html).

  For more information see [Amazon Cognito Federated Identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2014-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cognito-identity",
      global?: false,
      protocol: "json",
      service_id: "Cognito Identity",
      signature_version: "v4",
      signing_name: "cognito-identity",
      target_prefix: "AWSCognitoIdentityService"
    }
  end

  @doc """
  Creates a new identity pool.

  The identity pool is a store of user identity information that is specific to
  your AWS account. The keys for `SupportedLoginProviders` are as follows:

    * Facebook: `graph.facebook.com`

    * Google: `accounts.google.com`

    * Amazon: `www.amazon.com`

    * Twitter: `api.twitter.com`

    * Digits: `www.digits.com`

  You must use AWS Developer credentials to call this API.
  """
  def create_identity_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIdentityPool", input, options)
  end

  @doc """
  Deletes identities from an identity pool.

  You can specify a list of 1-60 identities that you want to delete.

  You must use AWS Developer credentials to call this API.
  """
  def delete_identities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIdentities", input, options)
  end

  @doc """
  Deletes an identity pool.

  Once a pool is deleted, users will not be able to authenticate with the pool.

  You must use AWS Developer credentials to call this API.
  """
  def delete_identity_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIdentityPool", input, options)
  end

  @doc """
  Returns metadata related to the given identity, including when the identity was
  created and any associated linked logins.

  You must use AWS Developer credentials to call this API.
  """
  def describe_identity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIdentity", input, options)
  end

  @doc """
  Gets details about a particular identity pool, including the pool name, ID
  description, creation date, and current number of users.

  You must use AWS Developer credentials to call this API.
  """
  def describe_identity_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIdentityPool", input, options)
  end

  @doc """
  Returns credentials for the provided identity ID.

  Any provided logins will be validated against supported login providers. If the
  token is for cognito-identity.amazonaws.com, it will be passed through to AWS
  Security Token Service with the appropriate role for the token.

  This is a public API. You do not need any credentials to call this API.
  """
  def get_credentials_for_identity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCredentialsForIdentity", input, options)
  end

  @doc """
  Generates (or retrieves) a Cognito ID.

  Supplying multiple logins will create an implicit linked account.

  This is a public API. You do not need any credentials to call this API.
  """
  def get_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetId", input, options)
  end

  @doc """
  Gets the roles for an identity pool.

  You must use AWS Developer credentials to call this API.
  """
  def get_identity_pool_roles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIdentityPoolRoles", input, options)
  end

  @doc """
  Gets an OpenID token, using a known Cognito ID.

  This known Cognito ID is returned by `GetId`. You can optionally add additional
  logins for the identity. Supplying multiple logins creates an implicit link.

  The OpenID token is valid for 10 minutes.

  This is a public API. You do not need any credentials to call this API.
  """
  def get_open_id_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOpenIdToken", input, options)
  end

  @doc """
  Registers (or retrieves) a Cognito `IdentityId` and an OpenID Connect token for
  a user authenticated by your backend authentication process.

  Supplying multiple logins will create an implicit linked account. You can only
  specify one developer provider as part of the `Logins` map, which is linked to
  the identity pool. The developer provider is the "domain" by which Cognito will
  refer to your users.

  You can use `GetOpenIdTokenForDeveloperIdentity` to create a new identity and to
  link new logins (that is, user credentials issued by a public provider or
  developer provider) to an existing identity. When you want to create a new
  identity, the `IdentityId` should be null. When you want to associate a new
  login with an existing authenticated/unauthenticated identity, you can do so by
  providing the existing `IdentityId`. This API will create the identity in the
  specified `IdentityPoolId`.

  You must use AWS Developer credentials to call this API.
  """
  def get_open_id_token_for_developer_identity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOpenIdTokenForDeveloperIdentity", input, options)
  end

  @doc """
  Use `GetPrincipalTagAttributeMap` to list all mappings between `PrincipalTags`
  and user attributes.
  """
  def get_principal_tag_attribute_map(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPrincipalTagAttributeMap", input, options)
  end

  @doc """
  Lists the identities in an identity pool.

  You must use AWS Developer credentials to call this API.
  """
  def list_identities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListIdentities", input, options)
  end

  @doc """
  Lists all of the Cognito identity pools registered for your account.

  You must use AWS Developer credentials to call this API.
  """
  def list_identity_pools(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListIdentityPools", input, options)
  end

  @doc """
  Lists the tags that are assigned to an Amazon Cognito identity pool.

  A tag is a label that you can apply to identity pools to categorize and manage
  them in different ways, such as by purpose, owner, environment, or other
  criteria.

  You can use this action up to 10 times per second, per account.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Retrieves the `IdentityID` associated with a `DeveloperUserIdentifier` or the
  list of `DeveloperUserIdentifier` values associated with an `IdentityId` for an
  existing identity.

  Either `IdentityID` or `DeveloperUserIdentifier` must not be null. If you supply
  only one of these values, the other value will be searched in the database and
  returned as a part of the response. If you supply both,
  `DeveloperUserIdentifier` will be matched against `IdentityID`. If the values
  are verified against the database, the response returns both values and is the
  same as the request. Otherwise a `ResourceConflictException` is thrown.

  `LookupDeveloperIdentity` is intended for low-throughput control plane
  operations: for example, to enable customer service to locate an identity ID by
  username. If you are using it for higher-volume operations such as user
  authentication, your requests are likely to be throttled.
  `GetOpenIdTokenForDeveloperIdentity` is a better option for higher-volume
  operations for user authentication.

  You must use AWS Developer credentials to call this API.
  """
  def lookup_developer_identity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "LookupDeveloperIdentity", input, options)
  end

  @doc """
  Merges two users having different `IdentityId`s, existing in the same identity
  pool, and identified by the same developer provider.

  You can use this action to request that discrete users be merged and identified
  as a single user in the Cognito environment. Cognito associates the given source
  user (`SourceUserIdentifier`) with the `IdentityId` of the
  `DestinationUserIdentifier`. Only developer-authenticated users can be merged.
  If the users to be merged are associated with the same public provider, but as
  two different users, an exception will be thrown.

  The number of linked logins is limited to 20. So, the number of linked logins
  for the source user, `SourceUserIdentifier`, and the destination user,
  `DestinationUserIdentifier`, together should not be larger than 20. Otherwise,
  an exception will be thrown.

  You must use AWS Developer credentials to call this API.
  """
  def merge_developer_identities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MergeDeveloperIdentities", input, options)
  end

  @doc """
  Sets the roles for an identity pool.

  These roles are used when making calls to `GetCredentialsForIdentity` action.

  You must use AWS Developer credentials to call this API.
  """
  def set_identity_pool_roles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetIdentityPoolRoles", input, options)
  end

  @doc """
  You can use this operation to use default (username and clientID) attribute or
  custom attribute mappings.
  """
  def set_principal_tag_attribute_map(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetPrincipalTagAttributeMap", input, options)
  end

  @doc """
  Assigns a set of tags to the specified Amazon Cognito identity pool.

  A tag is a label that you can use to categorize and manage identity pools in
  different ways, such as by purpose, owner, environment, or other criteria.

  Each tag consists of a key and value, both of which you define. A key is a
  general category for more specific values. For example, if you have two versions
  of an identity pool, one for testing and another for production, you might
  assign an `Environment` tag key to both identity pools. The value of this key
  might be `Test` for one identity pool and `Production` for the other.

  Tags are useful for cost tracking and access control. You can activate your tags
  so that they appear on the Billing and Cost Management console, where you can
  track the costs associated with your identity pools. In an IAM policy, you can
  constrain permissions for identity pools based on specific tags or tag values.

  You can use this action up to 5 times per second, per account. An identity pool
  can have as many as 50 tags.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Unlinks a `DeveloperUserIdentifier` from an existing identity.

  Unlinked developer users will be considered new identities next time they are
  seen. If, for a given Cognito identity, you remove all federated identities as
  well as the developer user identifier, the Cognito identity becomes
  inaccessible.

  You must use AWS Developer credentials to call this API.
  """
  def unlink_developer_identity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnlinkDeveloperIdentity", input, options)
  end

  @doc """
  Unlinks a federated identity from an existing account.

  Unlinked logins will be considered new identities next time they are seen.
  Removing the last linked login will make this identity inaccessible.

  This is a public API. You do not need any credentials to call this API.
  """
  def unlink_identity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnlinkIdentity", input, options)
  end

  @doc """
  Removes the specified tags from the specified Amazon Cognito identity pool.

  You can use this action up to 5 times per second, per account
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an identity pool.

  You must use AWS Developer credentials to call this API.
  """
  def update_identity_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateIdentityPool", input, options)
  end
end
