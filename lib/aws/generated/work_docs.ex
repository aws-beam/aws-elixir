# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkDocs do
  @moduledoc """
  The Amazon WorkDocs API is designed for the following use cases:

    *
  File Migration: File migration applications are supported for users who
  want to migrate their files from an on-premises or off-premises file system or
  service.

  Users can insert files into a user directory structure, as well as
  allow for basic metadata changes, such as modifications to the permissions of
  files.

    *
  Security: Support security applications are supported for users who have
  additional security needs, such as antivirus or data loss prevention. The API
  actions, along with CloudTrail, allow these applications to detect when
  changes occur in Amazon WorkDocs. Then, the application can take the necessary
  actions and replace the target file. If the target file violates the policy, the
  application can also choose to email the user.

    *
  eDiscovery/Analytics: General administrative applications are supported,
  such as eDiscovery and analytics. These applications can choose to mimic or
  record the actions in an Amazon WorkDocs site, along with CloudTrail, to
  replicate data for eDiscovery, backup, or analytical applications.

  All Amazon WorkDocs API actions are Amazon authenticated and certificate-signed.
  They not only require the use of the Amazon Web Services SDK, but also allow for
  the exclusive use of
  IAM users and roles to help facilitate access, trust, and permission policies.
  By
  creating a role and allowing an IAM user to access the Amazon WorkDocs site, the
  IAM user gains full administrative visibility into the entire Amazon WorkDocs
  site (or as
  set in the IAM policy). This includes, but is not limited to, the ability to
  modify file
  permissions and upload any file to any user. This allows developers to perform
  the three
  use cases above, as well as give users the ability to grant access on a
  selective basis
  using the IAM model.

  The pricing for Amazon WorkDocs APIs varies depending on the API call type for
  these actions:

    

  `READ (Get*)`

    

  `WRITE (Activate*, Add*, Create*, Deactivate*, Initiate*, Update*)`

    

  `LIST (Describe*)`

    

  `DELETE*, CANCEL`

  For information about Amazon WorkDocs API pricing, see [Amazon WorkDocs Pricing](https://aws.amazon.com/workdocs/pricing/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_document_path_response() :: %{
        "Path" => resource_path()
      }

  """
  @type get_document_path_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      entity_already_exists_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type entity_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resources_request() :: %{
        optional("AdditionalResponseFields") => list(list(any())()),
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Filters") => filters(),
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom(),
        optional("OrderBy") => list(search_sort_result()),
        optional("OrganizationId") => String.t() | atom(),
        optional("QueryScopes") => list(list(any())()),
        optional("QueryText") => String.t() | atom()
      }

  """
  @type search_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_resource_permissions_response() :: %{
        "Marker" => String.t() | atom(),
        "Principals" => list(principal())
      }

  """
  @type describe_resource_permissions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_notification_subscription_request() :: %{
        required("Endpoint") => String.t() | atom(),
        required("Protocol") => list(any()),
        required("SubscriptionType") => list(any())
      }

  """
  @type create_notification_subscription_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_resource_permissions_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("NotificationOptions") => notification_options(),
        required("Principals") => list(share_principal())
      }

  """
  @type add_resource_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflicting_operation_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflicting_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_folder_response() :: %{
        "Metadata" => folder_metadata()
      }

  """
  @type create_folder_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_comment_request() :: %{
        optional("AuthenticationToken") => String.t() | atom()
      }

  """
  @type delete_comment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_metadata() :: %{
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OriginalName" => String.t() | atom(),
        "Owner" => user_metadata(),
        "ParentId" => String.t() | atom(),
        "Type" => list(any()),
        "VersionId" => String.t() | atom()
      }

  """
  @type resource_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      restore_document_versions_request() :: %{
        optional("AuthenticationToken") => String.t() | atom()
      }

  """
  @type restore_document_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_resource_permissions_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom(),
        optional("PrincipalId") => String.t() | atom()
      }

  """
  @type describe_resource_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_folder_path_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Fields") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom()
      }

  """
  @type get_folder_path_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_document_path_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Fields") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom()
      }

  """
  @type get_document_path_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_response() :: %{
        "User" => user()
      }

  """
  @type update_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_comment_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("NotifyCollaborators") => boolean(),
        optional("ParentId") => String.t() | atom(),
        optional("ThreadId") => String.t() | atom(),
        optional("Visibility") => list(any()),
        required("Text") => String.t() | atom()
      }

  """
  @type create_comment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_metadata() :: %{
        "EmailAddress" => String.t() | atom(),
        "GivenName" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Surname" => String.t() | atom(),
        "Username" => String.t() | atom()
      }

  """
  @type user_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      permission_info() :: %{
        "Role" => list(any()),
        "Type" => list(any())
      }

  """
  @type permission_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failed_dependency_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type failed_dependency_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_users_response() :: %{
        "Marker" => String.t() | atom(),
        "TotalNumberOfUsers" => float(),
        "Users" => list(user())
      }

  """
  @type describe_users_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_folder_contents_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Include") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom(),
        optional("Order") => list(any()),
        optional("Sort") => list(any()),
        optional("Type") => list(any())
      }

  """
  @type describe_folder_contents_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prohibited_state_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type prohibited_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_operation_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type unauthorized_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_labels_response() :: %{}

  """
  @type delete_labels_response() :: %{}

  @typedoc """

  ## Example:

      add_resource_permissions_response() :: %{
        "ShareResults" => list(share_result())
      }

  """
  @type add_resource_permissions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_document_version_response() :: %{
        "CustomMetadata" => map(),
        "Metadata" => document_version_metadata()
      }

  """
  @type get_document_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_folder_contents_response() :: %{
        "Documents" => list(document_metadata()),
        "Folders" => list(folder_metadata()),
        "Marker" => String.t() | atom()
      }

  """
  @type describe_folder_contents_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_root_folders_request() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom(),
        required("AuthenticationToken") => String.t() | atom()
      }

  """
  @type describe_root_folders_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_folder_response() :: %{
        "CustomMetadata" => map(),
        "Metadata" => folder_metadata()
      }

  """
  @type get_folder_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_operation_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type invalid_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_users_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Fields") => String.t() | atom(),
        optional("Include") => list(any()),
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom(),
        optional("Order") => list(any()),
        optional("OrganizationId") => String.t() | atom(),
        optional("Query") => String.t() | atom(),
        optional("Sort") => list(any()),
        optional("UserIds") => String.t() | atom()
      }

  """
  @type describe_users_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group_metadata() :: %{
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type group_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_comments_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom()
      }

  """
  @type describe_comments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_document_version_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("VersionStatus") => list(any())
      }

  """
  @type update_document_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_document_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("ParentFolderId") => String.t() | atom(),
        optional("ResourceState") => list(any())
      }

  """
  @type update_document_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_custom_metadata_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("DeleteAll") => boolean(),
        optional("Keys") => list(String.t() | atom()),
        optional("VersionId") => String.t() | atom()
      }

  """
  @type delete_custom_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activate_user_response() :: %{
        "User" => user()
      }

  """
  @type activate_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      entity_not_exists_exception() :: %{
        "EntityIds" => list(String.t() | atom()),
        "Message" => String.t() | atom()
      }

  """
  @type entity_not_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_labels_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("DeleteAll") => boolean(),
        optional("Labels") => list(String.t() | atom())
      }

  """
  @type delete_labels_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      principal() :: %{
        "Id" => String.t() | atom(),
        "Roles" => list(permission_info()),
        "Type" => list(any())
      }

  """
  @type principal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_custom_metadata_response() :: %{}

  """
  @type delete_custom_metadata_response() :: %{}

  @typedoc """

  ## Example:

      delete_document_version_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        required("DeletePriorVersions") => boolean()
      }

  """
  @type delete_document_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_document_request() :: %{
        optional("AuthenticationToken") => String.t() | atom()
      }

  """
  @type delete_document_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_document_versions_response() :: %{
        "DocumentVersions" => list(document_version_metadata()),
        "Marker" => String.t() | atom()
      }

  """
  @type describe_document_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_labels_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type too_many_labels_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_activities_response() :: %{
        "Marker" => String.t() | atom(),
        "UserActivities" => list(activity())
      }

  """
  @type describe_activities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_principal_type() :: %{
        "Id" => String.t() | atom(),
        "Roles" => list(list(any())())
      }

  """
  @type search_principal_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_resource_access_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type unauthorized_resource_access_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_metadata_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type custom_metadata_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      comment_metadata() :: %{
        "CommentId" => String.t() | atom(),
        "CommentStatus" => list(any()),
        "Contributor" => user(),
        "ContributorId" => String.t() | atom(),
        "CreatedTimestamp" => non_neg_integer(),
        "RecipientId" => String.t() | atom()
      }

  """
  @type comment_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resources_response() :: %{
        "Items" => list(response_item()),
        "Marker" => String.t() | atom()
      }

  """
  @type search_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      date_range_type() :: %{
        "EndValue" => non_neg_integer(),
        "StartValue" => non_neg_integer()
      }

  """
  @type date_range_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      storage_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type storage_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_document_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("IncludeCustomMetadata") => boolean()
      }

  """
  @type get_document_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_notification_subscription_request() :: %{}

  """
  @type delete_notification_subscription_request() :: %{}

  @typedoc """

  ## Example:

      get_resources_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("CollectionType") => list(any()),
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom(),
        optional("UserId") => String.t() | atom()
      }

  """
  @type get_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_groups_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom(),
        optional("OrganizationId") => String.t() | atom(),
        required("SearchQuery") => String.t() | atom()
      }

  """
  @type describe_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      requested_entity_too_large_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type requested_entity_too_large_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_folder_path_response() :: %{
        "Path" => resource_path()
      }

  """
  @type get_folder_path_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activity() :: %{
        "CommentMetadata" => comment_metadata(),
        "Initiator" => user_metadata(),
        "IsIndirectActivity" => boolean(),
        "OrganizationId" => String.t() | atom(),
        "OriginalParent" => resource_metadata(),
        "Participants" => participants(),
        "ResourceMetadata" => resource_metadata(),
        "TimeStamp" => non_neg_integer(),
        "Type" => list(any())
      }

  """
  @type activity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      share_principal() :: %{
        "Id" => String.t() | atom(),
        "Role" => list(any()),
        "Type" => list(any())
      }

  """
  @type share_principal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      comment() :: %{
        "CommentId" => String.t() | atom(),
        "Contributor" => user(),
        "CreatedTimestamp" => non_neg_integer(),
        "ParentId" => String.t() | atom(),
        "RecipientId" => String.t() | atom(),
        "Status" => list(any()),
        "Text" => String.t() | atom(),
        "ThreadId" => String.t() | atom(),
        "Visibility" => list(any())
      }

  """
  @type comment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resources_response() :: %{
        "Documents" => list(document_metadata()),
        "Folders" => list(folder_metadata()),
        "Marker" => String.t() | atom()
      }

  """
  @type get_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_all_resource_permissions_request() :: %{
        optional("AuthenticationToken") => String.t() | atom()
      }

  """
  @type remove_all_resource_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_folder_contents_request() :: %{
        optional("AuthenticationToken") => String.t() | atom()
      }

  """
  @type delete_folder_contents_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      folder_metadata() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "CreatorId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Labels" => list(String.t() | atom()),
        "LatestVersionSize" => float(),
        "ModifiedTimestamp" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "ParentFolderId" => String.t() | atom(),
        "ResourceState" => list(any()),
        "Signature" => String.t() | atom(),
        "Size" => float()
      }

  """
  @type folder_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_subscriptions_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type too_many_subscriptions_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_labels_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        required("Labels") => list(String.t() | atom())
      }

  """
  @type create_labels_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_current_user_request() :: %{
        required("AuthenticationToken") => String.t() | atom()
      }

  """
  @type get_current_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_comment_response() :: %{
        "Comment" => comment()
      }

  """
  @type create_comment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_folder_request() :: %{
        optional("AuthenticationToken") => String.t() | atom()
      }

  """
  @type delete_folder_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      long_range_type() :: %{
        "EndValue" => float(),
        "StartValue" => float()
      }

  """
  @type long_range_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_notification_subscriptions_request() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom()
      }

  """
  @type describe_notification_subscriptions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_current_user_response() :: %{
        "User" => user()
      }

  """
  @type get_current_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_path() :: %{
        "Components" => list(resource_path_component())
      }

  """
  @type resource_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_comment_operation_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type invalid_comment_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_notification_subscription_response() :: %{
        "Subscription" => subscription()
      }

  """
  @type create_notification_subscription_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_storage_metadata() :: %{
        "StorageRule" => storage_rule_type(),
        "StorageUtilizedInBytes" => float()
      }

  """
  @type user_storage_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_user_request() :: %{
        optional("AuthenticationToken") => String.t() | atom()
      }

  """
  @type delete_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_document_versions_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Fields") => String.t() | atom(),
        optional("Include") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom()
      }

  """
  @type describe_document_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      abort_document_version_upload_request() :: %{
        optional("AuthenticationToken") => String.t() | atom()
      }

  """
  @type abort_document_version_upload_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_comments_response() :: %{
        "Comments" => list(comment()),
        "Marker" => String.t() | atom()
      }

  """
  @type describe_comments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_folder_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("ParentFolderId") => String.t() | atom(),
        optional("ResourceState") => list(any())
      }

  """
  @type update_folder_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deactivating_last_system_user_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type deactivating_last_system_user_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_custom_metadata_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("VersionId") => String.t() | atom(),
        required("CustomMetadata") => map()
      }

  """
  @type create_custom_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_argument_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type invalid_argument_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_document_version_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Fields") => String.t() | atom(),
        optional("IncludeCustomMetadata") => boolean()
      }

  """
  @type get_document_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_groups_response() :: %{
        "Groups" => list(group_metadata()),
        "Marker" => String.t() | atom()
      }

  """
  @type describe_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      illegal_user_state_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type illegal_user_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      concurrent_modification_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type concurrent_modification_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_root_folders_response() :: %{
        "Folders" => list(folder_metadata()),
        "Marker" => String.t() | atom()
      }

  """
  @type describe_root_folders_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("GivenName") => String.t() | atom(),
        optional("GrantPoweruserPrivileges") => list(any()),
        optional("Locale") => list(any()),
        optional("StorageRule") => storage_rule_type(),
        optional("Surname") => String.t() | atom(),
        optional("TimeZoneId") => String.t() | atom(),
        optional("Type") => list(any())
      }

  """
  @type update_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_folder_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("IncludeCustomMetadata") => boolean()
      }

  """
  @type get_folder_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      document_metadata() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "CreatorId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Labels" => list(String.t() | atom()),
        "LatestVersionMetadata" => document_version_metadata(),
        "ModifiedTimestamp" => non_neg_integer(),
        "ParentFolderId" => String.t() | atom(),
        "ResourceState" => list(any())
      }

  """
  @type document_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscription() :: %{
        "EndPoint" => String.t() | atom(),
        "Protocol" => list(any()),
        "SubscriptionId" => String.t() | atom()
      }

  """
  @type subscription() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "EmailAddress" => String.t() | atom(),
        "GivenName" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Locale" => list(any()),
        "ModifiedTimestamp" => non_neg_integer(),
        "OrganizationId" => String.t() | atom(),
        "RecycleBinFolderId" => String.t() | atom(),
        "RootFolderId" => String.t() | atom(),
        "Status" => list(any()),
        "Storage" => user_storage_metadata(),
        "Surname" => String.t() | atom(),
        "TimeZoneId" => String.t() | atom(),
        "Type" => list(any()),
        "Username" => String.t() | atom()
      }

  """
  @type user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      storage_limit_will_exceed_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type storage_limit_will_exceed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      draft_upload_out_of_sync_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type draft_upload_out_of_sync_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notification_options() :: %{
        "EmailMessage" => String.t() | atom(),
        "SendEmail" => boolean()
      }

  """
  @type notification_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_notification_subscriptions_response() :: %{
        "Marker" => String.t() | atom(),
        "Subscriptions" => list(subscription())
      }

  """
  @type describe_notification_subscriptions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filters() :: %{
        "AncestorIds" => list(String.t() | atom()),
        "ContentCategories" => list(list(any())()),
        "CreatedRange" => date_range_type(),
        "Labels" => list(String.t() | atom()),
        "ModifiedRange" => date_range_type(),
        "Principals" => list(search_principal_type()),
        "ResourceTypes" => list(list(any())()),
        "SearchCollectionTypes" => list(list(any())()),
        "SizeRange" => long_range_type(),
        "TextLocales" => list(list(any())())
      }

  """
  @type filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_sort_result() :: %{
        "Field" => list(any()),
        "Order" => list(any())
      }

  """
  @type search_sort_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      share_result() :: %{
        "InviteePrincipalId" => String.t() | atom(),
        "PrincipalId" => String.t() | atom(),
        "Role" => list(any()),
        "ShareId" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type share_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      initiate_document_version_upload_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("ContentCreatedTimestamp") => non_neg_integer(),
        optional("ContentModifiedTimestamp") => non_neg_integer(),
        optional("ContentType") => String.t() | atom(),
        optional("DocumentSizeInBytes") => float(),
        optional("Id") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("ParentFolderId") => String.t() | atom()
      }

  """
  @type initiate_document_version_upload_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_activities_request() :: %{
        optional("ActivityTypes") => String.t() | atom(),
        optional("AuthenticationToken") => String.t() | atom(),
        optional("EndTime") => non_neg_integer(),
        optional("IncludeIndirectActivities") => boolean(),
        optional("Limit") => integer(),
        optional("Marker") => String.t() | atom(),
        optional("OrganizationId") => String.t() | atom(),
        optional("ResourceId") => String.t() | atom(),
        optional("StartTime") => non_neg_integer(),
        optional("UserId") => String.t() | atom()
      }

  """
  @type describe_activities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      storage_rule_type() :: %{
        "StorageAllocatedInBytes" => float(),
        "StorageType" => list(any())
      }

  """
  @type storage_rule_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      initiate_document_version_upload_response() :: %{
        "Metadata" => document_metadata(),
        "UploadMetadata" => upload_metadata()
      }

  """
  @type initiate_document_version_upload_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      document_version_metadata() :: %{
        "ContentCreatedTimestamp" => non_neg_integer(),
        "ContentModifiedTimestamp" => non_neg_integer(),
        "ContentType" => String.t() | atom(),
        "CreatedTimestamp" => non_neg_integer(),
        "CreatorId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ModifiedTimestamp" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Signature" => String.t() | atom(),
        "Size" => float(),
        "Source" => map(),
        "Status" => list(any()),
        "Thumbnail" => map()
      }

  """
  @type document_version_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_resource_permission_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("PrincipalType") => list(any())
      }

  """
  @type remove_resource_permission_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      participants() :: %{
        "Groups" => list(group_metadata()),
        "Users" => list(user_metadata())
      }

  """
  @type participants() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activate_user_request() :: %{
        optional("AuthenticationToken") => String.t() | atom()
      }

  """
  @type activate_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_folder_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        required("ParentFolderId") => String.t() | atom()
      }

  """
  @type create_folder_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      response_item() :: %{
        "CommentMetadata" => comment_metadata(),
        "DocumentMetadata" => document_metadata(),
        "DocumentVersionMetadata" => document_version_metadata(),
        "FolderMetadata" => folder_metadata(),
        "ResourceType" => list(any()),
        "WebUrl" => String.t() | atom()
      }

  """
  @type response_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_labels_response() :: %{}

  """
  @type create_labels_response() :: %{}

  @typedoc """

  ## Example:

      upload_metadata() :: %{
        "SignedHeaders" => map(),
        "UploadUrl" => String.t() | atom()
      }

  """
  @type upload_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_path_component() :: %{
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type resource_path_component() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      document_locked_for_comments_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type document_locked_for_comments_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_custom_metadata_response() :: %{}

  """
  @type create_custom_metadata_response() :: %{}

  @typedoc """

  ## Example:

      create_user_response() :: %{
        "User" => user()
      }

  """
  @type create_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_password_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type invalid_password_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deactivate_user_request() :: %{
        optional("AuthenticationToken") => String.t() | atom()
      }

  """
  @type deactivate_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_document_response() :: %{
        "CustomMetadata" => map(),
        "Metadata" => document_metadata()
      }

  """
  @type get_document_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_already_checked_out_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_already_checked_out_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_user_request() :: %{
        optional("AuthenticationToken") => String.t() | atom(),
        optional("EmailAddress") => String.t() | atom(),
        optional("OrganizationId") => String.t() | atom(),
        optional("StorageRule") => storage_rule_type(),
        optional("TimeZoneId") => String.t() | atom(),
        required("GivenName") => String.t() | atom(),
        required("Password") => String.t() | atom(),
        required("Surname") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }

  """
  @type create_user_request() :: %{(String.t() | atom()) => any()}

  @type abort_document_version_upload_errors() ::
          concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type activate_user_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type add_resource_permissions_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type create_comment_errors() ::
          document_locked_for_comments_exception()
          | invalid_comment_operation_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type create_custom_metadata_errors() ::
          service_unavailable_exception()
          | custom_metadata_limit_exceeded_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type create_folder_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()
          | entity_already_exists_exception()

  @type create_labels_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | too_many_labels_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type create_notification_subscription_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | too_many_subscriptions_exception()
          | unauthorized_resource_access_exception()

  @type create_user_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()
          | entity_already_exists_exception()

  @type deactivate_user_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type delete_comment_errors() ::
          document_locked_for_comments_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type delete_custom_metadata_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type delete_document_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()

  @type delete_document_version_errors() ::
          concurrent_modification_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | invalid_operation_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()

  @type delete_folder_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()

  @type delete_folder_contents_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()

  @type delete_labels_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type delete_notification_subscription_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | prohibited_state_exception()

  @type delete_user_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type describe_activities_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type describe_comments_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type describe_document_versions_errors() ::
          invalid_password_exception()
          | invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type describe_folder_contents_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type describe_groups_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type describe_notification_subscriptions_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()

  @type describe_resource_permissions_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type describe_root_folders_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type describe_users_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | requested_entity_too_large_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type get_current_user_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type get_document_errors() ::
          invalid_password_exception()
          | invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type get_document_path_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type get_document_version_errors() ::
          invalid_password_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type get_folder_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type get_folder_path_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type get_resources_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type initiate_document_version_upload_errors() ::
          resource_already_checked_out_exception()
          | invalid_password_exception()
          | limit_exceeded_exception()
          | draft_upload_out_of_sync_exception()
          | storage_limit_will_exceed_exception()
          | invalid_argument_exception()
          | service_unavailable_exception()
          | storage_limit_exceeded_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | entity_already_exists_exception()

  @type remove_all_resource_permissions_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type remove_resource_permission_errors() ::
          service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()
          | failed_dependency_exception()

  @type restore_document_versions_errors() ::
          concurrent_modification_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | invalid_operation_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()

  @type search_resources_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | unauthorized_operation_exception()

  @type update_document_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()
          | entity_already_exists_exception()

  @type update_document_version_errors() ::
          concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | invalid_operation_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  @type update_folder_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()
          | conflicting_operation_exception()
          | entity_already_exists_exception()

  @type update_user_errors() ::
          illegal_user_state_exception()
          | invalid_argument_exception()
          | deactivating_last_system_user_exception()
          | service_unavailable_exception()
          | unauthorized_resource_access_exception()
          | entity_not_exists_exception()
          | unauthorized_operation_exception()
          | prohibited_state_exception()
          | failed_dependency_exception()

  def metadata do
    %{
      api_version: "2016-05-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "workdocs",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "WorkDocs",
      signature_version: "v4",
      signing_name: "workdocs",
      target_prefix: nil
    }
  end

  @doc """
  Aborts the upload of the specified document version that was previously
  initiated
  by `InitiateDocumentVersionUpload`.

  The client should make this call
  only when it no longer intends to upload the document version, or fails to do
  so.
  """
  @spec abort_document_version_upload(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          abort_document_version_upload_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, abort_document_version_upload_errors()}
  def abort_document_version_upload(
        %Client{} = client,
        document_id,
        version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Activates the specified user.

  Only active users can access Amazon
  WorkDocs.
  """
  @spec activate_user(map(), String.t() | atom(), activate_user_request(), list()) ::
          {:ok, activate_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, activate_user_errors()}
  def activate_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/api/v1/users/#{AWS.Util.encode_uri(user_id)}/activation"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

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
  Creates a set of permissions for the specified folder or document.

  The resource
  permissions are overwritten if the principals already have different
  permissions.
  """
  @spec add_resource_permissions(
          map(),
          String.t() | atom(),
          add_resource_permissions_request(),
          list()
        ) ::
          {:ok, add_resource_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_resource_permissions_errors()}
  def add_resource_permissions(%Client{} = client, resource_id, input, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/permissions"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Adds a new comment to the specified document version.
  """
  @spec create_comment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_comment_request(),
          list()
        ) ::
          {:ok, create_comment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_comment_errors()}
  def create_comment(%Client{} = client, document_id, version_id, input, options \\ []) do
    url_path =
      "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}/comment"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Adds one or more custom properties to the specified resource (a folder,
  document,
  or version).
  """
  @spec create_custom_metadata(
          map(),
          String.t() | atom(),
          create_custom_metadata_request(),
          list()
        ) ::
          {:ok, create_custom_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_custom_metadata_errors()}
  def create_custom_metadata(%Client{} = client, resource_id, input, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/customMetadata"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"VersionId", "versionid"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a folder with the specified name and parent folder.
  """
  @spec create_folder(map(), create_folder_request(), list()) ::
          {:ok, create_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_folder_errors()}
  def create_folder(%Client{} = client, input, options \\ []) do
    url_path = "/api/v1/folders"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Adds the specified list of labels to the given resource (a document or
  folder)
  """
  @spec create_labels(map(), String.t() | atom(), create_labels_request(), list()) ::
          {:ok, create_labels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_labels_errors()}
  def create_labels(%Client{} = client, resource_id, input, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/labels"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Configure Amazon WorkDocs to use Amazon SNS notifications.

  The endpoint receives a
  confirmation message, and must confirm the subscription.

  For more information, see [Setting up notifications for an IAM user or role](https://docs.aws.amazon.com/workdocs/latest/developerguide/manage-notifications.html)
  in the *Amazon WorkDocs Developer
  Guide*.
  """
  @spec create_notification_subscription(
          map(),
          String.t() | atom(),
          create_notification_subscription_request(),
          list()
        ) ::
          {:ok, create_notification_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_notification_subscription_errors()}
  def create_notification_subscription(%Client{} = client, organization_id, input, options \\ []) do
    url_path = "/api/v1/organizations/#{AWS.Util.encode_uri(organization_id)}/subscriptions"
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
  Creates a user in a Simple AD or Microsoft AD directory.

  The status of a newly
  created user is "ACTIVE". New users can access Amazon WorkDocs.
  """
  @spec create_user(map(), create_user_request(), list()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) do
    url_path = "/api/v1/users"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Deactivates the specified user, which revokes the user's access to Amazon
  WorkDocs.
  """
  @spec deactivate_user(map(), String.t() | atom(), deactivate_user_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deactivate_user_errors()}
  def deactivate_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/api/v1/users/#{AWS.Util.encode_uri(user_id)}/activation"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the specified comment from the document version.
  """
  @spec delete_comment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_comment_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_comment_errors()}
  def delete_comment(
        %Client{} = client,
        comment_id,
        document_id,
        version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}/comment/#{AWS.Util.encode_uri(comment_id)}"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes custom metadata from the specified resource.
  """
  @spec delete_custom_metadata(
          map(),
          String.t() | atom(),
          delete_custom_metadata_request(),
          list()
        ) ::
          {:ok, delete_custom_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_custom_metadata_errors()}
  def delete_custom_metadata(%Client{} = client, resource_id, input, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/customMetadata"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"DeleteAll", "deleteAll"},
        {"Keys", "keys"},
        {"VersionId", "versionId"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Permanently deletes the specified document and its associated metadata.
  """
  @spec delete_document(map(), String.t() | atom(), delete_document_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_document_errors()}
  def delete_document(%Client{} = client, document_id, input, options \\ []) do
    url_path = "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a specific version of a document.
  """
  @spec delete_document_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_document_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_document_version_errors()}
  def delete_document_version(%Client{} = client, document_id, version_id, input, options \\ []) do
    url_path =
      "/api/v1/documentVersions/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"DeletePriorVersions", "deletePriorVersions"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Permanently deletes the specified folder and its contents.
  """
  @spec delete_folder(map(), String.t() | atom(), delete_folder_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_folder_errors()}
  def delete_folder(%Client{} = client, folder_id, input, options \\ []) do
    url_path = "/api/v1/folders/#{AWS.Util.encode_uri(folder_id)}"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the contents of the specified folder.
  """
  @spec delete_folder_contents(
          map(),
          String.t() | atom(),
          delete_folder_contents_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_folder_contents_errors()}
  def delete_folder_contents(%Client{} = client, folder_id, input, options \\ []) do
    url_path = "/api/v1/folders/#{AWS.Util.encode_uri(folder_id)}/contents"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the specified list of labels from a resource.
  """
  @spec delete_labels(map(), String.t() | atom(), delete_labels_request(), list()) ::
          {:ok, delete_labels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_labels_errors()}
  def delete_labels(%Client{} = client, resource_id, input, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/labels"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"DeleteAll", "deleteAll"},
        {"Labels", "labels"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified subscription from the specified organization.
  """
  @spec delete_notification_subscription(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_notification_subscription_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_notification_subscription_errors()}
  def delete_notification_subscription(
        %Client{} = client,
        organization_id,
        subscription_id,
        input,
        options \\ []
      ) do
    url_path =
      "/api/v1/organizations/#{AWS.Util.encode_uri(organization_id)}/subscriptions/#{AWS.Util.encode_uri(subscription_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified user from a Simple AD or Microsoft AD directory.

  Deleting a user immediately and permanently deletes all content in that user's
  folder structure. Site retention policies do NOT apply to this type of deletion.
  """
  @spec delete_user(map(), String.t() | atom(), delete_user_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/api/v1/users/#{AWS.Util.encode_uri(user_id)}"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Describes the user activities in a specified time period.
  """
  @spec describe_activities(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_activities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_activities_errors()}
  def describe_activities(
        %Client{} = client,
        activity_types \\ nil,
        end_time \\ nil,
        include_indirect_activities \\ nil,
        limit \\ nil,
        marker \\ nil,
        organization_id \\ nil,
        resource_id \\ nil,
        start_time \\ nil,
        user_id \\ nil,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/v1/activities"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(user_id) do
        [{"userId", user_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_id) do
        [{"resourceId", resource_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(organization_id) do
        [{"organizationId", organization_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_indirect_activities) do
        [{"includeIndirectActivities", include_indirect_activities} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(activity_types) do
        [{"activityTypes", activity_types} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all the comments for the specified document version.
  """
  @spec describe_comments(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_comments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_comments_errors()}
  def describe_comments(
        %Client{} = client,
        document_id,
        version_id,
        limit \\ nil,
        marker \\ nil,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}/comments"

    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the document versions for the specified document.

  By default, only active versions are returned.
  """
  @spec describe_document_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_document_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_document_versions_errors()}
  def describe_document_versions(
        %Client{} = client,
        document_id,
        fields \\ nil,
        include \\ nil,
        limit \\ nil,
        marker \\ nil,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include) do
        [{"include", include} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(fields) do
        [{"fields", fields} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the contents of the specified folder, including its documents and
  subfolders.

  By default, Amazon WorkDocs returns the first 100 active document and folder
  metadata items. If there are more results, the response includes a marker that
  you can
  use to request the next set of results. You can also request initialized
  documents.
  """
  @spec describe_folder_contents(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_folder_contents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_folder_contents_errors()}
  def describe_folder_contents(
        %Client{} = client,
        folder_id,
        include \\ nil,
        limit \\ nil,
        marker \\ nil,
        order \\ nil,
        sort \\ nil,
        type \\ nil,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/v1/folders/#{AWS.Util.encode_uri(folder_id)}/contents"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort) do
        [{"sort", sort} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(order) do
        [{"order", order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include) do
        [{"include", include} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the groups specified by the query.

  Groups are defined by the underlying
  Active Directory.
  """
  @spec describe_groups(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_groups_errors()}
  def describe_groups(
        %Client{} = client,
        limit \\ nil,
        marker \\ nil,
        organization_id \\ nil,
        search_query,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/v1/groups"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(search_query) do
        [{"searchQuery", search_query} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(organization_id) do
        [{"organizationId", organization_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the specified notification subscriptions.
  """
  @spec describe_notification_subscriptions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_notification_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_notification_subscriptions_errors()}
  def describe_notification_subscriptions(
        %Client{} = client,
        organization_id,
        limit \\ nil,
        marker \\ nil,
        options \\ []
      ) do
    url_path = "/api/v1/organizations/#{AWS.Util.encode_uri(organization_id)}/subscriptions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the permissions of a specified resource.
  """
  @spec describe_resource_permissions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_resource_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_resource_permissions_errors()}
  def describe_resource_permissions(
        %Client{} = client,
        resource_id,
        limit \\ nil,
        marker \\ nil,
        principal_id \\ nil,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/permissions"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(principal_id) do
        [{"principalId", principal_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the current user's special folders; the `RootFolder` and the
  `RecycleBin`.

  `RootFolder` is the root of user's files and
  folders and `RecycleBin` is the root of recycled items. This is not a valid
  action for SigV4 (administrative API) clients.

  This action requires an authentication token. To get an authentication token,
  register an application with Amazon WorkDocs. For more information, see
  [Authentication and Access Control for User
  Applications](https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html)
  in the
  *Amazon
  WorkDocs Developer Guide*.
  """
  @spec describe_root_folders(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, describe_root_folders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_root_folders_errors()}
  def describe_root_folders(
        %Client{} = client,
        limit \\ nil,
        marker \\ nil,
        authentication_token,
        options \\ []
      ) do
    url_path = "/api/v1/me/root"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified users.

  You can describe all users or filter the results
  (for example, by status or organization).

  By default, Amazon WorkDocs returns the first 24 active or pending users. If
  there
  are more results, the response includes a marker that you can use to request the
  next
  set of results.
  """
  @spec describe_users(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_users_errors()}
  def describe_users(
        %Client{} = client,
        fields \\ nil,
        include \\ nil,
        limit \\ nil,
        marker \\ nil,
        order \\ nil,
        organization_id \\ nil,
        query \\ nil,
        sort \\ nil,
        user_ids \\ nil,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/v1/users"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(user_ids) do
        [{"userIds", user_ids} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort) do
        [{"sort", sort} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(query) do
        [{"query", query} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(organization_id) do
        [{"organizationId", organization_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(order) do
        [{"order", order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include) do
        [{"include", include} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(fields) do
        [{"fields", fields} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details of the current user for whom the authentication token was
  generated.

  This is not a valid action for SigV4 (administrative API) clients.

  This action requires an authentication token. To get an authentication token,
  register an application with Amazon WorkDocs. For more information, see
  [Authentication and Access Control for User
  Applications](https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html)
  in the
  *Amazon
  WorkDocs Developer Guide*.
  """
  @spec get_current_user(map(), String.t() | atom(), list()) ::
          {:ok, get_current_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_current_user_errors()}
  def get_current_user(%Client{} = client, authentication_token, options \\ []) do
    url_path = "/api/v1/me"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details of a document.
  """
  @spec get_document(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_document_errors()}
  def get_document(
        %Client{} = client,
        document_id,
        include_custom_metadata \\ nil,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(include_custom_metadata) do
        [{"includeCustomMetadata", include_custom_metadata} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the path information (the hierarchy from the root folder) for the
  requested document.

  By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the
  requested document and only includes the IDs of the parent folders in the path.
  You can
  limit the maximum number of levels. You can also request the names of the parent
  folders.
  """
  @spec get_document_path(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_document_path_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_document_path_errors()}
  def get_document_path(
        %Client{} = client,
        document_id,
        fields \\ nil,
        limit \\ nil,
        marker \\ nil,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/path"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(fields) do
        [{"fields", fields} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves version metadata for the specified document.
  """
  @spec get_document_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_document_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_document_version_errors()}
  def get_document_version(
        %Client{} = client,
        document_id,
        version_id,
        fields \\ nil,
        include_custom_metadata \\ nil,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}"

    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(include_custom_metadata) do
        [{"includeCustomMetadata", include_custom_metadata} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(fields) do
        [{"fields", fields} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the metadata of the specified folder.
  """
  @spec get_folder(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_folder_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_folder_errors()}
  def get_folder(
        %Client{} = client,
        folder_id,
        include_custom_metadata \\ nil,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/v1/folders/#{AWS.Util.encode_uri(folder_id)}"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(include_custom_metadata) do
        [{"includeCustomMetadata", include_custom_metadata} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the path information (the hierarchy from the root folder) for the
  specified folder.

  By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the
  requested folder and only includes the IDs of the parent folders in the path.
  You can
  limit the maximum number of levels. You can also request the parent folder
  names.
  """
  @spec get_folder_path(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_folder_path_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_folder_path_errors()}
  def get_folder_path(
        %Client{} = client,
        folder_id,
        fields \\ nil,
        limit \\ nil,
        marker \\ nil,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/v1/folders/#{AWS.Util.encode_uri(folder_id)}/path"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(fields) do
        [{"fields", fields} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a collection of resources, including folders and documents.

  The only
  `CollectionType` supported is `SHARED_WITH_ME`.
  """
  @spec get_resources(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resources_errors()}
  def get_resources(
        %Client{} = client,
        collection_type \\ nil,
        limit \\ nil,
        marker \\ nil,
        user_id \\ nil,
        authentication_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/v1/resources"
    headers = []

    headers =
      if !is_nil(authentication_token) do
        [{"Authentication", authentication_token} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(user_id) do
        [{"userId", user_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(collection_type) do
        [{"collectionType", collection_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a new document object and version object.

  The client specifies the parent folder ID and name of the document to upload.
  The
  ID is optionally specified when creating a new version of an existing document.
  This is
  the first step to upload a document. Next, upload the document to the URL
  returned from
  the call, and then call `UpdateDocumentVersion`.

  To cancel the document upload, call `AbortDocumentVersionUpload`.
  """
  @spec initiate_document_version_upload(
          map(),
          initiate_document_version_upload_request(),
          list()
        ) ::
          {:ok, initiate_document_version_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, initiate_document_version_upload_errors()}
  def initiate_document_version_upload(%Client{} = client, input, options \\ []) do
    url_path = "/api/v1/documents"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Removes all the permissions from the specified resource.
  """
  @spec remove_all_resource_permissions(
          map(),
          String.t() | atom(),
          remove_all_resource_permissions_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_all_resource_permissions_errors()}
  def remove_all_resource_permissions(%Client{} = client, resource_id, input, options \\ []) do
    url_path = "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/permissions"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes the permission for the specified principal from the specified
  resource.
  """
  @spec remove_resource_permission(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          remove_resource_permission_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_resource_permission_errors()}
  def remove_resource_permission(
        %Client{} = client,
        principal_id,
        resource_id,
        input,
        options \\ []
      ) do
    url_path =
      "/api/v1/resources/#{AWS.Util.encode_uri(resource_id)}/permissions/#{AWS.Util.encode_uri(principal_id)}"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"PrincipalType", "type"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Recovers a deleted version of an Amazon WorkDocs document.
  """
  @spec restore_document_versions(
          map(),
          String.t() | atom(),
          restore_document_versions_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, restore_document_versions_errors()}
  def restore_document_versions(%Client{} = client, document_id, input, options \\ []) do
    url_path = "/api/v1/documentVersions/restore/#{AWS.Util.encode_uri(document_id)}"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Searches metadata and the content of folders, documents, document versions, and
  comments.
  """
  @spec search_resources(map(), search_resources_request(), list()) ::
          {:ok, search_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_resources_errors()}
  def search_resources(%Client{} = client, input, options \\ []) do
    url_path = "/api/v1/search"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

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
  Updates the specified attributes of a document.

  The user must have access to both
  the document and its parent folder, if applicable.
  """
  @spec update_document(map(), String.t() | atom(), update_document_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_document_errors()}
  def update_document(%Client{} = client, document_id, input, options \\ []) do
    url_path = "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Changes the status of the document version to ACTIVE.

  Amazon WorkDocs also sets its document container to ACTIVE. This is the last
  step
  in a document upload, after the client uploads the document to an S3-presigned
  URL
  returned by `InitiateDocumentVersionUpload`.
  """
  @spec update_document_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_document_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_document_version_errors()}
  def update_document_version(%Client{} = client, document_id, version_id, input, options \\ []) do
    url_path =
      "/api/v1/documents/#{AWS.Util.encode_uri(document_id)}/versions/#{AWS.Util.encode_uri(version_id)}"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified attributes of the specified folder.

  The user must have access
  to both the folder and its parent folder, if applicable.
  """
  @spec update_folder(map(), String.t() | atom(), update_folder_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_folder_errors()}
  def update_folder(%Client{} = client, folder_id, input, options \\ []) do
    url_path = "/api/v1/folders/#{AWS.Util.encode_uri(folder_id)}"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified attributes of the specified user, and grants or revokes
  administrative privileges to the Amazon WorkDocs site.
  """
  @spec update_user(map(), String.t() | atom(), update_user_request(), list()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/api/v1/users/#{AWS.Util.encode_uri(user_id)}"

    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
