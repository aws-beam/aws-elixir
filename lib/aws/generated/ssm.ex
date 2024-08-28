# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSM do
  @moduledoc """
  Amazon Web Services Systems Manager is the operations hub for your Amazon Web
  Services applications and resources and a secure
  end-to-end management solution for hybrid cloud environments that enables safe
  and secure
  operations at scale.

  This reference is intended to be used with the [Amazon Web Services Systems Manager User
  Guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/). To get
  started, see [Setting up Amazon Web Services Systems Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html).

  ## Related resources

    *
  For information about each of the capabilities that comprise Systems Manager,
  see [Systems Manager capabilities](https://docs.aws.amazon.com/systems-manager/latest/userguide/what-is-systems-manager.html#systems-manager-capabilities)
  in the *Amazon Web Services Systems Manager User Guide*.

    *
  For details about predefined runbooks for Automation, a capability of Amazon Web
  Services Systems Manager, see the
  *
  [Systems Manager Automation runbook reference](https://docs.aws.amazon.com/systems-manager-automation-runbooks/latest/userguide/automation-runbook-reference.html)
  *.

    *
  For information about AppConfig, a capability of Systems Manager, see the *
  [AppConfig User Guide](https://docs.aws.amazon.com/appconfig/latest/userguide/) *
  and the *
  [AppConfig
  API Reference](https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/)
  *.

    *
  For information about Incident Manager, a capability of Systems Manager, see the
  *
  [Systems Manager Incident Manager User Guide](https://docs.aws.amazon.com/incident-manager/latest/userguide/)
  * and the *
  [Systems Manager Incident Manager API Reference](https://docs.aws.amazon.com/incident-manager/latest/APIReference/)
  *.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_automation_execution_result() :: %{
        "AutomationExecution" => automation_execution()
      }
      
  """
  @type get_automation_execution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_automation_signal_result() :: %{}
      
  """
  @type send_automation_signal_result() :: %{}

  @typedoc """

  ## Example:
      
      invalid_instance_property_filter_value() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_instance_property_filter_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_maintenance_window_execution_task_invocation_request() :: %{
        required("InvocationId") => String.t(),
        required("TaskId") => String.t(),
        required("WindowExecutionId") => String.t()
      }
      
  """
  @type get_maintenance_window_execution_task_invocation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_default_patch_baseline_result() :: %{
        "BaselineId" => String.t()
      }
      
  """
  @type register_default_patch_baseline_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_command_invocations_request() :: %{
        optional("CommandId") => String.t(),
        optional("Details") => boolean(),
        optional("Filters") => list(command_filter()()),
        optional("InstanceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_command_invocations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_string_filter() :: %{
        "Key" => String.t(),
        "Type" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type compliance_string_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_config() :: %{
        "NotificationArn" => String.t(),
        "NotificationEvents" => list(list(any())()),
        "NotificationType" => list(any())
      }
      
  """
  @type notification_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_target_from_maintenance_window_request() :: %{
        optional("Safe") => boolean(),
        required("WindowId") => String.t(),
        required("WindowTargetId") => String.t()
      }
      
  """
  @type deregister_target_from_maintenance_window_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parent_step_details() :: %{
        "Action" => String.t(),
        "Iteration" => integer(),
        "IteratorValue" => String.t(),
        "StepExecutionId" => String.t(),
        "StepName" => String.t()
      }
      
  """
  @type parent_step_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_maintenance_window_execution_result() :: %{
        "WindowExecutionId" => String.t()
      }
      
  """
  @type cancel_maintenance_window_execution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_ops_item_events_response() :: %{
        "NextToken" => String.t(),
        "Summaries" => list(ops_item_event_summary()())
      }
      
  """
  @type list_ops_item_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inventory_deletions_request() :: %{
        optional("DeletionId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_inventory_deletions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_target_with_maintenance_window_result() :: %{
        "WindowTargetId" => String.t()
      }
      
  """
  @type register_target_with_maintenance_window_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_associations_once_result() :: %{}
      
  """
  @type start_associations_once_result() :: %{}

  @typedoc """

  ## Example:
      
      create_patch_baseline_request() :: %{
        optional("ApprovalRules") => patch_rule_group(),
        optional("ApprovedPatches") => list(String.t()()),
        optional("ApprovedPatchesComplianceLevel") => list(any()),
        optional("ApprovedPatchesEnableNonSecurity") => boolean(),
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("GlobalFilters") => patch_filter_group(),
        optional("OperatingSystem") => list(any()),
        optional("RejectedPatches") => list(String.t()()),
        optional("RejectedPatchesAction") => list(any()),
        optional("Sources") => list(patch_source()()),
        optional("Tags") => list(tag()()),
        required("Name") => String.t()
      }
      
  """
  @type create_patch_baseline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_association() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_association_status_result() :: %{
        "AssociationDescription" => association_description()
      }
      
  """
  @type update_association_status_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_maintenance_window_task_request() :: %{
        optional("AlarmConfiguration") => alarm_configuration(),
        optional("CutoffBehavior") => list(any()),
        optional("Description") => String.t(),
        optional("LoggingInfo") => logging_info(),
        optional("MaxConcurrency") => String.t(),
        optional("MaxErrors") => String.t(),
        optional("Name") => String.t(),
        optional("Priority") => integer(),
        optional("Replace") => boolean(),
        optional("ServiceRoleArn") => String.t(),
        optional("Targets") => list(target()()),
        optional("TaskArn") => String.t(),
        optional("TaskInvocationParameters") => maintenance_window_task_invocation_parameters(),
        optional("TaskParameters") => map(),
        required("WindowId") => String.t(),
        required("WindowTaskId") => String.t()
      }
      
  """
  @type update_maintenance_window_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_maintenance_window_execution_request() :: %{
        required("WindowExecutionId") => String.t()
      }
      
  """
  @type get_maintenance_window_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_item_attribute() :: %{
        "DataType" => list(any()),
        "Name" => String.t()
      }
      
  """
  @type inventory_item_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_default_patch_baseline_request() :: %{
        optional("OperatingSystem") => list(any())
      }
      
  """
  @type get_default_patch_baseline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_parameters_result() :: %{
        "InvalidParameters" => list(String.t()()),
        "Parameters" => list(parameter()())
      }
      
  """
  @type get_parameters_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metadata_value() :: %{
        "Value" => String.t()
      }
      
  """
  @type metadata_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_maintenance_window_task_request() :: %{
        required("WindowId") => String.t(),
        required("WindowTaskId") => String.t()
      }
      
  """
  @type get_maintenance_window_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_response() :: %{}
      
  """
  @type delete_resource_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      patch_group_patch_baseline_mapping() :: %{
        "BaselineIdentity" => patch_baseline_identity(),
        "PatchGroup" => String.t()
      }
      
  """
  @type patch_group_patch_baseline_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_metadata() :: %{
        "ARN" => String.t(),
        "AllowedPattern" => String.t(),
        "DataType" => String.t(),
        "Description" => String.t(),
        "KeyId" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "LastModifiedUser" => String.t(),
        "Name" => String.t(),
        "Policies" => list(parameter_inline_policy()()),
        "Tier" => list(any()),
        "Type" => list(any()),
        "Version" => float()
      }
      
  """
  @type parameter_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_document_size_exceeded() :: %{
        "Message" => String.t()
      }
      
  """
  @type max_document_size_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_data_sync_already_exists_exception() :: %{
        "SyncName" => String.t()
      }
      
  """
  @type resource_data_sync_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_available_patches_result() :: %{
        "NextToken" => String.t(),
        "Patches" => list(patch()())
      }
      
  """
  @type describe_available_patches_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_association_result() :: %{}
      
  """
  @type delete_association_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_patch_properties_result() :: %{
        "NextToken" => String.t(),
        "Properties" => list(map()())
      }
      
  """
  @type describe_patch_properties_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_resource_data_sync_result() :: %{}
      
  """
  @type update_resource_data_sync_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_activations_filter() :: %{
        "FilterKey" => list(any()),
        "FilterValues" => list(String.t()())
      }
      
  """
  @type describe_activations_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item() :: %{
        "ActualEndTime" => non_neg_integer(),
        "ActualStartTime" => non_neg_integer(),
        "Category" => String.t(),
        "CreatedBy" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "LastModifiedBy" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Notifications" => list(ops_item_notification()()),
        "OperationalData" => map(),
        "OpsItemArn" => String.t(),
        "OpsItemId" => String.t(),
        "OpsItemType" => String.t(),
        "PlannedEndTime" => non_neg_integer(),
        "PlannedStartTime" => non_neg_integer(),
        "Priority" => integer(),
        "RelatedOpsItems" => list(related_ops_item()()),
        "Severity" => String.t(),
        "Source" => String.t(),
        "Status" => list(any()),
        "Title" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type ops_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_setting_result() :: %{
        "ServiceSetting" => service_setting()
      }
      
  """
  @type get_service_setting_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_associations_once_request() :: %{
        required("AssociationIds") => list(String.t()())
      }
      
  """
  @type start_associations_once_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_document_result() :: %{
        "DocumentDescription" => document_description()
      }
      
  """
  @type update_document_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_policy_attribute_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_policy_attribute_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_association_request() :: %{
        optional("AssociationId") => String.t(),
        optional("AssociationVersion") => String.t(),
        optional("InstanceId") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type describe_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_plugin_name() :: %{}
      
  """
  @type invalid_plugin_name() :: %{}

  @typedoc """

  ## Example:
      
      invalid_type_name_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_type_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_parameter_request() :: %{
        optional("AllowedPattern") => String.t(),
        optional("DataType") => String.t(),
        optional("Description") => String.t(),
        optional("KeyId") => String.t(),
        optional("Overwrite") => boolean(),
        optional("Policies") => String.t(),
        optional("Tags") => list(tag()()),
        optional("Tier") => list(any()),
        optional("Type") => list(any()),
        required("Name") => String.t(),
        required("Value") => String.t()
      }
      
  """
  @type put_parameter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_property_filter() :: %{
        "key" => list(any()),
        "valueSet" => list(String.t()())
      }
      
  """
  @type instance_property_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_execution() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusDetails" => String.t(),
        "WindowExecutionId" => String.t(),
        "WindowId" => String.t()
      }
      
  """
  @type maintenance_window_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unlabel_parameter_version_request() :: %{
        required("Labels") => list(String.t()()),
        required("Name") => String.t(),
        required("ParameterVersion") => float()
      }
      
  """
  @type unlabel_parameter_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_item_content_exception() :: %{
        "Message" => String.t(),
        "TypeName" => String.t()
      }
      
  """
  @type invalid_item_content_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ops_item_request() :: %{
        optional("OpsItemArn") => String.t(),
        required("OpsItemId") => String.t()
      }
      
  """
  @type get_ops_item_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_session_request() :: %{
        optional("DocumentName") => String.t(),
        optional("Parameters") => map(),
        optional("Reason") => String.t(),
        required("Target") => String.t()
      }
      
  """
  @type start_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_patch_states_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("InstanceIds") => list(String.t()())
      }
      
  """
  @type describe_instance_patch_states_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_data_sync_s3_destination() :: %{
        "AWSKMSKeyARN" => String.t(),
        "BucketName" => String.t(),
        "DestinationDataSharing" => resource_data_sync_destination_data_sharing(),
        "Prefix" => String.t(),
        "Region" => String.t(),
        "SyncFormat" => list(any())
      }
      
  """
  @type resource_data_sync_s3_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ops_item_response() :: %{}
      
  """
  @type delete_ops_item_response() :: %{}

  @typedoc """

  ## Example:
      
      incompatible_policy_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type incompatible_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step_execution_filter() :: %{
        "Key" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type step_execution_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_not_found() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_group() :: %{
        "Filters" => list(inventory_filter()()),
        "Name" => String.t()
      }
      
  """
  @type inventory_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type ops_item_access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_resource_policy_document_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type malformed_resource_policy_document_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_identity() :: %{
        "Arn" => String.t()
      }
      
  """
  @type ops_item_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_result_attribute_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_result_attribute_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_parameter_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_parameter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_task_from_maintenance_window_result() :: %{
        "WindowId" => String.t(),
        "WindowTaskId" => String.t()
      }
      
  """
  @type deregister_task_from_maintenance_window_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ops_metadata_request() :: %{
        optional("KeysToDelete") => list(String.t()()),
        optional("MetadataToUpdate") => map(),
        required("OpsMetadataArn") => String.t()
      }
      
  """
  @type update_ops_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_target() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_result_entity() :: %{
        "Data" => map(),
        "Id" => String.t()
      }
      
  """
  @type inventory_result_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_patch_baseline_for_patch_group_request() :: %{
        required("BaselineId") => String.t(),
        required("PatchGroup") => String.t()
      }
      
  """
  @type deregister_patch_baseline_for_patch_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_compliance_summaries_request() :: %{
        optional("Filters") => list(compliance_string_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_resource_compliance_summaries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_output_config() :: %{
        "CloudWatchLogGroupName" => String.t(),
        "CloudWatchOutputEnabled" => boolean()
      }
      
  """
  @type cloud_watch_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_review_comment_source() :: %{
        "Content" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type document_review_comment_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_sharing_info() :: %{
        "AccountId" => String.t(),
        "SharedDocumentVersion" => String.t()
      }
      
  """
  @type account_sharing_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tag() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_associations_status_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type describe_instance_associations_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_data_sync_item() :: %{
        "LastStatus" => list(any()),
        "LastSuccessfulSyncTime" => non_neg_integer(),
        "LastSyncStatusMessage" => String.t(),
        "LastSyncTime" => non_neg_integer(),
        "S3Destination" => resource_data_sync_s3_destination(),
        "SyncCreatedTime" => non_neg_integer(),
        "SyncLastModifiedTime" => non_neg_integer(),
        "SyncName" => String.t(),
        "SyncSource" => resource_data_sync_source_with_state(),
        "SyncType" => String.t()
      }
      
  """
  @type resource_data_sync_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_metadata_filter() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type ops_metadata_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_parameter_type() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_parameter_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_parameter() :: %{
        "DefaultValue" => String.t(),
        "Description" => String.t(),
        "Name" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type document_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_version_limit_exceeded() :: %{
        "Message" => String.t()
      }
      
  """
  @type document_version_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_item() :: %{
        "ComplianceType" => String.t(),
        "Details" => map(),
        "ExecutionSummary" => compliance_execution_summary(),
        "Id" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "Severity" => list(any()),
        "Status" => list(any()),
        "Title" => String.t()
      }
      
  """
  @type compliance_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging_info() :: %{
        "S3BucketName" => String.t(),
        "S3KeyPrefix" => String.t(),
        "S3Region" => String.t()
      }
      
  """
  @type logging_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_default_patch_baseline_request() :: %{
        required("BaselineId") => String.t()
      }
      
  """
  @type register_default_patch_baseline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_session_request() :: %{
        required("SessionId") => String.t()
      }
      
  """
  @type resume_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_window_targets_result() :: %{
        "NextToken" => String.t(),
        "Targets" => list(maintenance_window_target()())
      }
      
  """
  @type describe_maintenance_window_targets_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_parameters_request() :: %{
        optional("Filters") => list(parameters_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ParameterFilters") => list(parameter_string_filter()()),
        optional("Shared") => boolean()
      }
      
  """
  @type describe_parameters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy_limit_exceeded_exception() :: %{
        "Limit" => integer(),
        "LimitType" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type resource_policy_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm() :: %{
        "Name" => String.t()
      }
      
  """
  @type alarm() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automation_execution_filter() :: %{
        "Key" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type automation_execution_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_deletion_summary_item() :: %{
        "Count" => integer(),
        "RemainingCount" => integer(),
        "Version" => String.t()
      }
      
  """
  @type inventory_deletion_summary_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_association_result() :: %{
        "AssociationDescription" => association_description()
      }
      
  """
  @type describe_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_association_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AssociationId") => String.t()
      }
      
  """
  @type list_association_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy_invalid_parameter_exception() :: %{
        "Message" => String.t(),
        "ParameterNames" => list(String.t()())
      }
      
  """
  @type resource_policy_invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      non_compliant_summary() :: %{
        "NonCompliantCount" => integer(),
        "SeveritySummary" => severity_summary()
      }
      
  """
  @type non_compliant_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_window_execution_task_invocations_request() :: %{
        optional("Filters") => list(maintenance_window_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("TaskId") => String.t(),
        required("WindowExecutionId") => String.t()
      }
      
  """
  @type describe_maintenance_window_execution_task_invocations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      related_ops_item() :: %{
        "OpsItemId" => String.t()
      }
      
  """
  @type related_ops_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_maintenance_window_request() :: %{
        required("WindowId") => String.t()
      }
      
  """
  @type get_maintenance_window_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      patch_filter() :: %{
        "Key" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type patch_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_result_attribute() :: %{
        "TypeName" => String.t()
      }
      
  """
  @type ops_result_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_entity() :: %{
        "Data" => map(),
        "Id" => String.t()
      }
      
  """
  @type ops_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_reviewer_response_source() :: %{
        "Comment" => list(document_review_comment_source()()),
        "CreateTime" => non_neg_integer(),
        "ReviewStatus" => list(any()),
        "Reviewer" => String.t(),
        "UpdatedTime" => non_neg_integer()
      }
      
  """
  @type document_reviewer_response_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activation() :: %{
        "ActivationId" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DefaultInstanceName" => String.t(),
        "Description" => String.t(),
        "ExpirationDate" => non_neg_integer(),
        "Expired" => boolean(),
        "IamRole" => String.t(),
        "RegistrationLimit" => integer(),
        "RegistrationsCount" => integer(),
        "Tags" => list(tag()())
      }
      
  """
  @type activation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_available_patches_request() :: %{
        optional("Filters") => list(patch_orchestrator_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_available_patches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_patch_baseline_request() :: %{
        optional("ApprovalRules") => patch_rule_group(),
        optional("ApprovedPatches") => list(String.t()()),
        optional("ApprovedPatchesComplianceLevel") => list(any()),
        optional("ApprovedPatchesEnableNonSecurity") => boolean(),
        optional("Description") => String.t(),
        optional("GlobalFilters") => patch_filter_group(),
        optional("Name") => String.t(),
        optional("RejectedPatches") => list(String.t()()),
        optional("RejectedPatchesAction") => list(any()),
        optional("Replace") => boolean(),
        optional("Sources") => list(patch_source()()),
        required("BaselineId") => String.t()
      }
      
  """
  @type update_patch_baseline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_status() :: %{
        "AdditionalInfo" => String.t(),
        "Date" => non_neg_integer(),
        "Message" => String.t(),
        "Name" => list(any())
      }
      
  """
  @type association_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_filter() :: %{
        "Key" => String.t(),
        "Type" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type inventory_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_maintenance_window_target_result() :: %{
        "Description" => String.t(),
        "Name" => String.t(),
        "OwnerInformation" => String.t(),
        "Targets" => list(target()()),
        "WindowId" => String.t(),
        "WindowTargetId" => String.t()
      }
      
  """
  @type update_maintenance_window_target_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_association_output_location() :: %{
        "S3Location" => s3_output_location()
      }
      
  """
  @type instance_association_output_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_ops_item_related_item_response() :: %{
        "AssociationId" => String.t()
      }
      
  """
  @type associate_ops_item_related_item_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_request() :: %{
        required("ResourceId") => String.t(),
        required("ResourceType") => list(any()),
        required("Tags") => list(tag()())
      }
      
  """
  @type add_tags_to_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_permission_limit() :: %{
        "Message" => String.t()
      }
      
  """
  @type document_permission_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      result_attribute() :: %{
        "TypeName" => String.t()
      }
      
  """
  @type result_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_parameter_history_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("WithDecryption") => boolean(),
        required("Name") => String.t()
      }
      
  """
  @type get_parameter_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_execution_target() :: %{
        "AssociationId" => String.t(),
        "AssociationVersion" => String.t(),
        "DetailedStatus" => String.t(),
        "ExecutionId" => String.t(),
        "LastExecutionDate" => non_neg_integer(),
        "OutputSource" => output_source(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type association_execution_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_command_result() :: %{
        "Command" => command()
      }
      
  """
  @type send_command_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_limit_exceeded() :: %{}
      
  """
  @type association_limit_exceeded() :: %{}

  @typedoc """

  ## Example:
      
      describe_patch_properties_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PatchSet") => list(any()),
        required("OperatingSystem") => list(any()),
        required("Property") => list(any())
      }
      
  """
  @type describe_patch_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_task_parameter_value_expression() :: %{
        "Values" => list(String.t()())
      }
      
  """
  @type maintenance_window_task_parameter_value_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_feature_required_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_feature_required_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_document() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_document_content() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_document_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_inventory_item_context_exception() :: %{
        "Message" => String.t(),
        "TypeName" => String.t()
      }
      
  """
  @type unsupported_inventory_item_context_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameters() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_data_sync_conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_data_sync_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_patch_baseline_request() :: %{
        required("BaselineId") => String.t()
      }
      
  """
  @type get_patch_baseline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_delete_inventory_parameters_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_delete_inventory_parameters_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_inline_policy() :: %{
        "PolicyStatus" => String.t(),
        "PolicyText" => String.t(),
        "PolicyType" => String.t()
      }
      
  """
  @type parameter_inline_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_version_info() :: %{
        "ApplyOnlyAtCronInterval" => boolean(),
        "AssociationId" => String.t(),
        "AssociationName" => String.t(),
        "AssociationVersion" => String.t(),
        "CalendarNames" => list(String.t()()),
        "ComplianceSeverity" => list(any()),
        "CreatedDate" => non_neg_integer(),
        "DocumentVersion" => String.t(),
        "Duration" => integer(),
        "MaxConcurrency" => String.t(),
        "MaxErrors" => String.t(),
        "Name" => String.t(),
        "OutputLocation" => instance_association_output_location(),
        "Parameters" => map(),
        "ScheduleExpression" => String.t(),
        "ScheduleOffset" => integer(),
        "SyncCompliance" => list(any()),
        "TargetLocations" => list(target_location()()),
        "TargetMaps" => list(map()()),
        "Targets" => list(target()())
      }
      
  """
  @type association_version_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_association_status_info() :: %{
        "AssociationId" => String.t(),
        "AssociationName" => String.t(),
        "AssociationVersion" => String.t(),
        "DetailedStatus" => String.t(),
        "DocumentVersion" => String.t(),
        "ErrorCode" => String.t(),
        "ExecutionDate" => non_neg_integer(),
        "ExecutionSummary" => String.t(),
        "InstanceId" => String.t(),
        "Name" => String.t(),
        "OutputUrl" => instance_association_output_url(),
        "Status" => String.t()
      }
      
  """
  @type instance_association_status_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ops_summary_request() :: %{
        optional("Aggregators") => list(ops_aggregator()()),
        optional("Filters") => list(ops_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResultAttributes") => list(ops_result_attribute()()),
        optional("SyncName") => String.t()
      }
      
  """
  @type get_ops_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_document_request() :: %{
        optional("Attachments") => list(attachments_source()()),
        optional("DisplayName") => String.t(),
        optional("DocumentFormat") => list(any()),
        optional("DocumentVersion") => String.t(),
        optional("TargetType") => String.t(),
        optional("VersionName") => String.t(),
        required("Content") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type update_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      patch_orchestrator_filter() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type patch_orchestrator_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_parameters_request() :: %{
        required("Names") => list(String.t()())
      }
      
  """
  @type delete_parameters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_string_filter() :: %{
        "Key" => String.t(),
        "Option" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type parameter_string_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment_information() :: %{
        "Name" => String.t()
      }
      
  """
  @type attachment_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_document_version() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_document_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automation_execution_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type automation_execution_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_patch_baselines_request() :: %{
        optional("Filters") => list(patch_orchestrator_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_patch_baselines_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_information_request() :: %{
        optional("Filters") => list(instance_information_string_filter()()),
        optional("InstanceInformationFilterList") => list(instance_information_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_instance_information_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policies_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type policies_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_data_sync_source_with_state() :: %{
        "AwsOrganizationsSource" => resource_data_sync_aws_organizations_source(),
        "EnableAllOpsDataSources" => boolean(),
        "IncludeFutureRegions" => boolean(),
        "SourceRegions" => list(String.t()()),
        "SourceType" => String.t(),
        "State" => String.t()
      }
      
  """
  @type resource_data_sync_source_with_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_overview() :: %{
        "AssociationStatusAggregatedCount" => map(),
        "DetailedStatus" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type association_overview() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_aggregator() :: %{
        "Aggregators" => list(inventory_aggregator()()),
        "Expression" => String.t(),
        "Groups" => list(inventory_group()())
      }
      
  """
  @type inventory_aggregator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_automation_signal_request() :: %{
        optional("Payload") => map(),
        required("AutomationExecutionId") => String.t(),
        required("SignalType") => list(any())
      }
      
  """
  @type send_automation_signal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_patch_state_filter() :: %{
        "Key" => String.t(),
        "Type" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type instance_patch_state_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_automation_executions_result() :: %{
        "AutomationExecutionMetadataList" => list(automation_execution_metadata()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_automation_executions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_ops_metadata_request() :: %{
        optional("Filters") => list(ops_metadata_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_ops_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      label_parameter_version_request() :: %{
        optional("ParameterVersion") => float(),
        required("Labels") => list(String.t()()),
        required("Name") => String.t()
      }
      
  """
  @type label_parameter_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_document_request() :: %{
        optional("DocumentVersion") => String.t(),
        optional("Force") => boolean(),
        optional("VersionName") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type delete_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_connection_status_request() :: %{
        required("Target") => String.t()
      }
      
  """
  @type get_connection_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_association_batch_result() :: %{
        "Failed" => list(failed_create_association()()),
        "Successful" => list(association_description()())
      }
      
  """
  @type create_association_batch_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_item_schema() :: %{
        "Attributes" => list(inventory_item_attribute()()),
        "DisplayName" => String.t(),
        "TypeName" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type inventory_item_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policies_response_entry() :: %{
        "Policy" => String.t(),
        "PolicyHash" => String.t(),
        "PolicyId" => String.t()
      }
      
  """
  @type get_resource_policies_response_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_document_content() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_document_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_association_batch_request() :: %{
        required("Entries") => list(create_association_batch_request_entry()())
      }
      
  """
  @type create_association_batch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_execution_does_not_exist() :: %{
        "Message" => String.t()
      }
      
  """
  @type association_execution_does_not_exist() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_step_functions_parameters() :: %{
        "Input" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type maintenance_window_step_functions_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_data_sync_invalid_configuration_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_data_sync_invalid_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      effective_patch() :: %{
        "Patch" => patch(),
        "PatchStatus" => patch_status()
      }
      
  """
  @type effective_patch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ops_metadata_request() :: %{
        required("OpsMetadataArn") => String.t()
      }
      
  """
  @type delete_ops_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_identifier() :: %{
        "Author" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DisplayName" => String.t(),
        "DocumentFormat" => list(any()),
        "DocumentType" => list(any()),
        "DocumentVersion" => String.t(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "PlatformTypes" => list(list(any())()),
        "Requires" => list(document_requires()()),
        "ReviewStatus" => list(any()),
        "SchemaVersion" => String.t(),
        "Tags" => list(tag()()),
        "TargetType" => String.t(),
        "VersionName" => String.t()
      }
      
  """
  @type document_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      total_size_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type total_size_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_aggregator() :: %{
        "AggregatorType" => String.t(),
        "Aggregators" => list(ops_aggregator()()),
        "AttributeName" => String.t(),
        "Filters" => list(ops_filter()()),
        "TypeName" => String.t(),
        "Values" => map()
      }
      
  """
  @type ops_aggregator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failure_details() :: %{
        "Details" => map(),
        "FailureStage" => String.t(),
        "FailureType" => String.t()
      }
      
  """
  @type failure_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_maintenance_window_request() :: %{
        required("WindowId") => String.t()
      }
      
  """
  @type delete_maintenance_window_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_inventory_request() :: %{
        required("InstanceId") => String.t(),
        required("Items") => list(inventory_item()())
      }
      
  """
  @type put_inventory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_compliance_summaries_result() :: %{
        "NextToken" => String.t(),
        "ResourceComplianceSummaryItems" => list(resource_compliance_summary_item()())
      }
      
  """
  @type list_resource_compliance_summaries_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_maintenance_window_result() :: %{
        "WindowId" => String.t()
      }
      
  """
  @type create_maintenance_window_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_metadata_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type ops_metadata_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_commands_request() :: %{
        optional("CommandId") => String.t(),
        optional("Filters") => list(command_filter()()),
        optional("InstanceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_commands_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_patch_groups_request() :: %{
        optional("Filters") => list(patch_orchestrator_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_patch_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_type() :: %{}
      
  """
  @type invalid_resource_type() :: %{}

  @typedoc """

  ## Example:
      
      compliance_summary_item() :: %{
        "ComplianceType" => String.t(),
        "CompliantSummary" => compliant_summary(),
        "NonCompliantSummary" => non_compliant_summary()
      }
      
  """
  @type compliance_summary_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_ops_item_related_item_request() :: %{
        required("AssociationType") => String.t(),
        required("OpsItemId") => String.t(),
        required("ResourceType") => String.t(),
        required("ResourceUri") => String.t()
      }
      
  """
  @type associate_ops_item_related_item_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ops_item_response() :: %{
        "OpsItemArn" => String.t(),
        "OpsItemId" => String.t()
      }
      
  """
  @type create_ops_item_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_id() :: %{}
      
  """
  @type invalid_resource_id() :: %{}

  @typedoc """

  ## Example:
      
      list_document_metadata_history_request() :: %{
        optional("DocumentVersion") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Metadata") => list(any()),
        required("Name") => String.t()
      }
      
  """
  @type list_document_metadata_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_parameters_result() :: %{
        "DeletedParameters" => list(String.t()()),
        "InvalidParameters" => list(String.t()())
      }
      
  """
  @type delete_parameters_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_execution_filter() :: %{
        "Key" => list(any()),
        "Type" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type association_execution_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_version_limit_exceeded() :: %{
        "Message" => String.t()
      }
      
  """
  @type association_version_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_association_versions_result() :: %{
        "AssociationVersions" => list(association_version_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_association_versions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_association_request() :: %{
        optional("AssociationId") => String.t(),
        optional("InstanceId") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type delete_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_filter_value() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_filter_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_default_patch_baseline_result() :: %{
        "BaselineId" => String.t(),
        "OperatingSystem" => list(any())
      }
      
  """
  @type get_default_patch_baseline_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_activation_result() :: %{}
      
  """
  @type delete_activation_result() :: %{}

  @typedoc """

  ## Example:
      
      custom_schema_count_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type custom_schema_count_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_maintenance_window_execution_request() :: %{
        required("WindowExecutionId") => String.t()
      }
      
  """
  @type cancel_maintenance_window_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_document_result() :: %{
        "AttachmentsContent" => list(attachment_content()()),
        "Content" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "DisplayName" => String.t(),
        "DocumentFormat" => list(any()),
        "DocumentType" => list(any()),
        "DocumentVersion" => String.t(),
        "Name" => String.t(),
        "Requires" => list(document_requires()()),
        "ReviewStatus" => list(any()),
        "Status" => list(any()),
        "StatusInformation" => String.t(),
        "VersionName" => String.t()
      }
      
  """
  @type get_document_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_patch_group_state_result() :: %{
        "Instances" => integer(),
        "InstancesWithCriticalNonCompliantPatches" => integer(),
        "InstancesWithFailedPatches" => integer(),
        "InstancesWithInstalledOtherPatches" => integer(),
        "InstancesWithInstalledPatches" => integer(),
        "InstancesWithInstalledPendingRebootPatches" => integer(),
        "InstancesWithInstalledRejectedPatches" => integer(),
        "InstancesWithMissingPatches" => integer(),
        "InstancesWithNotApplicablePatches" => integer(),
        "InstancesWithOtherNonCompliantPatches" => integer(),
        "InstancesWithSecurityNonCompliantPatches" => integer(),
        "InstancesWithUnreportedNotApplicablePatches" => integer()
      }
      
  """
  @type describe_patch_group_state_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_version_not_found() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_version_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_automation_execution_request() :: %{
        optional("AlarmConfiguration") => alarm_configuration(),
        optional("ClientToken") => String.t(),
        optional("DocumentVersion") => String.t(),
        optional("MaxConcurrency") => String.t(),
        optional("MaxErrors") => String.t(),
        optional("Mode") => list(any()),
        optional("Parameters") => map(),
        optional("Tags") => list(tag()()),
        optional("TargetLocations") => list(target_location()()),
        optional("TargetMaps") => list(map()()),
        optional("TargetParameterName") => String.t(),
        optional("Targets") => list(target()()),
        required("DocumentName") => String.t()
      }
      
  """
  @type start_automation_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_aggregated_association_overview() :: %{
        "DetailedStatus" => String.t(),
        "InstanceAssociationStatusAggregatedCount" => map()
      }
      
  """
  @type instance_aggregated_association_overview() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_inventory_schema_result() :: %{
        "NextToken" => String.t(),
        "Schemas" => list(inventory_item_schema()())
      }
      
  """
  @type get_inventory_schema_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_resource_data_sync_request() :: %{
        optional("S3Destination") => resource_data_sync_s3_destination(),
        optional("SyncSource") => resource_data_sync_source(),
        optional("SyncType") => String.t(),
        required("SyncName") => String.t()
      }
      
  """
  @type create_resource_data_sync_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_patch_baseline_for_patch_group_result() :: %{
        "BaselineId" => String.t(),
        "PatchGroup" => String.t()
      }
      
  """
  @type deregister_patch_baseline_for_patch_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_session_request() :: %{
        required("SessionId") => String.t()
      }
      
  """
  @type terminate_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_patches_request() :: %{
        optional("Filters") => list(patch_orchestrator_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type describe_instance_patches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_patch_state() :: %{
        "BaselineId" => String.t(),
        "CriticalNonCompliantCount" => integer(),
        "FailedCount" => integer(),
        "InstallOverrideList" => String.t(),
        "InstalledCount" => integer(),
        "InstalledOtherCount" => integer(),
        "InstalledPendingRebootCount" => integer(),
        "InstalledRejectedCount" => integer(),
        "InstanceId" => String.t(),
        "LastNoRebootInstallOperationTime" => non_neg_integer(),
        "MissingCount" => integer(),
        "NotApplicableCount" => integer(),
        "Operation" => list(any()),
        "OperationEndTime" => non_neg_integer(),
        "OperationStartTime" => non_neg_integer(),
        "OtherNonCompliantCount" => integer(),
        "OwnerInformation" => String.t(),
        "PatchGroup" => String.t(),
        "RebootOption" => list(any()),
        "SecurityNonCompliantCount" => integer(),
        "SnapshotId" => String.t(),
        "UnreportedNotApplicableCount" => integer()
      }
      
  """
  @type instance_patch_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_activations_request() :: %{
        optional("Filters") => list(describe_activations_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_activations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch() :: %{
        "Message" => String.t()
      }
      
  """
  @type idempotent_parameter_mismatch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_maintenance_window_result() :: %{
        "AllowUnassociatedTargets" => boolean(),
        "CreatedDate" => non_neg_integer(),
        "Cutoff" => integer(),
        "Description" => String.t(),
        "Duration" => integer(),
        "Enabled" => boolean(),
        "EndDate" => String.t(),
        "ModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "NextExecutionTime" => String.t(),
        "Schedule" => String.t(),
        "ScheduleOffset" => integer(),
        "ScheduleTimezone" => String.t(),
        "StartDate" => String.t(),
        "WindowId" => String.t()
      }
      
  """
  @type get_maintenance_window_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ops_metadata_request() :: %{
        optional("Metadata") => map(),
        optional("Tags") => list(tag()()),
        required("ResourceId") => String.t()
      }
      
  """
  @type create_ops_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automation_execution() :: %{
        "TriggeredAlarms" => list(alarm_state_information()()),
        "MaxErrors" => String.t(),
        "AlarmConfiguration" => alarm_configuration(),
        "AutomationSubtype" => list(any()),
        "ExecutedBy" => String.t(),
        "TargetLocations" => list(target_location()()),
        "FailureMessage" => String.t(),
        "Mode" => list(any()),
        "Variables" => map(),
        "AutomationExecutionId" => String.t(),
        "ChangeRequestName" => String.t(),
        "Target" => String.t(),
        "Parameters" => map(),
        "ExecutionEndTime" => non_neg_integer(),
        "MaxConcurrency" => String.t(),
        "StepExecutions" => list(step_execution()()),
        "ParentAutomationExecutionId" => String.t(),
        "DocumentVersion" => String.t(),
        "AssociationId" => String.t(),
        "TargetParameterName" => String.t(),
        "ExecutionStartTime" => non_neg_integer(),
        "ProgressCounters" => progress_counters(),
        "StepExecutionsTruncated" => boolean(),
        "ResolvedTargets" => resolved_targets(),
        "Runbooks" => list(runbook()()),
        "TargetMaps" => list(map()()),
        "Outputs" => map(),
        "CurrentAction" => String.t(),
        "CurrentStepName" => String.t(),
        "ScheduledTime" => non_neg_integer(),
        "Targets" => list(target()()),
        "AutomationExecutionStatus" => list(any()),
        "OpsItemId" => String.t(),
        "DocumentName" => String.t()
      }
      
  """
  @type automation_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_window_tasks_result() :: %{
        "NextToken" => String.t(),
        "Tasks" => list(maintenance_window_task()())
      }
      
  """
  @type describe_maintenance_window_tasks_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_association_execution_targets_result() :: %{
        "AssociationExecutionTargets" => list(association_execution_target()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_association_execution_targets_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_patch_groups_result() :: %{
        "Mappings" => list(patch_group_patch_baseline_mapping()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_patch_groups_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invocation_does_not_exist() :: %{}
      
  """
  @type invocation_does_not_exist() :: %{}

  @typedoc """

  ## Example:
      
      describe_maintenance_window_executions_result() :: %{
        "NextToken" => String.t(),
        "WindowExecutions" => list(maintenance_window_execution()())
      }
      
  """
  @type describe_maintenance_window_executions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_output_location() :: %{
        "OutputS3BucketName" => String.t(),
        "OutputS3KeyPrefix" => String.t(),
        "OutputS3Region" => String.t()
      }
      
  """
  @type s3_output_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_session_response() :: %{
        "SessionId" => String.t()
      }
      
  """
  @type terminate_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_patch_baseline_request() :: %{
        required("BaselineId") => String.t()
      }
      
  """
  @type delete_patch_baseline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_document_request() :: %{
        optional("DocumentFormat") => list(any()),
        optional("DocumentVersion") => String.t(),
        optional("VersionName") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type get_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_service_setting_result() :: %{
        "ServiceSetting" => service_setting()
      }
      
  """
  @type reset_service_setting_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_metadata_response_info() :: %{
        "ReviewerResponse" => list(document_reviewer_response_source()())
      }
      
  """
  @type document_metadata_response_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      baseline_override() :: %{
        "ApprovalRules" => patch_rule_group(),
        "ApprovedPatches" => list(String.t()()),
        "ApprovedPatchesComplianceLevel" => list(any()),
        "ApprovedPatchesEnableNonSecurity" => boolean(),
        "GlobalFilters" => patch_filter_group(),
        "OperatingSystem" => list(any()),
        "RejectedPatches" => list(String.t()()),
        "RejectedPatchesAction" => list(any()),
        "Sources" => list(patch_source()())
      }
      
  """
  @type baseline_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_parameters_by_path_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ParameterFilters") => list(parameter_string_filter()()),
        optional("Recursive") => boolean(),
        optional("WithDecryption") => boolean(),
        required("Path") => String.t()
      }
      
  """
  @type get_parameters_by_path_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type ops_item_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      runbook() :: %{
        "DocumentName" => String.t(),
        "DocumentVersion" => String.t(),
        "MaxConcurrency" => String.t(),
        "MaxErrors" => String.t(),
        "Parameters" => map(),
        "TargetLocations" => list(target_location()()),
        "TargetMaps" => list(map()()),
        "TargetParameterName" => String.t(),
        "Targets" => list(target()())
      }
      
  """
  @type runbook() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_automation_step_executions_result() :: %{
        "NextToken" => String.t(),
        "StepExecutions" => list(step_execution()())
      }
      
  """
  @type describe_automation_step_executions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_window_schedule_request() :: %{
        optional("Filters") => list(patch_orchestrator_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceType") => list(any()),
        optional("Targets") => list(target()()),
        optional("WindowId") => String.t()
      }
      
  """
  @type describe_maintenance_window_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type ops_item_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_task_with_maintenance_window_request() :: %{
        optional("AlarmConfiguration") => alarm_configuration(),
        optional("ClientToken") => String.t(),
        optional("CutoffBehavior") => list(any()),
        optional("Description") => String.t(),
        optional("LoggingInfo") => logging_info(),
        optional("MaxConcurrency") => String.t(),
        optional("MaxErrors") => String.t(),
        optional("Name") => String.t(),
        optional("Priority") => integer(),
        optional("ServiceRoleArn") => String.t(),
        optional("Targets") => list(target()()),
        optional("TaskInvocationParameters") => maintenance_window_task_invocation_parameters(),
        optional("TaskParameters") => map(),
        required("TaskArn") => String.t(),
        required("TaskType") => list(any()),
        required("WindowId") => String.t()
      }
      
  """
  @type register_task_with_maintenance_window_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_aggregator_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_aggregator_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_option_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_option_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_calendar_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_calendar_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_schedule() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_setting_request() :: %{
        required("SettingId") => String.t()
      }
      
  """
  @type get_service_setting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_information() :: %{
        "ActivationId" => String.t(),
        "AgentVersion" => String.t(),
        "AssociationOverview" => instance_aggregated_association_overview(),
        "AssociationStatus" => String.t(),
        "ComputerName" => String.t(),
        "IPAddress" => String.t(),
        "IamRole" => String.t(),
        "InstanceId" => String.t(),
        "IsLatestVersion" => boolean(),
        "LastAssociationExecutionDate" => non_neg_integer(),
        "LastPingDateTime" => non_neg_integer(),
        "LastSuccessfulAssociationExecutionDate" => non_neg_integer(),
        "Name" => String.t(),
        "PingStatus" => list(any()),
        "PlatformName" => String.t(),
        "PlatformType" => list(any()),
        "PlatformVersion" => String.t(),
        "RegistrationDate" => non_neg_integer(),
        "ResourceType" => list(any()),
        "SourceId" => String.t(),
        "SourceType" => list(any())
      }
      
  """
  @type instance_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_role() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_role() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_window_tasks_request() :: %{
        optional("Filters") => list(maintenance_window_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("WindowId") => String.t()
      }
      
  """
  @type describe_maintenance_window_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      command_filter() :: %{
        "key" => list(any()),
        "value" => String.t()
      }
      
  """
  @type command_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_error() :: %{}
      
  """
  @type too_many_tags_error() :: %{}

  @typedoc """

  ## Example:
      
      update_resource_data_sync_request() :: %{
        required("SyncName") => String.t(),
        required("SyncSource") => resource_data_sync_source(),
        required("SyncType") => String.t()
      }
      
  """
  @type update_resource_data_sync_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_summary() :: %{
        "ActualEndTime" => non_neg_integer(),
        "ActualStartTime" => non_neg_integer(),
        "Category" => String.t(),
        "CreatedBy" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "LastModifiedBy" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "OperationalData" => map(),
        "OpsItemId" => String.t(),
        "OpsItemType" => String.t(),
        "PlannedEndTime" => non_neg_integer(),
        "PlannedStartTime" => non_neg_integer(),
        "Priority" => integer(),
        "Severity" => String.t(),
        "Source" => String.t(),
        "Status" => list(any()),
        "Title" => String.t()
      }
      
  """
  @type ops_item_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_patch_baseline_for_patch_group_result() :: %{
        "BaselineId" => String.t(),
        "PatchGroup" => String.t()
      }
      
  """
  @type register_patch_baseline_for_patch_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_metadata_invalid_argument_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type ops_metadata_invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_patch_group_state_request() :: %{
        required("PatchGroup") => String.t()
      }
      
  """
  @type describe_patch_group_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_setting_request() :: %{
        required("SettingId") => String.t(),
        required("SettingValue") => String.t()
      }
      
  """
  @type update_service_setting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_document_result() :: %{
        "DocumentDescription" => document_description()
      }
      
  """
  @type create_document_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_managed_instance_result() :: %{}
      
  """
  @type deregister_managed_instance_result() :: %{}

  @typedoc """

  ## Example:
      
      invalid_deletion_id_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_deletion_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_item_entry() :: %{
        "Details" => map(),
        "Id" => String.t(),
        "Severity" => list(any()),
        "Status" => list(any()),
        "Title" => String.t()
      }
      
  """
  @type compliance_item_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_parameter_result() :: %{
        "Parameter" => parameter()
      }
      
  """
  @type get_parameter_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_event_summary() :: %{
        "CreatedBy" => ops_item_identity(),
        "CreatedTime" => non_neg_integer(),
        "Detail" => String.t(),
        "DetailType" => String.t(),
        "EventId" => String.t(),
        "OpsItemId" => String.t(),
        "Source" => String.t()
      }
      
  """
  @type ops_item_event_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_already_exists() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_activation_id() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_activation_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_document_permission_request() :: %{
        optional("AccountIdsToAdd") => list(String.t()()),
        optional("AccountIdsToRemove") => list(String.t()()),
        optional("SharedDocumentVersion") => String.t(),
        required("Name") => String.t(),
        required("PermissionType") => list(any())
      }
      
  """
  @type modify_document_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_metadata_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type ops_metadata_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_command_request() :: %{
        optional("AlarmConfiguration") => alarm_configuration(),
        optional("CloudWatchOutputConfig") => cloud_watch_output_config(),
        optional("Comment") => String.t(),
        optional("DocumentHash") => String.t(),
        optional("DocumentHashType") => list(any()),
        optional("DocumentVersion") => String.t(),
        optional("InstanceIds") => list(String.t()()),
        optional("MaxConcurrency") => String.t(),
        optional("MaxErrors") => String.t(),
        optional("NotificationConfig") => notification_config(),
        optional("OutputS3BucketName") => String.t(),
        optional("OutputS3KeyPrefix") => String.t(),
        optional("OutputS3Region") => String.t(),
        optional("Parameters") => map(),
        optional("ServiceRoleArn") => String.t(),
        optional("Targets") => list(target()()),
        optional("TimeoutSeconds") => integer(),
        required("DocumentName") => String.t()
      }
      
  """
  @type send_command_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_instance_id() :: %{}
      
  """
  @type duplicate_instance_id() :: %{}

  @typedoc """

  ## Example:
      
      get_ops_metadata_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OpsMetadataArn") => String.t()
      }
      
  """
  @type get_ops_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_deletion_status_item() :: %{
        "DeletionId" => String.t(),
        "DeletionStartTime" => non_neg_integer(),
        "DeletionSummary" => inventory_deletion_summary(),
        "LastStatus" => list(any()),
        "LastStatusMessage" => String.t(),
        "LastStatusUpdateTime" => non_neg_integer(),
        "TypeName" => String.t()
      }
      
  """
  @type inventory_deletion_status_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_filter() :: %{
        "Key" => String.t(),
        "Type" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type ops_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_default_version_description() :: %{
        "DefaultVersion" => String.t(),
        "DefaultVersionName" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type document_default_version_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_compliance_summary_item() :: %{
        "ComplianceType" => String.t(),
        "CompliantSummary" => compliant_summary(),
        "ExecutionSummary" => compliance_execution_summary(),
        "NonCompliantSummary" => non_compliant_summary(),
        "OverallSeverity" => list(any()),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type resource_compliance_summary_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      patch() :: %{
        "AdvisoryIds" => list(String.t()()),
        "Arch" => String.t(),
        "BugzillaIds" => list(String.t()()),
        "CVEIds" => list(String.t()()),
        "Classification" => String.t(),
        "ContentUrl" => String.t(),
        "Description" => String.t(),
        "Epoch" => integer(),
        "Id" => String.t(),
        "KbNumber" => String.t(),
        "Language" => String.t(),
        "MsrcNumber" => String.t(),
        "MsrcSeverity" => String.t(),
        "Name" => String.t(),
        "Product" => String.t(),
        "ProductFamily" => String.t(),
        "Release" => String.t(),
        "ReleaseDate" => non_neg_integer(),
        "Repository" => String.t(),
        "Severity" => String.t(),
        "Title" => String.t(),
        "Vendor" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type patch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_commands_result() :: %{
        "Commands" => list(command()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_commands_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_calendar_state_request() :: %{
        optional("AtTime") => String.t(),
        required("CalendarNames") => list(String.t()())
      }
      
  """
  @type get_calendar_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_inventory_request() :: %{
        optional("Aggregators") => list(inventory_aggregator()()),
        optional("Filters") => list(inventory_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResultAttributes") => list(result_attribute()())
      }
      
  """
  @type get_inventory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_patch_baseline_for_patch_group_result() :: %{
        "BaselineId" => String.t(),
        "OperatingSystem" => list(any()),
        "PatchGroup" => String.t()
      }
      
  """
  @type get_patch_baseline_for_patch_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_window_execution_tasks_request() :: %{
        optional("Filters") => list(maintenance_window_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("WindowExecutionId") => String.t()
      }
      
  """
  @type describe_maintenance_window_execution_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_maintenance_window_request() :: %{
        optional("AllowUnassociatedTargets") => boolean(),
        optional("Cutoff") => integer(),
        optional("Description") => String.t(),
        optional("Duration") => integer(),
        optional("Enabled") => boolean(),
        optional("EndDate") => String.t(),
        optional("Name") => String.t(),
        optional("Replace") => boolean(),
        optional("Schedule") => String.t(),
        optional("ScheduleOffset") => integer(),
        optional("ScheduleTimezone") => String.t(),
        optional("StartDate") => String.t(),
        required("WindowId") => String.t()
      }
      
  """
  @type update_maintenance_window_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_parameter_history_result() :: %{
        "NextToken" => String.t(),
        "Parameters" => list(parameter_history()())
      }
      
  """
  @type get_parameter_history_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_target_from_maintenance_window_result() :: %{
        "WindowId" => String.t(),
        "WindowTargetId" => String.t()
      }
      
  """
  @type deregister_target_from_maintenance_window_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_managed_instance_request() :: %{
        required("InstanceId") => String.t()
      }
      
  """
  @type deregister_managed_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_execution_targets_filter() :: %{
        "Key" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type association_execution_targets_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_information() :: %{
        "ReviewedTime" => non_neg_integer(),
        "Reviewer" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type review_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_task_with_maintenance_window_result() :: %{
        "WindowTaskId" => String.t()
      }
      
  """
  @type register_task_with_maintenance_window_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_maintenance_window_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("EndDate") => String.t(),
        optional("ScheduleOffset") => integer(),
        optional("ScheduleTimezone") => String.t(),
        optional("StartDate") => String.t(),
        optional("Tags") => list(tag()()),
        required("AllowUnassociatedTargets") => boolean(),
        required("Cutoff") => integer(),
        required("Duration") => integer(),
        required("Name") => String.t(),
        required("Schedule") => String.t()
      }
      
  """
  @type create_maintenance_window_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_ops_items_response() :: %{
        "NextToken" => String.t(),
        "OpsItemSummaries" => list(ops_item_summary()())
      }
      
  """
  @type describe_ops_items_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_reviews() :: %{
        "Action" => list(any()),
        "Comment" => list(document_review_comment_source()())
      }
      
  """
  @type document_reviews() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_activation() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_activation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_inventory_schema_version_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_inventory_schema_version_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_parameter_result() :: %{}
      
  """
  @type delete_parameter_result() :: %{}

  @typedoc """

  ## Example:
      
      resource_data_sync_organizational_unit() :: %{
        "OrganizationalUnitId" => String.t()
      }
      
  """
  @type resource_data_sync_organizational_unit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_patch_states_result() :: %{
        "InstancePatchStates" => list(instance_patch_state()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_instance_patch_states_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_filter_option() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_filter_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_metadata() :: %{
        "CreationDate" => non_neg_integer(),
        "LastModifiedDate" => non_neg_integer(),
        "LastModifiedUser" => String.t(),
        "OpsMetadataArn" => String.t(),
        "ResourceId" => String.t()
      }
      
  """
  @type ops_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_key_id() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_key_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_allowed_pattern_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_allowed_pattern_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ops_metadata_result() :: %{
        "OpsMetadataArn" => String.t()
      }
      
  """
  @type update_ops_metadata_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_related_item_association_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type ops_item_related_item_association_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_related_item_already_exists_exception() :: %{
        "Message" => String.t(),
        "OpsItemId" => String.t(),
        "ResourceUri" => String.t()
      }
      
  """
  @type ops_item_related_item_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter() :: %{
        "ARN" => String.t(),
        "DataType" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "Selector" => String.t(),
        "SourceResult" => String.t(),
        "Type" => list(any()),
        "Value" => String.t(),
        "Version" => float()
      }
      
  """
  @type parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_automation_step_executions_request() :: %{
        optional("Filters") => list(step_execution_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ReverseOrder") => boolean(),
        required("AutomationExecutionId") => String.t()
      }
      
  """
  @type describe_automation_step_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_connection_status_response() :: %{
        "Status" => list(any()),
        "Target" => String.t()
      }
      
  """
  @type get_connection_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_properties_result() :: %{
        "InstanceProperties" => list(instance_property()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_instance_properties_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameters_filter() :: %{
        "Key" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type parameters_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association() :: %{
        "AssociationId" => String.t(),
        "AssociationName" => String.t(),
        "AssociationVersion" => String.t(),
        "DocumentVersion" => String.t(),
        "Duration" => integer(),
        "InstanceId" => String.t(),
        "LastExecutionDate" => non_neg_integer(),
        "Name" => String.t(),
        "Overview" => association_overview(),
        "ScheduleExpression" => String.t(),
        "ScheduleOffset" => integer(),
        "TargetMaps" => list(map()()),
        "Targets" => list(target()())
      }
      
  """
  @type association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_command_invocation_request() :: %{
        optional("PluginName") => String.t(),
        required("CommandId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type get_command_invocation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_ops_items_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OpsItemFilters") => list(ops_item_filter()())
      }
      
  """
  @type describe_ops_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_maintenance_window_execution_result() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusDetails" => String.t(),
        "TaskIds" => list(String.t()()),
        "WindowExecutionId" => String.t()
      }
      
  """
  @type get_maintenance_window_execution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_associations_result() :: %{
        "Associations" => list(association()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_managed_instance_role_request() :: %{
        required("IamRole") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type update_managed_instance_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_document_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type list_document_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_metadata_key_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type ops_metadata_key_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_document_schema_version() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_document_schema_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_activation_request() :: %{
        optional("DefaultInstanceName") => String.t(),
        optional("Description") => String.t(),
        optional("ExpirationDate") => non_neg_integer(),
        optional("RegistrationLimit") => integer(),
        optional("RegistrationMetadata") => list(registration_metadata_item()()),
        optional("Tags") => list(tag()()),
        required("IamRole") => String.t()
      }
      
  """
  @type create_activation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_parameters_request() :: %{
        optional("WithDecryption") => boolean(),
        required("Names") => list(String.t()())
      }
      
  """
  @type get_parameters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automation_step_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type automation_step_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_deletion_summary() :: %{
        "RemainingCount" => integer(),
        "SummaryItems" => list(inventory_deletion_summary_item()()),
        "TotalCount" => integer()
      }
      
  """
  @type inventory_deletion_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_filter() :: %{
        "key" => list(any()),
        "value" => String.t()
      }
      
  """
  @type document_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_window_execution_tasks_result() :: %{
        "NextToken" => String.t(),
        "WindowExecutionTaskIdentities" => list(maintenance_window_execution_task_identity()())
      }
      
  """
  @type describe_maintenance_window_execution_tasks_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_patch_baseline_for_patch_group_request() :: %{
        optional("OperatingSystem") => list(any()),
        required("PatchGroup") => String.t()
      }
      
  """
  @type get_patch_baseline_for_patch_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_command_invocation_result() :: %{
        "CloudWatchOutputConfig" => cloud_watch_output_config(),
        "CommandId" => String.t(),
        "Comment" => String.t(),
        "DocumentName" => String.t(),
        "DocumentVersion" => String.t(),
        "ExecutionElapsedTime" => String.t(),
        "ExecutionEndDateTime" => String.t(),
        "ExecutionStartDateTime" => String.t(),
        "InstanceId" => String.t(),
        "PluginName" => String.t(),
        "ResponseCode" => integer(),
        "StandardErrorContent" => String.t(),
        "StandardErrorUrl" => String.t(),
        "StandardOutputContent" => String.t(),
        "StandardOutputUrl" => String.t(),
        "Status" => list(any()),
        "StatusDetails" => String.t()
      }
      
  """
  @type get_command_invocation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_compliance_items_result() :: %{}
      
  """
  @type put_compliance_items_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_effective_patches_for_patch_baseline_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("BaselineId") => String.t()
      }
      
  """
  @type describe_effective_patches_for_patch_baseline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_level_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type hierarchy_level_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy_conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_policy_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_resource_data_sync_result() :: %{}
      
  """
  @type create_resource_data_sync_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_maintenance_window_executions_request() :: %{
        optional("Filters") => list(maintenance_window_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("WindowId") => String.t()
      }
      
  """
  @type describe_maintenance_window_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_maintenance_window_execution_task_result() :: %{
        "AlarmConfiguration" => alarm_configuration(),
        "EndTime" => non_neg_integer(),
        "MaxConcurrency" => String.t(),
        "MaxErrors" => String.t(),
        "Priority" => integer(),
        "ServiceRole" => String.t(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusDetails" => String.t(),
        "TaskArn" => String.t(),
        "TaskExecutionId" => String.t(),
        "TaskParameters" => list(map()()),
        "TriggeredAlarms" => list(alarm_state_information()()),
        "Type" => list(any()),
        "WindowExecutionId" => String.t()
      }
      
  """
  @type get_maintenance_window_execution_task_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployable_patch_snapshot_for_instance_result() :: %{
        "InstanceId" => String.t(),
        "Product" => String.t(),
        "SnapshotDownloadUrl" => String.t(),
        "SnapshotId" => String.t()
      }
      
  """
  @type get_deployable_patch_snapshot_for_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      patch_rule_group() :: %{
        "PatchRules" => list(patch_rule()())
      }
      
  """
  @type patch_rule_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registration_metadata_item() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type registration_metadata_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      command_plugin() :: %{
        "Name" => String.t(),
        "Output" => String.t(),
        "OutputS3BucketName" => String.t(),
        "OutputS3KeyPrefix" => String.t(),
        "OutputS3Region" => String.t(),
        "ResponseCode" => integer(),
        "ResponseFinishDateTime" => non_neg_integer(),
        "ResponseStartDateTime" => non_neg_integer(),
        "StandardErrorUrl" => String.t(),
        "StandardOutputUrl" => String.t(),
        "Status" => list(any()),
        "StatusDetails" => String.t()
      }
      
  """
  @type command_plugin() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_patch_baseline_result() :: %{
        "ApprovalRules" => patch_rule_group(),
        "ApprovedPatches" => list(String.t()()),
        "ApprovedPatchesComplianceLevel" => list(any()),
        "ApprovedPatchesEnableNonSecurity" => boolean(),
        "BaselineId" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "GlobalFilters" => patch_filter_group(),
        "ModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "OperatingSystem" => list(any()),
        "PatchGroups" => list(String.t()()),
        "RejectedPatches" => list(String.t()()),
        "RejectedPatchesAction" => list(any()),
        "Sources" => list(patch_source()())
      }
      
  """
  @type get_patch_baseline_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_documents_request() :: %{
        optional("DocumentFilterList") => list(document_filter()()),
        optional("Filters") => list(document_key_values_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_documents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_command_id() :: %{}
      
  """
  @type invalid_command_id() :: %{}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_request() :: %{
        required("ResourceId") => String.t(),
        required("ResourceType") => list(any()),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type remove_tags_from_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_information_string_filter() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type instance_information_string_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session() :: %{
        "Details" => String.t(),
        "DocumentName" => String.t(),
        "EndDate" => non_neg_integer(),
        "MaxSessionDuration" => String.t(),
        "OutputUrl" => session_manager_output_url(),
        "Owner" => String.t(),
        "Reason" => String.t(),
        "SessionId" => String.t(),
        "StartDate" => non_neg_integer(),
        "Status" => list(any()),
        "Target" => String.t()
      }
      
  """
  @type session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type get_resource_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policies_response() :: %{
        "NextToken" => String.t(),
        "Policies" => list(get_resource_policies_response_entry()())
      }
      
  """
  @type get_resource_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_execution() :: %{
        "AlarmConfiguration" => alarm_configuration(),
        "AssociationId" => String.t(),
        "AssociationVersion" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DetailedStatus" => String.t(),
        "ExecutionId" => String.t(),
        "LastExecutionDate" => non_neg_integer(),
        "ResourceCountByStatus" => String.t(),
        "Status" => String.t(),
        "TriggeredAlarms" => list(alarm_state_information()())
      }
      
  """
  @type association_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_permission_type() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_permission_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_data_value() :: %{
        "Type" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type ops_item_data_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_document_permission_response() :: %{}
      
  """
  @type modify_document_permission_response() :: %{}

  @typedoc """

  ## Example:
      
      list_ops_metadata_result() :: %{
        "NextToken" => String.t(),
        "OpsMetadataList" => list(ops_metadata()())
      }
      
  """
  @type list_ops_metadata_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_metadata_too_many_updates_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type ops_metadata_too_many_updates_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_managed_instance_role_result() :: %{}
      
  """
  @type update_managed_instance_role_result() :: %{}

  @typedoc """

  ## Example:
      
      list_resource_data_sync_result() :: %{
        "NextToken" => String.t(),
        "ResourceDataSyncItems" => list(resource_data_sync_item()())
      }
      
  """
  @type list_resource_data_sync_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_inventory_item_context_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_inventory_item_context_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_parameter_request() :: %{
        optional("WithDecryption") => boolean(),
        required("Name") => String.t()
      }
      
  """
  @type get_parameter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ops_item_request() :: %{
        required("OpsItemId") => String.t()
      }
      
  """
  @type delete_ops_item_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_key_values_filter() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type document_key_values_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_document_metadata_request() :: %{
        optional("DocumentVersion") => String.t(),
        required("DocumentReviews") => document_reviews(),
        required("Name") => String.t()
      }
      
  """
  @type update_document_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_properties_request() :: %{
        optional("FiltersWithOperator") => list(instance_property_string_filter()()),
        optional("InstancePropertyFilterList") => list(instance_property_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_instance_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_effective_instance_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type describe_effective_instance_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compliance_summaries_request() :: %{
        optional("Filters") => list(compliance_string_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_compliance_summaries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_automation_execution_parameters_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_automation_execution_parameters_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ops_summary_result() :: %{
        "Entities" => list(ops_entity()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_ops_summary_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_inventory_result() :: %{
        "DeletionId" => String.t(),
        "DeletionSummary" => inventory_deletion_summary(),
        "TypeName" => String.t()
      }
      
  """
  @type delete_inventory_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_session_response() :: %{
        "SessionId" => String.t(),
        "StreamUrl" => String.t(),
        "TokenValue" => String.t()
      }
      
  """
  @type resume_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_data_sync_count_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_data_sync_count_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_document_result() :: %{}
      
  """
  @type delete_document_result() :: %{}

  @typedoc """

  ## Example:
      
      ops_item_already_exists_exception() :: %{
        "Message" => String.t(),
        "OpsItemId" => String.t()
      }
      
  """
  @type ops_item_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_setting_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_setting_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_document_type() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_document_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_data_sync_aws_organizations_source() :: %{
        "OrganizationSourceType" => String.t(),
        "OrganizationalUnits" => list(resource_data_sync_organizational_unit()())
      }
      
  """
  @type resource_data_sync_aws_organizations_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_notification_config() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_notification_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      item_size_limit_exceeded_exception() :: %{
        "Message" => String.t(),
        "TypeName" => String.t()
      }
      
  """
  @type item_size_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_command_request() :: %{
        optional("InstanceIds") => list(String.t()()),
        required("CommandId") => String.t()
      }
      
  """
  @type cancel_command_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      status_unchanged() :: %{}
      
  """
  @type status_unchanged() :: %{}

  @typedoc """

  ## Example:
      
      get_automation_execution_request() :: %{
        required("AutomationExecutionId") => String.t()
      }
      
  """
  @type get_automation_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_patch_states_for_patch_group_request() :: %{
        optional("Filters") => list(instance_patch_state_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("PatchGroup") => String.t()
      }
      
  """
  @type describe_instance_patch_states_for_patch_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_data_sync_destination_data_sharing() :: %{
        "DestinationDataSharingType" => String.t()
      }
      
  """
  @type resource_data_sync_destination_data_sharing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_document_metadata_response() :: %{}
      
  """
  @type update_document_metadata_response() :: %{}

  @typedoc """

  ## Example:
      
      get_ops_item_response() :: %{
        "OpsItem" => ops_item()
      }
      
  """
  @type get_ops_item_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_association_status_request() :: %{
        required("AssociationStatus") => association_status(),
        required("InstanceId") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type update_association_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_document_version_name() :: %{
        "Message" => String.t()
      }
      
  """
  @type duplicate_document_version_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_already_exists() :: %{
        "Message" => String.t()
      }
      
  """
  @type document_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_document_metadata_history_response() :: %{
        "Author" => String.t(),
        "DocumentVersion" => String.t(),
        "Metadata" => document_metadata_response_info(),
        "Name" => String.t(),
        "NextToken" => String.t()
      }
      
  """
  @type list_document_metadata_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_identity() :: %{
        "Cutoff" => integer(),
        "Description" => String.t(),
        "Duration" => integer(),
        "Enabled" => boolean(),
        "EndDate" => String.t(),
        "Name" => String.t(),
        "NextExecutionTime" => String.t(),
        "Schedule" => String.t(),
        "ScheduleOffset" => integer(),
        "ScheduleTimezone" => String.t(),
        "StartDate" => String.t(),
        "WindowId" => String.t()
      }
      
  """
  @type maintenance_window_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_output_folder() :: %{}
      
  """
  @type invalid_output_folder() :: %{}

  @typedoc """

  ## Example:
      
      describe_parameters_result() :: %{
        "NextToken" => String.t(),
        "Parameters" => list(parameter_metadata()())
      }
      
  """
  @type describe_parameters_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_result() :: %{
        "TagList" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_association() :: %{
        "AssociationId" => String.t(),
        "AssociationVersion" => String.t(),
        "Content" => String.t(),
        "InstanceId" => String.t()
      }
      
  """
  @type instance_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_automation_executions_request() :: %{
        optional("Filters") => list(automation_execution_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_automation_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_maintenance_window_result() :: %{
        "AllowUnassociatedTargets" => boolean(),
        "Cutoff" => integer(),
        "Description" => String.t(),
        "Duration" => integer(),
        "Enabled" => boolean(),
        "EndDate" => String.t(),
        "Name" => String.t(),
        "Schedule" => String.t(),
        "ScheduleOffset" => integer(),
        "ScheduleTimezone" => String.t(),
        "StartDate" => String.t(),
        "WindowId" => String.t()
      }
      
  """
  @type update_maintenance_window_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_property_string_filter() :: %{
        "Key" => String.t(),
        "Operator" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type instance_property_string_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_inventory_group_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_inventory_group_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      severity_summary() :: %{
        "CriticalCount" => integer(),
        "HighCount" => integer(),
        "InformationalCount" => integer(),
        "LowCount" => integer(),
        "MediumCount" => integer(),
        "UnspecifiedCount" => integer()
      }
      
  """
  @type severity_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_associations_request() :: %{
        optional("AssociationFilterList") => list(association_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_inventory_deletions_result() :: %{
        "InventoryDeletions" => list(inventory_deletion_status_item()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_inventory_deletions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_maintenance_window_result() :: %{
        "WindowId" => String.t()
      }
      
  """
  @type delete_maintenance_window_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_sessions_response() :: %{
        "NextToken" => String.t(),
        "Sessions" => list(session()())
      }
      
  """
  @type describe_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_filter() :: %{
        "key" => list(any()),
        "value" => String.t()
      }
      
  """
  @type session_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_association_request() :: %{
        optional("AlarmConfiguration") => alarm_configuration(),
        optional("ApplyOnlyAtCronInterval") => boolean(),
        optional("AssociationName") => String.t(),
        optional("AutomationTargetParameterName") => String.t(),
        optional("CalendarNames") => list(String.t()()),
        optional("ComplianceSeverity") => list(any()),
        optional("DocumentVersion") => String.t(),
        optional("Duration") => integer(),
        optional("InstanceId") => String.t(),
        optional("MaxConcurrency") => String.t(),
        optional("MaxErrors") => String.t(),
        optional("OutputLocation") => instance_association_output_location(),
        optional("Parameters") => map(),
        optional("ScheduleExpression") => String.t(),
        optional("ScheduleOffset") => integer(),
        optional("SyncCompliance") => list(any()),
        optional("Tags") => list(tag()()),
        optional("TargetLocations") => list(target_location()()),
        optional("TargetMaps") => list(map()()),
        optional("Targets") => list(target()()),
        required("Name") => String.t()
      }
      
  """
  @type create_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ops_item_response() :: %{}
      
  """
  @type update_ops_item_response() :: %{}

  @typedoc """

  ## Example:
      
      list_command_invocations_result() :: %{
        "CommandInvocations" => list(command_invocation()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_command_invocations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_request() :: %{
        optional("PolicyHash") => String.t(),
        optional("PolicyId") => String.t(),
        required("Policy") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      label_parameter_version_result() :: %{
        "InvalidLabels" => list(String.t()()),
        "ParameterVersion" => float()
      }
      
  """
  @type label_parameter_version_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_description() :: %{
        "ApprovedVersion" => String.t(),
        "AttachmentsInformation" => list(attachment_information()()),
        "Author" => String.t(),
        "Category" => list(String.t()()),
        "CategoryEnum" => list(String.t()()),
        "CreatedDate" => non_neg_integer(),
        "DefaultVersion" => String.t(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "DocumentFormat" => list(any()),
        "DocumentType" => list(any()),
        "DocumentVersion" => String.t(),
        "Hash" => String.t(),
        "HashType" => list(any()),
        "LatestVersion" => String.t(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "Parameters" => list(document_parameter()()),
        "PendingReviewVersion" => String.t(),
        "PlatformTypes" => list(list(any())()),
        "Requires" => list(document_requires()()),
        "ReviewInformation" => list(review_information()()),
        "ReviewStatus" => list(any()),
        "SchemaVersion" => String.t(),
        "Sha1" => String.t(),
        "Status" => list(any()),
        "StatusInformation" => String.t(),
        "Tags" => list(tag()()),
        "TargetType" => String.t(),
        "VersionName" => String.t()
      }
      
  """
  @type document_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_session_response() :: %{
        "SessionId" => String.t(),
        "StreamUrl" => String.t(),
        "TokenValue" => String.t()
      }
      
  """
  @type start_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ops_metadata_result() :: %{}
      
  """
  @type delete_ops_metadata_result() :: %{}

  @typedoc """

  ## Example:
      
      update_association_result() :: %{
        "AssociationDescription" => association_description()
      }
      
  """
  @type update_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_output_location() :: %{}
      
  """
  @type invalid_output_location() :: %{}

  @typedoc """

  ## Example:
      
      instance_property() :: %{
        "ActivationId" => String.t(),
        "AgentVersion" => String.t(),
        "Architecture" => String.t(),
        "AssociationOverview" => instance_aggregated_association_overview(),
        "AssociationStatus" => String.t(),
        "ComputerName" => String.t(),
        "IPAddress" => String.t(),
        "IamRole" => String.t(),
        "InstanceId" => String.t(),
        "InstanceRole" => String.t(),
        "InstanceState" => String.t(),
        "InstanceType" => String.t(),
        "KeyName" => String.t(),
        "LastAssociationExecutionDate" => non_neg_integer(),
        "LastPingDateTime" => non_neg_integer(),
        "LastSuccessfulAssociationExecutionDate" => non_neg_integer(),
        "LaunchTime" => non_neg_integer(),
        "Name" => String.t(),
        "PingStatus" => list(any()),
        "PlatformName" => String.t(),
        "PlatformType" => list(any()),
        "PlatformVersion" => String.t(),
        "RegistrationDate" => non_neg_integer(),
        "ResourceType" => String.t(),
        "SourceId" => String.t(),
        "SourceType" => list(any())
      }
      
  """
  @type instance_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_document_request() :: %{
        optional("DocumentVersion") => String.t(),
        optional("VersionName") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type describe_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_inventory_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_inventory_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliant_summary() :: %{
        "CompliantCount" => integer(),
        "SeveritySummary" => severity_summary()
      }
      
  """
  @type compliant_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_windows_result() :: %{
        "NextToken" => String.t(),
        "WindowIdentities" => list(maintenance_window_identity()())
      }
      
  """
  @type describe_maintenance_windows_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_association_execution_targets_request() :: %{
        optional("Filters") => list(association_execution_targets_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AssociationId") => String.t(),
        required("ExecutionId") => String.t()
      }
      
  """
  @type describe_association_execution_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_patch_states_for_patch_group_result() :: %{
        "InstancePatchStates" => list(instance_patch_state()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_instance_patch_states_for_patch_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_location() :: %{
        "Accounts" => list(String.t()()),
        "ExecutionRoleName" => String.t(),
        "Regions" => list(String.t()()),
        "TargetLocationAlarmConfiguration" => alarm_configuration(),
        "TargetLocationMaxConcurrency" => String.t(),
        "TargetLocationMaxErrors" => String.t()
      }
      
  """
  @type target_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_activation_request() :: %{
        required("ActivationId") => String.t()
      }
      
  """
  @type delete_activation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_information_result() :: %{
        "InstanceInformationList" => list(instance_information()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_instance_information_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_target_maps() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_target_maps() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_data_sync_request() :: %{
        optional("SyncType") => String.t(),
        required("SyncName") => String.t()
      }
      
  """
  @type delete_resource_data_sync_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_document_versions_result() :: %{
        "DocumentVersions" => list(document_version_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_document_versions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_entity_item() :: %{
        "CaptureTime" => String.t(),
        "Content" => list(map()())
      }
      
  """
  @type ops_entity_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_setting_result() :: %{}
      
  """
  @type update_service_setting_result() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_ops_item_related_item_request() :: %{
        required("AssociationId") => String.t(),
        required("OpsItemId") => String.t()
      }
      
  """
  @type disassociate_ops_item_related_item_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_patch_baseline_for_patch_group_request() :: %{
        required("BaselineId") => String.t(),
        required("PatchGroup") => String.t()
      }
      
  """
  @type register_patch_baseline_for_patch_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_updates() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_updates() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_association_result() :: %{
        "AssociationDescription" => association_description()
      }
      
  """
  @type create_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      patch_rule() :: %{
        "ApproveAfterDays" => integer(),
        "ApproveUntilDate" => String.t(),
        "ComplianceLevel" => list(any()),
        "EnableNonSecurity" => boolean(),
        "PatchFilterGroup" => patch_filter_group()
      }
      
  """
  @type patch_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_service_setting_request() :: %{
        required("SettingId") => String.t()
      }
      
  """
  @type reset_service_setting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_notification() :: %{
        "Arn" => String.t()
      }
      
  """
  @type ops_item_notification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_invalid_parameter_exception() :: %{
        "Message" => String.t(),
        "ParameterNames" => list(String.t()())
      }
      
  """
  @type ops_item_invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_document_result() :: %{
        "Document" => document_description()
      }
      
  """
  @type describe_document_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_target() :: %{
        "Description" => String.t(),
        "Name" => String.t(),
        "OwnerInformation" => String.t(),
        "ResourceType" => list(any()),
        "Targets" => list(target()()),
        "WindowId" => String.t(),
        "WindowTargetId" => String.t()
      }
      
  """
  @type maintenance_window_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_window_schedule_result() :: %{
        "NextToken" => String.t(),
        "ScheduledWindowExecutions" => list(scheduled_window_execution()())
      }
      
  """
  @type describe_maintenance_window_schedule_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      feature_not_available_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type feature_not_available_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_run_command_parameters() :: %{
        "CloudWatchOutputConfig" => cloud_watch_output_config(),
        "Comment" => String.t(),
        "DocumentHash" => String.t(),
        "DocumentHashType" => list(any()),
        "DocumentVersion" => String.t(),
        "NotificationConfig" => notification_config(),
        "OutputS3BucketName" => String.t(),
        "OutputS3KeyPrefix" => String.t(),
        "Parameters" => map(),
        "ServiceRoleArn" => String.t(),
        "TimeoutSeconds" => integer()
      }
      
  """
  @type maintenance_window_run_command_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_effective_patches_for_patch_baseline_result() :: %{
        "EffectivePatches" => list(effective_patch()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_effective_patches_for_patch_baseline_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_create_association() :: %{
        "Entry" => create_association_batch_request_entry(),
        "Fault" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type failed_create_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_ops_item_related_items_response() :: %{
        "NextToken" => String.t(),
        "Summaries" => list(ops_item_related_item_summary()())
      }
      
  """
  @type list_ops_item_related_items_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_association_executions_request() :: %{
        optional("Filters") => list(association_execution_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AssociationId") => String.t()
      }
      
  """
  @type describe_association_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_activation_result() :: %{
        "ActivationCode" => String.t(),
        "ActivationId" => String.t()
      }
      
  """
  @type create_activation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_instance_id() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_instance_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_ops_item_related_item_response() :: %{}
      
  """
  @type disassociate_ops_item_related_item_response() :: %{}

  @typedoc """

  ## Example:
      
      update_maintenance_window_task_result() :: %{
        "AlarmConfiguration" => alarm_configuration(),
        "CutoffBehavior" => list(any()),
        "Description" => String.t(),
        "LoggingInfo" => logging_info(),
        "MaxConcurrency" => String.t(),
        "MaxErrors" => String.t(),
        "Name" => String.t(),
        "Priority" => integer(),
        "ServiceRoleArn" => String.t(),
        "Targets" => list(target()()),
        "TaskArn" => String.t(),
        "TaskInvocationParameters" => maintenance_window_task_invocation_parameters(),
        "TaskParameters" => map(),
        "WindowId" => String.t(),
        "WindowTaskId" => String.t()
      }
      
  """
  @type update_maintenance_window_task_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_data_sync_source() :: %{
        "AwsOrganizationsSource" => resource_data_sync_aws_organizations_source(),
        "EnableAllOpsDataSources" => boolean(),
        "IncludeFutureRegions" => boolean(),
        "SourceRegions" => list(String.t()()),
        "SourceType" => String.t()
      }
      
  """
  @type resource_data_sync_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceId") => String.t(),
        required("ResourceType") => list(any())
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_event_filter() :: %{
        "Key" => list(any()),
        "Operator" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type ops_item_event_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      patch_compliance_data() :: %{
        "CVEIds" => String.t(),
        "Classification" => String.t(),
        "InstalledTime" => non_neg_integer(),
        "KBId" => String.t(),
        "Severity" => String.t(),
        "State" => list(any()),
        "Title" => String.t()
      }
      
  """
  @type patch_compliance_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_automation_status_update_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_automation_status_update_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      progress_counters() :: %{
        "CancelledSteps" => integer(),
        "FailedSteps" => integer(),
        "SuccessSteps" => integer(),
        "TimedOutSteps" => integer(),
        "TotalSteps" => integer()
      }
      
  """
  @type progress_counters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachment_content() :: %{
        "Hash" => String.t(),
        "HashType" => list(any()),
        "Name" => String.t(),
        "Size" => float(),
        "Url" => String.t()
      }
      
  """
  @type attachment_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compliance_summaries_result() :: %{
        "ComplianceSummaryItems" => list(compliance_summary_item()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_compliance_summaries_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automation_execution_metadata() :: %{
        "AlarmConfiguration" => alarm_configuration(),
        "AssociationId" => String.t(),
        "AutomationExecutionId" => String.t(),
        "AutomationExecutionStatus" => list(any()),
        "AutomationSubtype" => list(any()),
        "AutomationType" => list(any()),
        "ChangeRequestName" => String.t(),
        "CurrentAction" => String.t(),
        "CurrentStepName" => String.t(),
        "DocumentName" => String.t(),
        "DocumentVersion" => String.t(),
        "ExecutedBy" => String.t(),
        "ExecutionEndTime" => non_neg_integer(),
        "ExecutionStartTime" => non_neg_integer(),
        "FailureMessage" => String.t(),
        "LogFile" => String.t(),
        "MaxConcurrency" => String.t(),
        "MaxErrors" => String.t(),
        "Mode" => list(any()),
        "OpsItemId" => String.t(),
        "Outputs" => map(),
        "ParentAutomationExecutionId" => String.t(),
        "ResolvedTargets" => resolved_targets(),
        "Runbooks" => list(runbook()()),
        "ScheduledTime" => non_neg_integer(),
        "Target" => String.t(),
        "TargetMaps" => list(map()()),
        "TargetParameterName" => String.t(),
        "Targets" => list(target()()),
        "TriggeredAlarms" => list(alarm_state_information()())
      }
      
  """
  @type automation_execution_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associated_instances() :: %{}
      
  """
  @type associated_instances() :: %{}

  @typedoc """

  ## Example:
      
      describe_maintenance_window_targets_request() :: %{
        optional("Filters") => list(maintenance_window_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("WindowId") => String.t()
      }
      
  """
  @type describe_maintenance_window_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_task_invocation_parameters() :: %{
        "Automation" => maintenance_window_automation_parameters(),
        "Lambda" => maintenance_window_lambda_parameters(),
        "RunCommand" => maintenance_window_run_command_parameters(),
        "StepFunctions" => maintenance_window_step_functions_parameters()
      }
      
  """
  @type maintenance_window_task_invocation_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_source() :: %{
        "OutputSourceId" => String.t(),
        "OutputSourceType" => String.t()
      }
      
  """
  @type output_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_target_with_maintenance_window_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("OwnerInformation") => String.t(),
        required("ResourceType") => list(any()),
        required("Targets") => list(target()()),
        required("WindowId") => String.t()
      }
      
  """
  @type register_target_with_maintenance_window_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automation_definition_version_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type automation_definition_version_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_update() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compliance_items_result() :: %{
        "ComplianceItems" => list(compliance_item()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_compliance_items_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_maintenance_window_execution_task_invocation_result() :: %{
        "EndTime" => non_neg_integer(),
        "ExecutionId" => String.t(),
        "InvocationId" => String.t(),
        "OwnerInformation" => String.t(),
        "Parameters" => String.t(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusDetails" => String.t(),
        "TaskExecutionId" => String.t(),
        "TaskType" => list(any()),
        "WindowExecutionId" => String.t(),
        "WindowTargetId" => String.t()
      }
      
  """
  @type get_maintenance_window_execution_task_invocation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_filter() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_output_url() :: %{
        "OutputUrl" => String.t()
      }
      
  """
  @type s3_output_url() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_already_exists() :: %{}
      
  """
  @type association_already_exists() :: %{}

  @typedoc """

  ## Example:
      
      describe_sessions_request() :: %{
        optional("Filters") => list(session_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("State") => list(any())
      }
      
  """
  @type describe_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_version_info() :: %{
        "CreatedDate" => non_neg_integer(),
        "DisplayName" => String.t(),
        "DocumentFormat" => list(any()),
        "DocumentVersion" => String.t(),
        "IsDefaultVersion" => boolean(),
        "Name" => String.t(),
        "ReviewStatus" => list(any()),
        "Status" => list(any()),
        "StatusInformation" => String.t(),
        "VersionName" => String.t()
      }
      
  """
  @type document_version_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      command_invocation() :: %{
        "CloudWatchOutputConfig" => cloud_watch_output_config(),
        "CommandId" => String.t(),
        "CommandPlugins" => list(command_plugin()()),
        "Comment" => String.t(),
        "DocumentName" => String.t(),
        "DocumentVersion" => String.t(),
        "InstanceId" => String.t(),
        "InstanceName" => String.t(),
        "NotificationConfig" => notification_config(),
        "RequestedDateTime" => non_neg_integer(),
        "ServiceRole" => String.t(),
        "StandardErrorUrl" => String.t(),
        "StandardOutputUrl" => String.t(),
        "Status" => list(any()),
        "StatusDetails" => String.t(),
        "TraceOutput" => String.t()
      }
      
  """
  @type command_invocation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_patch_baseline_result() :: %{
        "BaselineId" => String.t()
      }
      
  """
  @type delete_patch_baseline_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_requires() :: %{
        "Name" => String.t(),
        "RequireType" => String.t(),
        "Version" => String.t(),
        "VersionName" => String.t()
      }
      
  """
  @type document_requires() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_filter_key() :: %{}
      
  """
  @type invalid_filter_key() :: %{}

  @typedoc """

  ## Example:
      
      parameter_pattern_mismatch_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_pattern_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      patch_status() :: %{
        "ApprovalDate" => non_neg_integer(),
        "ComplianceLevel" => list(any()),
        "DeploymentStatus" => list(any())
      }
      
  """
  @type patch_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_limit_exceeded_exception() :: %{
        "Limit" => integer(),
        "LimitType" => String.t(),
        "Message" => String.t(),
        "ResourceTypes" => list(String.t()())
      }
      
  """
  @type ops_item_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_inventory_result() :: %{
        "Entities" => list(inventory_result_entity()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_inventory_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inventory_entries_result() :: %{
        "CaptureTime" => String.t(),
        "Entries" => list(map()()),
        "InstanceId" => String.t(),
        "NextToken" => String.t(),
        "SchemaVersion" => String.t(),
        "TypeName" => String.t()
      }
      
  """
  @type list_inventory_entries_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_response() :: %{
        "PolicyHash" => String.t(),
        "PolicyId" => String.t()
      }
      
  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_command_result() :: %{}
      
  """
  @type cancel_command_result() :: %{}

  @typedoc """

  ## Example:
      
      resource_data_sync_not_found_exception() :: %{
        "Message" => String.t(),
        "SyncName" => String.t(),
        "SyncType" => String.t()
      }
      
  """
  @type resource_data_sync_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attachments_source() :: %{
        "Key" => list(any()),
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type attachments_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_window_execution_task_invocations_result() :: %{
        "NextToken" => String.t(),
        "WindowExecutionTaskInvocationIdentities" => list(maintenance_window_execution_task_invocation_identity()())
      }
      
  """
  @type describe_maintenance_window_execution_task_invocations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_manager_output_url() :: %{
        "CloudWatchOutputUrl" => String.t(),
        "S3OutputUrl" => String.t()
      }
      
  """
  @type session_manager_output_url() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_activations_result() :: %{
        "ActivationList" => list(activation()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_activations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_result() :: %{}
      
  """
  @type remove_tags_from_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      instance_association_output_url() :: %{
        "S3OutputUrl" => s3_output_url()
      }
      
  """
  @type instance_association_output_url() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ops_metadata_result() :: %{
        "Metadata" => map(),
        "NextToken" => String.t(),
        "ResourceId" => String.t()
      }
      
  """
  @type get_ops_metadata_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_limit_exceeded() :: %{
        "Message" => String.t()
      }
      
  """
  @type document_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_not_connected() :: %{
        "Message" => String.t()
      }
      
  """
  @type target_not_connected() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ops_metadata_result() :: %{
        "OpsMetadataArn" => String.t()
      }
      
  """
  @type create_ops_metadata_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_related_item_summary() :: %{
        "AssociationId" => String.t(),
        "AssociationType" => String.t(),
        "CreatedBy" => ops_item_identity(),
        "CreatedTime" => non_neg_integer(),
        "LastModifiedBy" => ops_item_identity(),
        "LastModifiedTime" => non_neg_integer(),
        "OpsItemId" => String.t(),
        "ResourceType" => String.t(),
        "ResourceUri" => String.t()
      }
      
  """
  @type ops_item_related_item_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_version_label_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_version_label_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_request() :: %{
        required("PolicyHash") => String.t(),
        required("PolicyId") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_calendar_state_response() :: %{
        "AtTime" => String.t(),
        "NextTransitionTime" => String.t(),
        "State" => list(any())
      }
      
  """
  @type get_calendar_state_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compliance_items_request() :: %{
        optional("Filters") => list(compliance_string_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceIds") => list(String.t()()),
        optional("ResourceTypes") => list(String.t()())
      }
      
  """
  @type list_compliance_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_patches_result() :: %{
        "NextToken" => String.t(),
        "Patches" => list(patch_compliance_data()())
      }
      
  """
  @type describe_instance_patches_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      command() :: %{
        "AlarmConfiguration" => alarm_configuration(),
        "CloudWatchOutputConfig" => cloud_watch_output_config(),
        "CommandId" => String.t(),
        "Comment" => String.t(),
        "CompletedCount" => integer(),
        "DeliveryTimedOutCount" => integer(),
        "DocumentName" => String.t(),
        "DocumentVersion" => String.t(),
        "ErrorCount" => integer(),
        "ExpiresAfter" => non_neg_integer(),
        "InstanceIds" => list(String.t()()),
        "MaxConcurrency" => String.t(),
        "MaxErrors" => String.t(),
        "NotificationConfig" => notification_config(),
        "OutputS3BucketName" => String.t(),
        "OutputS3KeyPrefix" => String.t(),
        "OutputS3Region" => String.t(),
        "Parameters" => map(),
        "RequestedDateTime" => non_neg_integer(),
        "ServiceRole" => String.t(),
        "Status" => list(any()),
        "StatusDetails" => String.t(),
        "TargetCount" => integer(),
        "Targets" => list(target()()),
        "TimeoutSeconds" => integer(),
        "TriggeredAlarms" => list(alarm_state_information()())
      }
      
  """
  @type command() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_history() :: %{
        "AllowedPattern" => String.t(),
        "DataType" => String.t(),
        "Description" => String.t(),
        "KeyId" => String.t(),
        "Labels" => list(String.t()()),
        "LastModifiedDate" => non_neg_integer(),
        "LastModifiedUser" => String.t(),
        "Name" => String.t(),
        "Policies" => list(parameter_inline_policy()()),
        "Tier" => list(any()),
        "Type" => list(any()),
        "Value" => String.t(),
        "Version" => float()
      }
      
  """
  @type parameter_history() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_maintenance_window_execution_task_request() :: %{
        required("TaskId") => String.t(),
        required("WindowExecutionId") => String.t()
      }
      
  """
  @type get_maintenance_window_execution_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_parameter_result() :: %{
        "Tier" => list(any()),
        "Version" => float()
      }
      
  """
  @type put_parameter_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_document_default_version_result() :: %{
        "Description" => document_default_version_description()
      }
      
  """
  @type update_document_default_version_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automation_execution_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type automation_execution_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_ops_item_related_items_request() :: %{
        optional("Filters") => list(ops_item_related_items_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OpsItemId") => String.t()
      }
      
  """
  @type list_ops_item_related_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_ops_item_request() :: %{
        optional("AccountId") => String.t(),
        optional("ActualEndTime") => non_neg_integer(),
        optional("ActualStartTime") => non_neg_integer(),
        optional("Category") => String.t(),
        optional("Notifications") => list(ops_item_notification()()),
        optional("OperationalData") => map(),
        optional("OpsItemType") => String.t(),
        optional("PlannedEndTime") => non_neg_integer(),
        optional("PlannedStartTime") => non_neg_integer(),
        optional("Priority") => integer(),
        optional("RelatedOpsItems") => list(related_ops_item()()),
        optional("Severity") => String.t(),
        optional("Tags") => list(tag()()),
        required("Description") => String.t(),
        required("Source") => String.t(),
        required("Title") => String.t()
      }
      
  """
  @type create_ops_item_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sub_type_count_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type sub_type_count_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_automation_execution_result() :: %{
        "AutomationExecutionId" => String.t()
      }
      
  """
  @type start_automation_execution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_automation_signal_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_automation_signal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_data_sync_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SyncType") => String.t()
      }
      
  """
  @type list_resource_data_sync_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_does_not_exist() :: %{
        "Message" => String.t()
      }
      
  """
  @type association_does_not_exist() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_task_from_maintenance_window_request() :: %{
        required("WindowId") => String.t(),
        required("WindowTaskId") => String.t()
      }
      
  """
  @type deregister_task_from_maintenance_window_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_result() :: %{}
      
  """
  @type add_tags_to_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      invalid_policy_type_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_policy_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_policy_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_association_batch_request_entry() :: %{
        "AlarmConfiguration" => alarm_configuration(),
        "ApplyOnlyAtCronInterval" => boolean(),
        "AssociationName" => String.t(),
        "AutomationTargetParameterName" => String.t(),
        "CalendarNames" => list(String.t()()),
        "ComplianceSeverity" => list(any()),
        "DocumentVersion" => String.t(),
        "Duration" => integer(),
        "InstanceId" => String.t(),
        "MaxConcurrency" => String.t(),
        "MaxErrors" => String.t(),
        "Name" => String.t(),
        "OutputLocation" => instance_association_output_location(),
        "Parameters" => map(),
        "ScheduleExpression" => String.t(),
        "ScheduleOffset" => integer(),
        "SyncCompliance" => list(any()),
        "TargetLocations" => list(target_location()()),
        "TargetMaps" => list(map()()),
        "Targets" => list(target()())
      }
      
  """
  @type create_association_batch_request_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_setting() :: %{
        "ARN" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "LastModifiedUser" => String.t(),
        "SettingId" => String.t(),
        "SettingValue" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type service_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_automation_parameters() :: %{
        "DocumentVersion" => String.t(),
        "Parameters" => map()
      }
      
  """
  @type maintenance_window_automation_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_document_default_version_request() :: %{
        required("DocumentVersion") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type update_document_default_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      patch_filter_group() :: %{
        "PatchFilters" => list(patch_filter()())
      }
      
  """
  @type patch_filter_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_inventory_result() :: %{
        "Message" => String.t()
      }
      
  """
  @type put_inventory_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolved_targets() :: %{
        "ParameterValues" => list(String.t()()),
        "Truncated" => boolean()
      }
      
  """
  @type resolved_targets() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_effective_instance_associations_result() :: %{
        "Associations" => list(instance_association()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_effective_instance_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_window_execution() :: %{
        "ExecutionTime" => String.t(),
        "Name" => String.t(),
        "WindowId" => String.t()
      }
      
  """
  @type scheduled_window_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automation_definition_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type automation_definition_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automation_definition_not_approved_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type automation_definition_not_approved_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_maintenance_window_task_result() :: %{
        "AlarmConfiguration" => alarm_configuration(),
        "CutoffBehavior" => list(any()),
        "Description" => String.t(),
        "LoggingInfo" => logging_info(),
        "MaxConcurrency" => String.t(),
        "MaxErrors" => String.t(),
        "Name" => String.t(),
        "Priority" => integer(),
        "ServiceRoleArn" => String.t(),
        "Targets" => list(target()()),
        "TaskArn" => String.t(),
        "TaskInvocationParameters" => maintenance_window_task_invocation_parameters(),
        "TaskParameters" => map(),
        "TaskType" => list(any()),
        "WindowId" => String.t(),
        "WindowTaskId" => String.t()
      }
      
  """
  @type get_maintenance_window_task_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_type_count_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type compliance_type_count_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_platform_type() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_platform_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_associations_status_result() :: %{
        "InstanceAssociationStatusInfos" => list(instance_association_status_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_instance_associations_status_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_result_item() :: %{
        "CaptureTime" => String.t(),
        "Content" => list(map()()),
        "ContentHash" => String.t(),
        "SchemaVersion" => String.t(),
        "TypeName" => String.t()
      }
      
  """
  @type inventory_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      does_not_exist_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type does_not_exist_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_document_permission_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Name") => String.t(),
        required("PermissionType") => list(any())
      }
      
  """
  @type describe_document_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      patch_baseline_identity() :: %{
        "BaselineDescription" => String.t(),
        "BaselineId" => String.t(),
        "BaselineName" => String.t(),
        "DefaultBaseline" => boolean(),
        "OperatingSystem" => list(any())
      }
      
  """
  @type patch_baseline_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step_execution() :: %{
        "Action" => String.t(),
        "ExecutionEndTime" => non_neg_integer(),
        "ExecutionStartTime" => non_neg_integer(),
        "FailureDetails" => failure_details(),
        "FailureMessage" => String.t(),
        "Inputs" => map(),
        "IsCritical" => boolean(),
        "IsEnd" => boolean(),
        "MaxAttempts" => integer(),
        "NextStep" => String.t(),
        "OnFailure" => String.t(),
        "Outputs" => map(),
        "OverriddenParameters" => map(),
        "ParentStepDetails" => parent_step_details(),
        "Response" => String.t(),
        "ResponseCode" => String.t(),
        "StepExecutionId" => String.t(),
        "StepName" => String.t(),
        "StepStatus" => list(any()),
        "TargetLocation" => target_location(),
        "Targets" => list(target()()),
        "TimeoutSeconds" => float(),
        "TriggeredAlarms" => list(alarm_state_information()()),
        "ValidNextSteps" => list(String.t()())
      }
      
  """
  @type step_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_inventory_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DryRun") => boolean(),
        optional("SchemaDeleteOption") => list(any()),
        required("TypeName") => String.t()
      }
      
  """
  @type delete_inventory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_association_executions_result() :: %{
        "AssociationExecutions" => list(association_execution()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_association_executions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_maintenance_window_target_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("OwnerInformation") => String.t(),
        optional("Replace") => boolean(),
        optional("Targets") => list(target()()),
        required("WindowId") => String.t(),
        required("WindowTargetId") => String.t()
      }
      
  """
  @type update_maintenance_window_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hierarchy_type_mismatch_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type hierarchy_type_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_execution_task_identity() :: %{
        "AlarmConfiguration" => alarm_configuration(),
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusDetails" => String.t(),
        "TaskArn" => String.t(),
        "TaskExecutionId" => String.t(),
        "TaskType" => list(any()),
        "TriggeredAlarms" => list(alarm_state_information()()),
        "WindowExecutionId" => String.t()
      }
      
  """
  @type maintenance_window_execution_task_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_patch_baseline_result() :: %{
        "BaselineId" => String.t()
      }
      
  """
  @type create_patch_baseline_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type target_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      item_content_mismatch_exception() :: %{
        "Message" => String.t(),
        "TypeName" => String.t()
      }
      
  """
  @type item_content_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_association_version() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_association_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_documents_result() :: %{
        "DocumentIdentifiers" => list(document_identifier()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_documents_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_automation_execution_request() :: %{
        optional("Type") => list(any()),
        required("AutomationExecutionId") => String.t()
      }
      
  """
  @type stop_automation_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_patch_baselines_result() :: %{
        "BaselineIdentities" => list(patch_baseline_identity()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_patch_baselines_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_association_request() :: %{
        optional("AlarmConfiguration") => alarm_configuration(),
        optional("ApplyOnlyAtCronInterval") => boolean(),
        optional("AssociationName") => String.t(),
        optional("AssociationVersion") => String.t(),
        optional("AutomationTargetParameterName") => String.t(),
        optional("CalendarNames") => list(String.t()()),
        optional("ComplianceSeverity") => list(any()),
        optional("DocumentVersion") => String.t(),
        optional("Duration") => integer(),
        optional("MaxConcurrency") => String.t(),
        optional("MaxErrors") => String.t(),
        optional("Name") => String.t(),
        optional("OutputLocation") => instance_association_output_location(),
        optional("Parameters") => map(),
        optional("ScheduleExpression") => String.t(),
        optional("ScheduleOffset") => integer(),
        optional("SyncCompliance") => list(any()),
        optional("TargetLocations") => list(target_location()()),
        optional("TargetMaps") => list(map()()),
        optional("Targets") => list(target()()),
        required("AssociationId") => String.t()
      }
      
  """
  @type update_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_windows_for_target_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceType") => list(any()),
        required("Targets") => list(target()())
      }
      
  """
  @type describe_maintenance_windows_for_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_instance_information_filter_value() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_instance_information_filter_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_information_filter() :: %{
        "key" => list(any()),
        "valueSet" => list(String.t()())
      }
      
  """
  @type instance_information_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_data_sync_result() :: %{}
      
  """
  @type delete_resource_data_sync_result() :: %{}

  @typedoc """

  ## Example:
      
      start_change_request_execution_result() :: %{
        "AutomationExecutionId" => String.t()
      }
      
  """
  @type start_change_request_execution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_windows_request() :: %{
        optional("Filters") => list(maintenance_window_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_maintenance_windows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_change_request_execution_request() :: %{
        optional("AutoApprove") => boolean(),
        optional("ChangeDetails") => String.t(),
        optional("ChangeRequestName") => String.t(),
        optional("ClientToken") => String.t(),
        optional("DocumentVersion") => String.t(),
        optional("Parameters") => map(),
        optional("ScheduledEndTime") => non_neg_integer(),
        optional("ScheduledTime") => non_neg_integer(),
        optional("Tags") => list(tag()()),
        required("DocumentName") => String.t(),
        required("Runbooks") => list(runbook()())
      }
      
  """
  @type start_change_request_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ops_item_request() :: %{
        optional("ActualEndTime") => non_neg_integer(),
        optional("ActualStartTime") => non_neg_integer(),
        optional("Category") => String.t(),
        optional("Description") => String.t(),
        optional("Notifications") => list(ops_item_notification()()),
        optional("OperationalData") => map(),
        optional("OperationalDataToDelete") => list(String.t()()),
        optional("OpsItemArn") => String.t(),
        optional("PlannedEndTime") => non_neg_integer(),
        optional("PlannedStartTime") => non_neg_integer(),
        optional("Priority") => integer(),
        optional("RelatedOpsItems") => list(related_ops_item()()),
        optional("Severity") => String.t(),
        optional("Status") => list(any()),
        optional("Title") => String.t(),
        required("OpsItemId") => String.t()
      }
      
  """
  @type update_ops_item_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unlabel_parameter_version_result() :: %{
        "InvalidLabels" => list(String.t()()),
        "RemovedLabels" => list(String.t()())
      }
      
  """
  @type unlabel_parameter_version_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_filter() :: %{
        "key" => list(any()),
        "value" => String.t()
      }
      
  """
  @type association_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_item() :: %{
        "CaptureTime" => String.t(),
        "Content" => list(map()()),
        "ContentHash" => String.t(),
        "Context" => map(),
        "SchemaVersion" => String.t(),
        "TypeName" => String.t()
      }
      
  """
  @type inventory_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_metadata_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type ops_metadata_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_automation_execution_result() :: %{}
      
  """
  @type stop_automation_execution_result() :: %{}

  @typedoc """

  ## Example:
      
      get_deployable_patch_snapshot_for_instance_request() :: %{
        optional("BaselineOverride") => baseline_override(),
        required("InstanceId") => String.t(),
        required("SnapshotId") => String.t()
      }
      
  """
  @type get_deployable_patch_snapshot_for_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_document_permission_response() :: %{
        "AccountIds" => list(String.t()()),
        "AccountSharingInfoList" => list(account_sharing_info()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_document_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_related_items_filter() :: %{
        "Key" => list(any()),
        "Operator" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type ops_item_related_items_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compliance_execution_summary() :: %{
        "ExecutionId" => String.t(),
        "ExecutionTime" => non_neg_integer(),
        "ExecutionType" => String.t()
      }
      
  """
  @type compliance_execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ops_item_filter() :: %{
        "Key" => list(any()),
        "Operator" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type ops_item_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_filter() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type maintenance_window_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_compliance_items_request() :: %{
        optional("ItemContentHash") => String.t(),
        optional("UploadType") => list(any()),
        required("ComplianceType") => String.t(),
        required("ExecutionSummary") => compliance_execution_summary(),
        required("Items") => list(compliance_item_entry()()),
        required("ResourceId") => String.t(),
        required("ResourceType") => String.t()
      }
      
  """
  @type put_compliance_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_windows_for_target_result() :: %{
        "NextToken" => String.t(),
        "WindowIdentities" => list(maintenance_window_identity_for_target()())
      }
      
  """
  @type describe_maintenance_windows_for_target_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_parameters_by_path_result() :: %{
        "NextToken" => String.t(),
        "Parameters" => list(parameter()())
      }
      
  """
  @type get_parameters_by_path_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm_configuration() :: %{
        "Alarms" => list(alarm()()),
        "IgnorePollAlarmFailure" => boolean()
      }
      
  """
  @type alarm_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_task() :: %{
        "AlarmConfiguration" => alarm_configuration(),
        "CutoffBehavior" => list(any()),
        "Description" => String.t(),
        "LoggingInfo" => logging_info(),
        "MaxConcurrency" => String.t(),
        "MaxErrors" => String.t(),
        "Name" => String.t(),
        "Priority" => integer(),
        "ServiceRoleArn" => String.t(),
        "Targets" => list(target()()),
        "TaskArn" => String.t(),
        "TaskParameters" => map(),
        "Type" => list(any()),
        "WindowId" => String.t(),
        "WindowTaskId" => String.t()
      }
      
  """
  @type maintenance_window_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_document_operation() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_document_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_document_request() :: %{
        optional("Attachments") => list(attachments_source()()),
        optional("DisplayName") => String.t(),
        optional("DocumentFormat") => list(any()),
        optional("DocumentType") => list(any()),
        optional("Requires") => list(document_requires()()),
        optional("Tags") => list(tag()()),
        optional("TargetType") => String.t(),
        optional("VersionName") => String.t(),
        required("Content") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      association_description() :: %{
        "AlarmConfiguration" => alarm_configuration(),
        "ApplyOnlyAtCronInterval" => boolean(),
        "AssociationId" => String.t(),
        "AssociationName" => String.t(),
        "AssociationVersion" => String.t(),
        "AutomationTargetParameterName" => String.t(),
        "CalendarNames" => list(String.t()()),
        "ComplianceSeverity" => list(any()),
        "Date" => non_neg_integer(),
        "DocumentVersion" => String.t(),
        "Duration" => integer(),
        "InstanceId" => String.t(),
        "LastExecutionDate" => non_neg_integer(),
        "LastSuccessfulExecutionDate" => non_neg_integer(),
        "LastUpdateAssociationDate" => non_neg_integer(),
        "MaxConcurrency" => String.t(),
        "MaxErrors" => String.t(),
        "Name" => String.t(),
        "OutputLocation" => instance_association_output_location(),
        "Overview" => association_overview(),
        "Parameters" => map(),
        "ScheduleExpression" => String.t(),
        "ScheduleOffset" => integer(),
        "Status" => association_status(),
        "SyncCompliance" => list(any()),
        "TargetLocations" => list(target_location()()),
        "TargetMaps" => list(map()()),
        "Targets" => list(target()()),
        "TriggeredAlarms" => list(alarm_state_information()())
      }
      
  """
  @type association_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm_state_information() :: %{
        "Name" => String.t(),
        "State" => list(any())
      }
      
  """
  @type alarm_state_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_ops_item_events_request() :: %{
        optional("Filters") => list(ops_item_event_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_ops_item_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_patch_baseline_result() :: %{
        "ApprovalRules" => patch_rule_group(),
        "ApprovedPatches" => list(String.t()()),
        "ApprovedPatchesComplianceLevel" => list(any()),
        "ApprovedPatchesEnableNonSecurity" => boolean(),
        "BaselineId" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t(),
        "GlobalFilters" => patch_filter_group(),
        "ModifiedDate" => non_neg_integer(),
        "Name" => String.t(),
        "OperatingSystem" => list(any()),
        "RejectedPatches" => list(String.t()()),
        "RejectedPatchesAction" => list(any()),
        "Sources" => list(patch_source()())
      }
      
  """
  @type update_patch_baseline_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_lambda_parameters() :: %{
        "ClientContext" => String.t(),
        "Payload" => binary(),
        "Qualifier" => String.t()
      }
      
  """
  @type maintenance_window_lambda_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      patch_source() :: %{
        "Configuration" => String.t(),
        "Name" => String.t(),
        "Products" => list(String.t()())
      }
      
  """
  @type patch_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_identity_for_target() :: %{
        "Name" => String.t(),
        "WindowId" => String.t()
      }
      
  """
  @type maintenance_window_identity_for_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_inventory_entries_request() :: %{
        optional("Filters") => list(inventory_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("InstanceId") => String.t(),
        required("TypeName") => String.t()
      }
      
  """
  @type list_inventory_entries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maintenance_window_execution_task_invocation_identity() :: %{
        "EndTime" => non_neg_integer(),
        "ExecutionId" => String.t(),
        "InvocationId" => String.t(),
        "OwnerInformation" => String.t(),
        "Parameters" => String.t(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusDetails" => String.t(),
        "TaskExecutionId" => String.t(),
        "TaskType" => list(any()),
        "WindowExecutionId" => String.t(),
        "WindowTargetId" => String.t()
      }
      
  """
  @type maintenance_window_execution_task_invocation_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_max_version_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_max_version_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_operating_system() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_operating_system() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_inventory_schema_request() :: %{
        optional("Aggregator") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SubType") => boolean(),
        optional("TypeName") => String.t()
      }
      
  """
  @type get_inventory_schema_request() :: %{String.t() => any()}

  @type add_tags_to_resource_errors() ::
          too_many_updates()
          | internal_server_error()
          | too_many_tags_error()
          | invalid_resource_id()
          | invalid_resource_type()

  @type associate_ops_item_related_item_errors() ::
          ops_item_limit_exceeded_exception()
          | ops_item_invalid_parameter_exception()
          | internal_server_error()
          | ops_item_related_item_already_exists_exception()
          | ops_item_conflict_exception()
          | ops_item_not_found_exception()

  @type cancel_command_errors() ::
          invalid_instance_id()
          | internal_server_error()
          | invalid_command_id()
          | duplicate_instance_id()

  @type cancel_maintenance_window_execution_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type create_activation_errors() :: internal_server_error() | invalid_parameters()

  @type create_association_errors() ::
          unsupported_platform_type()
          | association_already_exists()
          | invalid_instance_id()
          | invalid_target_maps()
          | internal_server_error()
          | invalid_output_location()
          | invalid_schedule()
          | invalid_document_version()
          | invalid_parameters()
          | invalid_document()
          | association_limit_exceeded()
          | invalid_tag()
          | invalid_target()

  @type create_association_batch_errors() ::
          unsupported_platform_type()
          | invalid_instance_id()
          | invalid_target_maps()
          | internal_server_error()
          | invalid_output_location()
          | duplicate_instance_id()
          | invalid_schedule()
          | invalid_document_version()
          | invalid_parameters()
          | invalid_document()
          | association_limit_exceeded()
          | invalid_target()

  @type create_document_errors() ::
          document_limit_exceeded()
          | internal_server_error()
          | document_already_exists()
          | invalid_document_schema_version()
          | invalid_document_content()
          | max_document_size_exceeded()

  @type create_maintenance_window_errors() ::
          internal_server_error()
          | resource_limit_exceeded_exception()
          | idempotent_parameter_mismatch()

  @type create_ops_item_errors() ::
          ops_item_limit_exceeded_exception()
          | ops_item_invalid_parameter_exception()
          | internal_server_error()
          | ops_item_already_exists_exception()
          | ops_item_access_denied_exception()

  @type create_ops_metadata_errors() ::
          ops_metadata_limit_exceeded_exception()
          | internal_server_error()
          | ops_metadata_too_many_updates_exception()
          | ops_metadata_already_exists_exception()
          | ops_metadata_invalid_argument_exception()

  @type create_patch_baseline_errors() ::
          internal_server_error()
          | resource_limit_exceeded_exception()
          | idempotent_parameter_mismatch()

  @type create_resource_data_sync_errors() ::
          internal_server_error()
          | resource_data_sync_count_exceeded_exception()
          | resource_data_sync_invalid_configuration_exception()
          | resource_data_sync_already_exists_exception()

  @type delete_activation_errors() ::
          too_many_updates()
          | internal_server_error()
          | invalid_activation()
          | invalid_activation_id()

  @type delete_association_errors() ::
          association_does_not_exist()
          | invalid_instance_id()
          | too_many_updates()
          | internal_server_error()
          | invalid_document()

  @type delete_document_errors() ::
          invalid_document_operation()
          | associated_instances()
          | internal_server_error()
          | invalid_document()

  @type delete_inventory_errors() ::
          internal_server_error()
          | invalid_inventory_request_exception()
          | invalid_option_exception()
          | invalid_delete_inventory_parameters_exception()
          | invalid_type_name_exception()

  @type delete_maintenance_window_errors() :: internal_server_error()

  @type delete_ops_item_errors() ::
          ops_item_invalid_parameter_exception() | internal_server_error()

  @type delete_ops_metadata_errors() ::
          internal_server_error()
          | ops_metadata_invalid_argument_exception()
          | ops_metadata_not_found_exception()

  @type delete_parameter_errors() :: internal_server_error() | parameter_not_found()

  @type delete_parameters_errors() :: internal_server_error()

  @type delete_patch_baseline_errors() :: internal_server_error() | resource_in_use_exception()

  @type delete_resource_data_sync_errors() ::
          resource_data_sync_not_found_exception()
          | internal_server_error()
          | resource_data_sync_invalid_configuration_exception()

  @type delete_resource_policy_errors() ::
          resource_policy_not_found_exception()
          | internal_server_error()
          | resource_policy_conflict_exception()
          | resource_not_found_exception()
          | resource_policy_invalid_parameter_exception()
          | malformed_resource_policy_document_exception()

  @type deregister_managed_instance_errors() :: invalid_instance_id() | internal_server_error()

  @type deregister_patch_baseline_for_patch_group_errors() ::
          internal_server_error() | invalid_resource_id()

  @type deregister_target_from_maintenance_window_errors() ::
          target_in_use_exception() | does_not_exist_exception() | internal_server_error()

  @type deregister_task_from_maintenance_window_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type describe_activations_errors() ::
          invalid_next_token() | invalid_filter() | internal_server_error()

  @type describe_association_errors() ::
          invalid_association_version()
          | association_does_not_exist()
          | invalid_instance_id()
          | internal_server_error()
          | invalid_document()

  @type describe_association_execution_targets_errors() ::
          invalid_next_token()
          | association_does_not_exist()
          | internal_server_error()
          | association_execution_does_not_exist()

  @type describe_association_executions_errors() ::
          invalid_next_token() | association_does_not_exist() | internal_server_error()

  @type describe_automation_executions_errors() ::
          invalid_next_token()
          | invalid_filter_key()
          | internal_server_error()
          | invalid_filter_value()

  @type describe_automation_step_executions_errors() ::
          invalid_next_token()
          | invalid_filter_key()
          | internal_server_error()
          | invalid_filter_value()
          | automation_execution_not_found_exception()

  @type describe_available_patches_errors() :: internal_server_error()

  @type describe_document_errors() ::
          internal_server_error() | invalid_document_version() | invalid_document()

  @type describe_document_permission_errors() ::
          invalid_document_operation()
          | invalid_next_token()
          | internal_server_error()
          | invalid_permission_type()
          | invalid_document()

  @type describe_effective_instance_associations_errors() ::
          invalid_next_token() | invalid_instance_id() | internal_server_error()

  @type describe_effective_patches_for_patch_baseline_errors() ::
          unsupported_operating_system()
          | does_not_exist_exception()
          | internal_server_error()
          | invalid_resource_id()

  @type describe_instance_associations_status_errors() ::
          invalid_next_token() | invalid_instance_id() | internal_server_error()

  @type describe_instance_information_errors() ::
          invalid_next_token()
          | invalid_instance_information_filter_value()
          | invalid_filter_key()
          | invalid_instance_id()
          | internal_server_error()

  @type describe_instance_patch_states_errors() :: invalid_next_token() | internal_server_error()

  @type describe_instance_patch_states_for_patch_group_errors() ::
          invalid_next_token() | invalid_filter() | internal_server_error()

  @type describe_instance_patches_errors() ::
          invalid_next_token()
          | invalid_filter()
          | invalid_instance_id()
          | internal_server_error()

  @type describe_instance_properties_errors() ::
          invalid_next_token()
          | invalid_filter_key()
          | invalid_instance_id()
          | internal_server_error()
          | invalid_activation_id()
          | invalid_document()
          | invalid_instance_property_filter_value()

  @type describe_inventory_deletions_errors() ::
          invalid_next_token() | internal_server_error() | invalid_deletion_id_exception()

  @type describe_maintenance_window_execution_task_invocations_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type describe_maintenance_window_execution_tasks_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type describe_maintenance_window_executions_errors() :: internal_server_error()

  @type describe_maintenance_window_schedule_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type describe_maintenance_window_targets_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type describe_maintenance_window_tasks_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type describe_maintenance_windows_errors() :: internal_server_error()

  @type describe_maintenance_windows_for_target_errors() :: internal_server_error()

  @type describe_ops_items_errors() :: internal_server_error()

  @type describe_parameters_errors() ::
          invalid_next_token()
          | invalid_filter_key()
          | internal_server_error()
          | invalid_filter_option()
          | invalid_filter_value()

  @type describe_patch_baselines_errors() :: internal_server_error()

  @type describe_patch_group_state_errors() :: invalid_next_token() | internal_server_error()

  @type describe_patch_groups_errors() :: internal_server_error()

  @type describe_patch_properties_errors() :: internal_server_error()

  @type describe_sessions_errors() ::
          invalid_next_token() | invalid_filter_key() | internal_server_error()

  @type disassociate_ops_item_related_item_errors() ::
          ops_item_invalid_parameter_exception()
          | internal_server_error()
          | ops_item_related_item_association_not_found_exception()
          | ops_item_conflict_exception()
          | ops_item_not_found_exception()

  @type get_automation_execution_errors() ::
          internal_server_error() | automation_execution_not_found_exception()

  @type get_calendar_state_errors() ::
          internal_server_error()
          | invalid_document_type()
          | unsupported_calendar_exception()
          | invalid_document()

  @type get_command_invocation_errors() ::
          invalid_instance_id()
          | internal_server_error()
          | invalid_command_id()
          | invocation_does_not_exist()
          | invalid_plugin_name()

  @type get_connection_status_errors() :: internal_server_error()

  @type get_default_patch_baseline_errors() :: internal_server_error()

  @type get_deployable_patch_snapshot_for_instance_errors() ::
          unsupported_operating_system()
          | internal_server_error()
          | unsupported_feature_required_exception()

  @type get_document_errors() ::
          internal_server_error() | invalid_document_version() | invalid_document()

  @type get_inventory_errors() ::
          invalid_next_token()
          | invalid_filter()
          | internal_server_error()
          | invalid_inventory_group_exception()
          | invalid_aggregator_exception()
          | invalid_result_attribute_exception()
          | invalid_type_name_exception()

  @type get_inventory_schema_errors() ::
          invalid_next_token() | internal_server_error() | invalid_type_name_exception()

  @type get_maintenance_window_errors() :: does_not_exist_exception() | internal_server_error()

  @type get_maintenance_window_execution_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type get_maintenance_window_execution_task_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type get_maintenance_window_execution_task_invocation_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type get_maintenance_window_task_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type get_ops_item_errors() ::
          internal_server_error()
          | ops_item_not_found_exception()
          | ops_item_access_denied_exception()

  @type get_ops_metadata_errors() ::
          internal_server_error()
          | ops_metadata_invalid_argument_exception()
          | ops_metadata_not_found_exception()

  @type get_ops_summary_errors() ::
          invalid_next_token()
          | resource_data_sync_not_found_exception()
          | invalid_filter()
          | internal_server_error()
          | invalid_aggregator_exception()
          | invalid_type_name_exception()

  @type get_parameter_errors() ::
          internal_server_error()
          | invalid_key_id()
          | parameter_version_not_found()
          | parameter_not_found()

  @type get_parameter_history_errors() ::
          invalid_next_token()
          | internal_server_error()
          | invalid_key_id()
          | parameter_not_found()

  @type get_parameters_errors() :: internal_server_error() | invalid_key_id()

  @type get_parameters_by_path_errors() ::
          invalid_next_token()
          | invalid_filter_key()
          | internal_server_error()
          | invalid_key_id()
          | invalid_filter_option()
          | invalid_filter_value()

  @type get_patch_baseline_errors() ::
          does_not_exist_exception() | internal_server_error() | invalid_resource_id()

  @type get_patch_baseline_for_patch_group_errors() :: internal_server_error()

  @type get_resource_policies_errors() ::
          internal_server_error()
          | resource_not_found_exception()
          | resource_policy_invalid_parameter_exception()

  @type get_service_setting_errors() :: internal_server_error() | service_setting_not_found()

  @type label_parameter_version_errors() ::
          parameter_version_label_limit_exceeded()
          | too_many_updates()
          | internal_server_error()
          | parameter_version_not_found()
          | parameter_not_found()

  @type list_association_versions_errors() ::
          invalid_next_token() | association_does_not_exist() | internal_server_error()

  @type list_associations_errors() :: invalid_next_token() | internal_server_error()

  @type list_command_invocations_errors() ::
          invalid_next_token()
          | invalid_filter_key()
          | invalid_instance_id()
          | internal_server_error()
          | invalid_command_id()

  @type list_commands_errors() ::
          invalid_next_token()
          | invalid_filter_key()
          | invalid_instance_id()
          | internal_server_error()
          | invalid_command_id()

  @type list_compliance_items_errors() ::
          invalid_next_token()
          | invalid_filter()
          | internal_server_error()
          | invalid_resource_id()
          | invalid_resource_type()

  @type list_compliance_summaries_errors() ::
          invalid_next_token() | invalid_filter() | internal_server_error()

  @type list_document_metadata_history_errors() ::
          invalid_next_token()
          | internal_server_error()
          | invalid_document_version()
          | invalid_document()

  @type list_document_versions_errors() ::
          invalid_next_token() | internal_server_error() | invalid_document()

  @type list_documents_errors() ::
          invalid_next_token() | invalid_filter_key() | internal_server_error()

  @type list_inventory_entries_errors() ::
          invalid_next_token()
          | invalid_filter()
          | invalid_instance_id()
          | internal_server_error()
          | invalid_type_name_exception()

  @type list_ops_item_events_errors() ::
          ops_item_limit_exceeded_exception()
          | ops_item_invalid_parameter_exception()
          | internal_server_error()
          | ops_item_not_found_exception()

  @type list_ops_item_related_items_errors() ::
          ops_item_invalid_parameter_exception() | internal_server_error()

  @type list_ops_metadata_errors() ::
          internal_server_error() | ops_metadata_invalid_argument_exception()

  @type list_resource_compliance_summaries_errors() ::
          invalid_next_token() | invalid_filter() | internal_server_error()

  @type list_resource_data_sync_errors() ::
          invalid_next_token()
          | internal_server_error()
          | resource_data_sync_invalid_configuration_exception()

  @type list_tags_for_resource_errors() ::
          internal_server_error() | invalid_resource_id() | invalid_resource_type()

  @type modify_document_permission_errors() ::
          document_limit_exceeded()
          | internal_server_error()
          | invalid_permission_type()
          | invalid_document()
          | document_permission_limit()

  @type put_compliance_items_errors() ::
          compliance_type_count_limit_exceeded_exception()
          | internal_server_error()
          | item_size_limit_exceeded_exception()
          | invalid_resource_id()
          | invalid_resource_type()
          | total_size_limit_exceeded_exception()
          | invalid_item_content_exception()

  @type put_inventory_errors() ::
          item_content_mismatch_exception()
          | sub_type_count_limit_exceeded_exception()
          | invalid_instance_id()
          | internal_server_error()
          | item_size_limit_exceeded_exception()
          | invalid_inventory_item_context_exception()
          | unsupported_inventory_schema_version_exception()
          | custom_schema_count_limit_exceeded_exception()
          | total_size_limit_exceeded_exception()
          | unsupported_inventory_item_context_exception()
          | invalid_item_content_exception()
          | invalid_type_name_exception()

  @type put_parameter_errors() ::
          parameter_max_version_limit_exceeded()
          | hierarchy_type_mismatch_exception()
          | invalid_policy_type_exception()
          | parameter_limit_exceeded()
          | parameter_pattern_mismatch_exception()
          | too_many_updates()
          | internal_server_error()
          | hierarchy_level_limit_exceeded_exception()
          | invalid_allowed_pattern_exception()
          | invalid_key_id()
          | parameter_already_exists()
          | policies_limit_exceeded_exception()
          | unsupported_parameter_type()
          | incompatible_policy_exception()
          | invalid_policy_attribute_exception()

  @type put_resource_policy_errors() ::
          resource_policy_not_found_exception()
          | internal_server_error()
          | resource_policy_conflict_exception()
          | resource_not_found_exception()
          | resource_policy_invalid_parameter_exception()
          | resource_policy_limit_exceeded_exception()
          | malformed_resource_policy_document_exception()

  @type register_default_patch_baseline_errors() ::
          does_not_exist_exception() | internal_server_error() | invalid_resource_id()

  @type register_patch_baseline_for_patch_group_errors() ::
          does_not_exist_exception()
          | internal_server_error()
          | resource_limit_exceeded_exception()
          | invalid_resource_id()
          | already_exists_exception()

  @type register_target_with_maintenance_window_errors() ::
          does_not_exist_exception()
          | internal_server_error()
          | resource_limit_exceeded_exception()
          | idempotent_parameter_mismatch()

  @type register_task_with_maintenance_window_errors() ::
          does_not_exist_exception()
          | feature_not_available_exception()
          | internal_server_error()
          | resource_limit_exceeded_exception()
          | idempotent_parameter_mismatch()

  @type remove_tags_from_resource_errors() ::
          too_many_updates()
          | internal_server_error()
          | invalid_resource_id()
          | invalid_resource_type()

  @type reset_service_setting_errors() ::
          too_many_updates() | internal_server_error() | service_setting_not_found()

  @type resume_session_errors() :: does_not_exist_exception() | internal_server_error()

  @type send_automation_signal_errors() ::
          invalid_automation_signal_exception()
          | internal_server_error()
          | automation_step_not_found_exception()
          | automation_execution_not_found_exception()

  @type send_command_errors() ::
          unsupported_platform_type()
          | invalid_instance_id()
          | internal_server_error()
          | invalid_output_folder()
          | invalid_notification_config()
          | duplicate_instance_id()
          | invalid_role()
          | invalid_document_version()
          | invalid_parameters()
          | invalid_document()
          | max_document_size_exceeded()

  @type start_associations_once_errors() :: association_does_not_exist() | invalid_association()

  @type start_automation_execution_errors() ::
          automation_definition_not_found_exception()
          | automation_execution_limit_exceeded_exception()
          | automation_definition_version_not_found_exception()
          | internal_server_error()
          | invalid_automation_execution_parameters_exception()
          | idempotent_parameter_mismatch()
          | invalid_target()

  @type start_change_request_execution_errors() ::
          automation_definition_not_approved_exception()
          | automation_definition_not_found_exception()
          | automation_execution_limit_exceeded_exception()
          | automation_definition_version_not_found_exception()
          | internal_server_error()
          | invalid_automation_execution_parameters_exception()
          | idempotent_parameter_mismatch()

  @type start_session_errors() ::
          target_not_connected() | internal_server_error() | invalid_document()

  @type stop_automation_execution_errors() ::
          invalid_automation_status_update_exception()
          | internal_server_error()
          | automation_execution_not_found_exception()

  @type terminate_session_errors() :: internal_server_error()

  @type unlabel_parameter_version_errors() ::
          too_many_updates()
          | internal_server_error()
          | parameter_version_not_found()
          | parameter_not_found()

  @type update_association_errors() ::
          invalid_association_version()
          | association_does_not_exist()
          | invalid_update()
          | too_many_updates()
          | invalid_target_maps()
          | internal_server_error()
          | invalid_output_location()
          | invalid_schedule()
          | association_version_limit_exceeded()
          | invalid_document_version()
          | invalid_parameters()
          | invalid_document()
          | invalid_target()

  @type update_association_status_errors() ::
          association_does_not_exist()
          | invalid_instance_id()
          | too_many_updates()
          | internal_server_error()
          | status_unchanged()
          | invalid_document()

  @type update_document_errors() ::
          invalid_document_operation()
          | internal_server_error()
          | duplicate_document_version_name()
          | invalid_document_schema_version()
          | duplicate_document_content()
          | invalid_document_version()
          | invalid_document_content()
          | invalid_document()
          | document_version_limit_exceeded()
          | max_document_size_exceeded()

  @type update_document_default_version_errors() ::
          internal_server_error()
          | invalid_document_schema_version()
          | invalid_document_version()
          | invalid_document()

  @type update_document_metadata_errors() ::
          invalid_document_operation()
          | internal_server_error()
          | invalid_document_version()
          | invalid_document()

  @type update_maintenance_window_errors() :: does_not_exist_exception() | internal_server_error()

  @type update_maintenance_window_target_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type update_maintenance_window_task_errors() ::
          does_not_exist_exception() | internal_server_error()

  @type update_managed_instance_role_errors() :: invalid_instance_id() | internal_server_error()

  @type update_ops_item_errors() ::
          ops_item_limit_exceeded_exception()
          | ops_item_invalid_parameter_exception()
          | internal_server_error()
          | ops_item_already_exists_exception()
          | ops_item_conflict_exception()
          | ops_item_not_found_exception()
          | ops_item_access_denied_exception()

  @type update_ops_metadata_errors() ::
          internal_server_error()
          | ops_metadata_too_many_updates_exception()
          | ops_metadata_key_limit_exceeded_exception()
          | ops_metadata_invalid_argument_exception()
          | ops_metadata_not_found_exception()

  @type update_patch_baseline_errors() :: does_not_exist_exception() | internal_server_error()

  @type update_resource_data_sync_errors() ::
          resource_data_sync_not_found_exception()
          | internal_server_error()
          | resource_data_sync_invalid_configuration_exception()
          | resource_data_sync_conflict_exception()

  @type update_service_setting_errors() ::
          too_many_updates() | internal_server_error() | service_setting_not_found()

  def metadata do
    %{
      api_version: "2014-11-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ssm",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "SSM",
      signature_version: "v4",
      signing_name: "ssm",
      target_prefix: "AmazonSSM"
    }
  end

  @doc """
  Adds or overwrites one or more tags for the specified resource.

  *Tags*
  are metadata that you can assign to your automations, documents, managed nodes,
  maintenance
  windows, Parameter Store parameters, and patch baselines. Tags enable you to
  categorize your
  resources in different ways, for example, by purpose, owner, or environment.
  Each tag consists of
  a key and an optional value, both of which you define. For example, you could
  define a set of
  tags for your account's managed nodes that helps you track each node's owner and
  stack level. For
  example:

    *

  `Key=Owner,Value=DbAdmin`

    *

  `Key=Owner,Value=SysAdmin`

    *

  `Key=Owner,Value=Dev`

    *

  `Key=Stack,Value=Production`

    *

  `Key=Stack,Value=Pre-Production`

    *

  `Key=Stack,Value=Test`

  Most resources can have a maximum of 50 tags. Automations can have a maximum of
  5
  tags.

  We recommend that you devise a set of tag keys that meets your needs for each
  resource type.
  Using a consistent set of tag keys makes it easier for you to manage your
  resources. You can
  search and filter the resources based on the tags you add. Tags don't have any
  semantic meaning
  to and are interpreted strictly as a string of characters.

  For more information about using tags with Amazon Elastic Compute Cloud (Amazon
  EC2) instances, see [Tag your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the *Amazon EC2 User Guide*.
  """
  @spec add_tags_to_resource(map(), add_tags_to_resource_request(), list()) ::
          {:ok, add_tags_to_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_tags_to_resource_errors()}
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTagsToResource", input, options)
  end

  @doc """
  Associates a related item to a Systems Manager OpsCenter OpsItem.

  For example, you can associate an
  Incident Manager incident or analysis with an OpsItem. Incident Manager and
  OpsCenter are capabilities of
  Amazon Web Services Systems Manager.
  """
  @spec associate_ops_item_related_item(map(), associate_ops_item_related_item_request(), list()) ::
          {:ok, associate_ops_item_related_item_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_ops_item_related_item_errors()}
  def associate_ops_item_related_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateOpsItemRelatedItem", input, options)
  end

  @doc """
  Attempts to cancel the command specified by the Command ID.

  There is no guarantee that the
  command will be terminated and the underlying process stopped.
  """
  @spec cancel_command(map(), cancel_command_request(), list()) ::
          {:ok, cancel_command_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_command_errors()}
  def cancel_command(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelCommand", input, options)
  end

  @doc """
  Stops a maintenance window execution that is already in progress and cancels any
  tasks in
  the window that haven't already starting running.

  Tasks already in progress will continue to
  completion.
  """
  @spec cancel_maintenance_window_execution(
          map(),
          cancel_maintenance_window_execution_request(),
          list()
        ) ::
          {:ok, cancel_maintenance_window_execution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_maintenance_window_execution_errors()}
  def cancel_maintenance_window_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelMaintenanceWindowExecution", input, options)
  end

  @doc """
  Generates an activation code and activation ID you can use to register your
  on-premises
  servers, edge devices, or virtual machine (VM) with Amazon Web Services Systems
  Manager.

  Registering these machines with
  Systems Manager makes it possible to manage them using Systems Manager
  capabilities. You use the activation code and
  ID when installing SSM Agent on machines in your hybrid environment. For more
  information about
  requirements for managing on-premises machines using Systems Manager, see
  [Setting up Amazon Web Services Systems Manager for hybrid and multicloud
  environments](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.

  Amazon Elastic Compute Cloud (Amazon EC2) instances, edge devices, and
  on-premises servers and VMs that are
  configured for Systems Manager are all called *managed nodes*.
  """
  @spec create_activation(map(), create_activation_request(), list()) ::
          {:ok, create_activation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_activation_errors()}
  def create_activation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateActivation", input, options)
  end

  @doc """
  A State Manager association defines the state that you want to maintain on your
  managed
  nodes.

  For example, an association can specify that anti-virus software must be
  installed and
  running on your managed nodes, or that certain ports must be closed. For static
  targets, the
  association specifies a schedule for when the configuration is reapplied. For
  dynamic targets,
  such as an Amazon Web Services resource group or an Amazon Web Services
  autoscaling group, State Manager, a capability of
  Amazon Web Services Systems Manager applies the configuration when new managed
  nodes are added to the group. The
  association also specifies actions to take when applying the configuration. For
  example, an
  association for anti-virus software might run once a day. If the software isn't
  installed, then
  State Manager installs it. If the software is installed, but the service isn't
  running, then the
  association might instruct State Manager to start the service.
  """
  @spec create_association(map(), create_association_request(), list()) ::
          {:ok, create_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_association_errors()}
  def create_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAssociation", input, options)
  end

  @doc """
  Associates the specified Amazon Web Services Systems Manager document (SSM
  document) with the specified managed nodes
  or targets.

  When you associate a document with one or more managed nodes using IDs or tags,
  Amazon Web Services Systems Manager
  Agent (SSM Agent) running on the managed node processes the document and
  configures the node as
  specified.

  If you associate a document with a managed node that already has an associated
  document, the
  system returns the AssociationAlreadyExists exception.
  """
  @spec create_association_batch(map(), create_association_batch_request(), list()) ::
          {:ok, create_association_batch_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_association_batch_errors()}
  def create_association_batch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAssociationBatch", input, options)
  end

  @doc """
  Creates a Amazon Web Services Systems Manager (SSM document).

  An SSM document defines the actions that Systems Manager performs
  on your managed nodes. For more information about SSM documents, including
  information about
  supported schemas, features, and syntax, see [Amazon Web Services Systems Manager
  Documents](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-ssm-docs.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.
  """
  @spec create_document(map(), create_document_request(), list()) ::
          {:ok, create_document_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_document_errors()}
  def create_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDocument", input, options)
  end

  @doc """
  Creates a new maintenance window.

  The value you specify for `Duration` determines the specific end time for the
  maintenance window based on the time it begins. No maintenance window tasks are
  permitted to
  start after the resulting endtime minus the number of hours you specify for
  `Cutoff`.
  For example, if the maintenance window starts at 3 PM, the duration is three
  hours, and the
  value you specify for `Cutoff` is one hour, no maintenance window tasks can
  start
  after 5 PM.
  """
  @spec create_maintenance_window(map(), create_maintenance_window_request(), list()) ::
          {:ok, create_maintenance_window_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_maintenance_window_errors()}
  def create_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMaintenanceWindow", input, options)
  end

  @doc """
  Creates a new OpsItem.

  You must have permission in Identity and Access Management (IAM) to create a new
  OpsItem. For more information, see [Set up OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.

  Operations engineers and IT professionals use Amazon Web Services Systems
  Manager OpsCenter to view, investigate, and
  remediate operational issues impacting the performance and health of their
  Amazon Web Services resources. For
  more information, see [Amazon Web Services Systems Manager OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.
  """
  @spec create_ops_item(map(), create_ops_item_request(), list()) ::
          {:ok, create_ops_item_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ops_item_errors()}
  def create_ops_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateOpsItem", input, options)
  end

  @doc """
  If you create a new application in Application Manager, Amazon Web Services
  Systems Manager calls this API operation to specify
  information about the new application, including the application type.
  """
  @spec create_ops_metadata(map(), create_ops_metadata_request(), list()) ::
          {:ok, create_ops_metadata_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ops_metadata_errors()}
  def create_ops_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateOpsMetadata", input, options)
  end

  @doc """
  Creates a patch baseline.

  For information about valid key-value pairs in `PatchFilters` for each supported
  operating system type, see `PatchFilter`.
  """
  @spec create_patch_baseline(map(), create_patch_baseline_request(), list()) ::
          {:ok, create_patch_baseline_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_patch_baseline_errors()}
  def create_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePatchBaseline", input, options)
  end

  @doc """
  A resource data sync helps you view data from multiple sources in a single
  location.

  Amazon Web Services Systems Manager offers two types of resource data sync:
  `SyncToDestination` and
  `SyncFromSource`.

  You can configure Systems Manager Inventory to use the `SyncToDestination` type
  to
  synchronize Inventory data from multiple Amazon Web Services Regions to a single
  Amazon Simple Storage Service (Amazon S3) bucket. For more information, see
  [Configuring resource data sync for
  Inventory](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-datasync.html)
  in the *Amazon Web Services Systems Manager User Guide*.

  You can configure Systems Manager Explorer to use the `SyncFromSource` type to
  synchronize
  operational work items (OpsItems) and operational data (OpsData) from multiple
  Amazon Web Services Regions to a
  single Amazon S3 bucket. This type can synchronize OpsItems and OpsData from
  multiple
  Amazon Web Services accounts and Amazon Web Services Regions or
  `EntireOrganization` by using Organizations. For more
  information, see [Setting up Systems Manager Explorer to display data from multiple accounts and
  Regions](https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resource-data-sync.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.

  A resource data sync is an asynchronous operation that returns immediately.
  After a
  successful initial sync is completed, the system continuously syncs data. To
  check the status of
  a sync, use the `ListResourceDataSync`.

  By default, data isn't encrypted in Amazon S3. We strongly recommend that you
  enable encryption in Amazon S3 to ensure secure data storage. We also recommend
  that you
  secure access to the Amazon S3 bucket by creating a restrictive bucket policy.
  """
  @spec create_resource_data_sync(map(), create_resource_data_sync_request(), list()) ::
          {:ok, create_resource_data_sync_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_resource_data_sync_errors()}
  def create_resource_data_sync(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateResourceDataSync", input, options)
  end

  @doc """
  Deletes an activation.

  You aren't required to delete an activation. If you delete an
  activation, you can no longer use it to register additional managed nodes.
  Deleting an activation
  doesn't de-register managed nodes. You must manually de-register managed nodes.
  """
  @spec delete_activation(map(), delete_activation_request(), list()) ::
          {:ok, delete_activation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_activation_errors()}
  def delete_activation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteActivation", input, options)
  end

  @doc """
  Disassociates the specified Amazon Web Services Systems Manager document (SSM
  document) from the specified managed
  node.

  If you created the association by using the `Targets` parameter, then you must
  delete the association by using the association ID.

  When you disassociate a document from a managed node, it doesn't change the
  configuration of
  the node. To change the configuration state of a managed node after you
  disassociate a document,
  you must create a new document with the desired configuration and associate it
  with the
  node.
  """
  @spec delete_association(map(), delete_association_request(), list()) ::
          {:ok, delete_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_association_errors()}
  def delete_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAssociation", input, options)
  end

  @doc """
  Deletes the Amazon Web Services Systems Manager document (SSM document) and all
  managed node associations to the
  document.

  Before you delete the document, we recommend that you use `DeleteAssociation` to
  disassociate all managed nodes that are associated with the document.
  """
  @spec delete_document(map(), delete_document_request(), list()) ::
          {:ok, delete_document_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_document_errors()}
  def delete_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDocument", input, options)
  end

  @doc """
  Delete a custom inventory type or the data associated with a custom Inventory
  type.

  Deleting
  a custom inventory type is also referred to as deleting a custom inventory
  schema.
  """
  @spec delete_inventory(map(), delete_inventory_request(), list()) ::
          {:ok, delete_inventory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_inventory_errors()}
  def delete_inventory(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInventory", input, options)
  end

  @doc """
  Deletes a maintenance window.
  """
  @spec delete_maintenance_window(map(), delete_maintenance_window_request(), list()) ::
          {:ok, delete_maintenance_window_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_maintenance_window_errors()}
  def delete_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMaintenanceWindow", input, options)
  end

  @doc """
  Delete an OpsItem.

  You must have permission in Identity and Access Management (IAM) to
  delete an OpsItem.

  Note the following important information about this operation.

    
  Deleting an OpsItem is irreversible. You can't restore a deleted OpsItem.

    
  This operation uses an *eventual consistency model*, which means the
  system can take a few minutes to complete this operation. If you delete an
  OpsItem and
  immediately call, for example, `GetOpsItem`, the deleted OpsItem might still
  appear in the response.

    
  This operation is idempotent. The system doesn't throw an exception if you
  repeatedly
  call this operation for the same OpsItem. If the first call is successful, all
  additional calls
  return the same successful response as the first call.

    
  This operation doesn't support cross-account calls. A delegated administrator or
  management account can't delete OpsItems in other accounts, even if OpsCenter
  has been set up for
  cross-account administration. For more information about cross-account
  administration, see
  [Setting up OpsCenter to centrally manage OpsItems across
  accounts](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setting-up-cross-account.html)
  in the *Systems Manager User Guide*.
  """
  @spec delete_ops_item(map(), delete_ops_item_request(), list()) ::
          {:ok, delete_ops_item_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ops_item_errors()}
  def delete_ops_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteOpsItem", input, options)
  end

  @doc """
  Delete OpsMetadata related to an application.
  """
  @spec delete_ops_metadata(map(), delete_ops_metadata_request(), list()) ::
          {:ok, delete_ops_metadata_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ops_metadata_errors()}
  def delete_ops_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteOpsMetadata", input, options)
  end

  @doc """
  Delete a parameter from the system.

  After deleting a parameter, wait for at least 30 seconds
  to create a parameter with the same name.
  """
  @spec delete_parameter(map(), delete_parameter_request(), list()) ::
          {:ok, delete_parameter_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_parameter_errors()}
  def delete_parameter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteParameter", input, options)
  end

  @doc """
  Delete a list of parameters.

  After deleting a parameter, wait for at least 30 seconds to
  create a parameter with the same name.
  """
  @spec delete_parameters(map(), delete_parameters_request(), list()) ::
          {:ok, delete_parameters_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_parameters_errors()}
  def delete_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteParameters", input, options)
  end

  @doc """
  Deletes a patch baseline.
  """
  @spec delete_patch_baseline(map(), delete_patch_baseline_request(), list()) ::
          {:ok, delete_patch_baseline_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_patch_baseline_errors()}
  def delete_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePatchBaseline", input, options)
  end

  @doc """
  Deletes a resource data sync configuration.

  After the configuration is deleted, changes to
  data on managed nodes are no longer synced to or from the target. Deleting a
  sync configuration
  doesn't delete data.
  """
  @spec delete_resource_data_sync(map(), delete_resource_data_sync_request(), list()) ::
          {:ok, delete_resource_data_sync_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_data_sync_errors()}
  def delete_resource_data_sync(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourceDataSync", input, options)
  end

  @doc """
  Deletes a Systems Manager resource policy.

  A resource policy helps you to define the IAM entity (for example, an Amazon Web
  Services account) that can manage your Systems Manager resources. The following
  resources support Systems Manager resource policies.

    *

  `OpsItemGroup` - The resource policy for `OpsItemGroup` enables
  Amazon Web Services accounts to view and interact with OpsCenter operational
  work items (OpsItems).

    *

  `Parameter` - The resource policy is used to share a parameter with other
  accounts using Resource Access Manager (RAM). For more information about
  cross-account sharing of parameters, see [Working with shared
  parameters](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-shared-parameters.html)
  in the *Amazon Web Services Systems Manager User Guide*.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Removes the server or virtual machine from the list of registered servers.

  You can
  reregister the node again at any time. If you don't plan to use Run Command on
  the server, we
  suggest uninstalling SSM Agent first.
  """
  @spec deregister_managed_instance(map(), deregister_managed_instance_request(), list()) ::
          {:ok, deregister_managed_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_managed_instance_errors()}
  def deregister_managed_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterManagedInstance", input, options)
  end

  @doc """
  Removes a patch group from a patch baseline.
  """
  @spec deregister_patch_baseline_for_patch_group(
          map(),
          deregister_patch_baseline_for_patch_group_request(),
          list()
        ) ::
          {:ok, deregister_patch_baseline_for_patch_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_patch_baseline_for_patch_group_errors()}
  def deregister_patch_baseline_for_patch_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterPatchBaselineForPatchGroup", input, options)
  end

  @doc """
  Removes a target from a maintenance window.
  """
  @spec deregister_target_from_maintenance_window(
          map(),
          deregister_target_from_maintenance_window_request(),
          list()
        ) ::
          {:ok, deregister_target_from_maintenance_window_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_target_from_maintenance_window_errors()}
  def deregister_target_from_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterTargetFromMaintenanceWindow", input, options)
  end

  @doc """
  Removes a task from a maintenance window.
  """
  @spec deregister_task_from_maintenance_window(
          map(),
          deregister_task_from_maintenance_window_request(),
          list()
        ) ::
          {:ok, deregister_task_from_maintenance_window_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_task_from_maintenance_window_errors()}
  def deregister_task_from_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterTaskFromMaintenanceWindow", input, options)
  end

  @doc """
  Describes details about the activation, such as the date and time the activation
  was
  created, its expiration date, the Identity and Access Management (IAM) role
  assigned to
  the managed nodes in the activation, and the number of nodes registered by using
  this
  activation.
  """
  @spec describe_activations(map(), describe_activations_request(), list()) ::
          {:ok, describe_activations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_activations_errors()}
  def describe_activations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeActivations", input, options)
  end

  @doc """
  Describes the association for the specified target or managed node.

  If you created the
  association by using the `Targets` parameter, then you must retrieve the
  association
  by using the association ID.
  """
  @spec describe_association(map(), describe_association_request(), list()) ::
          {:ok, describe_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_association_errors()}
  def describe_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAssociation", input, options)
  end

  @doc """
  Views information about a specific execution of a specific association.
  """
  @spec describe_association_execution_targets(
          map(),
          describe_association_execution_targets_request(),
          list()
        ) ::
          {:ok, describe_association_execution_targets_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_association_execution_targets_errors()}
  def describe_association_execution_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAssociationExecutionTargets", input, options)
  end

  @doc """
  Views all executions for a specific association ID.
  """
  @spec describe_association_executions(map(), describe_association_executions_request(), list()) ::
          {:ok, describe_association_executions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_association_executions_errors()}
  def describe_association_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAssociationExecutions", input, options)
  end

  @doc """
  Provides details about all active and terminated Automation executions.
  """
  @spec describe_automation_executions(map(), describe_automation_executions_request(), list()) ::
          {:ok, describe_automation_executions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_automation_executions_errors()}
  def describe_automation_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutomationExecutions", input, options)
  end

  @doc """
  Information about all active and terminated step executions in an Automation
  workflow.
  """
  @spec describe_automation_step_executions(
          map(),
          describe_automation_step_executions_request(),
          list()
        ) ::
          {:ok, describe_automation_step_executions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_automation_step_executions_errors()}
  def describe_automation_step_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutomationStepExecutions", input, options)
  end

  @doc """
  Lists all patches eligible to be included in a patch baseline.

  Currently, `DescribeAvailablePatches` supports only the Amazon Linux 1, Amazon
  Linux 2, and Windows Server operating systems.
  """
  @spec describe_available_patches(map(), describe_available_patches_request(), list()) ::
          {:ok, describe_available_patches_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_available_patches_errors()}
  def describe_available_patches(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAvailablePatches", input, options)
  end

  @doc """
  Describes the specified Amazon Web Services Systems Manager document (SSM
  document).
  """
  @spec describe_document(map(), describe_document_request(), list()) ::
          {:ok, describe_document_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_document_errors()}
  def describe_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDocument", input, options)
  end

  @doc """
  Describes the permissions for a Amazon Web Services Systems Manager document
  (SSM document).

  If you created the
  document, you are the owner. If a document is shared, it can either be shared
  privately (by
  specifying a user's Amazon Web Services account ID) or publicly (*All*).
  """
  @spec describe_document_permission(map(), describe_document_permission_request(), list()) ::
          {:ok, describe_document_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_document_permission_errors()}
  def describe_document_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDocumentPermission", input, options)
  end

  @doc """
  All associations for the managed nodes.
  """
  @spec describe_effective_instance_associations(
          map(),
          describe_effective_instance_associations_request(),
          list()
        ) ::
          {:ok, describe_effective_instance_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_effective_instance_associations_errors()}
  def describe_effective_instance_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEffectiveInstanceAssociations", input, options)
  end

  @doc """
  Retrieves the current effective patches (the patch and the approval state) for
  the specified
  patch baseline.

  Applies to patch baselines for Windows only.
  """
  @spec describe_effective_patches_for_patch_baseline(
          map(),
          describe_effective_patches_for_patch_baseline_request(),
          list()
        ) ::
          {:ok, describe_effective_patches_for_patch_baseline_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_effective_patches_for_patch_baseline_errors()}
  def describe_effective_patches_for_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEffectivePatchesForPatchBaseline", input, options)
  end

  @doc """
  The status of the associations for the managed nodes.
  """
  @spec describe_instance_associations_status(
          map(),
          describe_instance_associations_status_request(),
          list()
        ) ::
          {:ok, describe_instance_associations_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instance_associations_status_errors()}
  def describe_instance_associations_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceAssociationsStatus", input, options)
  end

  @doc """
  Provides information about one or more of your managed nodes, including the
  operating system
  platform, SSM Agent version, association status, and IP address.

  This operation does not return
  information for nodes that are either Stopped or Terminated.

  If you specify one or more node IDs, the operation returns information for those
  managed
  nodes. If you don't specify node IDs, it returns information for all your
  managed nodes. If you
  specify a node ID that isn't valid or a node that you don't own, you receive an
  error.

  The `IamRole` field returned for this API operation is the role assigned to an
  Amazon EC2 instance configured with a Systems Manager Quick Setup host
  management configuration or
  the role assigned to an on-premises managed node.
  """
  @spec describe_instance_information(map(), describe_instance_information_request(), list()) ::
          {:ok, describe_instance_information_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instance_information_errors()}
  def describe_instance_information(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceInformation", input, options)
  end

  @doc """
  Retrieves the high-level patch state of one or more managed nodes.
  """
  @spec describe_instance_patch_states(map(), describe_instance_patch_states_request(), list()) ::
          {:ok, describe_instance_patch_states_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instance_patch_states_errors()}
  def describe_instance_patch_states(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstancePatchStates", input, options)
  end

  @doc """
  Retrieves the high-level patch state for the managed nodes in the specified
  patch
  group.
  """
  @spec describe_instance_patch_states_for_patch_group(
          map(),
          describe_instance_patch_states_for_patch_group_request(),
          list()
        ) ::
          {:ok, describe_instance_patch_states_for_patch_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instance_patch_states_for_patch_group_errors()}
  def describe_instance_patch_states_for_patch_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstancePatchStatesForPatchGroup", input, options)
  end

  @doc """
  Retrieves information about the patches on the specified managed node and their
  state
  relative to the patch baseline being used for the node.
  """
  @spec describe_instance_patches(map(), describe_instance_patches_request(), list()) ::
          {:ok, describe_instance_patches_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instance_patches_errors()}
  def describe_instance_patches(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstancePatches", input, options)
  end

  @doc """
  An API operation used by the Systems Manager console to display information
  about Systems Manager managed
  nodes.
  """
  @spec describe_instance_properties(map(), describe_instance_properties_request(), list()) ::
          {:ok, describe_instance_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instance_properties_errors()}
  def describe_instance_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceProperties", input, options)
  end

  @doc """
  Describes a specific delete inventory operation.
  """
  @spec describe_inventory_deletions(map(), describe_inventory_deletions_request(), list()) ::
          {:ok, describe_inventory_deletions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_inventory_deletions_errors()}
  def describe_inventory_deletions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInventoryDeletions", input, options)
  end

  @doc """
  Retrieves the individual task executions (one per target) for a particular task
  run as part
  of a maintenance window execution.
  """
  @spec describe_maintenance_window_execution_task_invocations(
          map(),
          describe_maintenance_window_execution_task_invocations_request(),
          list()
        ) ::
          {:ok, describe_maintenance_window_execution_task_invocations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_maintenance_window_execution_task_invocations_errors()}
  def describe_maintenance_window_execution_task_invocations(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeMaintenanceWindowExecutionTaskInvocations",
      input,
      options
    )
  end

  @doc """
  For a given maintenance window execution, lists the tasks that were run.
  """
  @spec describe_maintenance_window_execution_tasks(
          map(),
          describe_maintenance_window_execution_tasks_request(),
          list()
        ) ::
          {:ok, describe_maintenance_window_execution_tasks_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_maintenance_window_execution_tasks_errors()}
  def describe_maintenance_window_execution_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindowExecutionTasks", input, options)
  end

  @doc """
  Lists the executions of a maintenance window.

  This includes information about when the
  maintenance window was scheduled to be active, and information about tasks
  registered and run
  with the maintenance window.
  """
  @spec describe_maintenance_window_executions(
          map(),
          describe_maintenance_window_executions_request(),
          list()
        ) ::
          {:ok, describe_maintenance_window_executions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_maintenance_window_executions_errors()}
  def describe_maintenance_window_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindowExecutions", input, options)
  end

  @doc """
  Retrieves information about upcoming executions of a maintenance window.
  """
  @spec describe_maintenance_window_schedule(
          map(),
          describe_maintenance_window_schedule_request(),
          list()
        ) ::
          {:ok, describe_maintenance_window_schedule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_maintenance_window_schedule_errors()}
  def describe_maintenance_window_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindowSchedule", input, options)
  end

  @doc """
  Lists the targets registered with the maintenance window.
  """
  @spec describe_maintenance_window_targets(
          map(),
          describe_maintenance_window_targets_request(),
          list()
        ) ::
          {:ok, describe_maintenance_window_targets_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_maintenance_window_targets_errors()}
  def describe_maintenance_window_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindowTargets", input, options)
  end

  @doc """
  Lists the tasks in a maintenance window.

  For maintenance window tasks without a specified target, you can't supply values
  for
  `--max-errors` and `--max-concurrency`. Instead, the system inserts a
  placeholder value of `1`, which may be reported in the response to this command.
  These values don't affect the running of your task and can be ignored.
  """
  @spec describe_maintenance_window_tasks(
          map(),
          describe_maintenance_window_tasks_request(),
          list()
        ) ::
          {:ok, describe_maintenance_window_tasks_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_maintenance_window_tasks_errors()}
  def describe_maintenance_window_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindowTasks", input, options)
  end

  @doc """
  Retrieves the maintenance windows in an Amazon Web Services account.
  """
  @spec describe_maintenance_windows(map(), describe_maintenance_windows_request(), list()) ::
          {:ok, describe_maintenance_windows_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_maintenance_windows_errors()}
  def describe_maintenance_windows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindows", input, options)
  end

  @doc """
  Retrieves information about the maintenance window targets or tasks that a
  managed node is
  associated with.
  """
  @spec describe_maintenance_windows_for_target(
          map(),
          describe_maintenance_windows_for_target_request(),
          list()
        ) ::
          {:ok, describe_maintenance_windows_for_target_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_maintenance_windows_for_target_errors()}
  def describe_maintenance_windows_for_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindowsForTarget", input, options)
  end

  @doc """
  Query a set of OpsItems.

  You must have permission in Identity and Access Management (IAM) to query a list
  of OpsItems. For more information, see [Set up OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.

  Operations engineers and IT professionals use Amazon Web Services Systems
  Manager OpsCenter to view, investigate, and
  remediate operational issues impacting the performance and health of their
  Amazon Web Services resources. For
  more information, see [Amazon Web Services Systems Manager OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.
  """
  @spec describe_ops_items(map(), describe_ops_items_request(), list()) ::
          {:ok, describe_ops_items_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_ops_items_errors()}
  def describe_ops_items(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOpsItems", input, options)
  end

  @doc """
  Lists the parameters in your Amazon Web Services account or the parameters
  shared with you when you enable
  the
  [Shared](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribeParameters.html#systemsmanager-DescribeParameters-request-Shared)
  option.

  Request results are returned on a best-effort basis. If you specify `MaxResults`
  in the request, the response includes information up to the limit specified. The
  number of items
  returned, however, can be between zero and the value of `MaxResults`. If the
  service
  reaches an internal limit while processing the results, it stops the operation
  and returns the
  matching values up to that point and a `NextToken`. You can specify the
  `NextToken` in a subsequent call to get the next set of results.

  If you change the KMS key alias for the KMS key used to encrypt a parameter,
  then you must also update the key alias the parameter uses to reference KMS.
  Otherwise,
  `DescribeParameters` retrieves whatever the original key alias was
  referencing.
  """
  @spec describe_parameters(map(), describe_parameters_request(), list()) ::
          {:ok, describe_parameters_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_parameters_errors()}
  def describe_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeParameters", input, options)
  end

  @doc """
  Lists the patch baselines in your Amazon Web Services account.
  """
  @spec describe_patch_baselines(map(), describe_patch_baselines_request(), list()) ::
          {:ok, describe_patch_baselines_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_patch_baselines_errors()}
  def describe_patch_baselines(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePatchBaselines", input, options)
  end

  @doc """
  Returns high-level aggregated patch compliance state information for a patch
  group.
  """
  @spec describe_patch_group_state(map(), describe_patch_group_state_request(), list()) ::
          {:ok, describe_patch_group_state_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_patch_group_state_errors()}
  def describe_patch_group_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePatchGroupState", input, options)
  end

  @doc """
  Lists all patch groups that have been registered with patch baselines.
  """
  @spec describe_patch_groups(map(), describe_patch_groups_request(), list()) ::
          {:ok, describe_patch_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_patch_groups_errors()}
  def describe_patch_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePatchGroups", input, options)
  end

  @doc """
  Lists the properties of available patches organized by product, product family,
  classification, severity, and other properties of available patches.

  You can use the reported
  properties in the filters you specify in requests for operations such as
  `CreatePatchBaseline`, `UpdatePatchBaseline`, `DescribeAvailablePatches`, and
  `DescribePatchBaselines`.

  The following section lists the properties that can be used in filters for each
  major
  operating system type:

  ## Definitions

  ### AMAZON_LINUX

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### AMAZON_LINUX_2

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### AMAZON_LINUX_2023

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### CENTOS

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### DEBIAN

  Valid properties: `PRODUCT` | `PRIORITY`

  ### MACOS

  Valid properties: `PRODUCT` | `CLASSIFICATION`

  ### ORACLE_LINUX

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### REDHAT_ENTERPRISE_LINUX

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### SUSE

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### UBUNTU

  Valid properties: `PRODUCT` | `PRIORITY`

  ### WINDOWS

  Valid properties: `PRODUCT` | `PRODUCT_FAMILY` |
  `CLASSIFICATION` | `MSRC_SEVERITY`
  """
  @spec describe_patch_properties(map(), describe_patch_properties_request(), list()) ::
          {:ok, describe_patch_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_patch_properties_errors()}
  def describe_patch_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePatchProperties", input, options)
  end

  @doc """
  Retrieves a list of all active sessions (both connected and disconnected) or
  terminated
  sessions from the past 30 days.
  """
  @spec describe_sessions(map(), describe_sessions_request(), list()) ::
          {:ok, describe_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_sessions_errors()}
  def describe_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSessions", input, options)
  end

  @doc """
  Deletes the association between an OpsItem and a related item.

  For example, this API
  operation can delete an Incident Manager incident from an OpsItem. Incident
  Manager is a capability of
  Amazon Web Services Systems Manager.
  """
  @spec disassociate_ops_item_related_item(
          map(),
          disassociate_ops_item_related_item_request(),
          list()
        ) ::
          {:ok, disassociate_ops_item_related_item_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_ops_item_related_item_errors()}
  def disassociate_ops_item_related_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateOpsItemRelatedItem", input, options)
  end

  @doc """
  Get detailed information about a particular Automation execution.
  """
  @spec get_automation_execution(map(), get_automation_execution_request(), list()) ::
          {:ok, get_automation_execution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_automation_execution_errors()}
  def get_automation_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAutomationExecution", input, options)
  end

  @doc """
  Gets the state of a Amazon Web Services Systems Manager change calendar at the
  current time or a specified time.

  If
  you specify a time, `GetCalendarState` returns the state of the calendar at that
  specific time, and returns the next time that the change calendar state will
  transition. If you
  don't specify a time, `GetCalendarState` uses the current time. Change Calendar
  entries have two possible states: `OPEN` or `CLOSED`.

  If you specify more than one calendar in a request, the command returns the
  status of
  `OPEN` only if all calendars in the request are open. If one or more calendars
  in the
  request are closed, the status returned is `CLOSED`.

  For more information about Change Calendar, a capability of Amazon Web Services
  Systems Manager, see [Amazon Web Services Systems Manager Change Calendar](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar.html)
  in the *Amazon Web Services Systems Manager User Guide*.
  """
  @spec get_calendar_state(map(), get_calendar_state_request(), list()) ::
          {:ok, get_calendar_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_calendar_state_errors()}
  def get_calendar_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCalendarState", input, options)
  end

  @doc """
  Returns detailed information about command execution for an invocation or
  plugin.

  The Run
  Command API follows an eventual consistency model, due to the distributed nature
  of the system
  supporting the API. This means that the result of an API command you run that
  affects your
  resources might not be immediately visible to all subsequent commands you run.
  You should keep
  this in mind when you carry out an API command that immediately follows a
  previous API
  command.

  `GetCommandInvocation` only gives the execution status of a plugin in a
  document.
  To get the command execution status on a specific managed node, use
  `ListCommandInvocations`. To get the command execution status across managed
  nodes,
  use `ListCommands`.
  """
  @spec get_command_invocation(map(), get_command_invocation_request(), list()) ::
          {:ok, get_command_invocation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_command_invocation_errors()}
  def get_command_invocation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCommandInvocation", input, options)
  end

  @doc """
  Retrieves the Session Manager connection status for a managed node to determine
  whether it is running
  and ready to receive Session Manager connections.
  """
  @spec get_connection_status(map(), get_connection_status_request(), list()) ::
          {:ok, get_connection_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connection_status_errors()}
  def get_connection_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConnectionStatus", input, options)
  end

  @doc """
  Retrieves the default patch baseline.

  Amazon Web Services Systems Manager supports creating multiple default patch
  baselines. For example, you can create a default patch baseline for each
  operating system.

  If you don't specify an operating system value, the default patch baseline for
  Windows is
  returned.
  """
  @spec get_default_patch_baseline(map(), get_default_patch_baseline_request(), list()) ::
          {:ok, get_default_patch_baseline_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_default_patch_baseline_errors()}
  def get_default_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDefaultPatchBaseline", input, options)
  end

  @doc """
  Retrieves the current snapshot for the patch baseline the managed node uses.

  This API is
  primarily used by the `AWS-RunPatchBaseline` Systems Manager document (SSM
  document).

  If you run the command locally, such as with the Command Line Interface (CLI),
  the system attempts to use your local Amazon Web Services credentials and the
  operation fails. To avoid
  this, you can run the command in the Amazon Web Services Systems Manager
  console. Use Run Command, a capability of
  Amazon Web Services Systems Manager, with an SSM document that enables you to
  target a managed node with a script or
  command. For example, run the command using the `AWS-RunShellScript` document or
  the
  `AWS-RunPowerShellScript` document.
  """
  @spec get_deployable_patch_snapshot_for_instance(
          map(),
          get_deployable_patch_snapshot_for_instance_request(),
          list()
        ) ::
          {:ok, get_deployable_patch_snapshot_for_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deployable_patch_snapshot_for_instance_errors()}
  def get_deployable_patch_snapshot_for_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDeployablePatchSnapshotForInstance", input, options)
  end

  @doc """
  Gets the contents of the specified Amazon Web Services Systems Manager document
  (SSM document).
  """
  @spec get_document(map(), get_document_request(), list()) ::
          {:ok, get_document_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_document_errors()}
  def get_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDocument", input, options)
  end

  @doc """
  Query inventory information.

  This includes managed node status, such as `Stopped`
  or `Terminated`.
  """
  @spec get_inventory(map(), get_inventory_request(), list()) ::
          {:ok, get_inventory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_inventory_errors()}
  def get_inventory(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInventory", input, options)
  end

  @doc """
  Return a list of inventory type names for the account, or return a list of
  attribute names
  for a specific Inventory item type.
  """
  @spec get_inventory_schema(map(), get_inventory_schema_request(), list()) ::
          {:ok, get_inventory_schema_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_inventory_schema_errors()}
  def get_inventory_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInventorySchema", input, options)
  end

  @doc """
  Retrieves a maintenance window.
  """
  @spec get_maintenance_window(map(), get_maintenance_window_request(), list()) ::
          {:ok, get_maintenance_window_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_maintenance_window_errors()}
  def get_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMaintenanceWindow", input, options)
  end

  @doc """
  Retrieves details about a specific a maintenance window execution.
  """
  @spec get_maintenance_window_execution(
          map(),
          get_maintenance_window_execution_request(),
          list()
        ) ::
          {:ok, get_maintenance_window_execution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_maintenance_window_execution_errors()}
  def get_maintenance_window_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMaintenanceWindowExecution", input, options)
  end

  @doc """
  Retrieves the details about a specific task run as part of a maintenance window
  execution.
  """
  @spec get_maintenance_window_execution_task(
          map(),
          get_maintenance_window_execution_task_request(),
          list()
        ) ::
          {:ok, get_maintenance_window_execution_task_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_maintenance_window_execution_task_errors()}
  def get_maintenance_window_execution_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMaintenanceWindowExecutionTask", input, options)
  end

  @doc """
  Retrieves information about a specific task running on a specific target.
  """
  @spec get_maintenance_window_execution_task_invocation(
          map(),
          get_maintenance_window_execution_task_invocation_request(),
          list()
        ) ::
          {:ok, get_maintenance_window_execution_task_invocation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_maintenance_window_execution_task_invocation_errors()}
  def get_maintenance_window_execution_task_invocation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "GetMaintenanceWindowExecutionTaskInvocation",
      input,
      options
    )
  end

  @doc """
  Retrieves the details of a maintenance window task.

  For maintenance window tasks without a specified target, you can't supply values
  for
  `--max-errors` and `--max-concurrency`. Instead, the system inserts a
  placeholder value of `1`, which may be reported in the response to this command.
  These values don't affect the running of your task and can be ignored.

  To retrieve a list of tasks in a maintenance window, instead use the
  `DescribeMaintenanceWindowTasks` command.
  """
  @spec get_maintenance_window_task(map(), get_maintenance_window_task_request(), list()) ::
          {:ok, get_maintenance_window_task_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_maintenance_window_task_errors()}
  def get_maintenance_window_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMaintenanceWindowTask", input, options)
  end

  @doc """
  Get information about an OpsItem by using the ID.

  You must have permission in Identity and Access Management (IAM) to view
  information about an OpsItem. For more information,
  see [Set up
  OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html)
  in the *Amazon Web Services Systems Manager User Guide*.

  Operations engineers and IT professionals use Amazon Web Services Systems
  Manager OpsCenter to view, investigate, and
  remediate operational issues impacting the performance and health of their
  Amazon Web Services resources. For
  more information, see [Amazon Web Services Systems Manager OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.
  """
  @spec get_ops_item(map(), get_ops_item_request(), list()) ::
          {:ok, get_ops_item_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ops_item_errors()}
  def get_ops_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOpsItem", input, options)
  end

  @doc """
  View operational metadata related to an application in Application Manager.
  """
  @spec get_ops_metadata(map(), get_ops_metadata_request(), list()) ::
          {:ok, get_ops_metadata_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ops_metadata_errors()}
  def get_ops_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOpsMetadata", input, options)
  end

  @doc """
  View a summary of operations metadata (OpsData) based on specified filters and
  aggregators.

  OpsData can include information about Amazon Web Services Systems Manager
  OpsCenter operational workitems (OpsItems) as
  well as information about any Amazon Web Services resource or service configured
  to report OpsData to Amazon Web Services Systems Manager
  Explorer.
  """
  @spec get_ops_summary(map(), get_ops_summary_request(), list()) ::
          {:ok, get_ops_summary_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ops_summary_errors()}
  def get_ops_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOpsSummary", input, options)
  end

  @doc """
  Get information about a single parameter by specifying the parameter name.

  To get information about more than one parameter at a time, use the
  `GetParameters` operation.
  """
  @spec get_parameter(map(), get_parameter_request(), list()) ::
          {:ok, get_parameter_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_parameter_errors()}
  def get_parameter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetParameter", input, options)
  end

  @doc """
  Retrieves the history of all changes to a parameter.

  If you change the KMS key alias for the KMS key used to encrypt a parameter,
  then you must also update the key alias the parameter uses to reference KMS.
  Otherwise,
  `GetParameterHistory` retrieves whatever the original key alias was
  referencing.
  """
  @spec get_parameter_history(map(), get_parameter_history_request(), list()) ::
          {:ok, get_parameter_history_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_parameter_history_errors()}
  def get_parameter_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetParameterHistory", input, options)
  end

  @doc """
  Get information about one or more parameters by specifying multiple parameter
  names.

  To get information about a single parameter, you can use the `GetParameter`
  operation instead.
  """
  @spec get_parameters(map(), get_parameters_request(), list()) ::
          {:ok, get_parameters_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_parameters_errors()}
  def get_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetParameters", input, options)
  end

  @doc """
  Retrieve information about one or more parameters in a specific hierarchy.

  Request results are returned on a best-effort basis. If you specify `MaxResults`
  in the request, the response includes information up to the limit specified. The
  number of items
  returned, however, can be between zero and the value of `MaxResults`. If the
  service
  reaches an internal limit while processing the results, it stops the operation
  and returns the
  matching values up to that point and a `NextToken`. You can specify the
  `NextToken` in a subsequent call to get the next set of results.
  """
  @spec get_parameters_by_path(map(), get_parameters_by_path_request(), list()) ::
          {:ok, get_parameters_by_path_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_parameters_by_path_errors()}
  def get_parameters_by_path(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetParametersByPath", input, options)
  end

  @doc """
  Retrieves information about a patch baseline.
  """
  @spec get_patch_baseline(map(), get_patch_baseline_request(), list()) ::
          {:ok, get_patch_baseline_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_patch_baseline_errors()}
  def get_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPatchBaseline", input, options)
  end

  @doc """
  Retrieves the patch baseline that should be used for the specified patch group.
  """
  @spec get_patch_baseline_for_patch_group(
          map(),
          get_patch_baseline_for_patch_group_request(),
          list()
        ) ::
          {:ok, get_patch_baseline_for_patch_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_patch_baseline_for_patch_group_errors()}
  def get_patch_baseline_for_patch_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPatchBaselineForPatchGroup", input, options)
  end

  @doc """
  Returns an array of the `Policy` object.
  """
  @spec get_resource_policies(map(), get_resource_policies_request(), list()) ::
          {:ok, get_resource_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policies_errors()}
  def get_resource_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicies", input, options)
  end

  @doc """

  `ServiceSetting` is an account-level setting for an Amazon Web Services service.

  This setting
  defines how a user interacts with or uses a service or a feature of a service.
  For example, if an
  Amazon Web Services service charges money to the account based on feature or
  service usage, then the Amazon Web Services
  service team might create a default setting of `false`. This means the user
  can't use
  this feature unless they change the setting to `true` and intentionally opt in
  for a
  paid feature.

  Services map a `SettingId` object to a setting value. Amazon Web Services
  services teams define
  the default value for a `SettingId`. You can't create a new `SettingId`,
  but you can overwrite the default value if you have the
  `ssm:UpdateServiceSetting`
  permission for the setting. Use the `UpdateServiceSetting` API operation to
  change the default setting. Or use the `ResetServiceSetting` to change the value
  back to the original value defined by the Amazon Web Services service team.

  Query the current service setting for the Amazon Web Services account.
  """
  @spec get_service_setting(map(), get_service_setting_request(), list()) ::
          {:ok, get_service_setting_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_setting_errors()}
  def get_service_setting(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceSetting", input, options)
  end

  @doc """
  A parameter label is a user-defined alias to help you manage different versions
  of a
  parameter.

  When you modify a parameter, Amazon Web Services Systems Manager automatically
  saves a new version and
  increments the version number by one. A label can help you remember the purpose
  of a parameter
  when there are multiple versions.

  Parameter labels have the following requirements and restrictions.

    *
  A version of a parameter can have a maximum of 10 labels.

    *
  You can't attach the same label to different versions of the same parameter. For
  example,
  if version 1 has the label Production, then you can't attach Production to
  version 2.

    *
  You can move a label from one version of a parameter to another.

    *
  You can't create a label when you create a new parameter. You must attach a
  label to a
  specific version of a parameter.

    *
  If you no longer want to use a parameter label, then you can either delete it or
  move it
  to a different version of a parameter.

    *
  A label can have a maximum of 100 characters.

    *
  Labels can contain letters (case sensitive), numbers, periods (.), hyphens (-),
  or
  underscores (_).

    *
  Labels can't begin with a number, "`aws`" or "`ssm`" (not case
  sensitive). If a label fails to meet these requirements, then the label isn't
  associated with a
  parameter and the system displays it in the list of InvalidLabels.
  """
  @spec label_parameter_version(map(), label_parameter_version_request(), list()) ::
          {:ok, label_parameter_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, label_parameter_version_errors()}
  def label_parameter_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "LabelParameterVersion", input, options)
  end

  @doc """
  Retrieves all versions of an association for a specific association ID.
  """
  @spec list_association_versions(map(), list_association_versions_request(), list()) ::
          {:ok, list_association_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_association_versions_errors()}
  def list_association_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssociationVersions", input, options)
  end

  @doc """
  Returns all State Manager associations in the current Amazon Web Services
  account and Amazon Web Services Region.

  You
  can limit the results to a specific State Manager association document or
  managed node by
  specifying a filter. State Manager is a capability of Amazon Web Services
  Systems Manager.
  """
  @spec list_associations(map(), list_associations_request(), list()) ::
          {:ok, list_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_associations_errors()}
  def list_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssociations", input, options)
  end

  @doc """
  An invocation is copy of a command sent to a specific managed node.

  A command can apply to
  one or more managed nodes. A command invocation applies to one managed node. For
  example, if a
  user runs `SendCommand` against three managed nodes, then a command invocation
  is
  created for each requested managed node ID. `ListCommandInvocations` provide
  status
  about command execution.
  """
  @spec list_command_invocations(map(), list_command_invocations_request(), list()) ::
          {:ok, list_command_invocations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_command_invocations_errors()}
  def list_command_invocations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCommandInvocations", input, options)
  end

  @doc """
  Lists the commands requested by users of the Amazon Web Services account.
  """
  @spec list_commands(map(), list_commands_request(), list()) ::
          {:ok, list_commands_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_commands_errors()}
  def list_commands(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCommands", input, options)
  end

  @doc """
  For a specified resource ID, this API operation returns a list of compliance
  statuses for
  different resource types.

  Currently, you can only specify one resource ID per call. List results
  depend on the criteria specified in the filter.
  """
  @spec list_compliance_items(map(), list_compliance_items_request(), list()) ::
          {:ok, list_compliance_items_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_compliance_items_errors()}
  def list_compliance_items(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComplianceItems", input, options)
  end

  @doc """
  Returns a summary count of compliant and non-compliant resources for a
  compliance type.

  For
  example, this call can return State Manager associations, patches, or custom
  compliance types
  according to the filter criteria that you specify.
  """
  @spec list_compliance_summaries(map(), list_compliance_summaries_request(), list()) ::
          {:ok, list_compliance_summaries_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_compliance_summaries_errors()}
  def list_compliance_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComplianceSummaries", input, options)
  end

  @doc """
  Information about approval reviews for a version of a change template in Change
  Manager.
  """
  @spec list_document_metadata_history(map(), list_document_metadata_history_request(), list()) ::
          {:ok, list_document_metadata_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_document_metadata_history_errors()}
  def list_document_metadata_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDocumentMetadataHistory", input, options)
  end

  @doc """
  List all versions for a document.
  """
  @spec list_document_versions(map(), list_document_versions_request(), list()) ::
          {:ok, list_document_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_document_versions_errors()}
  def list_document_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDocumentVersions", input, options)
  end

  @doc """
  Returns all Systems Manager (SSM) documents in the current Amazon Web Services
  account and Amazon Web Services Region.

  You can
  limit the results of this request by using a filter.
  """
  @spec list_documents(map(), list_documents_request(), list()) ::
          {:ok, list_documents_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_documents_errors()}
  def list_documents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDocuments", input, options)
  end

  @doc """
  A list of inventory items returned by the request.
  """
  @spec list_inventory_entries(map(), list_inventory_entries_request(), list()) ::
          {:ok, list_inventory_entries_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_inventory_entries_errors()}
  def list_inventory_entries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInventoryEntries", input, options)
  end

  @doc """
  Returns a list of all OpsItem events in the current Amazon Web Services Region
  and Amazon Web Services account.

  You can
  limit the results to events associated with specific OpsItems by specifying a
  filter.
  """
  @spec list_ops_item_events(map(), list_ops_item_events_request(), list()) ::
          {:ok, list_ops_item_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ops_item_events_errors()}
  def list_ops_item_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOpsItemEvents", input, options)
  end

  @doc """
  Lists all related-item resources associated with a Systems Manager OpsCenter
  OpsItem.

  OpsCenter is a
  capability of Amazon Web Services Systems Manager.
  """
  @spec list_ops_item_related_items(map(), list_ops_item_related_items_request(), list()) ::
          {:ok, list_ops_item_related_items_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ops_item_related_items_errors()}
  def list_ops_item_related_items(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOpsItemRelatedItems", input, options)
  end

  @doc """
  Amazon Web Services Systems Manager calls this API operation when displaying all
  Application Manager OpsMetadata objects or
  blobs.
  """
  @spec list_ops_metadata(map(), list_ops_metadata_request(), list()) ::
          {:ok, list_ops_metadata_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ops_metadata_errors()}
  def list_ops_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOpsMetadata", input, options)
  end

  @doc """
  Returns a resource-level summary count.

  The summary includes information about compliant and
  non-compliant statuses and detailed compliance-item severity counts, according
  to the filter
  criteria you specify.
  """
  @spec list_resource_compliance_summaries(
          map(),
          list_resource_compliance_summaries_request(),
          list()
        ) ::
          {:ok, list_resource_compliance_summaries_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_compliance_summaries_errors()}
  def list_resource_compliance_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceComplianceSummaries", input, options)
  end

  @doc """
  Lists your resource data sync configurations.

  Includes information about the last time a
  sync attempted to start, the last sync status, and the last time a sync
  successfully
  completed.

  The number of sync configurations might be too large to return using a single
  call to
  `ListResourceDataSync`. You can limit the number of sync configurations returned
  by
  using the `MaxResults` parameter. To determine whether there are more sync
  configurations to list, check the value of `NextToken` in the output. If there
  are
  more sync configurations to list, you can request them by specifying the
  `NextToken`
  returned in the call to the parameter of a subsequent call.
  """
  @spec list_resource_data_sync(map(), list_resource_data_sync_request(), list()) ::
          {:ok, list_resource_data_sync_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_data_sync_errors()}
  def list_resource_data_sync(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceDataSync", input, options)
  end

  @doc """
  Returns a list of the tags assigned to the specified resource.

  For information about the ID format for each supported resource type, see
  `AddTagsToResource`.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Shares a Amazon Web Services Systems Manager document (SSM document)publicly or
  privately.

  If you share a document
  privately, you must specify the Amazon Web Services user IDs for those people
  who can use the document. If
  you share a document publicly, you must specify *All* as the account
  ID.
  """
  @spec modify_document_permission(map(), modify_document_permission_request(), list()) ::
          {:ok, modify_document_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_document_permission_errors()}
  def modify_document_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDocumentPermission", input, options)
  end

  @doc """
  Registers a compliance type and other compliance details on a designated
  resource.

  This
  operation lets you register custom compliance details with a resource. This call
  overwrites
  existing compliance information on the resource, so you must provide a full list
  of compliance
  items each time that you send the request.

  ComplianceType can be one of the following:

    *
  ExecutionId: The execution ID when the patch, association, or custom compliance
  item was
  applied.

    *
  ExecutionType: Specify patch, association, or Custom:`string`.

    *
  ExecutionTime. The time the patch, association, or custom compliance item was
  applied to
  the managed node.

    *
  Id: The patch, association, or custom compliance ID.

    *
  Title: A title.

    *
  Status: The status of the compliance item. For example, `approved` for patches,
  or `Failed` for associations.

    *
  Severity: A patch severity. For example, `Critical`.

    *
  DocumentName: An SSM document name. For example, `AWS-RunPatchBaseline`.

    *
  DocumentVersion: An SSM document version number. For example, 4.

    *
  Classification: A patch classification. For example, `security updates`.

    *
  PatchBaselineId: A patch baseline ID.

    *
  PatchSeverity: A patch severity. For example, `Critical`.

    *
  PatchState: A patch state. For example, `InstancesWithFailedPatches`.

    *
  PatchGroup: The name of a patch group.

    *
  InstalledTime: The time the association, patch, or custom compliance item was
  applied to
  the resource. Specify the time by using the following format:
  `yyyy-MM-dd'T'HH:mm:ss'Z'`
  """
  @spec put_compliance_items(map(), put_compliance_items_request(), list()) ::
          {:ok, put_compliance_items_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_compliance_items_errors()}
  def put_compliance_items(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutComplianceItems", input, options)
  end

  @doc """
  Bulk update custom inventory items on one or more managed nodes.

  The request adds an
  inventory item, if it doesn't already exist, or updates an inventory item, if it
  does
  exist.
  """
  @spec put_inventory(map(), put_inventory_request(), list()) ::
          {:ok, put_inventory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_inventory_errors()}
  def put_inventory(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutInventory", input, options)
  end

  @doc """
  Add a parameter to the system.
  """
  @spec put_parameter(map(), put_parameter_request(), list()) ::
          {:ok, put_parameter_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_parameter_errors()}
  def put_parameter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutParameter", input, options)
  end

  @doc """
  Creates or updates a Systems Manager resource policy.

  A resource policy helps you to define the
  IAM entity (for example, an Amazon Web Services account) that can manage your
  Systems Manager resources.
  The following resources support Systems Manager resource policies.

    *

  `OpsItemGroup` - The resource policy for `OpsItemGroup` enables
  Amazon Web Services accounts to view and interact with OpsCenter operational
  work items (OpsItems).

    *

  `Parameter` - The resource policy is used to share a parameter with other
  accounts using Resource Access Manager (RAM).

  To share a parameter, it must be in the advanced parameter tier. For information
  about
  parameter tiers, see [Managing parameter
  tiers](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html).
  For information about changing an existing standard parameter to an
  advanced parameter, see [Changing a standard parameter to an advanced parameter](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html#parameter-store-advanced-parameters-enabling).

  To share a `SecureString` parameter, it must be encrypted with a customer
  managed key, and you must share the key separately through Key Management
  Service. Amazon Web Services managed keys cannot be shared. Parameters encrypted
  with the default Amazon Web Services managed key can be updated to use a
  customer managed key instead. For KMS key definitions, see [KMS concepts](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html)
  in the
  *Key Management Service Developer Guide*.

  While you can share a parameter using the Systems Manager `PutResourcePolicy`
  operation,
  we recommend using Resource Access Manager (RAM) instead. This is because using
  `PutResourcePolicy` requires the extra step of promoting the parameter to a
  standard RAM Resource Share using the RAM
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html) API operation. Otherwise, the parameter won't
  be returned by the Systems Manager
  [DescribeParameters](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribeParameters.html)
  API operation using the `--shared` option.

  For more information, see [Sharing a parameter](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-shared-parameters.html#share)
  in the *Amazon Web Services Systems Manager User Guide*
  """
  @spec put_resource_policy(map(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Defines the default patch baseline for the relevant operating system.

  To reset the Amazon Web Services-predefined patch baseline as the default,
  specify the full patch baseline
  Amazon Resource Name (ARN) as the baseline ID value. For example, for CentOS,
  specify
  `arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed` instead
  of
  `pb-0574b43a65ea646ed`.
  """
  @spec register_default_patch_baseline(map(), register_default_patch_baseline_request(), list()) ::
          {:ok, register_default_patch_baseline_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_default_patch_baseline_errors()}
  def register_default_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterDefaultPatchBaseline", input, options)
  end

  @doc """
  Registers a patch baseline for a patch group.
  """
  @spec register_patch_baseline_for_patch_group(
          map(),
          register_patch_baseline_for_patch_group_request(),
          list()
        ) ::
          {:ok, register_patch_baseline_for_patch_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_patch_baseline_for_patch_group_errors()}
  def register_patch_baseline_for_patch_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterPatchBaselineForPatchGroup", input, options)
  end

  @doc """
  Registers a target with a maintenance window.
  """
  @spec register_target_with_maintenance_window(
          map(),
          register_target_with_maintenance_window_request(),
          list()
        ) ::
          {:ok, register_target_with_maintenance_window_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_target_with_maintenance_window_errors()}
  def register_target_with_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterTargetWithMaintenanceWindow", input, options)
  end

  @doc """
  Adds a new task to a maintenance window.
  """
  @spec register_task_with_maintenance_window(
          map(),
          register_task_with_maintenance_window_request(),
          list()
        ) ::
          {:ok, register_task_with_maintenance_window_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_task_with_maintenance_window_errors()}
  def register_task_with_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterTaskWithMaintenanceWindow", input, options)
  end

  @doc """
  Removes tag keys from the specified resource.
  """
  @spec remove_tags_from_resource(map(), remove_tags_from_resource_request(), list()) ::
          {:ok, remove_tags_from_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_tags_from_resource_errors()}
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTagsFromResource", input, options)
  end

  @doc """

  `ServiceSetting` is an account-level setting for an Amazon Web Services service.

  This setting
  defines how a user interacts with or uses a service or a feature of a service.
  For example, if an
  Amazon Web Services service charges money to the account based on feature or
  service usage, then the Amazon Web Services
  service team might create a default setting of "false". This means the user
  can't use this
  feature unless they change the setting to "true" and intentionally opt in for a
  paid
  feature.

  Services map a `SettingId` object to a setting value. Amazon Web Services
  services teams define
  the default value for a `SettingId`. You can't create a new `SettingId`,
  but you can overwrite the default value if you have the
  `ssm:UpdateServiceSetting`
  permission for the setting. Use the `GetServiceSetting` API operation to view
  the
  current value. Use the `UpdateServiceSetting` API operation to change the
  default
  setting.

  Reset the service setting for the account to the default value as provisioned by
  the Amazon Web Services
  service team.
  """
  @spec reset_service_setting(map(), reset_service_setting_request(), list()) ::
          {:ok, reset_service_setting_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_service_setting_errors()}
  def reset_service_setting(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetServiceSetting", input, options)
  end

  @doc """
  Reconnects a session to a managed node after it has been disconnected.

  Connections can be
  resumed for disconnected sessions, but not terminated sessions.

  This command is primarily for use by client machines to automatically reconnect
  during
  intermittent network issues. It isn't intended for any other use.
  """
  @spec resume_session(map(), resume_session_request(), list()) ::
          {:ok, resume_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resume_session_errors()}
  def resume_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResumeSession", input, options)
  end

  @doc """
  Sends a signal to an Automation execution to change the current behavior or
  status of the
  execution.
  """
  @spec send_automation_signal(map(), send_automation_signal_request(), list()) ::
          {:ok, send_automation_signal_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_automation_signal_errors()}
  def send_automation_signal(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendAutomationSignal", input, options)
  end

  @doc """
  Runs commands on one or more managed nodes.
  """
  @spec send_command(map(), send_command_request(), list()) ::
          {:ok, send_command_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_command_errors()}
  def send_command(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendCommand", input, options)
  end

  @doc """
  Runs an association immediately and only one time.

  This operation can be helpful when
  troubleshooting associations.
  """
  @spec start_associations_once(map(), start_associations_once_request(), list()) ::
          {:ok, start_associations_once_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_associations_once_errors()}
  def start_associations_once(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartAssociationsOnce", input, options)
  end

  @doc """
  Initiates execution of an Automation runbook.
  """
  @spec start_automation_execution(map(), start_automation_execution_request(), list()) ::
          {:ok, start_automation_execution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_automation_execution_errors()}
  def start_automation_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartAutomationExecution", input, options)
  end

  @doc """
  Creates a change request for Change Manager.

  The Automation runbooks specified in the
  change request run only after all required approvals for the change request have
  been
  received.
  """
  @spec start_change_request_execution(map(), start_change_request_execution_request(), list()) ::
          {:ok, start_change_request_execution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_change_request_execution_errors()}
  def start_change_request_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartChangeRequestExecution", input, options)
  end

  @doc """
  Initiates a connection to a target (for example, a managed node) for a Session
  Manager session.

  Returns a URL and token that can be used to open a WebSocket connection for
  sending input and
  receiving outputs.

  Amazon Web Services CLI usage: `start-session` is an interactive command that
  requires the Session Manager
  plugin to be installed on the client machine making the call. For information,
  see [Install the Session Manager plugin for the Amazon Web Services
  CLI](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html)
  in the *Amazon Web Services Systems Manager User Guide*.

  Amazon Web Services Tools for PowerShell usage: Start-SSMSession isn't currently
  supported by Amazon Web Services Tools
  for PowerShell on Windows local machines.
  """
  @spec start_session(map(), start_session_request(), list()) ::
          {:ok, start_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_session_errors()}
  def start_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartSession", input, options)
  end

  @doc """
  Stop an Automation that is currently running.
  """
  @spec stop_automation_execution(map(), stop_automation_execution_request(), list()) ::
          {:ok, stop_automation_execution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_automation_execution_errors()}
  def stop_automation_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopAutomationExecution", input, options)
  end

  @doc """
  Permanently ends a session and closes the data connection between the Session
  Manager client and
  SSM Agent on the managed node.

  A terminated session can't be resumed.
  """
  @spec terminate_session(map(), terminate_session_request(), list()) ::
          {:ok, terminate_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, terminate_session_errors()}
  def terminate_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateSession", input, options)
  end

  @doc """
  Remove a label or labels from a parameter.
  """
  @spec unlabel_parameter_version(map(), unlabel_parameter_version_request(), list()) ::
          {:ok, unlabel_parameter_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, unlabel_parameter_version_errors()}
  def unlabel_parameter_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnlabelParameterVersion", input, options)
  end

  @doc """
  Updates an association.

  You can update the association name and version, the document
  version, schedule, parameters, and Amazon Simple Storage Service (Amazon S3)
  output. When you
  call `UpdateAssociation`, the system removes all optional parameters from the
  request
  and overwrites the association with null values for those parameters. This is by
  design. You must
  specify all optional parameters in the call, even if you are not changing the
  parameters. This
  includes the `Name` parameter. Before calling this API action, we recommend that
  you
  call the `DescribeAssociation` API operation and make a note of all optional
  parameters required for your `UpdateAssociation` call.

  In order to call this API operation, a user, group, or role must be granted
  permission to
  call the `DescribeAssociation` API operation. If you don't have permission to
  call `DescribeAssociation`, then you receive the following error:

  ```
  An error
  occurred (AccessDeniedException) when calling the UpdateAssociation operation:
  User:
  isn't authorized to perform: ssm:DescribeAssociation on resource:

  ```

  When you update an association, the association immediately runs against the
  specified
  targets. You can add the `ApplyOnlyAtCronInterval` parameter to run the
  association
  during the next schedule run.
  """
  @spec update_association(map(), update_association_request(), list()) ::
          {:ok, update_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_association_errors()}
  def update_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAssociation", input, options)
  end

  @doc """
  Updates the status of the Amazon Web Services Systems Manager document (SSM
  document) associated with the specified
  managed node.

  `UpdateAssociationStatus` is primarily used by the Amazon Web Services Systems
  Manager Agent (SSM Agent) to
  report status updates about your associations and is only used for associations
  created with the
  `InstanceId` legacy parameter.
  """
  @spec update_association_status(map(), update_association_status_request(), list()) ::
          {:ok, update_association_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_association_status_errors()}
  def update_association_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAssociationStatus", input, options)
  end

  @doc """
  Updates one or more values for an SSM document.
  """
  @spec update_document(map(), update_document_request(), list()) ::
          {:ok, update_document_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_document_errors()}
  def update_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDocument", input, options)
  end

  @doc """
  Set the default version of a document.

  If you change a document version for a State Manager association, Systems
  Manager immediately runs
  the association unless you previously specifed the `apply-only-at-cron-interval`
  parameter.
  """
  @spec update_document_default_version(map(), update_document_default_version_request(), list()) ::
          {:ok, update_document_default_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_document_default_version_errors()}
  def update_document_default_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDocumentDefaultVersion", input, options)
  end

  @doc """
  Updates information related to approval reviews for a specific version of a
  change template
  in Change Manager.
  """
  @spec update_document_metadata(map(), update_document_metadata_request(), list()) ::
          {:ok, update_document_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_document_metadata_errors()}
  def update_document_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDocumentMetadata", input, options)
  end

  @doc """
  Updates an existing maintenance window.

  Only specified parameters are modified.

  The value you specify for `Duration` determines the specific end time for the
  maintenance window based on the time it begins. No maintenance window tasks are
  permitted to
  start after the resulting endtime minus the number of hours you specify for
  `Cutoff`.
  For example, if the maintenance window starts at 3 PM, the duration is three
  hours, and the
  value you specify for `Cutoff` is one hour, no maintenance window tasks can
  start
  after 5 PM.
  """
  @spec update_maintenance_window(map(), update_maintenance_window_request(), list()) ::
          {:ok, update_maintenance_window_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_maintenance_window_errors()}
  def update_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMaintenanceWindow", input, options)
  end

  @doc """
  Modifies the target of an existing maintenance window.

  You
  can change the following:

    *
  Name

    *
  Description

    *
  Owner

    *
  IDs for an ID target

    *
  Tags for a Tag target

    *
  From any supported tag type to another. The three supported tag types are ID
  target, Tag
  target, and resource group. For more information, see `Target`.

  If a parameter is null, then the corresponding field isn't modified.
  """
  @spec update_maintenance_window_target(
          map(),
          update_maintenance_window_target_request(),
          list()
        ) ::
          {:ok, update_maintenance_window_target_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_maintenance_window_target_errors()}
  def update_maintenance_window_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMaintenanceWindowTarget", input, options)
  end

  @doc """
  Modifies a task assigned to a maintenance window.

  You can't change the task type, but you
  can change the following values:

    *

  `TaskARN`. For example, you can change a `RUN_COMMAND` task from
  `AWS-RunPowerShellScript` to `AWS-RunShellScript`.

    *

  `ServiceRoleArn`

    *

  `TaskInvocationParameters`

    *

  `Priority`

    *

  `MaxConcurrency`

    *

  `MaxErrors`

  One or more targets must be specified for maintenance window Run Command-type
  tasks.
  Depending on the task, targets are optional for other maintenance window task
  types (Automation,
  Lambda, and Step Functions). For more information about running tasks
  that don't specify targets, see [Registering maintenance window tasks without
  targets](https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.

  If the value for a parameter in `UpdateMaintenanceWindowTask` is null, then the
  corresponding field isn't modified. If you set `Replace` to true, then all
  fields
  required by the `RegisterTaskWithMaintenanceWindow` operation are required for
  this request. Optional fields that aren't specified are set to null.

  When you update a maintenance window task that has options specified in
  `TaskInvocationParameters`, you must provide again all the
  `TaskInvocationParameters` values that you want to retain. The values you don't
  specify again are removed. For example, suppose that when you registered a Run
  Command task, you
  specified `TaskInvocationParameters` values for `Comment`,
  `NotificationConfig`, and `OutputS3BucketName`. If you update the
  maintenance window task and specify only a different `OutputS3BucketName` value,
  the
  values for `Comment` and `NotificationConfig` are removed.
  """
  @spec update_maintenance_window_task(map(), update_maintenance_window_task_request(), list()) ::
          {:ok, update_maintenance_window_task_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_maintenance_window_task_errors()}
  def update_maintenance_window_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMaintenanceWindowTask", input, options)
  end

  @doc """
  Changes the Identity and Access Management (IAM) role that is assigned to the
  on-premises server, edge device, or virtual machines (VM).

  IAM roles are first
  assigned to these hybrid nodes during the activation process. For more
  information, see `CreateActivation`.
  """
  @spec update_managed_instance_role(map(), update_managed_instance_role_request(), list()) ::
          {:ok, update_managed_instance_role_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_managed_instance_role_errors()}
  def update_managed_instance_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateManagedInstanceRole", input, options)
  end

  @doc """
  Edit or change an OpsItem.

  You must have permission in Identity and Access Management (IAM) to update an
  OpsItem. For more information, see [Set up OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.

  Operations engineers and IT professionals use Amazon Web Services Systems
  Manager OpsCenter to view, investigate, and
  remediate operational issues impacting the performance and health of their
  Amazon Web Services resources. For
  more information, see [Amazon Web Services Systems Manager OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.
  """
  @spec update_ops_item(map(), update_ops_item_request(), list()) ::
          {:ok, update_ops_item_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ops_item_errors()}
  def update_ops_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateOpsItem", input, options)
  end

  @doc """
  Amazon Web Services Systems Manager calls this API operation when you edit
  OpsMetadata in Application Manager.
  """
  @spec update_ops_metadata(map(), update_ops_metadata_request(), list()) ::
          {:ok, update_ops_metadata_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ops_metadata_errors()}
  def update_ops_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateOpsMetadata", input, options)
  end

  @doc """
  Modifies an existing patch baseline.

  Fields not specified in the request are left
  unchanged.

  For information about valid key-value pairs in `PatchFilters` for each supported
  operating system type, see `PatchFilter`.
  """
  @spec update_patch_baseline(map(), update_patch_baseline_request(), list()) ::
          {:ok, update_patch_baseline_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_patch_baseline_errors()}
  def update_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePatchBaseline", input, options)
  end

  @doc """
  Update a resource data sync.

  After you create a resource data sync for a Region, you can't
  change the account options for that sync. For example, if you create a sync in
  the us-east-2
  (Ohio) Region and you choose the `Include only the current account` option, you
  can't
  edit that sync later and choose the

  ```
  Include all accounts from my Organizations
  configuration
  ```

  option. Instead, you must delete the first resource data sync, and create a
  new one.

  This API operation only supports a resource data sync that was created with a
  SyncFromSource `SyncType`.
  """
  @spec update_resource_data_sync(map(), update_resource_data_sync_request(), list()) ::
          {:ok, update_resource_data_sync_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resource_data_sync_errors()}
  def update_resource_data_sync(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateResourceDataSync", input, options)
  end

  @doc """

  `ServiceSetting` is an account-level setting for an Amazon Web Services service.

  This setting
  defines how a user interacts with or uses a service or a feature of a service.
  For example, if an
  Amazon Web Services service charges money to the account based on feature or
  service usage, then the Amazon Web Services
  service team might create a default setting of "false". This means the user
  can't use this
  feature unless they change the setting to "true" and intentionally opt in for a
  paid
  feature.

  Services map a `SettingId` object to a setting value. Amazon Web Services
  services teams define
  the default value for a `SettingId`. You can't create a new `SettingId`,
  but you can overwrite the default value if you have the
  `ssm:UpdateServiceSetting`
  permission for the setting. Use the `GetServiceSetting` API operation to view
  the
  current value. Or, use the `ResetServiceSetting` to change the value back to the
  original value defined by the Amazon Web Services service team.

  Update the service setting for the account.
  """
  @spec update_service_setting(map(), update_service_setting_request(), list()) ::
          {:ok, update_service_setting_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_setting_errors()}
  def update_service_setting(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceSetting", input, options)
  end
end
