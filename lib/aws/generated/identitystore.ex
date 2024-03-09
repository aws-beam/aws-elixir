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

  def metadata do
    %{
      api_version: "2020-06-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "identitystore",
      global?: false,
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
  def create_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGroup", input, options)
  end

  @doc """
  Creates a relationship between a member and a group.

  The following identifiers must be specified: `GroupId`, `IdentityStoreId`, and
  `MemberId`.
  """
  def create_group_membership(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGroupMembership", input, options)
  end

  @doc """
  Creates a user within the specified identity store.
  """
  def create_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUser", input, options)
  end

  @doc """
  Delete a group within an identity store given `GroupId`.
  """
  def delete_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGroup", input, options)
  end

  @doc """
  Delete a membership within a group given `MembershipId`.
  """
  def delete_group_membership(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGroupMembership", input, options)
  end

  @doc """
  Deletes a user within an identity store given `UserId`.
  """
  def delete_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def describe_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def describe_group_membership(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def describe_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def get_group_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def get_group_membership_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def get_user_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def is_member_in_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def list_group_memberships(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def list_group_memberships_for_member(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def list_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def list_users(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUsers", input, options)
  end

  @doc """
  For the specified group in the specified identity store, updates the group
  metadata and attributes.
  """
  def update_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGroup", input, options)
  end

  @doc """
  For the specified user in the specified identity store, updates the user
  metadata and attributes.
  """
  def update_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUser", input, options)
  end
end
