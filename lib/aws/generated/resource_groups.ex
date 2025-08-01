# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceGroups do
  @moduledoc """
  Resource Groups lets you organize Amazon Web Services resources such as Amazon
  Elastic Compute Cloud instances, Amazon Relational Database Service
  databases, and Amazon Simple Storage Service buckets into groups using criteria
  that you define as tags.

  A
  resource group is a collection of resources that match the resource types
  specified in a
  query, and share one or more tags or portions of tags. You can create a group of
  resources based on their roles in your cloud infrastructure, lifecycle stages,
  regions,
  application layers, or virtually any criteria. Resource Groups enable you to
  automate management
  tasks, such as those in Amazon Web Services Systems Manager Automation
  documents, on tag-related resources in
  Amazon Web Services Systems Manager. Groups of tagged resources also let you
  quickly view a custom console in
  Amazon Web Services Systems Manager that shows Config compliance and other
  monitoring data about member
  resources.

  To create a resource group, build a resource query, and specify tags that
  identify the
  criteria that members of the group have in common. Tags are key-value pairs.

  For more information about Resource Groups, see the [Resource Groups User Guide](https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html).

  Resource Groups uses a REST-compliant API that you can use to perform the
  following types of
  operations.

    *
  Create, Read, Update, and Delete (CRUD) operations on resource groups and
  resource query entities

    *
  Applying, editing, and removing tags from resource groups

    *
  Resolving resource group member Amazon resource names (ARN)s so they can be
  returned as search
  results

    *
  Getting data about resources that are members of a group

    *
  Searching Amazon Web Services resources based on a resource query
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      resource_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t() | Atom.t())
      }

  """
  @type resource_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tag_sync_tasks_input() :: %{
        optional("Filters") => list(list_tag_sync_tasks_filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_tag_sync_tasks_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_tag_sync_task_output() :: %{
        "GroupArn" => String.t() | Atom.t(),
        "GroupName" => String.t() | Atom.t(),
        "ResourceQuery" => resource_query(),
        "RoleArn" => String.t() | Atom.t(),
        "TagKey" => String.t() | Atom.t(),
        "TagValue" => String.t() | Atom.t(),
        "TaskArn" => String.t() | Atom.t()
      }

  """
  @type start_tag_sync_task_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_group_input() :: %{
        optional("Configuration") => list(group_configuration_item()),
        optional("Criticality") => integer(),
        optional("Description") => String.t() | Atom.t(),
        optional("DisplayName") => String.t() | Atom.t(),
        optional("Owner") => String.t() | Atom.t(),
        optional("ResourceQuery") => resource_query(),
        optional("Tags") => map(),
        required("Name") => String.t() | Atom.t()
      }

  """
  @type create_group_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_group_query_output() :: %{
        "GroupQuery" => group_query()
      }

  """
  @type update_group_query_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cancel_tag_sync_task_input() :: %{
        required("TaskArn") => String.t() | Atom.t()
      }

  """
  @type cancel_tag_sync_task_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_grouping_statuses_output() :: %{
        "Group" => String.t() | Atom.t(),
        "GroupingStatuses" => list(grouping_statuses_item()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_grouping_statuses_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_group_resources_item() :: %{
        "Identifier" => resource_identifier(),
        "Status" => resource_status()
      }

  """
  @type list_group_resources_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type forbidden_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_output() :: %{
        "Arn" => String.t() | Atom.t(),
        "Tags" => map()
      }

  """
  @type tag_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      method_not_allowed_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type method_not_allowed_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_group_query_input() :: %{
        optional("Group") => String.t() | Atom.t(),
        optional("GroupName") => String.t() | Atom.t(),
        required("ResourceQuery") => resource_query()
      }

  """
  @type update_group_query_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tag_sync_tasks_filter() :: %{
        "GroupArn" => String.t() | Atom.t(),
        "GroupName" => String.t() | Atom.t()
      }

  """
  @type list_tag_sync_tasks_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_group_configuration_input() :: %{
        optional("Group") => String.t() | Atom.t()
      }

  """
  @type get_group_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_status() :: %{
        "Name" => list(any())
      }

  """
  @type resource_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_query() :: %{
        "Query" => String.t() | Atom.t(),
        "Type" => list(any())
      }

  """
  @type resource_query() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_tag_sync_task_input() :: %{
        optional("ResourceQuery") => resource_query(),
        optional("TagKey") => String.t() | Atom.t(),
        optional("TagValue") => String.t() | Atom.t(),
        required("Group") => String.t() | Atom.t(),
        required("RoleArn") => String.t() | Atom.t()
      }

  """
  @type start_tag_sync_task_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      group_identifier() :: %{
        "Criticality" => integer(),
        "Description" => String.t() | Atom.t(),
        "DisplayName" => String.t() | Atom.t(),
        "GroupArn" => String.t() | Atom.t(),
        "GroupName" => String.t() | Atom.t(),
        "Owner" => String.t() | Atom.t()
      }

  """
  @type group_identifier() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_tags_output() :: %{
        "Arn" => String.t() | Atom.t(),
        "Tags" => map()
      }

  """
  @type get_tags_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_input() :: %{
        required("Keys") => list(String.t() | Atom.t())
      }

  """
  @type untag_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_group_output() :: %{
        "Group" => group()
      }

  """
  @type update_group_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_group_configuration_input() :: %{
        optional("Configuration") => list(group_configuration_item()),
        optional("Group") => String.t() | Atom.t()
      }

  """
  @type put_group_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_groups_output() :: %{
        "GroupIdentifiers" => list(group_identifier()),
        "Groups" => list(group()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_groups_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_group_query_input() :: %{
        optional("Group") => String.t() | Atom.t(),
        optional("GroupName") => String.t() | Atom.t()
      }

  """
  @type get_group_query_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_group_configuration_output() :: %{
        "GroupConfiguration" => group_configuration()
      }

  """
  @type get_group_configuration_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pending_resource() :: %{
        "ResourceArn" => String.t() | Atom.t()
      }

  """
  @type pending_resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_group_query_output() :: %{
        "GroupQuery" => group_query()
      }

  """
  @type get_group_query_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      group_resources_output() :: %{
        "Failed" => list(failed_resource()),
        "Pending" => list(pending_resource()),
        "Succeeded" => list(String.t() | Atom.t())
      }

  """
  @type group_resources_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_identifier() :: %{
        "ResourceArn" => String.t() | Atom.t(),
        "ResourceType" => String.t() | Atom.t()
      }

  """
  @type resource_identifier() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_grouping_statuses_input() :: %{
        optional("Filters") => list(list_grouping_statuses_filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("Group") => String.t() | Atom.t()
      }

  """
  @type list_grouping_statuses_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      group_configuration_parameter() :: %{
        "Name" => String.t() | Atom.t(),
        "Values" => list(String.t() | Atom.t())
      }

  """
  @type group_configuration_parameter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_group_output() :: %{
        "Group" => group(),
        "GroupConfiguration" => group_configuration(),
        "ResourceQuery" => resource_query(),
        "Tags" => map()
      }

  """
  @type create_group_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ungroup_resources_output() :: %{
        "Failed" => list(failed_resource()),
        "Pending" => list(pending_resource()),
        "Succeeded" => list(String.t() | Atom.t())
      }

  """
  @type ungroup_resources_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      search_resources_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("ResourceQuery") => resource_query()
      }

  """
  @type search_resources_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_tag_sync_task_output() :: %{
        "CreatedAt" => non_neg_integer(),
        "ErrorMessage" => String.t() | Atom.t(),
        "GroupArn" => String.t() | Atom.t(),
        "GroupName" => String.t() | Atom.t(),
        "ResourceQuery" => resource_query(),
        "RoleArn" => String.t() | Atom.t(),
        "Status" => list(any()),
        "TagKey" => String.t() | Atom.t(),
        "TagValue" => String.t() | Atom.t(),
        "TaskArn" => String.t() | Atom.t()
      }

  """
  @type get_tag_sync_task_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      group_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t() | Atom.t())
      }

  """
  @type group_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      group_resources_input() :: %{
        required("Group") => String.t() | Atom.t(),
        required("ResourceArns") => list(String.t() | Atom.t())
      }

  """
  @type group_resources_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      search_resources_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "QueryErrors" => list(query_error()),
        "ResourceIdentifiers" => list(resource_identifier())
      }

  """
  @type search_resources_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_group_resources_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "QueryErrors" => list(query_error()),
        "ResourceIdentifiers" => list(resource_identifier()),
        "Resources" => list(list_group_resources_item())
      }

  """
  @type list_group_resources_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_sync_task_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "ErrorMessage" => String.t() | Atom.t(),
        "GroupArn" => String.t() | Atom.t(),
        "GroupName" => String.t() | Atom.t(),
        "ResourceQuery" => resource_query(),
        "RoleArn" => String.t() | Atom.t(),
        "Status" => list(any()),
        "TagKey" => String.t() | Atom.t(),
        "TagValue" => String.t() | Atom.t(),
        "TaskArn" => String.t() | Atom.t()
      }

  """
  @type tag_sync_task_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_group_input() :: %{
        optional("Group") => String.t() | Atom.t(),
        optional("GroupName") => String.t() | Atom.t()
      }

  """
  @type delete_group_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      group_query() :: %{
        "GroupName" => String.t() | Atom.t(),
        "ResourceQuery" => resource_query()
      }

  """
  @type group_query() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_account_settings_input() :: %{
        optional("GroupLifecycleEventsDesiredStatus") => list(any())
      }

  """
  @type update_account_settings_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_group_output() :: %{
        "Group" => group()
      }

  """
  @type get_group_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_account_settings_output() :: %{
        "AccountSettings" => account_settings()
      }

  """
  @type update_account_settings_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_group_input() :: %{
        optional("Group") => String.t() | Atom.t(),
        optional("GroupName") => String.t() | Atom.t()
      }

  """
  @type get_group_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_group_resources_input() :: %{
        optional("Filters") => list(resource_filter()),
        optional("Group") => String.t() | Atom.t(),
        optional("GroupName") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_group_resources_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      account_settings() :: %{
        "GroupLifecycleEventsDesiredStatus" => list(any()),
        "GroupLifecycleEventsStatus" => list(any()),
        "GroupLifecycleEventsStatusMessage" => String.t() | Atom.t()
      }

  """
  @type account_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_tag_sync_task_input() :: %{
        required("TaskArn") => String.t() | Atom.t()
      }

  """
  @type get_tag_sync_task_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_group_input() :: %{
        optional("Criticality") => integer(),
        optional("Description") => String.t() | Atom.t(),
        optional("DisplayName") => String.t() | Atom.t(),
        optional("Group") => String.t() | Atom.t(),
        optional("GroupName") => String.t() | Atom.t(),
        optional("Owner") => String.t() | Atom.t()
      }

  """
  @type update_group_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_tags_input() :: %{}

  """
  @type get_tags_input() :: %{}

  @typedoc """

  ## Example:

      grouping_statuses_item() :: %{
        "Action" => list(any()),
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorMessage" => String.t() | Atom.t(),
        "ResourceArn" => String.t() | Atom.t(),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type grouping_statuses_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      group() :: %{
        "ApplicationTag" => map(),
        "Criticality" => integer(),
        "Description" => String.t() | Atom.t(),
        "DisplayName" => String.t() | Atom.t(),
        "GroupArn" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Owner" => String.t() | Atom.t()
      }

  """
  @type group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_account_settings_output() :: %{
        "AccountSettings" => account_settings()
      }

  """
  @type get_account_settings_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ungroup_resources_input() :: %{
        required("Group") => String.t() | Atom.t(),
        required("ResourceArns") => list(String.t() | Atom.t())
      }

  """
  @type ungroup_resources_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_groups_input() :: %{
        optional("Filters") => list(group_filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_groups_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_grouping_statuses_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t() | Atom.t())
      }

  """
  @type list_grouping_statuses_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_output() :: %{
        "Arn" => String.t() | Atom.t(),
        "Keys" => list(String.t() | Atom.t())
      }

  """
  @type untag_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      failed_resource() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorMessage" => String.t() | Atom.t(),
        "ResourceArn" => String.t() | Atom.t()
      }

  """
  @type failed_resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type bad_request_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_group_output() :: %{
        "Group" => group()
      }

  """
  @type delete_group_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      group_configuration() :: %{
        "Configuration" => list(group_configuration_item()),
        "FailureReason" => String.t() | Atom.t(),
        "ProposedConfiguration" => list(group_configuration_item()),
        "Status" => list(any())
      }

  """
  @type group_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      query_error() :: %{
        "ErrorCode" => list(any()),
        "Message" => String.t() | Atom.t()
      }

  """
  @type query_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tag_sync_tasks_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "TagSyncTasks" => list(tag_sync_task_item())
      }

  """
  @type list_tag_sync_tasks_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_group_configuration_output() :: %{}

  """
  @type put_group_configuration_output() :: %{}

  @typedoc """

  ## Example:

      group_configuration_item() :: %{
        "Parameters" => list(group_configuration_parameter()),
        "Type" => String.t() | Atom.t()
      }

  """
  @type group_configuration_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_input() :: %{
        required("Tags") => map()
      }

  """
  @type tag_input() :: %{String.t() | Atom.t() => any()}

  @type cancel_tag_sync_task_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_account_settings_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_group_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_group_query_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_tag_sync_task_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type get_tags_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type group_resources_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type list_group_resources_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_grouping_statuses_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type list_groups_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type list_tag_sync_tasks_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type put_group_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type search_resources_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type start_tag_sync_task_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type tag_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type ungroup_resources_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type untag_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_account_settings_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_group_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_group_query_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2017-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "resource-groups",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Resource Groups",
      signature_version: "v4",
      signing_name: "resource-groups",
      target_prefix: nil
    }
  end

  @doc """
  Cancels the specified tag-sync task.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:CancelTagSyncTask` on the application group

    *

  `resource-groups:DeleteGroup`
  """
  @spec cancel_tag_sync_task(map(), cancel_tag_sync_task_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_tag_sync_task_errors()}
  def cancel_tag_sync_task(%Client{} = client, input, options \\ []) do
    url_path = "/cancel-tag-sync-task"
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
  Creates a resource group with the specified name and description.

  You can optionally
  include either a resource query or a service configuration. For more information
  about
  constructing a resource query, see [Build queries and groups in Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/userguide/getting_started-query.html)
  in the *Resource Groups User Guide*. For more information
  about service-linked groups and service configurations, see [Service configurations for Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:CreateGroup`
  """
  @spec create_group(map(), create_group_input(), list()) ::
          {:ok, create_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_group_errors()}
  def create_group(%Client{} = client, input, options \\ []) do
    url_path = "/groups"
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
  Deletes the specified resource group.

  Deleting a resource group does not delete any
  resources that are members of the group; it only deletes the group structure.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:DeleteGroup`
  """
  @spec delete_group(map(), delete_group_input(), list()) ::
          {:ok, delete_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, input, options \\ []) do
    url_path = "/delete-group"
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
  Retrieves the current status of optional features in Resource Groups.
  """
  @spec get_account_settings(map(), %{}, list()) ::
          {:ok, get_account_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_settings_errors()}
  def get_account_settings(%Client{} = client, input, options \\ []) do
    url_path = "/get-account-settings"
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
  Returns information about a specified resource group.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:GetGroup`
  """
  @spec get_group(map(), get_group_input(), list()) ::
          {:ok, get_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_group_errors()}
  def get_group(%Client{} = client, input, options \\ []) do
    url_path = "/get-group"
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
  Retrieves the service configuration associated with the specified resource
  group.

  For
  details about the service configuration syntax, see [Service configurations for Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:GetGroupConfiguration`
  """
  @spec get_group_configuration(map(), get_group_configuration_input(), list()) ::
          {:ok, get_group_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_group_configuration_errors()}
  def get_group_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/get-group-configuration"
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
  Retrieves the resource query associated with the specified resource group.

  For more
  information about resource queries, see [Create a tag-based group in Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag).

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:GetGroupQuery`
  """
  @spec get_group_query(map(), get_group_query_input(), list()) ::
          {:ok, get_group_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_group_query_errors()}
  def get_group_query(%Client{} = client, input, options \\ []) do
    url_path = "/get-group-query"
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
  Returns information about a specified tag-sync task.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:GetTagSyncTask` on the application group
  """
  @spec get_tag_sync_task(map(), get_tag_sync_task_input(), list()) ::
          {:ok, get_tag_sync_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tag_sync_task_errors()}
  def get_tag_sync_task(%Client{} = client, input, options \\ []) do
    url_path = "/get-tag-sync-task"
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
  Returns a list of tags that are associated with a resource group, specified by
  an
  Amazon resource name (ARN).

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:GetTags`
  """
  @spec get_tags(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tags_errors()}
  def get_tags(%Client{} = client, arn, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(arn)}/tags"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds the specified resources to the specified group.

  You can only use this operation with the following groups:

    

  `AWS::EC2::HostManagement`

    

  `AWS::EC2::CapacityReservationPool`

    

  `AWS::ResourceGroups::ApplicationGroup`

  Other resource group types and resource types are not currently supported by
  this
  operation.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:GroupResources`
  """
  @spec group_resources(map(), group_resources_input(), list()) ::
          {:ok, group_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, group_resources_errors()}
  def group_resources(%Client{} = client, input, options \\ []) do
    url_path = "/group-resources"
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
  Returns a list of Amazon resource names (ARNs) of the resources that are members
  of a specified resource
  group.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:ListGroupResources`

    *

  `cloudformation:DescribeStacks`

    *

  `cloudformation:ListStackResources`

    *

  `tag:GetResources`
  """
  @spec list_group_resources(map(), list_group_resources_input(), list()) ::
          {:ok, list_group_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_group_resources_errors()}
  def list_group_resources(%Client{} = client, input, options \\ []) do
    url_path = "/list-group-resources"
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
  Returns the status of the last grouping or ungrouping action for
  each resource in the specified application group.
  """
  @spec list_grouping_statuses(map(), list_grouping_statuses_input(), list()) ::
          {:ok, list_grouping_statuses_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_grouping_statuses_errors()}
  def list_grouping_statuses(%Client{} = client, input, options \\ []) do
    url_path = "/list-grouping-statuses"
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
  Returns a list of existing Resource Groups in your account.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:ListGroups`
  """
  @spec list_groups(map(), list_groups_input(), list()) ::
          {:ok, list_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_groups_errors()}
  def list_groups(%Client{} = client, input, options \\ []) do
    url_path = "/groups-list"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "maxResults"},
        {"NextToken", "nextToken"}
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
  Returns a list of tag-sync tasks.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:ListTagSyncTasks` with the group passed in the filters as the
  resource
  or * if using no filters
  """
  @spec list_tag_sync_tasks(map(), list_tag_sync_tasks_input(), list()) ::
          {:ok, list_tag_sync_tasks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tag_sync_tasks_errors()}
  def list_tag_sync_tasks(%Client{} = client, input, options \\ []) do
    url_path = "/list-tag-sync-tasks"
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
  Attaches a service configuration to the specified group.

  This occurs asynchronously,
  and can take time to complete. You can use `GetGroupConfiguration` to
  check the status of the update.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:PutGroupConfiguration`
  """
  @spec put_group_configuration(map(), put_group_configuration_input(), list()) ::
          {:ok, put_group_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_group_configuration_errors()}
  def put_group_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/put-group-configuration"
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
      202
    )
  end

  @doc """
  Returns a list of Amazon Web Services resource identifiers that matches the
  specified query.

  The
  query uses the same format as a resource query in a `CreateGroup` or
  `UpdateGroupQuery` operation.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:SearchResources`

    *

  `cloudformation:DescribeStacks`

    *

  `cloudformation:ListStackResources`

    *

  `tag:GetResources`
  """
  @spec search_resources(map(), search_resources_input(), list()) ::
          {:ok, search_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_resources_errors()}
  def search_resources(%Client{} = client, input, options \\ []) do
    url_path = "/resources/search"
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
  Creates a new tag-sync task to onboard and sync resources tagged with a specific
  tag key-value pair to an
  application.

  To start a tag-sync task, you need a [resource tagging role](https://docs.aws.amazon.com/servicecatalog/latest/arguide/app-tag-sync.html#tag-sync-role).
  The resource tagging role grants permissions to tag and untag applications
  resources and must include a
  trust policy that allows Resource Groups to assume the role and perform resource
  tagging tasks on your behalf.

  For instructions on creating a tag-sync task, see [Create a tag-sync using the Resource Groups
  API](https://docs.aws.amazon.com/servicecatalog/latest/arguide/app-tag-sync.html#create-tag-sync)
  in the *Amazon Web Services Service Catalog AppRegistry Administrator Guide*.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:StartTagSyncTask` on the application group

    *

  `resource-groups:CreateGroup`

    *

  `iam:PassRole` on the role provided in the request
  """
  @spec start_tag_sync_task(map(), start_tag_sync_task_input(), list()) ::
          {:ok, start_tag_sync_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_tag_sync_task_errors()}
  def start_tag_sync_task(%Client{} = client, input, options \\ []) do
    url_path = "/start-tag-sync-task"
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
  Adds tags to a resource group with the specified Amazon resource name (ARN).

  Existing tags on a resource
  group are not changed if they are not specified in the request parameters.

  Do not store personally identifiable information (PII) or other confidential or
  sensitive information in tags. We use tags to provide you with billing and
  administration services. Tags are not intended to be used for private or
  sensitive
  data.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:Tag`
  """
  @spec tag(map(), String.t() | Atom.t(), tag_input(), list()) ::
          {:ok, tag_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_errors()}
  def tag(%Client{} = client, arn, input, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(arn)}/tags"
    headers = []
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
  Removes the specified resources from the specified group.

  This operation works only
  with static groups that you populated using the `GroupResources`
  operation. It doesn't work with any resource groups that are automatically
  populated by
  tag-based or CloudFormation stack-based queries.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:UngroupResources`
  """
  @spec ungroup_resources(map(), ungroup_resources_input(), list()) ::
          {:ok, ungroup_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, ungroup_resources_errors()}
  def ungroup_resources(%Client{} = client, input, options \\ []) do
    url_path = "/ungroup-resources"
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
  Deletes tags from a specified resource group.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:Untag`
  """
  @spec untag(map(), String.t() | Atom.t(), untag_input(), list()) ::
          {:ok, untag_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_errors()}
  def untag(%Client{} = client, arn, input, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(arn)}/tags"
    headers = []
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
  Turns on or turns off optional features in Resource Groups.

  The preceding example shows that the request to turn on group lifecycle events
  is
  `IN_PROGRESS`. You can call the `GetAccountSettings`
  operation to check for completion by looking for `GroupLifecycleEventsStatus`
  to change to `ACTIVE`.
  """
  @spec update_account_settings(map(), update_account_settings_input(), list()) ::
          {:ok, update_account_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_account_settings_errors()}
  def update_account_settings(%Client{} = client, input, options \\ []) do
    url_path = "/update-account-settings"
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
  Updates the description for an existing group.

  You cannot update the name of a
  resource group.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:UpdateGroup`
  """
  @spec update_group(map(), update_group_input(), list()) ::
          {:ok, update_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_group_errors()}
  def update_group(%Client{} = client, input, options \\ []) do
    url_path = "/update-group"
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
  Updates the resource query of a group.

  For more information about resource queries,
  see [Create a tag-based group in Resource Groups](https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag).

  ## Minimum permissions

  To run this command, you must have the following permissions:

    *

  `resource-groups:UpdateGroupQuery`
  """
  @spec update_group_query(map(), update_group_query_input(), list()) ::
          {:ok, update_group_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_group_query_errors()}
  def update_group_query(%Client{} = client, input, options \\ []) do
    url_path = "/update-group-query"
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
