# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DirectoryServiceData do
  @moduledoc """
  Amazon Web Services Directory Service Data is an extension of Directory Service.

  This API reference provides detailed information
  about Directory Service Data operations and object types.

  With Directory Service Data, you can create, read, update, and delete users,
  groups, and memberships from
  your Managed Microsoft AD without additional costs and without deploying
  dedicated management
  instances. You can also perform built-in object management tasks across
  directories without
  direct network connectivity, which simplifies provisioning and access management
  to achieve
  fully automated deployments. Directory Service Data supports user and group
  write operations, such as
  `CreateUser` and `CreateGroup`, within the organizational unit (OU) of
  your Managed Microsoft AD. Directory Service Data supports read operations, such
  as `ListUsers` and
  `ListGroups`, on all users, groups, and group memberships within your
  Managed Microsoft AD and across trusted realms. Directory Service Data supports
  adding and removing group members in
  your OU and the Amazon Web Services Delegated Groups OU, so you can grant and
  deny access to specific roles
  and permissions. For more information, see [Manage users and groups](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_manage_users_groups.html)
  in the *Directory Service Administration Guide*.

  Directory management operations and configuration changes made against the
  Directory Service
  API will also reflect in Directory Service Data API with eventual consistency.
  You can expect a short delay
  between management changes, such as adding a new directory trust and calling the
  Directory Service Data API
  for the newly created trusted realm.

  Directory Service Data connects to your Managed Microsoft AD domain controllers
  and performs operations on
  underlying directory objects. When you create your Managed Microsoft AD, you
  choose subnets for domain
  controllers that Directory Service creates on your behalf. If a domain
  controller is unavailable, Directory Service Data
  uses an available domain controller. As a result, you might notice eventual
  consistency while
  objects replicate from one domain controller to another domain controller. For
  more
  information, see [What gets
  created](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html)
  in the *Directory Service Administration Guide*.
  Directory limits vary by Managed Microsoft AD edition:

    *

  **Standard edition** – Supports 8 transactions per
  second (TPS) for read operations and 4 TPS for write operations per directory.
  There's a
  concurrency limit of 10 concurrent requests.

    *

  **Enterprise edition** – Supports 16 transactions per
  second (TPS) for read operations and 8 TPS for write operations per directory.
  There's a
  concurrency limit of 10 concurrent requests.

    *

  **Amazon Web Services Account** - Supports a total of 100 TPS for
  Directory Service Data operations across all directories.

  Directory Service Data only supports the Managed Microsoft AD directory type and
  is only available in the primary
  Amazon Web Services Region. For more information, see [Managed Microsoft AD](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html)
  and [Primary vs additional Regions](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/multi-region-global-primary-additional.html)
  in the *Directory Service Administration
  Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_groups_result() :: %{
        "DirectoryId" => String.t(),
        "Groups" => list(group_summary()),
        "NextToken" => String.t(),
        "Realm" => String.t()
      }

  """
  @type list_groups_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_summary() :: %{
        "Enabled" => [boolean()],
        "GivenName" => String.t(),
        "SAMAccountName" => String.t(),
        "SID" => String.t(),
        "Surname" => String.t()
      }

  """
  @type user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_users_result() :: %{
        "DirectoryId" => String.t(),
        "NextToken" => String.t(),
        "Realm" => String.t(),
        "Users" => list(user())
      }

  """
  @type search_users_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_user_result() :: %{}

  """
  @type disable_user_result() :: %{}

  @typedoc """

  ## Example:

      create_group_result() :: %{
        "DirectoryId" => String.t(),
        "SAMAccountName" => String.t(),
        "SID" => String.t()
      }

  """
  @type create_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_group_members_request() :: %{
        optional("MaxResults") => integer(),
        optional("MemberRealm") => String.t(),
        optional("NextToken") => String.t(),
        optional("Realm") => String.t(),
        required("DirectoryId") => String.t(),
        required("SAMAccountName") => String.t()
      }

  """
  @type list_group_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_group_member_result() :: %{}

  """
  @type add_group_member_result() :: %{}

  @typedoc """

  ## Example:

      create_user_result() :: %{
        "DirectoryId" => String.t(),
        "SAMAccountName" => String.t(),
        "SID" => String.t()
      }

  """
  @type create_user_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_request() :: %{
        optional("ClientToken") => String.t(),
        optional("GroupScope") => list(any()),
        optional("GroupType") => list(any()),
        optional("OtherAttributes") => map(),
        optional("UpdateType") => list(any()),
        required("DirectoryId") => String.t(),
        required("SAMAccountName") => String.t()
      }

  """
  @type update_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_user_result() :: %{
        "DirectoryId" => String.t(),
        "DistinguishedName" => String.t(),
        "EmailAddress" => String.t(),
        "Enabled" => [boolean()],
        "GivenName" => String.t(),
        "OtherAttributes" => map(),
        "Realm" => String.t(),
        "SAMAccountName" => String.t(),
        "SID" => String.t(),
        "Surname" => String.t(),
        "UserPrincipalName" => String.t()
      }

  """
  @type describe_user_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_groups_result() :: %{
        "DirectoryId" => String.t(),
        "Groups" => list(group()),
        "NextToken" => String.t(),
        "Realm" => String.t()
      }

  """
  @type search_groups_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_result() :: %{}

  """
  @type delete_group_result() :: %{}

  @typedoc """

  ## Example:

      search_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Realm") => String.t(),
        required("DirectoryId") => String.t(),
        required("SearchAttributes") => list(String.t()),
        required("SearchString") => String.t()
      }

  """
  @type search_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_group_member_request() :: %{
        optional("ClientToken") => String.t(),
        optional("MemberRealm") => String.t(),
        required("DirectoryId") => String.t(),
        required("GroupName") => String.t(),
        required("MemberName") => String.t()
      }

  """
  @type remove_group_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_group_members_result() :: %{
        "DirectoryId" => String.t(),
        "MemberRealm" => String.t(),
        "Members" => list(member()),
        "NextToken" => String.t(),
        "Realm" => String.t()
      }

  """
  @type list_group_members_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Realm") => String.t(),
        required("DirectoryId") => String.t(),
        required("SearchAttributes") => list(String.t()),
        required("SearchString") => String.t()
      }

  """
  @type search_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_request() :: %{
        optional("ClientToken") => String.t(),
        optional("GroupScope") => list(any()),
        optional("GroupType") => list(any()),
        optional("OtherAttributes") => map(),
        required("DirectoryId") => String.t(),
        required("SAMAccountName") => String.t()
      }

  """
  @type create_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_result() :: %{
        "DirectoryId" => String.t(),
        "NextToken" => String.t(),
        "Realm" => String.t(),
        "Users" => list(user_summary())
      }

  """
  @type list_users_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_request() :: %{
        optional("ClientToken") => String.t(),
        required("DirectoryId") => String.t(),
        required("SAMAccountName") => String.t()
      }

  """
  @type delete_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_user_request() :: %{
        optional("OtherAttributes") => list(String.t()),
        optional("Realm") => String.t(),
        required("DirectoryId") => String.t(),
        required("SAMAccountName") => String.t()
      }

  """
  @type describe_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_result() :: %{}

  """
  @type update_user_result() :: %{}

  @typedoc """

  ## Example:

      update_user_request() :: %{
        optional("ClientToken") => String.t(),
        optional("EmailAddress") => String.t(),
        optional("GivenName") => String.t(),
        optional("OtherAttributes") => map(),
        optional("Surname") => String.t(),
        optional("UpdateType") => list(any()),
        required("DirectoryId") => String.t(),
        required("SAMAccountName") => String.t()
      }

  """
  @type update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_result() :: %{}

  """
  @type delete_user_result() :: %{}

  @typedoc """

  ## Example:

      directory_unavailable_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type directory_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_result() :: %{}

  """
  @type update_group_result() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t(),
        "RetryAfterSeconds" => [integer()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group() :: %{
        "DistinguishedName" => String.t(),
        "GroupScope" => list(any()),
        "GroupType" => list(any()),
        "OtherAttributes" => map(),
        "SAMAccountName" => String.t(),
        "SID" => String.t()
      }

  """
  @type group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_group_member_request() :: %{
        optional("ClientToken") => String.t(),
        optional("MemberRealm") => String.t(),
        required("DirectoryId") => String.t(),
        required("GroupName") => String.t(),
        required("MemberName") => String.t()
      }

  """
  @type add_group_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user() :: %{
        "DistinguishedName" => String.t(),
        "EmailAddress" => String.t(),
        "Enabled" => [boolean()],
        "GivenName" => String.t(),
        "OtherAttributes" => map(),
        "SAMAccountName" => String.t(),
        "SID" => String.t(),
        "Surname" => String.t(),
        "UserPrincipalName" => String.t()
      }

  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_group_request() :: %{
        optional("OtherAttributes") => list(String.t()),
        optional("Realm") => String.t(),
        required("DirectoryId") => String.t(),
        required("SAMAccountName") => String.t()
      }

  """
  @type describe_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_groups_for_member_request() :: %{
        optional("MaxResults") => integer(),
        optional("MemberRealm") => String.t(),
        optional("NextToken") => String.t(),
        optional("Realm") => String.t(),
        required("DirectoryId") => String.t(),
        required("SAMAccountName") => String.t()
      }

  """
  @type list_groups_for_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_request() :: %{
        optional("ClientToken") => String.t(),
        required("DirectoryId") => String.t(),
        required("SAMAccountName") => String.t()
      }

  """
  @type delete_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member() :: %{
        "MemberType" => list(any()),
        "SAMAccountName" => String.t(),
        "SID" => String.t()
      }

  """
  @type member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Realm") => String.t(),
        required("DirectoryId") => String.t()
      }

  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_group_member_result() :: %{}

  """
  @type remove_group_member_result() :: %{}

  @typedoc """

  ## Example:

      list_groups_for_member_result() :: %{
        "DirectoryId" => String.t(),
        "Groups" => list(group_summary()),
        "MemberRealm" => String.t(),
        "NextToken" => String.t(),
        "Realm" => String.t()
      }

  """
  @type list_groups_for_member_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_group_result() :: %{
        "DirectoryId" => String.t(),
        "DistinguishedName" => String.t(),
        "GroupScope" => list(any()),
        "GroupType" => list(any()),
        "OtherAttributes" => map(),
        "Realm" => String.t(),
        "SAMAccountName" => String.t(),
        "SID" => String.t()
      }

  """
  @type describe_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_summary() :: %{
        "GroupScope" => list(any()),
        "GroupType" => list(any()),
        "SAMAccountName" => String.t(),
        "SID" => String.t()
      }

  """
  @type group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Realm") => String.t(),
        required("DirectoryId") => String.t()
      }

  """
  @type list_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_user_request() :: %{
        optional("ClientToken") => String.t(),
        required("DirectoryId") => String.t(),
        required("SAMAccountName") => String.t()
      }

  """
  @type disable_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_request() :: %{
        optional("ClientToken") => String.t(),
        optional("EmailAddress") => String.t(),
        optional("GivenName") => String.t(),
        optional("OtherAttributes") => map(),
        optional("Surname") => String.t(),
        required("DirectoryId") => String.t(),
        required("SAMAccountName") => String.t()
      }

  """
  @type create_user_request() :: %{String.t() => any()}

  @type add_group_member_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_group_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_user_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_group_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_user_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_group_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_user_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disable_user_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_group_members_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_groups_for_member_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_users_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type remove_group_member_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type search_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type search_users_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_group_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_user_errors() ::
          throttling_exception()
          | validation_exception()
          | directory_unavailable_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-05-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ds-data",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Directory Service Data",
      signature_version: "v4",
      signing_name: "ds-data",
      target_prefix: nil
    }
  end

  @doc """
  Adds an existing user, group, or computer as a group member.
  """
  @spec add_group_member(map(), add_group_member_request(), list()) ::
          {:ok, add_group_member_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_group_member_errors()}
  def add_group_member(%Client{} = client, input, options \\ []) do
    url_path = "/GroupMemberships/AddGroupMember"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Creates a new group.
  """
  @spec create_group(map(), create_group_request(), list()) ::
          {:ok, create_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_group_errors()}
  def create_group(%Client{} = client, input, options \\ []) do
    url_path = "/Groups/CreateGroup"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Creates a new user.
  """
  @spec create_user(map(), create_user_request(), list()) ::
          {:ok, create_user_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) do
    url_path = "/Users/CreateUser"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Deletes a group.
  """
  @spec delete_group(map(), delete_group_request(), list()) ::
          {:ok, delete_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, input, options \\ []) do
    url_path = "/Groups/DeleteGroup"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Deletes a user.
  """
  @spec delete_user(map(), delete_user_request(), list()) ::
          {:ok, delete_user_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, input, options \\ []) do
    url_path = "/Users/DeleteUser"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Returns information about a specific group.
  """
  @spec describe_group(map(), describe_group_request(), list()) ::
          {:ok, describe_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_group_errors()}
  def describe_group(%Client{} = client, input, options \\ []) do
    url_path = "/Groups/DescribeGroup"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Returns information about a specific user.
  """
  @spec describe_user(map(), describe_user_request(), list()) ::
          {:ok, describe_user_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_errors()}
  def describe_user(%Client{} = client, input, options \\ []) do
    url_path = "/Users/DescribeUser"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Deactivates an active user account.

  For information about how to enable an inactive user
  account, see
  [ResetUserPassword](https://docs.aws.amazon.com/directoryservice/latest/devguide/API_ResetUserPassword.html)
  in the *Directory Service API Reference*.
  """
  @spec disable_user(map(), disable_user_request(), list()) ::
          {:ok, disable_user_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_user_errors()}
  def disable_user(%Client{} = client, input, options \\ []) do
    url_path = "/Users/DisableUser"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Returns member information for the specified group.

  This operation supports pagination with the use of the `NextToken` request and
  response parameters. If more results are available, the
  `ListGroupMembers.NextToken` member contains a token that you pass in the next
  call to `ListGroupMembers`. This retrieves the next set of items.

  You can also specify a maximum number of return results with the `MaxResults`
  parameter.
  """
  @spec list_group_members(map(), list_group_members_request(), list()) ::
          {:ok, list_group_members_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_group_members_errors()}
  def list_group_members(%Client{} = client, input, options \\ []) do
    url_path = "/GroupMemberships/ListGroupMembers"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Returns group information for the specified directory.

  This operation supports pagination with the use of the `NextToken` request and
  response parameters. If more results are available, the `ListGroups.NextToken`
  member contains a token that you pass in the next call to `ListGroups`. This
  retrieves the next set of items.

  You can also specify a maximum number of return results with the `MaxResults`
  parameter.
  """
  @spec list_groups(map(), list_groups_request(), list()) ::
          {:ok, list_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_groups_errors()}
  def list_groups(%Client{} = client, input, options \\ []) do
    url_path = "/Groups/ListGroups"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Returns group information for the specified member.

  This operation supports pagination with the use of the `NextToken` request and
  response parameters. If more results are available, the
  `ListGroupsForMember.NextToken` member contains a token that you pass in the
  next
  call to `ListGroupsForMember`. This retrieves the next set of items.

  You can also specify a maximum number of return results with the `MaxResults`
  parameter.
  """
  @spec list_groups_for_member(map(), list_groups_for_member_request(), list()) ::
          {:ok, list_groups_for_member_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_groups_for_member_errors()}
  def list_groups_for_member(%Client{} = client, input, options \\ []) do
    url_path = "/GroupMemberships/ListGroupsForMember"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Returns user information for the specified directory.

  This operation supports pagination with the use of the `NextToken` request and
  response parameters. If more results are available, the `ListUsers.NextToken`
  member contains a token that you pass in the next call to `ListUsers`. This
  retrieves the next set of items.

  You can also specify a maximum number of return results with the `MaxResults`
  parameter.
  """
  @spec list_users(map(), list_users_request(), list()) ::
          {:ok, list_users_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_users_errors()}
  def list_users(%Client{} = client, input, options \\ []) do
    url_path = "/Users/ListUsers"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Removes a member from a group.
  """
  @spec remove_group_member(map(), remove_group_member_request(), list()) ::
          {:ok, remove_group_member_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_group_member_errors()}
  def remove_group_member(%Client{} = client, input, options \\ []) do
    url_path = "/GroupMemberships/RemoveGroupMember"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Searches the specified directory for a group.

  You can find groups that match the
  `SearchString` parameter with the value of their attributes included in the
  `SearchString` parameter.

  This operation supports pagination with the use of the `NextToken` request and
  response parameters. If more results are available, the `SearchGroups.NextToken`
  member contains a token that you pass in the next call to `SearchGroups`. This
  retrieves the next set of items.

  You can also specify a maximum number of return results with the `MaxResults`
  parameter.
  """
  @spec search_groups(map(), search_groups_request(), list()) ::
          {:ok, search_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_groups_errors()}
  def search_groups(%Client{} = client, input, options \\ []) do
    url_path = "/Groups/SearchGroups"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Searches the specified directory for a user.

  You can find users that match the
  `SearchString` parameter with the value of their attributes included in the
  `SearchString` parameter.

  This operation supports pagination with the use of the `NextToken` request and
  response parameters. If more results are available, the `SearchUsers.NextToken`
  member contains a token that you pass in the next call to `SearchUsers`. This
  retrieves the next set of items.

  You can also specify a maximum number of return results with the `MaxResults`
  parameter.
  """
  @spec search_users(map(), search_users_request(), list()) ::
          {:ok, search_users_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_users_errors()}
  def search_users(%Client{} = client, input, options \\ []) do
    url_path = "/Users/SearchUsers"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Updates group information.
  """
  @spec update_group(map(), update_group_request(), list()) ::
          {:ok, update_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_group_errors()}
  def update_group(%Client{} = client, input, options \\ []) do
    url_path = "/Groups/UpdateGroup"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
  Updates user information.
  """
  @spec update_user(map(), update_user_request(), list()) ::
          {:ok, update_user_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, input, options \\ []) do
    url_path = "/Users/UpdateUser"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DirectoryId", "DirectoryId"}
      ]
      |> Request.build_params(input)

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
