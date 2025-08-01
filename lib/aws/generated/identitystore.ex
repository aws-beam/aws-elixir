# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Identitystore do
  @moduledoc """
  The Identity Store service used by IAM Identity Center provides a single place
  to retrieve all of
  your identities (users and groups).

  For more information, see the [IAM Identity Center User Guide](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html).

  This reference guide describes the identity store operations that you can call
  programmatically and includes detailed information about data types and errors.

  IAM Identity Center uses the `sso` and `identitystore` API namespaces.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_group_id_request() :: %{
        required("AlternateIdentifier") => list(),
        required("IdentityStoreId") => String.t() | Atom.t()
      }
      
  """
  @type get_group_id_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      external_id() :: %{
        "Id" => String.t() | Atom.t(),
        "Issuer" => String.t() | Atom.t()
      }
      
  """
  @type external_id() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      name() :: %{
        "FamilyName" => String.t() | Atom.t(),
        "Formatted" => String.t() | Atom.t(),
        "GivenName" => String.t() | Atom.t(),
        "HonorificPrefix" => String.t() | Atom.t(),
        "HonorificSuffix" => String.t() | Atom.t(),
        "MiddleName" => String.t() | Atom.t()
      }
      
  """
  @type name() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_group_membership_id_response() :: %{
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("MembershipId") => String.t() | Atom.t()
      }
      
  """
  @type get_group_membership_id_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_response() :: %{}
      
  """
  @type update_user_response() :: %{}

  @typedoc """

  ## Example:
      
      unique_attribute() :: %{
        "AttributePath" => String.t() | Atom.t(),
        "AttributeValue" => any()
      }
      
  """
  @type unique_attribute() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_group_memberships_for_member_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        required("GroupMemberships") => list(group_membership())
      }
      
  """
  @type list_group_memberships_for_member_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      phone_number() :: %{
        "Primary" => boolean(),
        "Type" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type phone_number() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      email() :: %{
        "Primary" => boolean(),
        "Type" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type email() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      is_member_in_groups_request() :: %{
        required("GroupIds") => list(String.t() | Atom.t()),
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("MemberId") => list()
      }
      
  """
  @type is_member_in_groups_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_group_request() :: %{
        required("GroupId") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("Operations") => list(attribute_operation())
      }
      
  """
  @type update_group_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_group_membership_id_request() :: %{
        required("GroupId") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("MemberId") => list()
      }
      
  """
  @type get_group_membership_id_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "Reason" => String.t() | Atom.t(),
        "RequestId" => String.t() | Atom.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "RequestId" => String.t() | Atom.t(),
        "ResourceId" => String.t() | Atom.t(),
        "ResourceType" => String.t() | Atom.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "RequestId" => String.t() | Atom.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        required("Users") => list(user())
      }
      
  """
  @type list_users_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_group_memberships_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("GroupId") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t()
      }
      
  """
  @type list_group_memberships_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_group_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("DisplayName") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t()
      }
      
  """
  @type create_group_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_operation() :: %{
        "AttributePath" => String.t() | Atom.t(),
        "AttributeValue" => any()
      }
      
  """
  @type attribute_operation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_group_membership_request() :: %{
        required("GroupId") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("MemberId") => list()
      }
      
  """
  @type create_group_membership_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_group_membership_request() :: %{
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("MembershipId") => String.t() | Atom.t()
      }
      
  """
  @type describe_group_membership_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      is_member_in_groups_response() :: %{
        required("Results") => list(group_membership_existence_result())
      }
      
  """
  @type is_member_in_groups_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("UserId") => String.t() | Atom.t()
      }
      
  """
  @type delete_user_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "AttributePath" => String.t() | Atom.t(),
        "AttributeValue" => String.t() | Atom.t()
      }
      
  """
  @type filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      group_membership() :: %{
        "GroupId" => String.t() | Atom.t(),
        "IdentityStoreId" => String.t() | Atom.t(),
        "MemberId" => list(),
        "MembershipId" => String.t() | Atom.t()
      }
      
  """
  @type group_membership() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_response() :: %{}
      
  """
  @type delete_user_response() :: %{}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "RequestId" => String.t() | Atom.t(),
        "RetryAfterSeconds" => integer()
      }
      
  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_response() :: %{
        optional("Addresses") => list(address()),
        optional("DisplayName") => String.t() | Atom.t(),
        optional("Emails") => list(email()),
        optional("ExternalIds") => list(external_id()),
        optional("Locale") => String.t() | Atom.t(),
        optional("Name") => name(),
        optional("NickName") => String.t() | Atom.t(),
        optional("PhoneNumbers") => list(phone_number()),
        optional("PreferredLanguage") => String.t() | Atom.t(),
        optional("ProfileUrl") => String.t() | Atom.t(),
        optional("Timezone") => String.t() | Atom.t(),
        optional("Title") => String.t() | Atom.t(),
        optional("UserName") => String.t() | Atom.t(),
        optional("UserType") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("UserId") => String.t() | Atom.t()
      }
      
  """
  @type describe_user_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_group_membership_response() :: %{
        required("GroupId") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("MemberId") => list(),
        required("MembershipId") => String.t() | Atom.t()
      }
      
  """
  @type describe_group_membership_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_group_membership_response() :: %{}
      
  """
  @type delete_group_membership_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_group_response() :: %{}
      
  """
  @type delete_group_response() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "RequestId" => String.t() | Atom.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_request() :: %{
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("UserId") => String.t() | Atom.t()
      }
      
  """
  @type describe_user_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_request() :: %{
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("Operations") => list(attribute_operation()),
        required("UserId") => String.t() | Atom.t()
      }
      
  """
  @type update_user_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "RequestId" => String.t() | Atom.t()
      }
      
  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      group_membership_existence_result() :: %{
        "GroupId" => String.t() | Atom.t(),
        "MemberId" => list(),
        "MembershipExists" => boolean()
      }
      
  """
  @type group_membership_existence_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_group_membership_request() :: %{
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("MembershipId") => String.t() | Atom.t()
      }
      
  """
  @type delete_group_membership_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "RequestId" => String.t() | Atom.t(),
        "RetryAfterSeconds" => integer()
      }
      
  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      group() :: %{
        "Description" => String.t() | Atom.t(),
        "DisplayName" => String.t() | Atom.t(),
        "ExternalIds" => list(external_id()),
        "GroupId" => String.t() | Atom.t(),
        "IdentityStoreId" => String.t() | Atom.t()
      }
      
  """
  @type group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      user() :: %{
        "Addresses" => list(address()),
        "DisplayName" => String.t() | Atom.t(),
        "Emails" => list(email()),
        "ExternalIds" => list(external_id()),
        "IdentityStoreId" => String.t() | Atom.t(),
        "Locale" => String.t() | Atom.t(),
        "Name" => name(),
        "NickName" => String.t() | Atom.t(),
        "PhoneNumbers" => list(phone_number()),
        "PreferredLanguage" => String.t() | Atom.t(),
        "ProfileUrl" => String.t() | Atom.t(),
        "Timezone" => String.t() | Atom.t(),
        "Title" => String.t() | Atom.t(),
        "UserId" => String.t() | Atom.t(),
        "UserName" => String.t() | Atom.t(),
        "UserType" => String.t() | Atom.t()
      }
      
  """
  @type user() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_group_request() :: %{
        required("GroupId") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t()
      }
      
  """
  @type describe_group_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_group_request() :: %{
        required("GroupId") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t()
      }
      
  """
  @type delete_group_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t()
      }
      
  """
  @type list_users_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_group_response() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("DisplayName") => String.t() | Atom.t(),
        optional("ExternalIds") => list(external_id()),
        required("GroupId") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t()
      }
      
  """
  @type describe_group_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_group_membership_response() :: %{
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("MembershipId") => String.t() | Atom.t()
      }
      
  """
  @type create_group_membership_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_id_response() :: %{
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("UserId") => String.t() | Atom.t()
      }
      
  """
  @type get_user_id_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_group_memberships_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        required("GroupMemberships") => list(group_membership())
      }
      
  """
  @type list_group_memberships_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        required("Groups") => list(group())
      }
      
  """
  @type list_groups_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      address() :: %{
        "Country" => String.t() | Atom.t(),
        "Formatted" => String.t() | Atom.t(),
        "Locality" => String.t() | Atom.t(),
        "PostalCode" => String.t() | Atom.t(),
        "Primary" => boolean(),
        "Region" => String.t() | Atom.t(),
        "StreetAddress" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }
      
  """
  @type address() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t()
      }
      
  """
  @type list_groups_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_id_request() :: %{
        required("AlternateIdentifier") => list(),
        required("IdentityStoreId") => String.t() | Atom.t()
      }
      
  """
  @type get_user_id_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_group_id_response() :: %{
        required("GroupId") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t()
      }
      
  """
  @type get_group_id_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_response() :: %{
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("UserId") => String.t() | Atom.t()
      }
      
  """
  @type create_user_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_group_response() :: %{}
      
  """
  @type update_group_response() :: %{}

  @typedoc """

  ## Example:
      
      create_group_response() :: %{
        required("GroupId") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t()
      }
      
  """
  @type create_group_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_request() :: %{
        optional("Addresses") => list(address()),
        optional("DisplayName") => String.t() | Atom.t(),
        optional("Emails") => list(email()),
        optional("Locale") => String.t() | Atom.t(),
        optional("Name") => name(),
        optional("NickName") => String.t() | Atom.t(),
        optional("PhoneNumbers") => list(phone_number()),
        optional("PreferredLanguage") => String.t() | Atom.t(),
        optional("ProfileUrl") => String.t() | Atom.t(),
        optional("Timezone") => String.t() | Atom.t(),
        optional("Title") => String.t() | Atom.t(),
        optional("UserName") => String.t() | Atom.t(),
        optional("UserType") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t()
      }
      
  """
  @type create_user_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_group_memberships_for_member_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("IdentityStoreId") => String.t() | Atom.t(),
        required("MemberId") => list()
      }
      
  """
  @type list_group_memberships_for_member_request() :: %{String.t() | Atom.t() => any()}

  @type create_group_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_group_membership_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_user_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_group_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type delete_group_membership_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type delete_user_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type describe_group_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_group_membership_errors() ::
          validation_exception() | resource_not_found_exception()

  @type describe_user_errors() :: validation_exception() | resource_not_found_exception()

  @type get_group_id_errors() :: validation_exception() | resource_not_found_exception()

  @type get_group_membership_id_errors() ::
          validation_exception() | resource_not_found_exception()

  @type get_user_id_errors() :: validation_exception() | resource_not_found_exception()

  @type is_member_in_groups_errors() :: validation_exception() | resource_not_found_exception()

  @type list_group_memberships_errors() :: validation_exception() | resource_not_found_exception()

  @type list_group_memberships_for_member_errors() ::
          validation_exception() | resource_not_found_exception()

  @type list_groups_errors() :: validation_exception() | resource_not_found_exception()

  @type list_users_errors() :: validation_exception() | resource_not_found_exception()

  @type update_group_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_user_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-06-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "identitystore",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "identitystore",
      signature_version: "v4",
      signing_name: "identitystore",
      target_prefix: "AWSIdentityStore"
    }
  end

  @doc """
  Creates a group within the specified identity store.
  """
  @spec create_group(map(), create_group_request(), list()) ::
          {:ok, create_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_group_errors()}
  def create_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGroup", input, options)
  end

  @doc """
  Creates a relationship between a member and a group.

  The following identifiers must be specified: `GroupId`, `IdentityStoreId`, and
  `MemberId`.
  """
  @spec create_group_membership(map(), create_group_membership_request(), list()) ::
          {:ok, create_group_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_group_membership_errors()}
  def create_group_membership(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGroupMembership", input, options)
  end

  @doc """
  Creates a user within the specified identity store.
  """
  @spec create_user(map(), create_user_request(), list()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUser", input, options)
  end

  @doc """
  Delete a group within an identity store given `GroupId`.
  """
  @spec delete_group(map(), delete_group_request(), list()) ::
          {:ok, delete_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteGroup", input, options)
  end

  @doc """
  Delete a membership within a group given `MembershipId`.
  """
  @spec delete_group_membership(map(), delete_group_membership_request(), list()) ::
          {:ok, delete_group_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_group_membership_errors()}
  def delete_group_membership(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteGroupMembership", input, options)
  end

  @doc """
  Deletes a user within an identity store given `UserId`.
  """
  @spec delete_user(map(), delete_user_request(), list()) ::
          {:ok, delete_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUser", input, options)
  end

  @doc """
  Retrieves the group metadata and attributes from `GroupId` in an identity
  store.

  If you have administrator access to a member account, you can use this API from
  the member account.
  Read about [member accounts](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
  in the
  *Organizations User Guide*.
  """
  @spec describe_group(map(), describe_group_request(), list()) ::
          {:ok, describe_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_group_errors()}
  def describe_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGroup", input, options)
  end

  @doc """
  Retrieves membership metadata and attributes from `MembershipId` in an identity
  store.

  If you have administrator access to a member account, you can use this API from
  the member account.
  Read about [member accounts](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
  in the
  *Organizations User Guide*.
  """
  @spec describe_group_membership(map(), describe_group_membership_request(), list()) ::
          {:ok, describe_group_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_group_membership_errors()}
  def describe_group_membership(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGroupMembership", input, options)
  end

  @doc """
  Retrieves the user metadata and attributes from the `UserId` in an identity
  store.

  If you have administrator access to a member account, you can use this API from
  the member account.
  Read about [member accounts](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
  in the
  *Organizations User Guide*.
  """
  @spec describe_user(map(), describe_user_request(), list()) ::
          {:ok, describe_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_errors()}
  def describe_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUser", input, options)
  end

  @doc """
  Retrieves `GroupId` in an identity store.

  If you have administrator access to a member account, you can use this API from
  the member account.
  Read about [member accounts](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
  in the
  *Organizations User Guide*.
  """
  @spec get_group_id(map(), get_group_id_request(), list()) ::
          {:ok, get_group_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_group_id_errors()}
  def get_group_id(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetGroupId", input, options)
  end

  @doc """
  Retrieves the `MembershipId` in an identity store.

  If you have administrator access to a member account, you can use this API from
  the member account.
  Read about [member accounts](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
  in the
  *Organizations User Guide*.
  """
  @spec get_group_membership_id(map(), get_group_membership_id_request(), list()) ::
          {:ok, get_group_membership_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_group_membership_id_errors()}
  def get_group_membership_id(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetGroupMembershipId", input, options)
  end

  @doc """
  Retrieves the `UserId` in an identity store.

  If you have administrator access to a member account, you can use this API from
  the member account.
  Read about [member accounts](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
  in the
  *Organizations User Guide*.
  """
  @spec get_user_id(map(), get_user_id_request(), list()) ::
          {:ok, get_user_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_id_errors()}
  def get_user_id(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUserId", input, options)
  end

  @doc """
  Checks the user's membership in all requested groups and returns if the member
  exists in all queried groups.

  If you have administrator access to a member account, you can use this API from
  the member account.
  Read about [member accounts](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
  in the
  *Organizations User Guide*.
  """
  @spec is_member_in_groups(map(), is_member_in_groups_request(), list()) ::
          {:ok, is_member_in_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, is_member_in_groups_errors()}
  def is_member_in_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "IsMemberInGroups", input, options)
  end

  @doc """
  For the specified group in the specified identity store, returns the list of all
  `GroupMembership` objects and returns results in paginated form.

  If you have administrator access to a member account, you can use this API from
  the member account.
  Read about [member accounts](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
  in the
  *Organizations User Guide*.
  """
  @spec list_group_memberships(map(), list_group_memberships_request(), list()) ::
          {:ok, list_group_memberships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_group_memberships_errors()}
  def list_group_memberships(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGroupMemberships", input, options)
  end

  @doc """
  For the specified member in the specified identity store, returns the list of
  all `GroupMembership` objects and returns results in paginated form.

  If you have administrator access to a member account, you can use this API from
  the member account.
  Read about [member accounts](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
  in the
  *Organizations User Guide*.
  """
  @spec list_group_memberships_for_member(
          map(),
          list_group_memberships_for_member_request(),
          list()
        ) ::
          {:ok, list_group_memberships_for_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_group_memberships_for_member_errors()}
  def list_group_memberships_for_member(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGroupMembershipsForMember", input, options)
  end

  @doc """
  Lists all groups in the identity store.

  Returns a paginated list of complete `Group` objects.
  Filtering for a `Group` by the `DisplayName` attribute is deprecated. Instead,
  use the `GetGroupId` API action.

  If you have administrator access to a member account, you can use this API from
  the member account.
  Read about [member accounts](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
  in the
  *Organizations User Guide*.
  """
  @spec list_groups(map(), list_groups_request(), list()) ::
          {:ok, list_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_groups_errors()}
  def list_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGroups", input, options)
  end

  @doc """
  Lists all users in the identity store.

  Returns a paginated list of complete `User` objects.
  Filtering for a `User` by the `UserName` attribute is deprecated. Instead, use
  the `GetUserId` API action.

  If you have administrator access to a member account, you can use this API from
  the member account.
  Read about [member accounts](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html)
  in the
  *Organizations User Guide*.
  """
  @spec list_users(map(), list_users_request(), list()) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_users_errors()}
  def list_users(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUsers", input, options)
  end

  @doc """
  For the specified group in the specified identity store, updates the group
  metadata and attributes.
  """
  @spec update_group(map(), update_group_request(), list()) ::
          {:ok, update_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_group_errors()}
  def update_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGroup", input, options)
  end

  @doc """
  For the specified user in the specified identity store, updates the user
  metadata and attributes.
  """
  @spec update_user(map(), update_user_request(), list()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUser", input, options)
  end
end
