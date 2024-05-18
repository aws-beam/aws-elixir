# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudFormation do
  @moduledoc """
  CloudFormation

  CloudFormation allows you to create and manage Amazon Web Services
  infrastructure deployments predictably and
  repeatedly.

  You can use CloudFormation to leverage Amazon Web Services products, such as
  Amazon Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple
  Notification Service, Elastic Load Balancing, and Auto Scaling to build highly
  reliable, highly
  scalable, cost-effective applications without creating or configuring the
  underlying Amazon Web Services
  infrastructure.

  With CloudFormation, you declare all your resources and dependencies in a
  template file. The template defines a
  collection of resources as a single unit called a stack. CloudFormation creates
  and deletes all member resources of the stack
  together and manages all dependencies between the resources for you.

  For more information about CloudFormation, see the [CloudFormation product page](http://aws.amazon.com/cloudformation/).

  CloudFormation makes use of other Amazon Web Services products. If you need
  additional technical information about a
  specific Amazon Web Services product, you can find the product's technical
  documentation at [docs.aws.amazon.com](https://docs.aws.amazon.com/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      describe_stack_resource_drifts_output() :: %{
        "NextToken" => String.t(),
        "StackResourceDrifts" => list(stack_resource_drift()())
      }
      
  """
  @type describe_stack_resource_drifts_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stale_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type stale_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generated_template_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type generated_template_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_publisher_input() :: %{
        optional("AcceptTermsAndConditions") => boolean(),
        optional("ConnectionArn") => String.t()
      }
      
  """
  @type register_publisher_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_resources_output() :: %{
        "NextToken" => String.t(),
        "StackResourceSummaries" => list(stack_resource_summary()())
      }
      
  """
  @type list_stack_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_stack_policy_input() :: %{
        optional("StackPolicyBody") => String.t(),
        optional("StackPolicyURL") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type set_stack_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stack_policy_input() :: %{
        required("StackName") => String.t()
      }
      
  """
  @type get_stack_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_type_input() :: %{
        optional("AutoUpdate") => boolean(),
        optional("ExecutionRoleArn") => String.t(),
        optional("LoggingConfig") => logging_config(),
        optional("MajorVersion") => float(),
        optional("PublicTypeArn") => String.t(),
        optional("PublisherId") => String.t(),
        optional("Type") => list(any()),
        optional("TypeName") => String.t(),
        optional("TypeNameAlias") => String.t(),
        optional("VersionBump") => list(any())
      }
      
  """
  @type activate_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_resource_summary() :: %{
        "DriftInformation" => stack_resource_drift_information_summary(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "LogicalResourceId" => String.t(),
        "ModuleInfo" => module_info(),
        "PhysicalResourceId" => String.t(),
        "ResourceStatus" => list(any()),
        "ResourceStatusReason" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type stack_resource_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_scan_resources_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceIdentifier") => String.t(),
        optional("ResourceTypePrefix") => String.t(),
        optional("TagKey") => String.t(),
        optional("TagValue") => String.t(),
        required("ResourceScanId") => String.t()
      }
      
  """
  @type list_resource_scan_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_update_stack_input() :: %{
        optional("ClientRequestToken") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type cancel_update_stack_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_generated_template_input() :: %{
        optional("AddResources") => list(resource_definition()()),
        optional("NewGeneratedTemplateName") => String.t(),
        optional("RefreshAllResources") => boolean(),
        optional("RemoveResources") => list(String.t()()),
        optional("TemplateConfiguration") => template_configuration(),
        required("GeneratedTemplateName") => String.t()
      }
      
  """
  @type update_generated_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rollback_stack_input() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("RetainExceptOnCreate") => boolean(),
        optional("RoleARN") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type rollback_stack_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_type_input() :: %{
        optional("Arn") => String.t(),
        optional("LogDeliveryBucket") => String.t(),
        optional("Type") => list(any()),
        optional("TypeName") => String.t(),
        optional("VersionId") => String.t()
      }
      
  """
  @type test_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_set_operation_input() :: %{
        optional("CallAs") => list(any()),
        required("OperationId") => String.t(),
        required("StackSetName") => String.t()
      }
      
  """
  @type describe_stack_set_operation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      property_difference() :: %{
        "ActualValue" => String.t(),
        "DifferenceType" => list(any()),
        "ExpectedValue" => String.t(),
        "PropertyPath" => String.t()
      }
      
  """
  @type property_difference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      change() :: %{
        "HookInvocationCount" => integer(),
        "ResourceChange" => resource_change(),
        "Type" => list(any())
      }
      
  """
  @type change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_set_operation_summary() :: %{
        "Action" => list(any()),
        "CreationTimestamp" => non_neg_integer(),
        "EndTimestamp" => non_neg_integer(),
        "OperationId" => String.t(),
        "OperationPreferences" => stack_set_operation_preferences(),
        "Status" => list(any()),
        "StatusDetails" => stack_set_operation_status_details(),
        "StatusReason" => String.t()
      }
      
  """
  @type stack_set_operation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_resources_input() :: %{
        optional("LogicalResourceId") => String.t(),
        optional("PhysicalResourceId") => String.t(),
        optional("StackName") => String.t()
      }
      
  """
  @type describe_stack_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stack_instances_input() :: %{
        optional("Accounts") => list(String.t()()),
        optional("CallAs") => list(any()),
        optional("DeploymentTargets") => deployment_targets(),
        optional("OperationId") => String.t(),
        optional("OperationPreferences") => stack_set_operation_preferences(),
        required("Regions") => list(String.t()()),
        required("RetainStacks") => boolean(),
        required("StackSetName") => String.t()
      }
      
  """
  @type delete_stack_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stacks_output() :: %{
        "NextToken" => String.t(),
        "StackSummaries" => list(stack_summary()())
      }
      
  """
  @type list_stacks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_generated_template_input() :: %{
        required("GeneratedTemplateName") => String.t()
      }
      
  """
  @type delete_generated_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_imports_input() :: %{
        optional("NextToken") => String.t(),
        required("ExportName") => String.t()
      }
      
  """
  @type list_imports_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stack_set_input() :: %{
        optional("Accounts") => list(String.t()()),
        optional("AdministrationRoleARN") => String.t(),
        optional("AutoDeployment") => auto_deployment(),
        optional("CallAs") => list(any()),
        optional("Capabilities") => list(list(any())()),
        optional("DeploymentTargets") => deployment_targets(),
        optional("Description") => String.t(),
        optional("ExecutionRoleName") => String.t(),
        optional("ManagedExecution") => managed_execution(),
        optional("OperationId") => String.t(),
        optional("OperationPreferences") => stack_set_operation_preferences(),
        optional("Parameters") => list(parameter()()),
        optional("PermissionModel") => list(any()),
        optional("Regions") => list(String.t()()),
        optional("Tags") => list(tag()()),
        optional("TemplateBody") => String.t(),
        optional("TemplateURL") => String.t(),
        optional("UsePreviousTemplate") => boolean(),
        required("StackSetName") => String.t()
      }
      
  """
  @type update_stack_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_instance_resource_drifts_input() :: %{
        optional("CallAs") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StackInstanceResourceDriftStatuses") => list(list(any())()),
        required("OperationId") => String.t(),
        required("StackInstanceAccount") => String.t(),
        required("StackInstanceRegion") => String.t(),
        required("StackSetName") => String.t()
      }
      
  """
  @type list_stack_instance_resource_drifts_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_constraints() :: %{
        "AllowedValues" => list(String.t()())
      }
      
  """
  @type parameter_constraints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_set_operation_status_details() :: %{
        "FailedStackInstancesCount" => integer()
      }
      
  """
  @type stack_set_operation_status_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_gate_result() :: %{
        "Status" => list(any()),
        "StatusReason" => String.t()
      }
      
  """
  @type account_gate_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_change_set_output() :: %{}
      
  """
  @type delete_change_set_output() :: %{}

  @typedoc """

  ## Example:
      
      stack_event() :: %{
        "ClientRequestToken" => String.t(),
        "DetailedStatus" => list(any()),
        "EventId" => String.t(),
        "HookFailureMode" => list(any()),
        "HookInvocationPoint" => list(any()),
        "HookStatus" => list(any()),
        "HookStatusReason" => String.t(),
        "HookType" => String.t(),
        "LogicalResourceId" => String.t(),
        "PhysicalResourceId" => String.t(),
        "ResourceProperties" => String.t(),
        "ResourceStatus" => list(any()),
        "ResourceStatusReason" => String.t(),
        "ResourceType" => String.t(),
        "StackId" => String.t(),
        "StackName" => String.t(),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type stack_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      physical_resource_id_context_key_value_pair() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type physical_resource_id_context_key_value_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_template_output() :: %{
        "StagesAvailable" => list(list(any())()),
        "TemplateBody" => String.t()
      }
      
  """
  @type get_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_definition() :: %{
        "LogicalResourceId" => String.t(),
        "ResourceIdentifier" => map(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_to_import() :: %{
        "LogicalResourceId" => String.t(),
        "ResourceIdentifier" => map(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_to_import() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_drift_detection_status_input() :: %{
        required("StackDriftDetectionId") => String.t()
      }
      
  """
  @type describe_stack_drift_detection_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stack_output() :: %{
        "StackId" => String.t()
      }
      
  """
  @type update_stack_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_parameter() :: %{
        "DefaultValue" => String.t(),
        "Description" => String.t(),
        "NoEcho" => boolean(),
        "ParameterKey" => String.t()
      }
      
  """
  @type template_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_generated_templates_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_generated_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scanned_resource_identifier() :: %{
        "ResourceIdentifier" => map(),
        "ResourceType" => String.t()
      }
      
  """
  @type scanned_resource_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      type_version_summary() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "IsDefaultVersion" => boolean(),
        "PublicVersionNumber" => String.t(),
        "TimeCreated" => non_neg_integer(),
        "Type" => list(any()),
        "TypeName" => String.t(),
        "VersionId" => String.t()
      }
      
  """
  @type type_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      warnings() :: %{
        "UnrecognizedResourceTypes" => list(String.t()())
      }
      
  """
  @type warnings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_resources_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_resources_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_execution() :: %{
        "Active" => boolean()
      }
      
  """
  @type managed_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_change_set_hooks_output() :: %{
        "ChangeSetId" => String.t(),
        "ChangeSetName" => String.t(),
        "Hooks" => list(change_set_hook()()),
        "NextToken" => String.t(),
        "StackId" => String.t(),
        "StackName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type describe_change_set_hooks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_instance_input() :: %{
        optional("CallAs") => list(any()),
        required("StackInstanceAccount") => String.t(),
        required("StackInstanceRegion") => String.t(),
        required("StackSetName") => String.t()
      }
      
  """
  @type describe_stack_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_operation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_template_summary_input() :: %{
        optional("CallAs") => list(any()),
        optional("StackName") => String.t(),
        optional("StackSetName") => String.t(),
        optional("TemplateBody") => String.t(),
        optional("TemplateSummaryConfig") => template_summary_config(),
        optional("TemplateURL") => String.t()
      }
      
  """
  @type get_template_summary_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_target_definition() :: %{
        "AfterValue" => String.t(),
        "Attribute" => list(any()),
        "AttributeChangeType" => list(any()),
        "BeforeValue" => String.t(),
        "Name" => String.t(),
        "Path" => String.t(),
        "RequiresRecreation" => list(any())
      }
      
  """
  @type resource_target_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_publisher_output() :: %{
        "PublisherId" => String.t()
      }
      
  """
  @type register_publisher_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_set_operation_results_input() :: %{
        optional("CallAs") => list(any()),
        optional("Filters") => list(operation_result_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OperationId") => String.t(),
        required("StackSetName") => String.t()
      }
      
  """
  @type list_stack_set_operation_results_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_stack_resource_drift_input() :: %{
        required("LogicalResourceId") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type detect_stack_resource_drift_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_resource_detail() :: %{
        "Description" => String.t(),
        "DriftInformation" => stack_resource_drift_information(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "LogicalResourceId" => String.t(),
        "Metadata" => String.t(),
        "ModuleInfo" => module_info(),
        "PhysicalResourceId" => String.t(),
        "ResourceStatus" => list(any()),
        "ResourceStatusReason" => String.t(),
        "ResourceType" => String.t(),
        "StackId" => String.t(),
        "StackName" => String.t()
      }
      
  """
  @type stack_resource_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_instance_summary() :: %{
        "Account" => String.t(),
        "DriftStatus" => list(any()),
        "LastDriftCheckTimestamp" => non_neg_integer(),
        "LastOperationId" => String.t(),
        "OrganizationalUnitId" => String.t(),
        "Region" => String.t(),
        "StackId" => String.t(),
        "StackInstanceStatus" => stack_instance_comprehensive_status(),
        "StackSetId" => String.t(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }
      
  """
  @type stack_instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_termination_protection_input() :: %{
        required("EnableTerminationProtection") => boolean(),
        required("StackName") => String.t()
      }
      
  """
  @type update_termination_protection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stack_instances_output() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type delete_stack_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_instance_comprehensive_status() :: %{
        "DetailedStatus" => list(any())
      }
      
  """
  @type stack_instance_comprehensive_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_set_output() :: %{
        "StackSet" => stack_set()
      }
      
  """
  @type describe_stack_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_publisher_input() :: %{
        optional("PublisherId") => String.t()
      }
      
  """
  @type describe_publisher_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging_config() :: %{
        "LogGroupName" => String.t(),
        "LogRoleArn" => String.t()
      }
      
  """
  @type logging_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      name_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type name_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_resource_drifts_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StackResourceDriftStatusFilters") => list(list(any())()),
        required("StackName") => String.t()
      }
      
  """
  @type describe_stack_resource_drifts_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scanned_resource() :: %{
        "ManagedByStack" => boolean(),
        "ResourceIdentifier" => map(),
        "ResourceType" => String.t()
      }
      
  """
  @type scanned_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      warning_property() :: %{
        "Description" => String.t(),
        "PropertyPath" => String.t(),
        "Required" => boolean()
      }
      
  """
  @type warning_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_scans_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_resource_scans_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_scan_output() :: %{
        "EndTime" => non_neg_integer(),
        "PercentageCompleted" => float(),
        "ResourceScanId" => String.t(),
        "ResourceTypes" => list(String.t()()),
        "ResourcesRead" => integer(),
        "ResourcesScanned" => integer(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }
      
  """
  @type describe_resource_scan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stack_set_input() :: %{
        optional("CallAs") => list(any()),
        required("StackSetName") => String.t()
      }
      
  """
  @type delete_stack_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type operation_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_set_operation_result_summary() :: %{
        "Account" => String.t(),
        "AccountGateResult" => account_gate_result(),
        "OrganizationalUnitId" => String.t(),
        "Region" => String.t(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }
      
  """
  @type stack_set_operation_result_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_instance() :: %{
        "Account" => String.t(),
        "DriftStatus" => list(any()),
        "LastDriftCheckTimestamp" => non_neg_integer(),
        "LastOperationId" => String.t(),
        "OrganizationalUnitId" => String.t(),
        "ParameterOverrides" => list(parameter()()),
        "Region" => String.t(),
        "StackId" => String.t(),
        "StackInstanceStatus" => stack_instance_comprehensive_status(),
        "StackSetId" => String.t(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }
      
  """
  @type stack_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_type_versions_output() :: %{
        "NextToken" => String.t(),
        "TypeVersionSummaries" => list(type_version_summary()())
      }
      
  """
  @type list_type_versions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_events_output() :: %{
        "NextToken" => String.t(),
        "StackEvents" => list(stack_event()())
      }
      
  """
  @type describe_stack_events_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      type_summary() :: %{
        "DefaultVersionId" => String.t(),
        "Description" => String.t(),
        "IsActivated" => boolean(),
        "LastUpdated" => non_neg_integer(),
        "LatestPublicVersion" => String.t(),
        "OriginalTypeName" => String.t(),
        "PublicVersionNumber" => String.t(),
        "PublisherId" => String.t(),
        "PublisherIdentity" => list(any()),
        "PublisherName" => String.t(),
        "Type" => list(any()),
        "TypeArn" => String.t(),
        "TypeName" => String.t()
      }
      
  """
  @type type_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_stacks_to_stack_set_input() :: %{
        optional("CallAs") => list(any()),
        optional("OperationId") => String.t(),
        optional("OperationPreferences") => stack_set_operation_preferences(),
        optional("OrganizationalUnitIds") => list(String.t()()),
        optional("StackIds") => list(String.t()()),
        optional("StackIdsUrl") => String.t(),
        required("StackSetName") => String.t()
      }
      
  """
  @type import_stacks_to_stack_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_stack_drift_output() :: %{
        "StackDriftDetectionId" => String.t()
      }
      
  """
  @type detect_stack_drift_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_type_registration_input() :: %{
        required("RegistrationToken") => String.t()
      }
      
  """
  @type describe_type_registration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_type_output() :: %{
        "TypeVersionArn" => String.t()
      }
      
  """
  @type test_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_type_registrations_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RegistrationStatusFilter") => list(any()),
        optional("Type") => list(any()),
        optional("TypeArn") => String.t(),
        optional("TypeName") => String.t()
      }
      
  """
  @type list_type_registrations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      created_but_modified_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type created_but_modified_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deactivate_type_output() :: %{}
      
  """
  @type deactivate_type_output() :: %{}

  @typedoc """

  ## Example:
      
      operation_status_check_failed_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type operation_status_check_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_stack_set_drift_output() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type detect_stack_set_drift_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deactivate_organizations_access_input() :: %{}
      
  """
  @type deactivate_organizations_access_input() :: %{}

  @typedoc """

  ## Example:
      
      execute_change_set_output() :: %{}
      
  """
  @type execute_change_set_output() :: %{}

  @typedoc """

  ## Example:
      
      create_stack_output() :: %{
        "StackId" => String.t()
      }
      
  """
  @type create_stack_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack() :: %{
        "Capabilities" => list(list(any())()),
        "ChangeSetId" => String.t(),
        "CreationTime" => non_neg_integer(),
        "DeletionTime" => non_neg_integer(),
        "Description" => String.t(),
        "DetailedStatus" => list(any()),
        "DisableRollback" => boolean(),
        "DriftInformation" => stack_drift_information(),
        "EnableTerminationProtection" => boolean(),
        "LastUpdatedTime" => non_neg_integer(),
        "NotificationARNs" => list(String.t()()),
        "Outputs" => list(output()()),
        "Parameters" => list(parameter()()),
        "ParentId" => String.t(),
        "RetainExceptOnCreate" => boolean(),
        "RoleARN" => String.t(),
        "RollbackConfiguration" => rollback_configuration(),
        "RootId" => String.t(),
        "StackId" => String.t(),
        "StackName" => String.t(),
        "StackStatus" => list(any()),
        "StackStatusReason" => String.t(),
        "Tags" => list(tag()()),
        "TimeoutInMinutes" => integer()
      }
      
  """
  @type stack() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_set_auto_deployment_target_summary() :: %{
        "OrganizationalUnitId" => String.t(),
        "Regions" => list(String.t()())
      }
      
  """
  @type stack_set_auto_deployment_target_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_type_default_version_input() :: %{
        optional("Arn") => String.t(),
        optional("Type") => list(any()),
        optional("TypeName") => String.t(),
        optional("VersionId") => String.t()
      }
      
  """
  @type set_type_default_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_generated_template_output() :: %{
        "CreationTime" => non_neg_integer(),
        "GeneratedTemplateId" => String.t(),
        "GeneratedTemplateName" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "Progress" => template_progress(),
        "Resources" => list(resource_detail()()),
        "StackId" => String.t(),
        "Status" => list(any()),
        "StatusReason" => String.t(),
        "TemplateConfiguration" => template_configuration(),
        "TotalWarnings" => integer()
      }
      
  """
  @type describe_generated_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_scan_related_resources_output() :: %{
        "NextToken" => String.t(),
        "RelatedResources" => list(scanned_resource()())
      }
      
  """
  @type list_resource_scan_related_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_describe_type_configurations_output() :: %{
        "Errors" => list(batch_describe_type_configurations_error()()),
        "TypeConfigurations" => list(type_configuration_details()()),
        "UnprocessedTypeConfigurations" => list(type_configuration_identifier()())
      }
      
  """
  @type batch_describe_type_configurations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_sets_input() :: %{
        optional("CallAs") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_stack_sets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signal_resource_input() :: %{
        required("LogicalResourceId") => String.t(),
        required("StackName") => String.t(),
        required("Status") => list(any()),
        required("UniqueId") => String.t()
      }
      
  """
  @type signal_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stacks_input() :: %{
        optional("NextToken") => String.t(),
        optional("StackStatusFilter") => list(list(any())())
      }
      
  """
  @type list_stacks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_drift_information() :: %{
        "LastCheckTimestamp" => non_neg_integer(),
        "StackDriftStatus" => list(any())
      }
      
  """
  @type stack_drift_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      change_set_hook_target_details() :: %{
        "ResourceTargetDetails" => change_set_hook_resource_target_details(),
        "TargetType" => list(any())
      }
      
  """
  @type change_set_hook_target_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_set_operations_input() :: %{
        optional("CallAs") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("StackSetName") => String.t()
      }
      
  """
  @type list_stack_set_operations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_summary_config() :: %{
        "TreatUnrecognizedResourceTypesAsWarnings" => boolean()
      }
      
  """
  @type template_summary_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_type_registrations_output() :: %{
        "NextToken" => String.t(),
        "RegistrationTokenList" => list(String.t()())
      }
      
  """
  @type list_type_registrations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "DeletionTime" => non_neg_integer(),
        "DriftInformation" => stack_drift_information_summary(),
        "LastUpdatedTime" => non_neg_integer(),
        "ParentId" => String.t(),
        "RootId" => String.t(),
        "StackId" => String.t(),
        "StackName" => String.t(),
        "StackStatus" => list(any()),
        "StackStatusReason" => String.t(),
        "TemplateDescription" => String.t()
      }
      
  """
  @type stack_summary() :: %{String.t() => any()}

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
      
      operation_in_progress_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type operation_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_resources_input() :: %{
        optional("NextToken") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type list_stack_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_change_set_input() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("DisableRollback") => boolean(),
        optional("RetainExceptOnCreate") => boolean(),
        optional("StackName") => String.t(),
        required("ChangeSetName") => String.t()
      }
      
  """
  @type execute_change_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_change_set_input() :: %{
        optional("StackName") => String.t(),
        required("ChangeSetName") => String.t()
      }
      
  """
  @type delete_change_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      type_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type type_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_type_configuration_input() :: %{
        optional("ConfigurationAlias") => String.t(),
        optional("Type") => list(any()),
        optional("TypeArn") => String.t(),
        optional("TypeName") => String.t(),
        required("Configuration") => String.t()
      }
      
  """
  @type set_type_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_generated_template_input() :: %{
        optional("Resources") => list(resource_definition()()),
        optional("StackName") => String.t(),
        optional("TemplateConfiguration") => template_configuration(),
        required("GeneratedTemplateName") => String.t()
      }
      
  """
  @type create_generated_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_publisher_output() :: %{
        "IdentityProvider" => list(any()),
        "PublisherId" => String.t(),
        "PublisherProfile" => String.t(),
        "PublisherStatus" => list(any())
      }
      
  """
  @type describe_publisher_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_set_input() :: %{
        optional("CallAs") => list(any()),
        required("StackSetName") => String.t()
      }
      
  """
  @type describe_stack_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_type_output() :: %{
        "Arn" => String.t()
      }
      
  """
  @type activate_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_type_input() :: %{
        optional("Arn") => String.t(),
        optional("PublicVersionNumber") => String.t(),
        optional("Type") => list(any()),
        optional("TypeName") => String.t()
      }
      
  """
  @type publish_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_capabilities_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type insufficient_capabilities_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "GeneratedTemplateId" => String.t(),
        "GeneratedTemplateName" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "NumberOfResources" => integer(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }
      
  """
  @type template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      change_set_hook_resource_target_details() :: %{
        "LogicalResourceId" => String.t(),
        "ResourceAction" => list(any()),
        "ResourceType" => String.t()
      }
      
  """
  @type change_set_hook_resource_target_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_change_set_input() :: %{
        optional("Capabilities") => list(list(any())()),
        optional("ChangeSetType") => list(any()),
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("ImportExistingResources") => boolean(),
        optional("IncludeNestedStacks") => boolean(),
        optional("NotificationARNs") => list(String.t()()),
        optional("OnStackFailure") => list(any()),
        optional("Parameters") => list(parameter()()),
        optional("ResourceTypes") => list(String.t()()),
        optional("ResourcesToImport") => list(resource_to_import()()),
        optional("RoleARN") => String.t(),
        optional("RollbackConfiguration") => rollback_configuration(),
        optional("Tags") => list(tag()()),
        optional("TemplateBody") => String.t(),
        optional("TemplateURL") => String.t(),
        optional("UsePreviousTemplate") => boolean(),
        required("ChangeSetName") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type create_change_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stack_instances_input() :: %{
        optional("Accounts") => list(String.t()()),
        optional("CallAs") => list(any()),
        optional("DeploymentTargets") => deployment_targets(),
        optional("OperationId") => String.t(),
        optional("OperationPreferences") => stack_set_operation_preferences(),
        optional("ParameterOverrides") => list(parameter()()),
        required("Regions") => list(String.t()()),
        required("StackSetName") => String.t()
      }
      
  """
  @type create_stack_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      estimate_template_cost_output() :: %{
        "Url" => String.t()
      }
      
  """
  @type estimate_template_cost_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_change_set_status_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_change_set_status_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_identifier_summary() :: %{
        "LogicalResourceIds" => list(String.t()()),
        "ResourceIdentifiers" => list(String.t()()),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_identifier_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_stacks_to_stack_set_output() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type import_stacks_to_stack_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type stack_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter() :: %{
        "ParameterKey" => String.t(),
        "ParameterValue" => String.t(),
        "ResolvedValue" => String.t(),
        "UsePreviousValue" => boolean()
      }
      
  """
  @type parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_set_not_empty_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type stack_set_not_empty_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_template_input() :: %{
        optional("TemplateBody") => String.t(),
        optional("TemplateURL") => String.t()
      }
      
  """
  @type validate_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_set_operation_preferences() :: %{
        "ConcurrencyMode" => list(any()),
        "FailureToleranceCount" => integer(),
        "FailureTolerancePercentage" => integer(),
        "MaxConcurrentCount" => integer(),
        "MaxConcurrentPercentage" => integer(),
        "RegionConcurrencyType" => list(any()),
        "RegionOrder" => list(String.t()())
      }
      
  """
  @type stack_set_operation_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_state_transition_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_state_transition_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_instance_resource_drifts_summary() :: %{
        "LogicalResourceId" => String.t(),
        "PhysicalResourceId" => String.t(),
        "PhysicalResourceIdContext" => list(physical_resource_id_context_key_value_pair()()),
        "PropertyDifferences" => list(property_difference()()),
        "ResourceType" => String.t(),
        "StackId" => String.t(),
        "StackResourceDriftStatus" => list(any()),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type stack_instance_resource_drifts_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      type_configuration_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type type_configuration_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stack_set_output() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_stack_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_limit() :: %{
        "Name" => String.t(),
        "Value" => integer()
      }
      
  """
  @type account_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_scan_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_scan_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_organizations_access_input() :: %{}
      
  """
  @type activate_organizations_access_input() :: %{}

  @typedoc """

  ## Example:
      
      stop_stack_set_operation_input() :: %{
        optional("CallAs") => list(any()),
        required("OperationId") => String.t(),
        required("StackSetName") => String.t()
      }
      
  """
  @type stop_stack_set_operation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_template_output() :: %{
        "Capabilities" => list(list(any())()),
        "CapabilitiesReason" => String.t(),
        "DeclaredTransforms" => list(String.t()()),
        "Description" => String.t(),
        "Parameters" => list(template_parameter()())
      }
      
  """
  @type validate_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_instance_output() :: %{
        "StackInstance" => stack_instance()
      }
      
  """
  @type describe_stack_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stack_input() :: %{
        optional("Capabilities") => list(list(any())()),
        optional("ClientRequestToken") => String.t(),
        optional("DisableRollback") => boolean(),
        optional("NotificationARNs") => list(String.t()()),
        optional("Parameters") => list(parameter()()),
        optional("ResourceTypes") => list(String.t()()),
        optional("RetainExceptOnCreate") => boolean(),
        optional("RoleARN") => String.t(),
        optional("RollbackConfiguration") => rollback_configuration(),
        optional("StackPolicyBody") => String.t(),
        optional("StackPolicyDuringUpdateBody") => String.t(),
        optional("StackPolicyDuringUpdateURL") => String.t(),
        optional("StackPolicyURL") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TemplateBody") => String.t(),
        optional("TemplateURL") => String.t(),
        optional("UsePreviousTemplate") => boolean(),
        required("StackName") => String.t()
      }
      
  """
  @type update_stack_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_scan_in_progress_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_scan_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_set_operations_output() :: %{
        "NextToken" => String.t(),
        "Summaries" => list(stack_set_operation_summary()())
      }
      
  """
  @type list_stack_set_operations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      estimate_template_cost_input() :: %{
        optional("Parameters") => list(parameter()()),
        optional("TemplateBody") => String.t(),
        optional("TemplateURL") => String.t()
      }
      
  """
  @type estimate_template_cost_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deactivate_type_input() :: %{
        optional("Arn") => String.t(),
        optional("Type") => list(any()),
        optional("TypeName") => String.t()
      }
      
  """
  @type deactivate_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rollback_stack_output() :: %{
        "StackId" => String.t()
      }
      
  """
  @type rollback_stack_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      type_configuration_details() :: %{
        "Alias" => String.t(),
        "Arn" => String.t(),
        "Configuration" => String.t(),
        "IsDefaultConfiguration" => boolean(),
        "LastUpdated" => non_neg_integer(),
        "TypeArn" => String.t(),
        "TypeName" => String.t()
      }
      
  """
  @type type_configuration_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_change_set_output() :: %{
        "Capabilities" => list(list(any())()),
        "ChangeSetId" => String.t(),
        "ChangeSetName" => String.t(),
        "Changes" => list(change()()),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "ExecutionStatus" => list(any()),
        "ImportExistingResources" => boolean(),
        "IncludeNestedStacks" => boolean(),
        "NextToken" => String.t(),
        "NotificationARNs" => list(String.t()()),
        "OnStackFailure" => list(any()),
        "Parameters" => list(parameter()()),
        "ParentChangeSetId" => String.t(),
        "RollbackConfiguration" => rollback_configuration(),
        "RootChangeSetId" => String.t(),
        "StackId" => String.t(),
        "StackName" => String.t(),
        "Status" => list(any()),
        "StatusReason" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type describe_change_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_resource_input() :: %{
        required("LogicalResourceId") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type describe_stack_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      required_activated_type() :: %{
        "OriginalTypeName" => String.t(),
        "PublisherId" => String.t(),
        "SupportedMajorVersions" => list(integer()()),
        "TypeNameAlias" => String.t()
      }
      
  """
  @type required_activated_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_generated_template_output() :: %{
        "GeneratedTemplateId" => String.t()
      }
      
  """
  @type update_generated_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_type_output() :: %{
        "Arn" => String.t(),
        "AutoUpdate" => boolean(),
        "ConfigurationSchema" => String.t(),
        "DefaultVersionId" => String.t(),
        "DeprecatedStatus" => list(any()),
        "Description" => String.t(),
        "DocumentationUrl" => String.t(),
        "ExecutionRoleArn" => String.t(),
        "IsActivated" => boolean(),
        "IsDefaultVersion" => boolean(),
        "LastUpdated" => non_neg_integer(),
        "LatestPublicVersion" => String.t(),
        "LoggingConfig" => logging_config(),
        "OriginalTypeArn" => String.t(),
        "OriginalTypeName" => String.t(),
        "ProvisioningType" => list(any()),
        "PublicVersionNumber" => String.t(),
        "PublisherId" => String.t(),
        "RequiredActivatedTypes" => list(required_activated_type()()),
        "Schema" => String.t(),
        "SourceUrl" => String.t(),
        "TimeCreated" => non_neg_integer(),
        "Type" => list(any()),
        "TypeName" => String.t(),
        "TypeTestsStatus" => list(any()),
        "TypeTestsStatusDescription" => String.t(),
        "Visibility" => list(any())
      }
      
  """
  @type describe_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_template_input() :: %{
        optional("ChangeSetName") => String.t(),
        optional("StackName") => String.t(),
        optional("TemplateStage") => list(any())
      }
      
  """
  @type get_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      module_info() :: %{
        "LogicalIdHierarchy" => String.t(),
        "TypeHierarchy" => String.t()
      }
      
  """
  @type module_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_set_drift_detection_details() :: %{
        "DriftDetectionStatus" => list(any()),
        "DriftStatus" => list(any()),
        "DriftedStackInstancesCount" => integer(),
        "FailedStackInstancesCount" => integer(),
        "InProgressStackInstancesCount" => integer(),
        "InSyncStackInstancesCount" => integer(),
        "LastDriftCheckTimestamp" => non_neg_integer(),
        "TotalStackInstancesCount" => integer()
      }
      
  """
  @type stack_set_drift_detection_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_limits_output() :: %{
        "AccountLimits" => list(account_limit()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_account_limits_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_scan_related_resources_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceScanId") => String.t(),
        required("Resources") => list(scanned_resource_identifier()())
      }
      
  """
  @type list_resource_scan_related_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      type_configuration_identifier() :: %{
        "Type" => list(any()),
        "TypeArn" => String.t(),
        "TypeConfigurationAlias" => String.t(),
        "TypeConfigurationArn" => String.t(),
        "TypeName" => String.t()
      }
      
  """
  @type type_configuration_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_types_input() :: %{
        optional("DeprecatedStatus") => list(any()),
        optional("Filters") => type_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProvisioningType") => list(any()),
        optional("Type") => list(any()),
        optional("Visibility") => list(any())
      }
      
  """
  @type list_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_resource_output() :: %{
        "StackResourceDetail" => stack_resource_detail()
      }
      
  """
  @type describe_stack_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_set_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type stack_set_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_drift_information_summary() :: %{
        "LastCheckTimestamp" => non_neg_integer(),
        "StackDriftStatus" => list(any())
      }
      
  """
  @type stack_drift_information_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organizations_access_output() :: %{
        "Status" => list(any())
      }
      
  """
  @type describe_organizations_access_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_generated_templates_output() :: %{
        "NextToken" => String.t(),
        "Summaries" => list(template_summary()())
      }
      
  """
  @type list_generated_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_stack_policy_output() :: %{
        "StackPolicyBody" => String.t()
      }
      
  """
  @type get_stack_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_events_input() :: %{
        optional("NextToken") => String.t(),
        optional("StackName") => String.t()
      }
      
  """
  @type describe_stack_events_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_declaration() :: %{
        "DefaultValue" => String.t(),
        "Description" => String.t(),
        "NoEcho" => boolean(),
        "ParameterConstraints" => parameter_constraints(),
        "ParameterKey" => String.t(),
        "ParameterType" => String.t()
      }
      
  """
  @type parameter_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_sets_output() :: %{
        "NextToken" => String.t(),
        "Summaries" => list(stack_set_summary()())
      }
      
  """
  @type list_stack_sets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_organizations_access_input() :: %{
        optional("CallAs") => list(any())
      }
      
  """
  @type describe_organizations_access_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_exports_input() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_exports_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_instance_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type stack_instance_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_type_versions_input() :: %{
        optional("Arn") => String.t(),
        optional("DeprecatedStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PublisherId") => String.t(),
        optional("Type") => list(any()),
        optional("TypeName") => String.t()
      }
      
  """
  @type list_type_versions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_scan_resources_output() :: %{
        "NextToken" => String.t(),
        "Resources" => list(scanned_resource()())
      }
      
  """
  @type list_resource_scan_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_exports_output() :: %{
        "Exports" => list(export()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_exports_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      type_filters() :: %{
        "Category" => list(any()),
        "PublisherId" => String.t(),
        "TypeNamePrefix" => String.t()
      }
      
  """
  @type type_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_generated_template_input() :: %{
        required("GeneratedTemplateName") => String.t()
      }
      
  """
  @type describe_generated_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_change_sets_output() :: %{
        "NextToken" => String.t(),
        "Summaries" => list(change_set_summary()())
      }
      
  """
  @type list_change_sets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stack_instances_output() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type create_stack_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_type_default_version_output() :: %{}
      
  """
  @type set_type_default_version_output() :: %{}

  @typedoc """

  ## Example:
      
      deregister_type_output() :: %{}
      
  """
  @type deregister_type_output() :: %{}

  @typedoc """

  ## Example:
      
      list_resource_scans_output() :: %{
        "NextToken" => String.t(),
        "ResourceScanSummaries" => list(resource_scan_summary()())
      }
      
  """
  @type list_resource_scans_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_type_output() :: %{
        "PublicTypeArn" => String.t()
      }
      
  """
  @type publish_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stack_set_output() :: %{
        "StackSetId" => String.t()
      }
      
  """
  @type create_stack_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_type_input() :: %{
        optional("Arn") => String.t(),
        optional("PublicVersionNumber") => String.t(),
        optional("PublisherId") => String.t(),
        optional("Type") => list(any()),
        optional("TypeName") => String.t(),
        optional("VersionId") => String.t()
      }
      
  """
  @type describe_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_resource_scan_output() :: %{
        "ResourceScanId" => String.t()
      }
      
  """
  @type start_resource_scan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_resource_drift_information() :: %{
        "LastCheckTimestamp" => non_neg_integer(),
        "StackResourceDriftStatus" => list(any())
      }
      
  """
  @type stack_resource_drift_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_change_set_input() :: %{
        optional("IncludePropertyValues") => boolean(),
        optional("NextToken") => String.t(),
        optional("StackName") => String.t(),
        required("ChangeSetName") => String.t()
      }
      
  """
  @type describe_change_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_describe_type_configurations_error() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "TypeConfigurationIdentifier" => type_configuration_identifier()
      }
      
  """
  @type batch_describe_type_configurations_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_stack_set_operation_output() :: %{}
      
  """
  @type stop_stack_set_operation_output() :: %{}

  @typedoc """

  ## Example:
      
      warning_detail() :: %{
        "Properties" => list(warning_property()()),
        "Type" => list(any())
      }
      
  """
  @type warning_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_resources_output() :: %{
        "StackResources" => list(stack_resource()())
      }
      
  """
  @type describe_stack_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_set_auto_deployment_targets_input() :: %{
        optional("CallAs") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("StackSetName") => String.t()
      }
      
  """
  @type list_stack_set_auto_deployment_targets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_resource_drift() :: %{
        "ActualProperties" => String.t(),
        "ExpectedProperties" => String.t(),
        "LogicalResourceId" => String.t(),
        "ModuleInfo" => module_info(),
        "PhysicalResourceId" => String.t(),
        "PhysicalResourceIdContext" => list(physical_resource_id_context_key_value_pair()()),
        "PropertyDifferences" => list(property_difference()()),
        "ResourceType" => String.t(),
        "StackId" => String.t(),
        "StackResourceDriftStatus" => list(any()),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type stack_resource_drift() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_stack_resource_drift_output() :: %{
        "StackResourceDrift" => stack_resource_drift()
      }
      
  """
  @type detect_stack_resource_drift_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stack_input() :: %{
        optional("Capabilities") => list(list(any())()),
        optional("ClientRequestToken") => String.t(),
        optional("DisableRollback") => boolean(),
        optional("EnableTerminationProtection") => boolean(),
        optional("NotificationARNs") => list(String.t()()),
        optional("OnFailure") => list(any()),
        optional("Parameters") => list(parameter()()),
        optional("ResourceTypes") => list(String.t()()),
        optional("RetainExceptOnCreate") => boolean(),
        optional("RoleARN") => String.t(),
        optional("RollbackConfiguration") => rollback_configuration(),
        optional("StackPolicyBody") => String.t(),
        optional("StackPolicyURL") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TemplateBody") => String.t(),
        optional("TemplateURL") => String.t(),
        optional("TimeoutInMinutes") => integer(),
        required("StackName") => String.t()
      }
      
  """
  @type create_stack_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_change_set_hooks_input() :: %{
        optional("LogicalResourceId") => String.t(),
        optional("NextToken") => String.t(),
        optional("StackName") => String.t(),
        required("ChangeSetName") => String.t()
      }
      
  """
  @type describe_change_set_hooks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      continue_update_rollback_output() :: %{}
      
  """
  @type continue_update_rollback_output() :: %{}

  @typedoc """

  ## Example:
      
      resource_scan_summary() :: %{
        "EndTime" => non_neg_integer(),
        "PercentageCompleted" => float(),
        "ResourceScanId" => String.t(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }
      
  """
  @type resource_scan_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      change_set_hook() :: %{
        "FailureMode" => list(any()),
        "InvocationPoint" => list(any()),
        "TargetDetails" => change_set_hook_target_details(),
        "TypeConfigurationVersionId" => String.t(),
        "TypeName" => String.t(),
        "TypeVersionId" => String.t()
      }
      
  """
  @type change_set_hook() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_resource_scan_input() :: %{
        required("ResourceScanId") => String.t()
      }
      
  """
  @type describe_resource_scan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_change_detail() :: %{
        "CausingEntity" => String.t(),
        "ChangeSource" => list(any()),
        "Evaluation" => list(any()),
        "Target" => resource_target_definition()
      }
      
  """
  @type resource_change_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_resource_scan_input() :: %{
        optional("ClientRequestToken") => String.t()
      }
      
  """
  @type start_resource_scan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_drift_detection_status_output() :: %{
        "DetectionStatus" => list(any()),
        "DetectionStatusReason" => String.t(),
        "DriftedStackResourceCount" => integer(),
        "StackDriftDetectionId" => String.t(),
        "StackDriftStatus" => list(any()),
        "StackId" => String.t(),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type describe_stack_drift_detection_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stacks_input() :: %{
        optional("NextToken") => String.t(),
        optional("StackName") => String.t()
      }
      
  """
  @type describe_stacks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_configuration() :: %{
        "DeletionPolicy" => list(any()),
        "UpdateReplacePolicy" => list(any())
      }
      
  """
  @type template_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_handler_progress_input() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("CurrentOperationStatus") => list(any()),
        optional("ErrorCode") => list(any()),
        optional("ResourceModel") => String.t(),
        optional("StatusMessage") => String.t(),
        required("BearerToken") => String.t(),
        required("OperationStatus") => list(any())
      }
      
  """
  @type record_handler_progress_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_termination_protection_output() :: %{
        "StackId" => String.t()
      }
      
  """
  @type update_termination_protection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      change_set_summary() :: %{
        "ChangeSetId" => String.t(),
        "ChangeSetName" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "ExecutionStatus" => list(any()),
        "ImportExistingResources" => boolean(),
        "IncludeNestedStacks" => boolean(),
        "ParentChangeSetId" => String.t(),
        "RootChangeSetId" => String.t(),
        "StackId" => String.t(),
        "StackName" => String.t(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }
      
  """
  @type change_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_set() :: %{
        "AdministrationRoleARN" => String.t(),
        "AutoDeployment" => auto_deployment(),
        "Capabilities" => list(list(any())()),
        "Description" => String.t(),
        "ExecutionRoleName" => String.t(),
        "ManagedExecution" => managed_execution(),
        "OrganizationalUnitIds" => list(String.t()()),
        "Parameters" => list(parameter()()),
        "PermissionModel" => list(any()),
        "Regions" => list(String.t()()),
        "StackSetARN" => String.t(),
        "StackSetDriftDetectionDetails" => stack_set_drift_detection_details(),
        "StackSetId" => String.t(),
        "StackSetName" => String.t(),
        "Status" => list(any()),
        "Tags" => list(tag()()),
        "TemplateBody" => String.t()
      }
      
  """
  @type stack_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_handler_progress_output() :: %{}
      
  """
  @type record_handler_progress_output() :: %{}

  @typedoc """

  ## Example:
      
      update_stack_instances_input() :: %{
        optional("Accounts") => list(String.t()()),
        optional("CallAs") => list(any()),
        optional("DeploymentTargets") => deployment_targets(),
        optional("OperationId") => String.t(),
        optional("OperationPreferences") => stack_set_operation_preferences(),
        optional("ParameterOverrides") => list(parameter()()),
        required("Regions") => list(String.t()()),
        required("StackSetName") => String.t()
      }
      
  """
  @type update_stack_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_generated_template_output() :: %{
        "GeneratedTemplateId" => String.t()
      }
      
  """
  @type create_generated_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_scan_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_scan_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_resource_drift_information_summary() :: %{
        "LastCheckTimestamp" => non_neg_integer(),
        "StackResourceDriftStatus" => list(any())
      }
      
  """
  @type stack_resource_drift_information_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_change_set_output() :: %{
        "Id" => String.t(),
        "StackId" => String.t()
      }
      
  """
  @type create_change_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_instances_input() :: %{
        optional("CallAs") => list(any()),
        optional("Filters") => list(stack_instance_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StackInstanceAccount") => String.t(),
        optional("StackInstanceRegion") => String.t(),
        required("StackSetName") => String.t()
      }
      
  """
  @type list_stack_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_limits_input() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_account_limits_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_type_input() :: %{
        optional("Arn") => String.t(),
        optional("Type") => list(any()),
        optional("TypeName") => String.t(),
        optional("VersionId") => String.t()
      }
      
  """
  @type deregister_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deactivate_organizations_access_output() :: %{}
      
  """
  @type deactivate_organizations_access_output() :: %{}

  @typedoc """

  ## Example:
      
      token_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type token_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_describe_type_configurations_input() :: %{
        required("TypeConfigurationIdentifiers") => list(type_configuration_identifier()())
      }
      
  """
  @type batch_describe_type_configurations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_types_output() :: %{
        "NextToken" => String.t(),
        "TypeSummaries" => list(type_summary()())
      }
      
  """
  @type list_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_type_configuration_output() :: %{
        "ConfigurationArn" => String.t()
      }
      
  """
  @type set_type_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_progress() :: %{
        "ResourcesFailed" => integer(),
        "ResourcesPending" => integer(),
        "ResourcesProcessing" => integer(),
        "ResourcesSucceeded" => integer()
      }
      
  """
  @type template_progress() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_template_summary_output() :: %{
        "Capabilities" => list(list(any())()),
        "CapabilitiesReason" => String.t(),
        "DeclaredTransforms" => list(String.t()()),
        "Description" => String.t(),
        "Metadata" => String.t(),
        "Parameters" => list(parameter_declaration()()),
        "ResourceIdentifierSummaries" => list(resource_identifier_summary()()),
        "ResourceTypes" => list(String.t()()),
        "Version" => String.t(),
        "Warnings" => warnings()
      }
      
  """
  @type get_template_summary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_set_summary() :: %{
        "AutoDeployment" => auto_deployment(),
        "Description" => String.t(),
        "DriftStatus" => list(any()),
        "LastDriftCheckTimestamp" => non_neg_integer(),
        "ManagedExecution" => managed_execution(),
        "PermissionModel" => list(any()),
        "StackSetId" => String.t(),
        "StackSetName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type stack_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_instance_filter() :: %{
        "Name" => list(any()),
        "Values" => String.t()
      }
      
  """
  @type stack_instance_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      continue_update_rollback_input() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("ResourcesToSkip") => list(String.t()()),
        optional("RoleARN") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type continue_update_rollback_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_id_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type operation_id_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_type_registration_output() :: %{
        "Description" => String.t(),
        "ProgressStatus" => list(any()),
        "TypeArn" => String.t(),
        "TypeVersionArn" => String.t()
      }
      
  """
  @type describe_type_registration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_organizations_access_output() :: %{}
      
  """
  @type activate_organizations_access_output() :: %{}

  @typedoc """

  ## Example:
      
      list_stack_instance_resource_drifts_output() :: %{
        "NextToken" => String.t(),
        "Summaries" => list(stack_instance_resource_drifts_summary()())
      }
      
  """
  @type list_stack_instance_resource_drifts_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rollback_configuration() :: %{
        "MonitoringTimeInMinutes" => integer(),
        "RollbackTriggers" => list(rollback_trigger()())
      }
      
  """
  @type rollback_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_change_sets_input() :: %{
        optional("NextToken") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type list_change_sets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rollback_trigger() :: %{
        "Arn" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type rollback_trigger() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_instances_output() :: %{
        "NextToken" => String.t(),
        "Summaries" => list(stack_instance_summary()())
      }
      
  """
  @type list_stack_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_stack_set_drift_input() :: %{
        optional("CallAs") => list(any()),
        optional("OperationId") => String.t(),
        optional("OperationPreferences") => stack_set_operation_preferences(),
        required("StackSetName") => String.t()
      }
      
  """
  @type detect_stack_set_drift_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_set_operation_results_output() :: %{
        "NextToken" => String.t(),
        "Summaries" => list(stack_set_operation_result_summary()())
      }
      
  """
  @type list_stack_set_operation_results_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_generated_template_output() :: %{
        "Status" => list(any()),
        "TemplateBody" => String.t()
      }
      
  """
  @type get_generated_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stack_set_input() :: %{
        optional("AdministrationRoleARN") => String.t(),
        optional("AutoDeployment") => auto_deployment(),
        optional("CallAs") => list(any()),
        optional("Capabilities") => list(list(any())()),
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("ExecutionRoleName") => String.t(),
        optional("ManagedExecution") => managed_execution(),
        optional("Parameters") => list(parameter()()),
        optional("PermissionModel") => list(any()),
        optional("StackId") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TemplateBody") => String.t(),
        optional("TemplateURL") => String.t(),
        required("StackSetName") => String.t()
      }
      
  """
  @type create_stack_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_result_filter() :: %{
        "Name" => list(any()),
        "Values" => String.t()
      }
      
  """
  @type operation_result_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      change_set_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type change_set_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stack_set_output() :: %{}
      
  """
  @type delete_stack_set_output() :: %{}

  @typedoc """

  ## Example:
      
      resource_change() :: %{
        "Action" => list(any()),
        "AfterContext" => String.t(),
        "BeforeContext" => String.t(),
        "ChangeSetId" => String.t(),
        "Details" => list(resource_change_detail()()),
        "LogicalResourceId" => String.t(),
        "ModuleInfo" => module_info(),
        "PhysicalResourceId" => String.t(),
        "PolicyAction" => list(any()),
        "Replacement" => list(any()),
        "ResourceType" => String.t(),
        "Scope" => list(list(any())())
      }
      
  """
  @type resource_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_targets() :: %{
        "AccountFilterType" => list(any()),
        "Accounts" => list(String.t()()),
        "AccountsUrl" => String.t(),
        "OrganizationalUnitIds" => list(String.t()())
      }
      
  """
  @type deployment_targets() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_stack_drift_input() :: %{
        optional("LogicalResourceIds") => list(String.t()()),
        required("StackName") => String.t()
      }
      
  """
  @type detect_stack_drift_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_resource() :: %{
        "Description" => String.t(),
        "DriftInformation" => stack_resource_drift_information(),
        "LogicalResourceId" => String.t(),
        "ModuleInfo" => module_info(),
        "PhysicalResourceId" => String.t(),
        "ResourceStatus" => list(any()),
        "ResourceStatusReason" => String.t(),
        "ResourceType" => String.t(),
        "StackId" => String.t(),
        "StackName" => String.t(),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type stack_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_set_operation() :: %{
        "Action" => list(any()),
        "AdministrationRoleARN" => String.t(),
        "CreationTimestamp" => non_neg_integer(),
        "DeploymentTargets" => deployment_targets(),
        "EndTimestamp" => non_neg_integer(),
        "ExecutionRoleName" => String.t(),
        "OperationId" => String.t(),
        "OperationPreferences" => stack_set_operation_preferences(),
        "RetainStacks" => boolean(),
        "StackSetDriftDetectionDetails" => stack_set_drift_detection_details(),
        "StackSetId" => String.t(),
        "Status" => list(any()),
        "StatusDetails" => stack_set_operation_status_details(),
        "StatusReason" => String.t()
      }
      
  """
  @type stack_set_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_type_output() :: %{
        "RegistrationToken" => String.t()
      }
      
  """
  @type register_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export() :: %{
        "ExportingStackId" => String.t(),
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type export() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_generated_template_input() :: %{
        optional("Format") => list(any()),
        required("GeneratedTemplateName") => String.t()
      }
      
  """
  @type get_generated_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stack_instances_output() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_stack_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_stack_set_auto_deployment_targets_output() :: %{
        "NextToken" => String.t(),
        "Summaries" => list(stack_set_auto_deployment_target_summary()())
      }
      
  """
  @type list_stack_set_auto_deployment_targets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output() :: %{
        "Description" => String.t(),
        "ExportName" => String.t(),
        "OutputKey" => String.t(),
        "OutputValue" => String.t()
      }
      
  """
  @type output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      c_f_n_registry_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type c_f_n_registry_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stacks_output() :: %{
        "NextToken" => String.t(),
        "Stacks" => list(stack()())
      }
      
  """
  @type describe_stacks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stack_input() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("RetainResources") => list(String.t()()),
        optional("RoleARN") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type delete_stack_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_detail() :: %{
        "LogicalResourceId" => String.t(),
        "ResourceIdentifier" => map(),
        "ResourceStatus" => list(any()),
        "ResourceStatusReason" => String.t(),
        "ResourceType" => String.t(),
        "Warnings" => list(warning_detail()())
      }
      
  """
  @type resource_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_set_operation_output() :: %{
        "StackSetOperation" => stack_set_operation()
      }
      
  """
  @type describe_stack_set_operation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_imports_output() :: %{
        "Imports" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_imports_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_type_input() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("ExecutionRoleArn") => String.t(),
        optional("LoggingConfig") => logging_config(),
        optional("Type") => list(any()),
        required("SchemaHandlerPackage") => String.t(),
        required("TypeName") => String.t()
      }
      
  """
  @type register_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_deployment() :: %{
        "Enabled" => boolean(),
        "RetainStacksOnAccountRemoval" => boolean()
      }
      
  """
  @type auto_deployment() :: %{String.t() => any()}

  @type activate_organizations_access_errors() ::
          operation_not_found_exception() | invalid_operation_exception()

  @type activate_type_errors() :: c_f_n_registry_exception() | type_not_found_exception()

  @type batch_describe_type_configurations_errors() ::
          c_f_n_registry_exception() | type_configuration_not_found_exception()

  @type cancel_update_stack_errors() :: token_already_exists_exception()

  @type continue_update_rollback_errors() :: token_already_exists_exception()

  @type create_change_set_errors() ::
          limit_exceeded_exception()
          | insufficient_capabilities_exception()
          | already_exists_exception()

  @type create_generated_template_errors() ::
          limit_exceeded_exception()
          | concurrent_resources_limit_exceeded_exception()
          | already_exists_exception()

  @type create_stack_errors() ::
          token_already_exists_exception()
          | limit_exceeded_exception()
          | insufficient_capabilities_exception()
          | already_exists_exception()

  @type create_stack_instances_errors() ::
          operation_id_already_exists_exception()
          | limit_exceeded_exception()
          | stack_set_not_found_exception()
          | operation_in_progress_exception()
          | invalid_operation_exception()
          | stale_request_exception()

  @type create_stack_set_errors() ::
          limit_exceeded_exception()
          | created_but_modified_exception()
          | name_already_exists_exception()

  @type deactivate_organizations_access_errors() ::
          operation_not_found_exception() | invalid_operation_exception()

  @type deactivate_type_errors() :: c_f_n_registry_exception() | type_not_found_exception()

  @type delete_change_set_errors() :: invalid_change_set_status_exception()

  @type delete_generated_template_errors() ::
          concurrent_resources_limit_exceeded_exception()
          | generated_template_not_found_exception()

  @type delete_stack_errors() :: token_already_exists_exception()

  @type delete_stack_instances_errors() ::
          operation_id_already_exists_exception()
          | stack_set_not_found_exception()
          | operation_in_progress_exception()
          | invalid_operation_exception()
          | stale_request_exception()

  @type delete_stack_set_errors() ::
          stack_set_not_empty_exception() | operation_in_progress_exception()

  @type deregister_type_errors() :: c_f_n_registry_exception() | type_not_found_exception()

  @type describe_change_set_errors() :: change_set_not_found_exception()

  @type describe_change_set_hooks_errors() :: change_set_not_found_exception()

  @type describe_generated_template_errors() :: generated_template_not_found_exception()

  @type describe_organizations_access_errors() ::
          operation_not_found_exception() | invalid_operation_exception()

  @type describe_publisher_errors() :: c_f_n_registry_exception()

  @type describe_resource_scan_errors() :: resource_scan_not_found_exception()

  @type describe_stack_instance_errors() ::
          stack_instance_not_found_exception() | stack_set_not_found_exception()

  @type describe_stack_set_errors() :: stack_set_not_found_exception()

  @type describe_stack_set_operation_errors() ::
          stack_set_not_found_exception() | operation_not_found_exception()

  @type describe_type_errors() :: c_f_n_registry_exception() | type_not_found_exception()

  @type describe_type_registration_errors() :: c_f_n_registry_exception()

  @type detect_stack_set_drift_errors() ::
          stack_set_not_found_exception()
          | operation_in_progress_exception()
          | invalid_operation_exception()

  @type execute_change_set_errors() ::
          change_set_not_found_exception()
          | token_already_exists_exception()
          | invalid_change_set_status_exception()
          | insufficient_capabilities_exception()

  @type get_generated_template_errors() :: generated_template_not_found_exception()

  @type get_template_errors() :: change_set_not_found_exception()

  @type get_template_summary_errors() :: stack_set_not_found_exception()

  @type import_stacks_to_stack_set_errors() ::
          operation_id_already_exists_exception()
          | limit_exceeded_exception()
          | stack_set_not_found_exception()
          | stack_not_found_exception()
          | operation_in_progress_exception()
          | invalid_operation_exception()
          | stale_request_exception()

  @type list_resource_scan_related_resources_errors() ::
          resource_scan_in_progress_exception() | resource_scan_not_found_exception()

  @type list_resource_scan_resources_errors() ::
          resource_scan_in_progress_exception() | resource_scan_not_found_exception()

  @type list_stack_instance_resource_drifts_errors() ::
          stack_instance_not_found_exception()
          | stack_set_not_found_exception()
          | operation_not_found_exception()

  @type list_stack_instances_errors() :: stack_set_not_found_exception()

  @type list_stack_set_auto_deployment_targets_errors() :: stack_set_not_found_exception()

  @type list_stack_set_operation_results_errors() ::
          stack_set_not_found_exception() | operation_not_found_exception()

  @type list_stack_set_operations_errors() :: stack_set_not_found_exception()

  @type list_type_registrations_errors() :: c_f_n_registry_exception()

  @type list_type_versions_errors() :: c_f_n_registry_exception()

  @type list_types_errors() :: c_f_n_registry_exception()

  @type publish_type_errors() :: c_f_n_registry_exception() | type_not_found_exception()

  @type record_handler_progress_errors() ::
          invalid_state_transition_exception() | operation_status_check_failed_exception()

  @type register_publisher_errors() :: c_f_n_registry_exception()

  @type register_type_errors() :: c_f_n_registry_exception()

  @type rollback_stack_errors() :: token_already_exists_exception()

  @type set_type_configuration_errors() :: c_f_n_registry_exception() | type_not_found_exception()

  @type set_type_default_version_errors() ::
          c_f_n_registry_exception() | type_not_found_exception()

  @type start_resource_scan_errors() ::
          resource_scan_limit_exceeded_exception() | resource_scan_in_progress_exception()

  @type stop_stack_set_operation_errors() ::
          stack_set_not_found_exception()
          | operation_not_found_exception()
          | invalid_operation_exception()

  @type test_type_errors() :: c_f_n_registry_exception() | type_not_found_exception()

  @type update_generated_template_errors() ::
          limit_exceeded_exception()
          | already_exists_exception()
          | generated_template_not_found_exception()

  @type update_stack_errors() ::
          token_already_exists_exception() | insufficient_capabilities_exception()

  @type update_stack_instances_errors() ::
          operation_id_already_exists_exception()
          | stack_instance_not_found_exception()
          | stack_set_not_found_exception()
          | operation_in_progress_exception()
          | invalid_operation_exception()
          | stale_request_exception()

  @type update_stack_set_errors() ::
          operation_id_already_exists_exception()
          | stack_instance_not_found_exception()
          | stack_set_not_found_exception()
          | operation_in_progress_exception()
          | invalid_operation_exception()
          | stale_request_exception()

  def metadata do
    %{
      api_version: "2010-05-15",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "cloudformation",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "CloudFormation",
      signature_version: "v4",
      signing_name: "cloudformation",
      target_prefix: "CloudFormation"
    }
  end

  @doc """
  Activate trusted access with Organizations.

  With trusted access between StackSets and Organizations
  activated, the management account has permissions to create and manage StackSets
  for your
  organization.
  """
  @spec activate_organizations_access(map(), activate_organizations_access_input(), list()) ::
          {:ok, activate_organizations_access_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, activate_organizations_access_errors()}
  def activate_organizations_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ActivateOrganizationsAccess", input, options)
  end

  @doc """
  Activates a public third-party extension, making it available for use in stack
  templates.

  For more information,
  see [Using public extensions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html)
  in the *CloudFormation User Guide*.

  Once you have activated a public third-party extension in your account and
  Region, use
  [SetTypeConfiguration](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html) to specify configuration properties for the extension. For more information, see
  [Configuring extensions at
  the account
  level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-private.html#registry-set-configuration)
  in the *CloudFormation User Guide*.
  """
  @spec activate_type(map(), activate_type_input(), list()) ::
          {:ok, activate_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, activate_type_errors()}
  def activate_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ActivateType", input, options)
  end

  @doc """
  Returns configuration data for the specified CloudFormation extensions, from the
  CloudFormation registry
  for the account and Region.

  For more information, see [Configuring extensions at the account
  level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-private.html#registry-set-configuration)
  in the *CloudFormation User Guide*.
  """
  @spec batch_describe_type_configurations(
          map(),
          batch_describe_type_configurations_input(),
          list()
        ) ::
          {:ok, batch_describe_type_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_describe_type_configurations_errors()}
  def batch_describe_type_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDescribeTypeConfigurations", input, options)
  end

  @doc """
  Cancels an update on the specified stack.

  If the call completes successfully, the stack rolls back the update
  and reverts to the previous stack configuration.

  You can cancel only stacks that are in the `UPDATE_IN_PROGRESS` state.
  """
  @spec cancel_update_stack(map(), cancel_update_stack_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_update_stack_errors()}
  def cancel_update_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelUpdateStack", input, options)
  end

  @doc """
  For a specified stack that's in the `UPDATE_ROLLBACK_FAILED` state, continues
  rolling it back to the
  `UPDATE_ROLLBACK_COMPLETE` state.

  Depending on the cause of the failure, you can manually [ fix the error](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed)
  and continue the rollback. By continuing the rollback, you can return your stack
  to a working state
  (the `UPDATE_ROLLBACK_COMPLETE` state), and then try to update the stack again.

  A stack goes into the `UPDATE_ROLLBACK_FAILED` state when CloudFormation can't
  roll back all changes after
  a failed stack update. For example, you might have a stack that's rolling back
  to an old database instance that was
  deleted outside of CloudFormation. Because CloudFormation doesn't know the
  database was deleted, it assumes that the database instance
  still exists and attempts to roll back to it, causing the update rollback to
  fail.
  """
  @spec continue_update_rollback(map(), continue_update_rollback_input(), list()) ::
          {:ok, continue_update_rollback_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, continue_update_rollback_errors()}
  def continue_update_rollback(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ContinueUpdateRollback", input, options)
  end

  @doc """
  Creates a list of changes that will be applied to a stack so that you can review
  the changes before executing
  them.

  You can create a change set for a stack that doesn't exist or an existing stack.
  If you create a change set for
  a stack that doesn't exist, the change set shows all of the resources that
  CloudFormation will create. If you create a change
  set for an existing stack, CloudFormation compares the stack's information with
  the information that you submit in the change
  set and lists the differences. Use change sets to understand which resources
  CloudFormation will create or
  change, and how it will change resources in an existing stack, before you create
  or update a stack.

  To create a change set for a stack that doesn't exist, for the `ChangeSetType`
  parameter, specify
  `CREATE`. To create a change set for an existing stack, specify `UPDATE` for the
  `ChangeSetType` parameter. To create a change set for an import operation,
  specify `IMPORT` for
  the `ChangeSetType` parameter. After the `CreateChangeSet` call successfully
  completes, CloudFormation starts creating the change set. To check the status of
  the change set or to review it, use the `DescribeChangeSet` action.

  When you are satisfied with the changes the change set will make, execute the
  change set by using the `ExecuteChangeSet` action. CloudFormation doesn't make
  changes until you execute the change set.

  To create a change set for the entire stack hierarchy, set `IncludeNestedStacks`
  to
  `True`.
  """
  @spec create_change_set(map(), create_change_set_input(), list()) ::
          {:ok, create_change_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_change_set_errors()}
  def create_change_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateChangeSet", input, options)
  end

  @doc """
  Creates a template from existing resources that are not already managed with
  CloudFormation.

  You can check the status of
  the template generation using the `DescribeGeneratedTemplate` API action.
  """
  @spec create_generated_template(map(), create_generated_template_input(), list()) ::
          {:ok, create_generated_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_generated_template_errors()}
  def create_generated_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGeneratedTemplate", input, options)
  end

  @doc """
  Creates a stack as specified in the template.

  After the call completes successfully, the stack creation starts.
  You can check the status of the stack through the `DescribeStacks` operation.
  """
  @spec create_stack(map(), create_stack_input(), list()) ::
          {:ok, create_stack_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_stack_errors()}
  def create_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStack", input, options)
  end

  @doc """
  Creates stack instances for the specified accounts, within the specified Amazon
  Web Services Regions.

  A stack
  instance refers to a stack in a specific account and Region. You must specify at
  least one value for either
  `Accounts` or `DeploymentTargets`, and you must specify at least one value for
  `Regions`.
  """
  @spec create_stack_instances(map(), create_stack_instances_input(), list()) ::
          {:ok, create_stack_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_stack_instances_errors()}
  def create_stack_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStackInstances", input, options)
  end

  @doc """
  Creates a stack set.
  """
  @spec create_stack_set(map(), create_stack_set_input(), list()) ::
          {:ok, create_stack_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_stack_set_errors()}
  def create_stack_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStackSet", input, options)
  end

  @doc """
  Deactivates trusted access with Organizations.

  If trusted access is deactivated, the management account does not have
  permissions to create and manage service-managed StackSets for your
  organization.
  """
  @spec deactivate_organizations_access(map(), deactivate_organizations_access_input(), list()) ::
          {:ok, deactivate_organizations_access_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deactivate_organizations_access_errors()}
  def deactivate_organizations_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeactivateOrganizationsAccess", input, options)
  end

  @doc """
  Deactivates a public extension that was previously activated in this account and
  Region.

  Once deactivated, an extension can't be used in any CloudFormation operation.
  This includes stack update operations
  where the stack template includes the extension, even if no updates are being
  made to the extension. In addition,
  deactivated extensions aren't automatically updated if a new version of the
  extension is released.
  """
  @spec deactivate_type(map(), deactivate_type_input(), list()) ::
          {:ok, deactivate_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deactivate_type_errors()}
  def deactivate_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeactivateType", input, options)
  end

  @doc """
  Deletes the specified change set.

  Deleting change sets ensures that no one executes the wrong change set.

  If the call successfully completes, CloudFormation successfully deleted the
  change set.

  If `IncludeNestedStacks` specifies `True` during the creation of the nested
  change set,
  then `DeleteChangeSet` will delete all change sets that belong to the stacks
  hierarchy and will also
  delete all change sets for nested stacks with the status of
  `REVIEW_IN_PROGRESS`.
  """
  @spec delete_change_set(map(), delete_change_set_input(), list()) ::
          {:ok, delete_change_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_change_set_errors()}
  def delete_change_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteChangeSet", input, options)
  end

  @doc """
  Deleted a generated template.
  """
  @spec delete_generated_template(map(), delete_generated_template_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_generated_template_errors()}
  def delete_generated_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGeneratedTemplate", input, options)
  end

  @doc """
  Deletes a specified stack.

  Once the call completes successfully, stack deletion starts. Deleted stacks
  don't
  show up in the `DescribeStacks` operation if the deletion has been completed
  successfully.
  """
  @spec delete_stack(map(), delete_stack_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_stack_errors()}
  def delete_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStack", input, options)
  end

  @doc """
  Deletes stack instances for the specified accounts, in the specified Amazon Web
  Services Regions.
  """
  @spec delete_stack_instances(map(), delete_stack_instances_input(), list()) ::
          {:ok, delete_stack_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_stack_instances_errors()}
  def delete_stack_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStackInstances", input, options)
  end

  @doc """
  Deletes a stack set.

  Before you can delete a stack set, all its member stack instances must be
  deleted. For more
  information about how to complete this, see `DeleteStackInstances`.
  """
  @spec delete_stack_set(map(), delete_stack_set_input(), list()) ::
          {:ok, delete_stack_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_stack_set_errors()}
  def delete_stack_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStackSet", input, options)
  end

  @doc """
  Marks an extension or extension version as `DEPRECATED` in the CloudFormation
  registry, removing it from
  active use.

  Deprecated extensions or extension versions cannot be used in CloudFormation
  operations.

  To deregister an entire extension, you must individually deregister all active
  versions of that extension. If an
  extension has only a single active version, deregistering that version results
  in the extension itself being
  deregistered and marked as deprecated in the registry.

  You can't deregister the default version of an extension if there are other
  active version of that extension. If
  you do deregister the default version of an extension, the extension type itself
  is deregistered as well and marked
  as deprecated.

  To view the deprecation status of an extension or extension version, use
  [DescribeType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html).
  """
  @spec deregister_type(map(), deregister_type_input(), list()) ::
          {:ok, deregister_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_type_errors()}
  def deregister_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterType", input, options)
  end

  @doc """
  Retrieves your account's CloudFormation limits, such as the maximum number of
  stacks that you can create in your account.

  For more information about account limits, see [CloudFormation Quotas](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html)
  in the
  *CloudFormation User Guide*.
  """
  @spec describe_account_limits(map(), describe_account_limits_input(), list()) ::
          {:ok, describe_account_limits_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_account_limits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountLimits", input, options)
  end

  @doc """
  Returns the inputs for the change set and a list of changes that CloudFormation
  will make if you execute the change set.

  For more information, see [Updating Stacks Using Change Sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html)
  in the *CloudFormation User Guide*.
  """
  @spec describe_change_set(map(), describe_change_set_input(), list()) ::
          {:ok, describe_change_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_change_set_errors()}
  def describe_change_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeChangeSet", input, options)
  end

  @doc """
  Returns hook-related information for the change set and a list of changes that
  CloudFormation makes when you run the
  change set.
  """
  @spec describe_change_set_hooks(map(), describe_change_set_hooks_input(), list()) ::
          {:ok, describe_change_set_hooks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_change_set_hooks_errors()}
  def describe_change_set_hooks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeChangeSetHooks", input, options)
  end

  @doc """
  Describes a generated template.

  The output includes details about the progress of the creation of a generated
  template started by a `CreateGeneratedTemplate` API action or the update of a
  generated template started
  with an `UpdateGeneratedTemplate` API action.
  """
  @spec describe_generated_template(map(), describe_generated_template_input(), list()) ::
          {:ok, describe_generated_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_generated_template_errors()}
  def describe_generated_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGeneratedTemplate", input, options)
  end

  @doc """
  Retrieves information about the account's `OrganizationAccess` status.

  This API can be called either
  by the management account or the delegated administrator by using the `CallAs`
  parameter. This API can
  also be called without the `CallAs` parameter by the management account.
  """
  @spec describe_organizations_access(map(), describe_organizations_access_input(), list()) ::
          {:ok, describe_organizations_access_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_organizations_access_errors()}
  def describe_organizations_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOrganizationsAccess", input, options)
  end

  @doc """
  Returns information about a CloudFormation extension publisher.

  If you don't supply a `PublisherId`, and you have registered as an extension
  publisher,
  `DescribePublisher` returns information about your own publisher account.

  For more information about registering as a publisher, see:

    *

  [RegisterPublisher](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html) 

    *

  [Publishing
  extensions to make them available for public
  use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html)
  in the *CloudFormation CLI User
  Guide*
  """
  @spec describe_publisher(map(), describe_publisher_input(), list()) ::
          {:ok, describe_publisher_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_publisher_errors()}
  def describe_publisher(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePublisher", input, options)
  end

  @doc """
  Describes details of a resource scan.
  """
  @spec describe_resource_scan(map(), describe_resource_scan_input(), list()) ::
          {:ok, describe_resource_scan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_resource_scan_errors()}
  def describe_resource_scan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeResourceScan", input, options)
  end

  @doc """
  Returns information about a stack drift detection operation.

  A stack drift detection operation detects whether a
  stack's actual configuration differs, or has *drifted*, from its expected
  configuration, as
  defined in the stack template and any values specified as template parameters. A
  stack is considered to have drifted
  if one or more of its resources have drifted. For more information about stack
  and resource drift, see [Detecting Unregulated Configuration Changes to Stacks and
  Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

  Use `DetectStackDrift` to initiate a stack drift detection operation.
  `DetectStackDrift` returns a `StackDriftDetectionId` you can use to monitor the
  progress of the
  operation using `DescribeStackDriftDetectionStatus`. Once the drift detection
  operation has completed, use
  `DescribeStackResourceDrifts` to return drift information about the stack and
  its resources.
  """
  @spec describe_stack_drift_detection_status(
          map(),
          describe_stack_drift_detection_status_input(),
          list()
        ) ::
          {:ok, describe_stack_drift_detection_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_stack_drift_detection_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackDriftDetectionStatus", input, options)
  end

  @doc """
  Returns all stack related events for a specified stack in reverse chronological
  order.

  For more information
  about a stack's event history, see [CloudFormation stack creation events](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-resource-configuration-complete.html)
  in the *CloudFormation User Guide*.

  You can list events for stacks that have failed to create or have been deleted
  by specifying the unique stack
  identifier (stack ID).
  """
  @spec describe_stack_events(map(), describe_stack_events_input(), list()) ::
          {:ok, describe_stack_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_stack_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackEvents", input, options)
  end

  @doc """
  Returns the stack instance that's associated with the specified StackSet, Amazon
  Web Services account, and
  Amazon Web Services Region.

  For a list of stack instances that are associated with a specific StackSet, use
  `ListStackInstances`.
  """
  @spec describe_stack_instance(map(), describe_stack_instance_input(), list()) ::
          {:ok, describe_stack_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_stack_instance_errors()}
  def describe_stack_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackInstance", input, options)
  end

  @doc """
  Returns a description of the specified resource in the specified stack.

  For deleted stacks, DescribeStackResource returns resource information for up to
  90 days after the stack has
  been deleted.
  """
  @spec describe_stack_resource(map(), describe_stack_resource_input(), list()) ::
          {:ok, describe_stack_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_stack_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackResource", input, options)
  end

  @doc """
  Returns drift information for the resources that have been checked for drift in
  the specified stack.

  This
  includes actual and expected configuration values for resources where
  CloudFormation detects configuration drift.

  For a given stack, there will be one `StackResourceDrift` for each stack
  resource that has been
  checked for drift. Resources that haven't yet been checked for drift aren't
  included. Resources that don't currently
  support drift detection aren't checked, and so not included. For a list of
  resources that support drift detection,
  see [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).

  Use `DetectStackResourceDrift` to detect drift on individual resources, or
  `DetectStackDrift` to detect drift on all supported resources for a given stack.
  """
  @spec describe_stack_resource_drifts(map(), describe_stack_resource_drifts_input(), list()) ::
          {:ok, describe_stack_resource_drifts_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_stack_resource_drifts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackResourceDrifts", input, options)
  end

  @doc """
  Returns Amazon Web Services resource descriptions for running and deleted
  stacks.

  If `StackName` is
  specified, all the associated resources that are part of the stack are returned.
  If `PhysicalResourceId`
  is specified, the associated resources of the stack that the resource belongs to
  are returned.

  Only the first 100 resources will be returned. If your stack has more resources
  than this, you should use
  `ListStackResources` instead.

  For deleted stacks, `DescribeStackResources` returns resource information for up
  to 90 days after the
  stack has been deleted.

  You must specify either `StackName` or `PhysicalResourceId`, but not both. In
  addition,
  you can specify `LogicalResourceId` to filter the returned result. For more
  information about resources,
  the `LogicalResourceId` and `PhysicalResourceId`, go to the [CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/).

  A `ValidationError` is returned if you specify both `StackName` and
  `PhysicalResourceId` in the same request.
  """
  @spec describe_stack_resources(map(), describe_stack_resources_input(), list()) ::
          {:ok, describe_stack_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_stack_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackResources", input, options)
  end

  @doc """
  Returns the description of the specified StackSet.
  """
  @spec describe_stack_set(map(), describe_stack_set_input(), list()) ::
          {:ok, describe_stack_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_stack_set_errors()}
  def describe_stack_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackSet", input, options)
  end

  @doc """
  Returns the description of the specified StackSet operation.
  """
  @spec describe_stack_set_operation(map(), describe_stack_set_operation_input(), list()) ::
          {:ok, describe_stack_set_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_stack_set_operation_errors()}
  def describe_stack_set_operation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackSetOperation", input, options)
  end

  @doc """
  Returns the description for the specified stack; if no stack name was specified,
  then it returns the description
  for all the stacks created.

  For more information about a stack's event history, see [CloudFormation stack creation
  events](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-resource-configuration-complete.html)
  in the *CloudFormation User Guide*.

  If the stack doesn't exist, a `ValidationError` is returned.
  """
  @spec describe_stacks(map(), describe_stacks_input(), list()) ::
          {:ok, describe_stacks_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_stacks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStacks", input, options)
  end

  @doc """
  Returns detailed information about an extension that has been registered.

  If you specify a `VersionId`, `DescribeType` returns information about that
  specific
  extension version. Otherwise, it returns information about the default extension
  version.
  """
  @spec describe_type(map(), describe_type_input(), list()) ::
          {:ok, describe_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_type_errors()}
  def describe_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeType", input, options)
  end

  @doc """
  Returns information about an extension's registration, including its current
  status and type and version
  identifiers.

  When you initiate a registration request using `RegisterType`, you can then use
  `DescribeTypeRegistration` to monitor the progress of that registration request.

  Once the registration request has completed, use `DescribeType` to return
  detailed information
  about an extension.
  """
  @spec describe_type_registration(map(), describe_type_registration_input(), list()) ::
          {:ok, describe_type_registration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_type_registration_errors()}
  def describe_type_registration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTypeRegistration", input, options)
  end

  @doc """
  Detects whether a stack's actual configuration differs, or has *drifted*, from
  its expected
  configuration, as defined in the stack template and any values specified as
  template parameters.

  For each resource in
  the stack that supports drift detection, CloudFormation compares the actual
  configuration of the resource with its expected
  template configuration. Only resource properties explicitly defined in the stack
  template are checked for drift. A
  stack is considered to have drifted if one or more of its resources differ from
  their expected template
  configurations. For more information, see [Detecting Unregulated Configuration Changes to
  Stacks and
  Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

  Use `DetectStackDrift` to detect drift on all supported resources for a given
  stack, or `DetectStackResourceDrift` to detect drift on individual resources.

  For a list of stack resources that currently support drift detection, see
  [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).

  `DetectStackDrift` can take up to several minutes, depending on the number of
  resources contained
  within the stack. Use `DescribeStackDriftDetectionStatus` to monitor the
  progress of a detect stack
  drift operation. Once the drift detection operation has completed, use
  `DescribeStackResourceDrifts`
  to return drift information about the stack and its resources.

  When detecting drift on a stack, CloudFormation doesn't detect drift on any
  nested stacks belonging to that stack.
  Perform `DetectStackDrift` directly on the nested stack itself.
  """
  @spec detect_stack_drift(map(), detect_stack_drift_input(), list()) ::
          {:ok, detect_stack_drift_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def detect_stack_drift(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectStackDrift", input, options)
  end

  @doc """
  Returns information about whether a resource's actual configuration differs, or
  has
  *drifted*, from its expected configuration, as defined in the stack template and
  any values
  specified as template parameters.

  This information includes actual and expected property values for resources in
  which CloudFormation detects drift. Only resource properties explicitly defined
  in the stack template are checked for drift.
  For more information about stack and resource drift, see [Detecting Unregulated Configuration Changes to
  Stacks and
  Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

  Use `DetectStackResourceDrift` to detect drift on individual resources, or
  `DetectStackDrift` to detect drift on all resources in a given stack that
  support drift detection.

  Resources that don't currently support drift detection can't be checked. For a
  list of resources that support
  drift detection, see [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
  """
  @spec detect_stack_resource_drift(map(), detect_stack_resource_drift_input(), list()) ::
          {:ok, detect_stack_resource_drift_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def detect_stack_resource_drift(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectStackResourceDrift", input, options)
  end

  @doc """
  Detect drift on a stack set.

  When CloudFormation performs drift detection on a stack set, it performs drift
  detection on the stack associated with each stack instance in the stack set. For
  more information, see [How CloudFormation performs drift detection on a stack
  set](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).

  `DetectStackSetDrift` returns the `OperationId` of the stack set drift detection
  operation. Use this operation id with `DescribeStackSetOperation` to monitor the
  progress of the
  drift detection operation. The drift detection operation may take some time,
  depending on the number of stack
  instances included in the stack set, in addition to the number of resources
  included in each stack.

  Once the operation has completed, use the following actions to return drift
  information:

    *
  Use `DescribeStackSet` to return detailed information about the stack set,
  including detailed
  information about the last *completed* drift operation performed on the stack
  set. (Information
  about drift operations that are in progress isn't included.)

    *
  Use `ListStackInstances` to return a list of stack instances belonging to the
  stack set,
  including the drift status and last drift time checked of each instance.

    *
  Use `DescribeStackInstance` to return detailed information about a specific
  stack instance,
  including its drift status and last drift time checked.

  For more information about performing a drift detection operation on a stack
  set, see [Detecting unmanaged changes in stack
  sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).

  You can only run a single drift detection operation on a given stack set at one
  time.

  To stop a drift detection stack set operation, use `StopStackSetOperation`.
  """
  @spec detect_stack_set_drift(map(), detect_stack_set_drift_input(), list()) ::
          {:ok, detect_stack_set_drift_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_stack_set_drift_errors()}
  def detect_stack_set_drift(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectStackSetDrift", input, options)
  end

  @doc """
  Returns the estimated monthly cost of a template.

  The return value is an Amazon Web Services Simple Monthly
  Calculator URL with a query string that describes the resources required to run
  the template.
  """
  @spec estimate_template_cost(map(), estimate_template_cost_input(), list()) ::
          {:ok, estimate_template_cost_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def estimate_template_cost(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EstimateTemplateCost", input, options)
  end

  @doc """
  Updates a stack using the input information that was provided when the specified
  change set was created.

  After
  the call successfully completes, CloudFormation starts updating the stack. Use
  the `DescribeStacks` action to
  view the status of the update.

  When you execute a change set, CloudFormation deletes all other change sets
  associated with the stack because they aren't
  valid for the updated stack.

  If a stack policy is associated with the stack, CloudFormation enforces the
  policy during the update. You can't specify a
  temporary stack policy that overrides the current policy.

  To create a change set for the entire stack hierarchy, `IncludeNestedStacks`
  must have been set to
  `True`.
  """
  @spec execute_change_set(map(), execute_change_set_input(), list()) ::
          {:ok, execute_change_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_change_set_errors()}
  def execute_change_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteChangeSet", input, options)
  end

  @doc """
  Retrieves a generated template.

  If the template is in an `InProgress` or `Pending` status
  then the template returned will be the template when the template was last in a
  `Complete` status. If the
  template has not yet been in a `Complete` status then an empty template will be
  returned.
  """
  @spec get_generated_template(map(), get_generated_template_input(), list()) ::
          {:ok, get_generated_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_generated_template_errors()}
  def get_generated_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGeneratedTemplate", input, options)
  end

  @doc """
  Returns the stack policy for a specified stack.

  If a stack doesn't have a policy, a null value is
  returned.
  """
  @spec get_stack_policy(map(), get_stack_policy_input(), list()) ::
          {:ok, get_stack_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_stack_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetStackPolicy", input, options)
  end

  @doc """
  Returns the template body for a specified stack.

  You can get the template for running or deleted stacks.

  For deleted stacks, `GetTemplate` returns the template for up to 90 days after
  the stack has been
  deleted.

  If the template doesn't exist, a `ValidationError` is returned.
  """
  @spec get_template(map(), get_template_input(), list()) ::
          {:ok, get_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_template_errors()}
  def get_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTemplate", input, options)
  end

  @doc """
  Returns information about a new or existing template.

  The `GetTemplateSummary` action is useful for
  viewing parameter information, such as default parameter values and parameter
  types, before you create or update a
  stack or stack set.

  You can use the `GetTemplateSummary` action when you submit a template, or you
  can get template
  information for a stack set, or a running or deleted stack.

  For deleted stacks, `GetTemplateSummary` returns the template information for up
  to 90 days after the
  stack has been deleted. If the template doesn't exist, a `ValidationError` is
  returned.
  """
  @spec get_template_summary(map(), get_template_summary_input(), list()) ::
          {:ok, get_template_summary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_template_summary_errors()}
  def get_template_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTemplateSummary", input, options)
  end

  @doc """
  Import existing stacks into a new stack sets.

  Use the stack import operation to import up to 10 stacks into a
  new stack set in the same account as the source stack or in a different
  administrator account and Region, by
  specifying the stack ID of the stack you intend to import.
  """
  @spec import_stacks_to_stack_set(map(), import_stacks_to_stack_set_input(), list()) ::
          {:ok, import_stacks_to_stack_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_stacks_to_stack_set_errors()}
  def import_stacks_to_stack_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportStacksToStackSet", input, options)
  end

  @doc """
  Returns the ID and status of each active change set for a stack.

  For example, CloudFormation lists change sets that are
  in the `CREATE_IN_PROGRESS` or `CREATE_PENDING` state.
  """
  @spec list_change_sets(map(), list_change_sets_input(), list()) ::
          {:ok, list_change_sets_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_change_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListChangeSets", input, options)
  end

  @doc """
  Lists all exported output values in the account and Region in which you call
  this action.

  Use this action to see
  the exported output values that you can import into other stacks. To import
  values, use the [
  Fn::ImportValue](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
  function.

  For more information, see [ CloudFormation export stack output values](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html).
  """
  @spec list_exports(map(), list_exports_input(), list()) ::
          {:ok, list_exports_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_exports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExports", input, options)
  end

  @doc """
  Lists your generated templates in this Region.
  """
  @spec list_generated_templates(map(), list_generated_templates_input(), list()) ::
          {:ok, list_generated_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_generated_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGeneratedTemplates", input, options)
  end

  @doc """
  Lists all stacks that are importing an exported output value.

  To modify or remove an exported output value,
  first use this action to see which stacks are using it. To see the exported
  output values in your account, see `ListExports`.

  For more information about importing an exported output value, see the
  [Fn::ImportValue](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
  function.
  """
  @spec list_imports(map(), list_imports_input(), list()) ::
          {:ok, list_imports_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_imports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListImports", input, options)
  end

  @doc """
  Lists the related resources for a list of resources from a resource scan.

  The response indicates whether each
  returned resource is already managed by CloudFormation.
  """
  @spec list_resource_scan_related_resources(
          map(),
          list_resource_scan_related_resources_input(),
          list()
        ) ::
          {:ok, list_resource_scan_related_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_scan_related_resources_errors()}
  def list_resource_scan_related_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceScanRelatedResources", input, options)
  end

  @doc """
  Lists the resources from a resource scan.

  The results can be filtered by resource identifier, resource type
  prefix, tag key, and tag value. Only resources that match all specified filters
  are returned. The response indicates
  whether each returned resource is already managed by CloudFormation.
  """
  @spec list_resource_scan_resources(map(), list_resource_scan_resources_input(), list()) ::
          {:ok, list_resource_scan_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_scan_resources_errors()}
  def list_resource_scan_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceScanResources", input, options)
  end

  @doc """
  List the resource scans from newest to oldest.

  By default it will return up to 10 resource scans.
  """
  @spec list_resource_scans(map(), list_resource_scans_input(), list()) ::
          {:ok, list_resource_scans_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_resource_scans(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceScans", input, options)
  end

  @doc """
  Returns drift information for resources in a stack instance.

  `ListStackInstanceResourceDrifts` returns drift information for the most recent
  drift detection
  operation. If an operation is in progress, it may only return partial results.
  """
  @spec list_stack_instance_resource_drifts(
          map(),
          list_stack_instance_resource_drifts_input(),
          list()
        ) ::
          {:ok, list_stack_instance_resource_drifts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stack_instance_resource_drifts_errors()}
  def list_stack_instance_resource_drifts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackInstanceResourceDrifts", input, options)
  end

  @doc """
  Returns summary information about stack instances that are associated with the
  specified stack set.

  You can
  filter for stack instances that are associated with a specific Amazon Web
  Services account name or Region, or that
  have a specific status.
  """
  @spec list_stack_instances(map(), list_stack_instances_input(), list()) ::
          {:ok, list_stack_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stack_instances_errors()}
  def list_stack_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackInstances", input, options)
  end

  @doc """
  Returns descriptions of all resources of the specified stack.

  For deleted stacks, ListStackResources returns resource information for up to 90
  days after the stack has been
  deleted.
  """
  @spec list_stack_resources(map(), list_stack_resources_input(), list()) ::
          {:ok, list_stack_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_stack_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackResources", input, options)
  end

  @doc """
  Returns summary information about deployment targets for a stack set.
  """
  @spec list_stack_set_auto_deployment_targets(
          map(),
          list_stack_set_auto_deployment_targets_input(),
          list()
        ) ::
          {:ok, list_stack_set_auto_deployment_targets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stack_set_auto_deployment_targets_errors()}
  def list_stack_set_auto_deployment_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackSetAutoDeploymentTargets", input, options)
  end

  @doc """
  Returns summary information about the results of a stack set operation.
  """
  @spec list_stack_set_operation_results(map(), list_stack_set_operation_results_input(), list()) ::
          {:ok, list_stack_set_operation_results_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stack_set_operation_results_errors()}
  def list_stack_set_operation_results(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackSetOperationResults", input, options)
  end

  @doc """
  Returns summary information about operations performed on a stack set.
  """
  @spec list_stack_set_operations(map(), list_stack_set_operations_input(), list()) ::
          {:ok, list_stack_set_operations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stack_set_operations_errors()}
  def list_stack_set_operations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackSetOperations", input, options)
  end

  @doc """
  Returns summary information about stack sets that are associated with the user.

    *
  [Self-managed permissions] If you set the `CallAs` parameter to `SELF` while signed in
  to your Amazon Web Services account, `ListStackSets` returns all self-managed
  stack sets in your Amazon Web Services account.

    *
  [Service-managed permissions] If you set the `CallAs` parameter to `SELF` while
  signed
  in to the organization's management account, `ListStackSets` returns all stack
  sets in the
  management account.

    *
  [Service-managed permissions] If you set the `CallAs` parameter to
  `DELEGATED_ADMIN`
  while signed in to your member account, `ListStackSets` returns all stack sets
  with service-managed
  permissions in the management account.
  """
  @spec list_stack_sets(map(), list_stack_sets_input(), list()) ::
          {:ok, list_stack_sets_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_stack_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackSets", input, options)
  end

  @doc """
  Returns the summary information for stacks whose status matches the specified
  StackStatusFilter.

  Summary
  information for stacks that have been deleted is kept for 90 days after the
  stack is deleted. If no StackStatusFilter
  is specified, summary information for all stacks is returned (including existing
  stacks and stacks that have been
  deleted).
  """
  @spec list_stacks(map(), list_stacks_input(), list()) ::
          {:ok, list_stacks_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_stacks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStacks", input, options)
  end

  @doc """
  Returns a list of registration tokens for the specified extension(s).
  """
  @spec list_type_registrations(map(), list_type_registrations_input(), list()) ::
          {:ok, list_type_registrations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_type_registrations_errors()}
  def list_type_registrations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTypeRegistrations", input, options)
  end

  @doc """
  Returns summary information about the versions of an extension.
  """
  @spec list_type_versions(map(), list_type_versions_input(), list()) ::
          {:ok, list_type_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_type_versions_errors()}
  def list_type_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTypeVersions", input, options)
  end

  @doc """
  Returns summary information about extension that have been registered with
  CloudFormation.
  """
  @spec list_types(map(), list_types_input(), list()) ::
          {:ok, list_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_types_errors()}
  def list_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTypes", input, options)
  end

  @doc """
  Publishes the specified extension to the CloudFormation registry as a public
  extension in this Region.

  Public
  extensions are available for use by all CloudFormation users. For more
  information about publishing extensions, see
  [Publishing extensions to make them available for public
  use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html)
  in the *CloudFormation CLI User Guide*.

  To publish an extension, you must be registered as a publisher with
  CloudFormation. For more information, see
  [RegisterPublisher](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html).
  """
  @spec publish_type(map(), publish_type_input(), list()) ::
          {:ok, publish_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, publish_type_errors()}
  def publish_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PublishType", input, options)
  end

  @doc """
  Reports progress of a resource handler to CloudFormation.

  Reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).
  Don't use this API
  in your code.
  """
  @spec record_handler_progress(map(), record_handler_progress_input(), list()) ::
          {:ok, record_handler_progress_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, record_handler_progress_errors()}
  def record_handler_progress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RecordHandlerProgress", input, options)
  end

  @doc """
  Registers your account as a publisher of public extensions in the CloudFormation
  registry.

  Public extensions are
  available for use by all CloudFormation users. This publisher ID applies to your
  account in all Amazon Web Services Regions.

  For information about requirements for registering as a public extension
  publisher, see [Registering your account to publish CloudFormation extensions](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs)
  in the *CloudFormation CLI User
  Guide*.
  """
  @spec register_publisher(map(), register_publisher_input(), list()) ::
          {:ok, register_publisher_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_publisher_errors()}
  def register_publisher(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterPublisher", input, options)
  end

  @doc """
  Registers an extension with the CloudFormation service.

  Registering an extension makes it available for use in
  CloudFormation templates in your Amazon Web Services account, and includes:

    *
  Validating the extension schema.

    *
  Determining which handlers, if any, have been specified for the extension.

    *
  Making the extension available for use in your account.

  For more information about how to develop extensions and ready them for
  registration, see [Creating Resource Providers](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html)
  in the *CloudFormation CLI User Guide*.

  You can have a maximum of 50 resource extension versions registered at a time.
  This maximum is per account and
  per Region. Use
  [DeregisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeregisterType.html) to deregister specific extension versions if necessary.

  Once you have initiated a registration request using `RegisterType`, you can use
  `DescribeTypeRegistration` to monitor the progress of the registration request.

  Once you have registered a private extension in your account and Region, use
  [SetTypeConfiguration](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html)
  to specify
  configuration properties for the extension. For more information, see
  [Configuring extensions at the account
  level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-private.html#registry-set-configuration)
  in the *CloudFormation User Guide*.
  """
  @spec register_type(map(), register_type_input(), list()) ::
          {:ok, register_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_type_errors()}
  def register_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterType", input, options)
  end

  @doc """
  When specifying `RollbackStack`, you preserve the state of previously
  provisioned resources when an
  operation fails.

  You can check the status of the stack through the `DescribeStacks` operation.

  Rolls back the specified stack to the last known stable state from
  `CREATE_FAILED` or
  `UPDATE_FAILED` stack statuses.

  This operation will delete a stack if it doesn't contain a last known stable
  state. A last known stable state
  includes any status in a `*_COMPLETE`. This includes the following stack
  statuses.

    *

  `CREATE_COMPLETE`

    *

  `UPDATE_COMPLETE`

    *

  `UPDATE_ROLLBACK_COMPLETE`

    *

  `IMPORT_COMPLETE`

    *

  `IMPORT_ROLLBACK_COMPLETE`
  """
  @spec rollback_stack(map(), rollback_stack_input(), list()) ::
          {:ok, rollback_stack_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, rollback_stack_errors()}
  def rollback_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RollbackStack", input, options)
  end

  @doc """
  Sets a stack policy for a specified stack.
  """
  @spec set_stack_policy(map(), set_stack_policy_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def set_stack_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetStackPolicy", input, options)
  end

  @doc """
  Specifies the configuration data for a registered CloudFormation extension, in
  the given account and Region.

  To view the current configuration data for an extension, refer to the
  `ConfigurationSchema` element
  of
  [DescribeType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html). For more information, see [Configuring extensions at
  the account
  level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-private.html#registry-set-configuration)
  in the *CloudFormation User Guide*.

  It's strongly recommended that you use dynamic references to restrict sensitive
  configuration definitions, such
  as third-party credentials. For more details on dynamic references, see [Using dynamic references to specify template values](https://docs.aws.amazon.com/) in
  the *CloudFormation User Guide*.
  """
  @spec set_type_configuration(map(), set_type_configuration_input(), list()) ::
          {:ok, set_type_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_type_configuration_errors()}
  def set_type_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetTypeConfiguration", input, options)
  end

  @doc """
  Specify the default version of an extension.

  The default version of an extension will be used in CloudFormation operations.
  """
  @spec set_type_default_version(map(), set_type_default_version_input(), list()) ::
          {:ok, set_type_default_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_type_default_version_errors()}
  def set_type_default_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetTypeDefaultVersion", input, options)
  end

  @doc """
  Sends a signal to the specified resource with a success or failure status.

  You can use the
  `SignalResource` operation in conjunction with a creation policy or update
  policy. CloudFormation doesn't
  proceed with a stack creation or update until resources receive the required
  number of signals or the timeout period
  is exceeded. The `SignalResource` operation is useful in cases where you want to
  send signals from
  anywhere other than an Amazon EC2 instance.
  """
  @spec signal_resource(map(), signal_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def signal_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SignalResource", input, options)
  end

  @doc """
  Starts a scan of the resources in this account in this Region.

  You can the status of a scan using the
  `ListResourceScans` API action.
  """
  @spec start_resource_scan(map(), start_resource_scan_input(), list()) ::
          {:ok, start_resource_scan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_resource_scan_errors()}
  def start_resource_scan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartResourceScan", input, options)
  end

  @doc """
  Stops an in-progress operation on a stack set and its associated stack
  instances.

  StackSets will cancel all the
  unstarted stack instance deployments and wait for those are in-progress to
  complete.
  """
  @spec stop_stack_set_operation(map(), stop_stack_set_operation_input(), list()) ::
          {:ok, stop_stack_set_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_stack_set_operation_errors()}
  def stop_stack_set_operation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopStackSetOperation", input, options)
  end

  @doc """
  Tests a registered extension to make sure it meets all necessary requirements
  for being published in the CloudFormation registry.

    *
  For resource types, this includes passing all contracts tests defined for the
  type.

    *
  For modules, this includes determining if the module's model meets all necessary
  requirements.

  For more information, see [Testing your public extension prior to
  publishing](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-testing)
  in the *CloudFormation CLI User Guide*.

  If you don't specify a version, CloudFormation uses the default version of the
  extension in your account and Region
  for testing.

  To perform testing, CloudFormation assumes the execution role specified when the
  type was registered. For more
  information, see
  [RegisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).   Once you've initiated testing on an extension using `TestType`, you can pass the
  returned
  `TypeVersionArn` into
  [DescribeType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html)
  to monitor the current test
  status and test status description for the extension.

  An extension must have a test status of `PASSED` before it can be published. For
  more information,
  see [Publishing extensions to make them available for public
  use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html)
  in the *CloudFormation CLI User
  Guide*.
  """
  @spec test_type(map(), test_type_input(), list()) ::
          {:ok, test_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_type_errors()}
  def test_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TestType", input, options)
  end

  @doc """
  Updates a generated template.

  This can be used to change the name, add and remove resources, refresh
  resources,
  and change the `DeletionPolicy` and `UpdateReplacePolicy` settings. You can
  check the status of
  the update to the generated template using the `DescribeGeneratedTemplate` API
  action.
  """
  @spec update_generated_template(map(), update_generated_template_input(), list()) ::
          {:ok, update_generated_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_generated_template_errors()}
  def update_generated_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGeneratedTemplate", input, options)
  end

  @doc """
  Updates a stack as specified in the template.

  After the call completes successfully, the stack update starts.
  You can check the status of the stack through the `DescribeStacks` action.

  To get a copy of the template for an existing stack, you can use the
  `GetTemplate`
  action.

  For more information about creating an update template, updating a stack, and
  monitoring the progress of the
  update, see [Updating a Stack](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html).
  """
  @spec update_stack(map(), update_stack_input(), list()) ::
          {:ok, update_stack_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_stack_errors()}
  def update_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStack", input, options)
  end

  @doc """
  Updates the parameter values for stack instances for the specified accounts,
  within the specified Amazon Web Services Regions.

  A stack instance refers to a stack in a specific account and Region.

  You can only update stack instances in Amazon Web Services Regions and accounts
  where they already exist; to
  create additional stack instances, use
  [CreateStackInstances](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html).   During stack set updates, any parameters overridden for a stack instance aren't
  updated, but retain their
  overridden value.

  You can only update the parameter *values* that are specified in the stack set;
  to add or
  delete a parameter itself, use
  [UpdateStackSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html)
  to update the stack set
  template. If you add a parameter to a template, before you can override the
  parameter value specified in the stack
  set you must first use
  [UpdateStackSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html)
  to update all stack
  instances with the updated template and parameter value specified in the stack
  set. Once a stack instance has been
  updated with the new parameter, you can then override the parameter value using
  `UpdateStackInstances`.
  """
  @spec update_stack_instances(map(), update_stack_instances_input(), list()) ::
          {:ok, update_stack_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_stack_instances_errors()}
  def update_stack_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStackInstances", input, options)
  end

  @doc """
  Updates the stack set, and associated stack instances in the specified accounts
  and Amazon Web Services Regions.

  Even if the stack set operation created by updating the stack set fails
  (completely or partially, below or above
  a specified failure tolerance), the stack set is updated with your changes.
  Subsequent `CreateStackInstances` calls on the specified stack set use the
  updated stack set.
  """
  @spec update_stack_set(map(), update_stack_set_input(), list()) ::
          {:ok, update_stack_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_stack_set_errors()}
  def update_stack_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStackSet", input, options)
  end

  @doc """
  Updates termination protection for the specified stack.

  If a user attempts to delete a stack with termination
  protection enabled, the operation fails and the stack remains unchanged. For
  more information, see [Protecting a Stack From Being
  Deleted](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html)
  in the *CloudFormation User Guide*.

  For [nested stacks](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html),
  termination protection is set on the root stack and can't be changed directly on
  the nested
  stack.
  """
  @spec update_termination_protection(map(), update_termination_protection_input(), list()) ::
          {:ok, update_termination_protection_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def update_termination_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTerminationProtection", input, options)
  end

  @doc """
  Validates a specified template.

  CloudFormation first checks if the template is valid JSON. If it isn't,
  CloudFormation
  checks if the template is valid YAML. If both these checks fail, CloudFormation
  returns a template validation
  error.
  """
  @spec validate_template(map(), validate_template_input(), list()) ::
          {:ok, validate_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def validate_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ValidateTemplate", input, options)
  end
end
