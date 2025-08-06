# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElasticBeanstalk do
  @moduledoc """
  AWS Elastic Beanstalk

  AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage
  scalable,
  fault-tolerant applications running on the Amazon Web Services cloud.

  For more information about this product, go to the [AWS Elastic Beanstalk](http://aws.amazon.com/elasticbeanstalk/) details page. The location
  of the
  latest AWS Elastic Beanstalk WSDL is
  [https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl](https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl). To install the Software Development Kits (SDKs), Integrated Development
  Environment (IDE)
  Toolkits, and command line tools that enable you to access the API, go to [Tools
  for Amazon Web Services](http://aws.amazon.com/tools/).

  ## Endpoints

  For a list of region-specific endpoints that AWS Elastic Beanstalk supports, go
  to
  [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region)
  in the *Amazon Web Services
  Glossary*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      environment_descriptions_message() :: %{
        "Environments" => list(environment_description()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type environment_descriptions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_platform_version_request() :: %{
        optional("EnvironmentName") => String.t() | atom(),
        optional("OptionSettings") => list(configuration_option_setting()),
        optional("Tags") => list(tag()),
        required("PlatformDefinitionBundle") => s3_location(),
        required("PlatformName") => String.t() | atom(),
        required("PlatformVersion") => String.t() | atom()
      }
      
  """
  @type create_platform_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_environment_operations_role_message() :: %{
        required("EnvironmentName") => String.t() | atom()
      }
      
  """
  @type disassociate_environment_operations_role_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      c_p_u_utilization() :: %{
        "IOWait" => float(),
        "IRQ" => float(),
        "Idle" => float(),
        "Nice" => float(),
        "Privileged" => float(),
        "SoftIRQ" => float(),
        "System" => float(),
        "User" => float()
      }
      
  """
  @type c_p_u_utilization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      apply_environment_managed_action_request() :: %{
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom(),
        required("ActionId") => String.t() | atom()
      }
      
  """
  @type apply_environment_managed_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_configuration_template_message() :: %{
        optional("Description") => String.t() | atom(),
        optional("OptionSettings") => list(configuration_option_setting()),
        optional("OptionsToRemove") => list(option_specification()),
        required("ApplicationName") => String.t() | atom(),
        required("TemplateName") => String.t() | atom()
      }
      
  """
  @type update_configuration_template_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compose_environments_message() :: %{
        optional("ApplicationName") => String.t() | atom(),
        optional("GroupName") => String.t() | atom(),
        optional("VersionLabels") => list(String.t() | atom())
      }
      
  """
  @type compose_environments_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rebuild_environment_message() :: %{
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom()
      }
      
  """
  @type rebuild_environment_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_link() :: %{
        "EnvironmentName" => String.t() | atom(),
        "LinkName" => String.t() | atom()
      }
      
  """
  @type environment_link() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      status_codes() :: %{
        "Status2xx" => integer(),
        "Status3xx" => integer(),
        "Status4xx" => integer(),
        "Status5xx" => integer()
      }
      
  """
  @type status_codes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      max_age_rule() :: %{
        "DeleteSourceFromS3" => boolean(),
        "Enabled" => boolean(),
        "MaxAgeInDays" => integer()
      }
      
  """
  @type max_age_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_type_not_supported_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_type_not_supported_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      solution_stack_description() :: %{
        "PermittedFileTypes" => list(String.t() | atom()),
        "SolutionStackName" => String.t() | atom()
      }
      
  """
  @type solution_stack_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_platform_version_request() :: %{
        optional("PlatformArn") => String.t() | atom()
      }
      
  """
  @type delete_platform_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_environment_operations_role_message() :: %{
        required("EnvironmentName") => String.t() | atom(),
        required("OperationsRole") => String.t() | atom()
      }
      
  """
  @type associate_environment_operations_role_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      single_instance_health() :: %{
        "ApplicationMetrics" => application_metrics(),
        "AvailabilityZone" => String.t() | atom(),
        "Causes" => list(String.t() | atom()),
        "Color" => String.t() | atom(),
        "Deployment" => deployment(),
        "HealthStatus" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "InstanceType" => String.t() | atom(),
        "LaunchedAt" => non_neg_integer(),
        "System" => system_status()
      }
      
  """
  @type single_instance_health() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_environments_message() :: %{
        optional("ApplicationName") => String.t() | atom(),
        optional("EnvironmentIds") => list(String.t() | atom()),
        optional("EnvironmentNames") => list(String.t() | atom()),
        optional("IncludeDeleted") => boolean(),
        optional("IncludedDeletedBackTo") => non_neg_integer(),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("VersionLabel") => String.t() | atom()
      }
      
  """
  @type describe_environments_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_buckets_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type too_many_buckets_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_environments_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type too_many_environments_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trigger() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type trigger() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      option_restriction_regex() :: %{
        "Label" => String.t() | atom(),
        "Pattern" => String.t() | atom()
      }
      
  """
  @type option_restriction_regex() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_platform_versions_request() :: %{
        optional("Filters") => list(platform_filter()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_platform_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      check_dns_availability_result_message() :: %{
        "Available" => boolean(),
        "FullyQualifiedCNAME" => String.t() | atom()
      }
      
  """
  @type check_dns_availability_result_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment() :: %{
        "DeploymentId" => float(),
        "DeploymentTime" => non_neg_integer(),
        "Status" => String.t() | atom(),
        "VersionLabel" => String.t() | atom()
      }
      
  """
  @type deployment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_platforms_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type too_many_platforms_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_message() :: %{
        optional("TerminateEnvByForce") => boolean(),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type delete_application_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_environment_managed_action_history_result() :: %{
        "ManagedActionHistoryItems" => list(managed_action_history_item()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_environment_managed_action_history_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      listener() :: %{
        "Port" => integer(),
        "Protocol" => String.t() | atom()
      }
      
  """
  @type listener() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_instances_health_result() :: %{
        "InstanceHealthList" => list(single_instance_health()),
        "NextToken" => String.t() | atom(),
        "RefreshedAt" => non_neg_integer()
      }
      
  """
  @type describe_instances_health_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_action() :: %{
        "ActionDescription" => String.t() | atom(),
        "ActionId" => String.t() | atom(),
        "ActionType" => list(any()),
        "Status" => list(any()),
        "WindowStartTime" => non_neg_integer()
      }
      
  """
  @type managed_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      build_configuration() :: %{
        "ArtifactName" => String.t() | atom(),
        "CodeBuildServiceRole" => String.t() | atom(),
        "ComputeType" => list(any()),
        "Image" => String.t() | atom(),
        "TimeoutInMinutes" => integer()
      }
      
  """
  @type build_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_instances_health_request() :: %{
        optional("AttributeNames") => list(list(any())()),
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_instances_health_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      apply_environment_managed_action_result() :: %{
        "ActionDescription" => String.t() | atom(),
        "ActionId" => String.t() | atom(),
        "ActionType" => list(any()),
        "Status" => String.t() | atom()
      }
      
  """
  @type apply_environment_managed_action_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_ami() :: %{
        "ImageId" => String.t() | atom(),
        "VirtualizationType" => String.t() | atom()
      }
      
  """
  @type custom_ami() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_descriptions_message() :: %{
        "Events" => list(event_description()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type event_descriptions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_description() :: %{
        "ApplicationName" => String.t() | atom(),
        "EnvironmentName" => String.t() | atom(),
        "EventDate" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "PlatformArn" => String.t() | atom(),
        "RequestId" => String.t() | atom(),
        "Severity" => list(any()),
        "TemplateName" => String.t() | atom(),
        "VersionLabel" => String.t() | atom()
      }
      
  """
  @type event_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      request_environment_info_message() :: %{
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom(),
        required("InfoType") => list(any())
      }
      
  """
  @type request_environment_info_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_message() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      configuration_option_description() :: %{
        "ChangeSeverity" => String.t() | atom(),
        "DefaultValue" => String.t() | atom(),
        "MaxLength" => integer(),
        "MaxValue" => integer(),
        "MinValue" => integer(),
        "Name" => String.t() | atom(),
        "Namespace" => String.t() | atom(),
        "Regex" => option_restriction_regex(),
        "UserDefined" => boolean(),
        "ValueOptions" => list(String.t() | atom()),
        "ValueType" => list(any())
      }
      
  """
  @type configuration_option_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_description() :: %{
        "Domain" => String.t() | atom(),
        "Listeners" => list(listener()),
        "LoadBalancerName" => String.t() | atom()
      }
      
  """
  @type load_balancer_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      queue() :: %{
        "Name" => String.t() | atom(),
        "URL" => String.t() | atom()
      }
      
  """
  @type queue() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_action_invalid_state_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type managed_action_invalid_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_tier() :: %{
        "Name" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "Version" => String.t() | atom()
      }
      
  """
  @type environment_tier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_platform_branches_result() :: %{
        "NextToken" => String.t() | atom(),
        "PlatformBranchSummaryList" => list(platform_branch_summary())
      }
      
  """
  @type list_platform_branches_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_environment_managed_actions_request() :: %{
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom(),
        optional("Status") => list(any())
      }
      
  """
  @type describe_environment_managed_actions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      platform_version_still_referenced_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type platform_version_still_referenced_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_info_description() :: %{
        "Ec2InstanceId" => String.t() | atom(),
        "InfoType" => list(any()),
        "Message" => String.t() | atom(),
        "SampleTimestamp" => non_neg_integer()
      }
      
  """
  @type environment_info_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      platform_framework() :: %{
        "Name" => String.t() | atom(),
        "Version" => String.t() | atom()
      }
      
  """
  @type platform_framework() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      elastic_beanstalk_service_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type elastic_beanstalk_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_environment_configuration_message() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("EnvironmentName") => String.t() | atom()
      }
      
  """
  @type delete_environment_configuration_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      platform_description() :: %{
        "CustomAmiList" => list(custom_ami()),
        "DateCreated" => non_neg_integer(),
        "DateUpdated" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Frameworks" => list(platform_framework()),
        "Maintainer" => String.t() | atom(),
        "OperatingSystemName" => String.t() | atom(),
        "OperatingSystemVersion" => String.t() | atom(),
        "PlatformArn" => String.t() | atom(),
        "PlatformBranchLifecycleState" => String.t() | atom(),
        "PlatformBranchName" => String.t() | atom(),
        "PlatformCategory" => String.t() | atom(),
        "PlatformLifecycleState" => String.t() | atom(),
        "PlatformName" => String.t() | atom(),
        "PlatformOwner" => String.t() | atom(),
        "PlatformStatus" => list(any()),
        "PlatformVersion" => String.t() | atom(),
        "ProgrammingLanguages" => list(platform_programming_language()),
        "SolutionStackName" => String.t() | atom(),
        "SupportedAddonList" => list(String.t() | atom()),
        "SupportedTierList" => list(String.t() | atom())
      }
      
  """
  @type platform_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      retrieve_environment_info_message() :: %{
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom(),
        required("InfoType") => list(any())
      }
      
  """
  @type retrieve_environment_info_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      builder() :: %{
        "ARN" => String.t() | atom()
      }
      
  """
  @type builder() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_quota() :: %{
        "Maximum" => integer()
      }
      
  """
  @type resource_quota() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_resource_description() :: %{
        "AutoScalingGroups" => list(auto_scaling_group()),
        "EnvironmentName" => String.t() | atom(),
        "Instances" => list(instance()),
        "LaunchConfigurations" => list(launch_configuration()),
        "LaunchTemplates" => list(launch_template()),
        "LoadBalancers" => list(load_balancer()),
        "Queues" => list(queue()),
        "Triggers" => list(trigger())
      }
      
  """
  @type environment_resource_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_action_history_item() :: %{
        "ActionDescription" => String.t() | atom(),
        "ActionId" => String.t() | atom(),
        "ActionType" => list(any()),
        "ExecutedTime" => non_neg_integer(),
        "FailureDescription" => String.t() | atom(),
        "FailureType" => list(any()),
        "FinishedTime" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type managed_action_history_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      abort_environment_update_message() :: %{
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom()
      }
      
  """
  @type abort_environment_update_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_health_summary() :: %{
        "Degraded" => integer(),
        "Info" => integer(),
        "NoData" => integer(),
        "Ok" => integer(),
        "Pending" => integer(),
        "Severe" => integer(),
        "Unknown" => integer(),
        "Warning" => integer()
      }
      
  """
  @type instance_health_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      configuration_settings_description() :: %{
        "ApplicationName" => String.t() | atom(),
        "DateCreated" => non_neg_integer(),
        "DateUpdated" => non_neg_integer(),
        "DeploymentStatus" => list(any()),
        "Description" => String.t() | atom(),
        "EnvironmentName" => String.t() | atom(),
        "OptionSettings" => list(configuration_option_setting()),
        "PlatformArn" => String.t() | atom(),
        "SolutionStackName" => String.t() | atom(),
        "TemplateName" => String.t() | atom()
      }
      
  """
  @type configuration_settings_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      check_dns_availability_message() :: %{
        required("CNAMEPrefix") => String.t() | atom()
      }
      
  """
  @type check_dns_availability_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      configuration_settings_validation_messages() :: %{
        "Messages" => list(validation_message())
      }
      
  """
  @type configuration_settings_validation_messages() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      search_filter() :: %{
        "Attribute" => String.t() | atom(),
        "Operator" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      platform_filter() :: %{
        "Operator" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type platform_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      configuration_option_setting() :: %{
        "Namespace" => String.t() | atom(),
        "OptionName" => String.t() | atom(),
        "ResourceName" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type configuration_option_setting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_options_message() :: %{
        optional("ApplicationName") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom(),
        optional("Options") => list(option_specification()),
        optional("PlatformArn") => String.t() | atom(),
        optional("SolutionStackName") => String.t() | atom(),
        optional("TemplateName") => String.t() | atom()
      }
      
  """
  @type describe_configuration_options_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      option_specification() :: %{
        "Namespace" => String.t() | atom(),
        "OptionName" => String.t() | atom(),
        "ResourceName" => String.t() | atom()
      }
      
  """
  @type option_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      platform_programming_language() :: %{
        "Name" => String.t() | atom(),
        "Version" => String.t() | atom()
      }
      
  """
  @type platform_programming_language() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_environment_message() :: %{
        optional("ApplicationName") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom(),
        optional("GroupName") => String.t() | atom(),
        optional("OptionSettings") => list(configuration_option_setting()),
        optional("OptionsToRemove") => list(option_specification()),
        optional("PlatformArn") => String.t() | atom(),
        optional("SolutionStackName") => String.t() | atom(),
        optional("TemplateName") => String.t() | atom(),
        optional("Tier") => environment_tier(),
        optional("VersionLabel") => String.t() | atom()
      }
      
  """
  @type update_environment_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_resource_lifecycle_description_message() :: %{
        "ApplicationName" => String.t() | atom(),
        "ResourceLifecycleConfig" => application_resource_lifecycle_config()
      }
      
  """
  @type application_resource_lifecycle_description_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_applications_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type too_many_applications_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_in_progress_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type operation_in_progress_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_environment_health_result() :: %{
        "ApplicationMetrics" => application_metrics(),
        "Causes" => list(String.t() | atom()),
        "Color" => String.t() | atom(),
        "EnvironmentName" => String.t() | atom(),
        "HealthStatus" => String.t() | atom(),
        "InstancesHealth" => instance_health_summary(),
        "RefreshedAt" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type describe_environment_health_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_version_lifecycle_config() :: %{
        "MaxAgeRule" => max_age_rule(),
        "MaxCountRule" => max_count_rule()
      }
      
  """
  @type application_version_lifecycle_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_version_message() :: %{
        optional("AutoCreateApplication") => boolean(),
        optional("BuildConfiguration") => build_configuration(),
        optional("Description") => String.t() | atom(),
        optional("Process") => boolean(),
        optional("SourceBuildInformation") => source_build_information(),
        optional("SourceBundle") => s3_location(),
        optional("Tags") => list(tag()),
        required("ApplicationName") => String.t() | atom(),
        required("VersionLabel") => String.t() | atom()
      }
      
  """
  @type create_application_version_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_metrics() :: %{
        "Duration" => integer(),
        "Latency" => latency(),
        "RequestCount" => integer(),
        "StatusCodes" => status_codes()
      }
      
  """
  @type application_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_subscription_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type s3_subscription_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      platform_branch_summary() :: %{
        "BranchName" => String.t() | atom(),
        "BranchOrder" => integer(),
        "LifecycleState" => String.t() | atom(),
        "PlatformName" => String.t() | atom(),
        "SupportedTierList" => list(String.t() | atom())
      }
      
  """
  @type platform_branch_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_available_solution_stacks_result_message() :: %{
        "SolutionStackDetails" => list(solution_stack_description()),
        "SolutionStacks" => list(String.t() | atom())
      }
      
  """
  @type list_available_solution_stacks_result_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_configuration() :: %{
        "ApplicationName" => String.t() | atom(),
        "TemplateName" => String.t() | atom()
      }
      
  """
  @type source_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_version_message() :: %{
        optional("DeleteSourceBundle") => boolean(),
        required("ApplicationName") => String.t() | atom(),
        required("VersionLabel") => String.t() | atom()
      }
      
  """
  @type delete_application_version_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "S3Bucket" => String.t() | atom(),
        "S3Key" => String.t() | atom()
      }
      
  """
  @type s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      system_status() :: %{
        "CPUUtilization" => c_p_u_utilization(),
        "LoadAverage" => list(float())
      }
      
  """
  @type system_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      latency() :: %{
        "P10" => float(),
        "P50" => float(),
        "P75" => float(),
        "P85" => float(),
        "P90" => float(),
        "P95" => float(),
        "P99" => float(),
        "P999" => float()
      }
      
  """
  @type latency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_versions_message() :: %{
        optional("ApplicationName") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("VersionLabels") => list(String.t() | atom())
      }
      
  """
  @type describe_application_versions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      platform_summary() :: %{
        "OperatingSystemName" => String.t() | atom(),
        "OperatingSystemVersion" => String.t() | atom(),
        "PlatformArn" => String.t() | atom(),
        "PlatformBranchLifecycleState" => String.t() | atom(),
        "PlatformBranchName" => String.t() | atom(),
        "PlatformCategory" => String.t() | atom(),
        "PlatformLifecycleState" => String.t() | atom(),
        "PlatformOwner" => String.t() | atom(),
        "PlatformStatus" => list(any()),
        "PlatformVersion" => String.t() | atom(),
        "SupportedAddonList" => list(String.t() | atom()),
        "SupportedTierList" => list(String.t() | atom())
      }
      
  """
  @type platform_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_environment_health_request() :: %{
        optional("AttributeNames") => list(list(any())()),
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom()
      }
      
  """
  @type describe_environment_health_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      retrieve_environment_info_result_message() :: %{
        "EnvironmentInfo" => list(environment_info_description())
      }
      
  """
  @type retrieve_environment_info_result_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_location_not_in_service_region_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type s3_location_not_in_service_region_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_description() :: %{
        "AbortableOperationInProgress" => boolean(),
        "ApplicationName" => String.t() | atom(),
        "CNAME" => String.t() | atom(),
        "DateCreated" => non_neg_integer(),
        "DateUpdated" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EndpointURL" => String.t() | atom(),
        "EnvironmentArn" => String.t() | atom(),
        "EnvironmentId" => String.t() | atom(),
        "EnvironmentLinks" => list(environment_link()),
        "EnvironmentName" => String.t() | atom(),
        "Health" => list(any()),
        "HealthStatus" => list(any()),
        "OperationsRole" => String.t() | atom(),
        "PlatformArn" => String.t() | atom(),
        "Resources" => environment_resources_description(),
        "SolutionStackName" => String.t() | atom(),
        "Status" => list(any()),
        "TemplateName" => String.t() | atom(),
        "Tier" => environment_tier(),
        "VersionLabel" => String.t() | atom()
      }
      
  """
  @type environment_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_version_description_message() :: %{
        "ApplicationVersion" => application_version_description()
      }
      
  """
  @type application_version_description_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      swap_environment_cnames_message() :: %{
        optional("DestinationEnvironmentId") => String.t() | atom(),
        optional("DestinationEnvironmentName") => String.t() | atom(),
        optional("SourceEnvironmentId") => String.t() | atom(),
        optional("SourceEnvironmentName") => String.t() | atom()
      }
      
  """
  @type swap_environment_cnames_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      max_count_rule() :: %{
        "DeleteSourceFromS3" => boolean(),
        "Enabled" => boolean(),
        "MaxCount" => integer()
      }
      
  """
  @type max_count_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_application_versions_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type too_many_application_versions_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_description_message() :: %{
        "Application" => application_description()
      }
      
  """
  @type application_description_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_message() :: %{
        "Message" => String.t() | atom(),
        "Namespace" => String.t() | atom(),
        "OptionName" => String.t() | atom(),
        "Severity" => list(any())
      }
      
  """
  @type validation_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validate_configuration_settings_message() :: %{
        optional("EnvironmentName") => String.t() | atom(),
        optional("TemplateName") => String.t() | atom(),
        required("ApplicationName") => String.t() | atom(),
        required("OptionSettings") => list(configuration_option_setting())
      }
      
  """
  @type validate_configuration_settings_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "Id" => String.t() | atom()
      }
      
  """
  @type instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_application_resource_lifecycle_message() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("ResourceLifecycleConfig") => application_resource_lifecycle_config()
      }
      
  """
  @type update_application_resource_lifecycle_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_resource_descriptions_message() :: %{
        "EnvironmentResources" => environment_resource_description()
      }
      
  """
  @type environment_resource_descriptions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      configuration_options_description() :: %{
        "Options" => list(configuration_option_description()),
        "PlatformArn" => String.t() | atom(),
        "SolutionStackName" => String.t() | atom()
      }
      
  """
  @type configuration_options_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_descriptions_message() :: %{
        "Applications" => list(application_description())
      }
      
  """
  @type application_descriptions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_attributes_result() :: %{
        "ResourceQuotas" => resource_quotas()
      }
      
  """
  @type describe_account_attributes_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_configuration_settings_message() :: %{
        optional("EnvironmentName") => String.t() | atom(),
        optional("TemplateName") => String.t() | atom(),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type describe_configuration_settings_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminate_environment_message() :: %{
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom(),
        optional("ForceTerminate") => boolean(),
        optional("TerminateResources") => boolean()
      }
      
  """
  @type terminate_environment_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_environment_resources_message() :: %{
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom()
      }
      
  """
  @type describe_environment_resources_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_events_message() :: %{
        optional("ApplicationName") => String.t() | atom(),
        optional("EndTime") => non_neg_integer(),
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("PlatformArn") => String.t() | atom(),
        optional("RequestId") => String.t() | atom(),
        optional("Severity") => list(any()),
        optional("StartTime") => non_neg_integer(),
        optional("TemplateName") => String.t() | atom(),
        optional("VersionLabel") => String.t() | atom()
      }
      
  """
  @type describe_events_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type load_balancer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type auto_scaling_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_environment_managed_actions_result() :: %{
        "ManagedActions" => list(managed_action())
      }
      
  """
  @type describe_environment_managed_actions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_tags_description_message() :: %{
        "ResourceArn" => String.t() | atom(),
        "ResourceTags" => list(tag())
      }
      
  """
  @type resource_tags_description_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      insufficient_privileges_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type insufficient_privileges_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      configuration_settings_descriptions() :: %{
        "ConfigurationSettings" => list(configuration_settings_description())
      }
      
  """
  @type configuration_settings_descriptions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_platform_version_result() :: %{
        "Builder" => builder(),
        "PlatformSummary" => platform_summary()
      }
      
  """
  @type create_platform_version_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_resources_description() :: %{
        "LoadBalancer" => load_balancer_description()
      }
      
  """
  @type environment_resources_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_description() :: %{
        "ApplicationArn" => String.t() | atom(),
        "ApplicationName" => String.t() | atom(),
        "ConfigurationTemplates" => list(String.t() | atom()),
        "DateCreated" => non_neg_integer(),
        "DateUpdated" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "ResourceLifecycleConfig" => application_resource_lifecycle_config(),
        "Versions" => list(String.t() | atom())
      }
      
  """
  @type application_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_platform_branches_request() :: %{
        optional("Filters") => list(search_filter()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_platform_branches_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      launch_template() :: %{
        "Id" => String.t() | atom()
      }
      
  """
  @type launch_template() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_applications_message() :: %{
        optional("ApplicationNames") => list(String.t() | atom())
      }
      
  """
  @type describe_applications_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_platform_version_result() :: %{
        "PlatformDescription" => platform_description()
      }
      
  """
  @type describe_platform_version_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_version_descriptions_message() :: %{
        "ApplicationVersions" => list(application_version_description()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type application_version_descriptions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_build_information() :: %{
        "SourceLocation" => String.t() | atom(),
        "SourceRepository" => list(any()),
        "SourceType" => list(any())
      }
      
  """
  @type source_build_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_storage_location_result_message() :: %{
        "S3Bucket" => String.t() | atom()
      }
      
  """
  @type create_storage_location_result_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_configuration_templates_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type too_many_configuration_templates_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      launch_configuration() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type launch_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_configuration_template_message() :: %{
        optional("Description") => String.t() | atom(),
        optional("EnvironmentId") => String.t() | atom(),
        optional("OptionSettings") => list(configuration_option_setting()),
        optional("PlatformArn") => String.t() | atom(),
        optional("SolutionStackName") => String.t() | atom(),
        optional("SourceConfiguration") => source_configuration(),
        optional("Tags") => list(tag()),
        required("ApplicationName") => String.t() | atom(),
        required("TemplateName") => String.t() | atom()
      }
      
  """
  @type create_configuration_template_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_platform_version_result() :: %{
        "PlatformSummary" => platform_summary()
      }
      
  """
  @type delete_platform_version_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_platform_version_request() :: %{
        optional("PlatformArn") => String.t() | atom()
      }
      
  """
  @type describe_platform_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_version_description() :: %{
        "ApplicationName" => String.t() | atom(),
        "ApplicationVersionArn" => String.t() | atom(),
        "BuildArn" => String.t() | atom(),
        "DateCreated" => non_neg_integer(),
        "DateUpdated" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "SourceBuildInformation" => source_build_information(),
        "SourceBundle" => s3_location(),
        "Status" => list(any()),
        "VersionLabel" => String.t() | atom()
      }
      
  """
  @type application_version_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_environment_managed_action_history_request() :: %{
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom(),
        optional("MaxItems") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_environment_managed_action_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_quotas() :: %{
        "ApplicationQuota" => resource_quota(),
        "ApplicationVersionQuota" => resource_quota(),
        "ConfigurationTemplateQuota" => resource_quota(),
        "CustomPlatformQuota" => resource_quota(),
        "EnvironmentQuota" => resource_quota()
      }
      
  """
  @type resource_quotas() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_application_message() :: %{
        optional("Description") => String.t() | atom(),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type update_application_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_application_version_message() :: %{
        optional("Description") => String.t() | atom(),
        required("ApplicationName") => String.t() | atom(),
        required("VersionLabel") => String.t() | atom()
      }
      
  """
  @type update_application_version_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_platform_versions_result() :: %{
        "NextToken" => String.t() | atom(),
        "PlatformSummaryList" => list(platform_summary())
      }
      
  """
  @type list_platform_versions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_configuration_template_message() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("TemplateName") => String.t() | atom()
      }
      
  """
  @type delete_configuration_template_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_bundle_deletion_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type source_bundle_deletion_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_build_not_in_service_region_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type code_build_not_in_service_region_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_tags_for_resource_message() :: %{
        optional("TagsToAdd") => list(tag()),
        optional("TagsToRemove") => list(String.t() | atom()),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type update_tags_for_resource_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restart_app_server_message() :: %{
        optional("EnvironmentId") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom()
      }
      
  """
  @type restart_app_server_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type too_many_tags_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_message() :: %{
        optional("Description") => String.t() | atom(),
        optional("ResourceLifecycleConfig") => application_resource_lifecycle_config(),
        optional("Tags") => list(tag()),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type create_application_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_resource_lifecycle_config() :: %{
        "ServiceRole" => String.t() | atom(),
        "VersionLifecycleConfig" => application_version_lifecycle_config()
      }
      
  """
  @type application_resource_lifecycle_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_environment_message() :: %{
        optional("CNAMEPrefix") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("EnvironmentName") => String.t() | atom(),
        optional("GroupName") => String.t() | atom(),
        optional("OperationsRole") => String.t() | atom(),
        optional("OptionSettings") => list(configuration_option_setting()),
        optional("OptionsToRemove") => list(option_specification()),
        optional("PlatformArn") => String.t() | atom(),
        optional("SolutionStackName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("TemplateName") => String.t() | atom(),
        optional("Tier") => environment_tier(),
        optional("VersionLabel") => String.t() | atom(),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type create_environment_message() :: %{(String.t() | atom()) => any()}

  @type abort_environment_update_errors() :: insufficient_privileges_exception()

  @type apply_environment_managed_action_errors() ::
          elastic_beanstalk_service_exception() | managed_action_invalid_state_exception()

  @type associate_environment_operations_role_errors() :: insufficient_privileges_exception()

  @type compose_environments_errors() ::
          insufficient_privileges_exception() | too_many_environments_exception()

  @type create_application_errors() :: too_many_applications_exception()

  @type create_application_version_errors() ::
          code_build_not_in_service_region_exception()
          | insufficient_privileges_exception()
          | too_many_application_versions_exception()
          | s3_location_not_in_service_region_exception()
          | too_many_applications_exception()

  @type create_configuration_template_errors() ::
          too_many_configuration_templates_exception()
          | insufficient_privileges_exception()
          | too_many_buckets_exception()

  @type create_environment_errors() ::
          insufficient_privileges_exception() | too_many_environments_exception()

  @type create_platform_version_errors() ::
          insufficient_privileges_exception()
          | elastic_beanstalk_service_exception()
          | too_many_platforms_exception()

  @type create_storage_location_errors() ::
          insufficient_privileges_exception()
          | s3_subscription_required_exception()
          | too_many_buckets_exception()

  @type delete_application_errors() :: operation_in_progress_exception()

  @type delete_application_version_errors() ::
          source_bundle_deletion_exception()
          | insufficient_privileges_exception()
          | s3_location_not_in_service_region_exception()
          | operation_in_progress_exception()

  @type delete_configuration_template_errors() :: operation_in_progress_exception()

  @type delete_platform_version_errors() ::
          insufficient_privileges_exception()
          | operation_in_progress_exception()
          | elastic_beanstalk_service_exception()
          | platform_version_still_referenced_exception()

  @type describe_account_attributes_errors() :: insufficient_privileges_exception()

  @type describe_configuration_options_errors() :: too_many_buckets_exception()

  @type describe_configuration_settings_errors() :: too_many_buckets_exception()

  @type describe_environment_health_errors() ::
          invalid_request_exception() | elastic_beanstalk_service_exception()

  @type describe_environment_managed_action_history_errors() ::
          elastic_beanstalk_service_exception()

  @type describe_environment_managed_actions_errors() :: elastic_beanstalk_service_exception()

  @type describe_environment_resources_errors() :: insufficient_privileges_exception()

  @type describe_instances_health_errors() ::
          invalid_request_exception() | elastic_beanstalk_service_exception()

  @type describe_platform_version_errors() ::
          insufficient_privileges_exception() | elastic_beanstalk_service_exception()

  @type disassociate_environment_operations_role_errors() :: insufficient_privileges_exception()

  @type list_platform_versions_errors() ::
          insufficient_privileges_exception() | elastic_beanstalk_service_exception()

  @type list_tags_for_resource_errors() ::
          insufficient_privileges_exception()
          | resource_not_found_exception()
          | resource_type_not_supported_exception()

  @type rebuild_environment_errors() :: insufficient_privileges_exception()

  @type terminate_environment_errors() :: insufficient_privileges_exception()

  @type update_application_resource_lifecycle_errors() :: insufficient_privileges_exception()

  @type update_configuration_template_errors() ::
          insufficient_privileges_exception() | too_many_buckets_exception()

  @type update_environment_errors() ::
          insufficient_privileges_exception() | too_many_buckets_exception()

  @type update_tags_for_resource_errors() ::
          too_many_tags_exception()
          | insufficient_privileges_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()
          | resource_type_not_supported_exception()

  @type validate_configuration_settings_errors() ::
          insufficient_privileges_exception() | too_many_buckets_exception()

  def metadata do
    %{
      api_version: "2010-12-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "elasticbeanstalk",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "Elastic Beanstalk",
      signature_version: "v4",
      signing_name: "elasticbeanstalk",
      target_prefix: "AWSElasticBeanstalkService"
    }
  end

  @doc """
  Cancels in-progress environment configuration update or application version
  deployment.
  """
  @spec abort_environment_update(map(), abort_environment_update_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, abort_environment_update_errors()}
  def abort_environment_update(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AbortEnvironmentUpdate", input, options)
  end

  @doc """
  Applies a scheduled managed action immediately.

  A managed action can be applied only if
  its status is `Scheduled`. Get the status and action ID of a managed action with
  `DescribeEnvironmentManagedActions`.
  """
  @spec apply_environment_managed_action(
          map(),
          apply_environment_managed_action_request(),
          list()
        ) ::
          {:ok, apply_environment_managed_action_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, apply_environment_managed_action_errors()}
  def apply_environment_managed_action(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ApplyEnvironmentManagedAction", input, options)
  end

  @doc """
  Add or change the operations role used by an environment.

  After this call is made, Elastic Beanstalk
  uses the associated operations role for permissions to downstream services
  during subsequent
  calls acting on this environment. For more information, see [Operations roles](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html)
  in the
  *AWS Elastic Beanstalk Developer Guide*.
  """
  @spec associate_environment_operations_role(
          map(),
          associate_environment_operations_role_message(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_environment_operations_role_errors()}
  def associate_environment_operations_role(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateEnvironmentOperationsRole", input, options)
  end

  @doc """
  Checks if the specified CNAME is available.
  """
  @spec check_dns_availability(map(), check_dns_availability_message(), list()) ::
          {:ok, check_dns_availability_result_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def check_dns_availability(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CheckDNSAvailability", input, options)
  end

  @doc """
  Create or update a group of environments that each run a separate component of a
  single
  application.

  Takes a list of version labels that specify application source bundles for each
  of the environments to create or update. The name of each environment and other
  required
  information must be included in the source bundles in an environment manifest
  named
  `env.yaml`. See [Compose Environments](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html)
  for details.
  """
  @spec compose_environments(map(), compose_environments_message(), list()) ::
          {:ok, environment_descriptions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, compose_environments_errors()}
  def compose_environments(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ComposeEnvironments", input, options)
  end

  @doc """
  Creates an application that has one configuration template named `default`
  and no application versions.
  """
  @spec create_application(map(), create_application_message(), list()) ::
          {:ok, application_description_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """
  Creates an application version for the specified application.

  You can create an
  application version from a source bundle in Amazon S3, a commit in AWS
  CodeCommit, or the
  output of an AWS CodeBuild build as follows:

  Specify a commit in an AWS CodeCommit repository with
  `SourceBuildInformation`.

  Specify a build in an AWS CodeBuild with `SourceBuildInformation` and
  `BuildConfiguration`.

  Specify a source bundle in S3 with `SourceBundle`

  Omit both `SourceBuildInformation` and `SourceBundle` to use the
  default sample application.

  After you create an application version with a specified Amazon S3 bucket and
  key
  location, you can't change that Amazon S3 location. If you change the Amazon S3
  location,
  you receive an exception when you attempt to launch an environment from the
  application
  version.
  """
  @spec create_application_version(map(), create_application_version_message(), list()) ::
          {:ok, application_version_description_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_version_errors()}
  def create_application_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateApplicationVersion", input, options)
  end

  @doc """
  Creates an AWS Elastic Beanstalk configuration template, associated with a
  specific Elastic Beanstalk
  application.

  You define application configuration settings in a configuration template. You
  can then use the configuration template to deploy different versions of the
  application with
  the same configuration settings.

  Templates aren't associated with any environment. The `EnvironmentName`
  response element is always `null`.

  Related Topics

    *

  `DescribeConfigurationOptions`

    *

  `DescribeConfigurationSettings`

    *

  `ListAvailableSolutionStacks`
  """
  @spec create_configuration_template(map(), create_configuration_template_message(), list()) ::
          {:ok, configuration_settings_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_configuration_template_errors()}
  def create_configuration_template(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConfigurationTemplate", input, options)
  end

  @doc """
  Launches an AWS Elastic Beanstalk environment for the specified application
  using the specified
  configuration.
  """
  @spec create_environment(map(), create_environment_message(), list()) ::
          {:ok, environment_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEnvironment", input, options)
  end

  @doc """
  Create a new version of your custom platform.
  """
  @spec create_platform_version(map(), create_platform_version_request(), list()) ::
          {:ok, create_platform_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_platform_version_errors()}
  def create_platform_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePlatformVersion", input, options)
  end

  @doc """
  Creates a bucket in Amazon S3 to store application versions, logs, and other
  files used
  by Elastic Beanstalk environments.

  The Elastic Beanstalk console and EB CLI call this API the
  first time you create an environment in a region. If the storage location
  already exists,
  `CreateStorageLocation` still returns the bucket name but does not create a new
  bucket.
  """
  @spec create_storage_location(map(), %{}, list()) ::
          {:ok, create_storage_location_result_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_storage_location_errors()}
  def create_storage_location(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateStorageLocation", input, options)
  end

  @doc """
  Deletes the specified application along with all associated versions and
  configurations.

  The application versions will not be deleted from your Amazon S3
  bucket.

  You cannot delete an application that has a running environment.
  """
  @spec delete_application(map(), delete_application_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplication", input, options)
  end

  @doc """
  Deletes the specified version from the specified application.

  You cannot delete an application version that is associated with a running
  environment.
  """
  @spec delete_application_version(map(), delete_application_version_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_version_errors()}
  def delete_application_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplicationVersion", input, options)
  end

  @doc """
  Deletes the specified configuration template.

  When you launch an environment using a configuration template, the environment
  gets a
  copy of the template. You can delete or modify the environment's copy of the
  template
  without affecting the running environment.
  """
  @spec delete_configuration_template(map(), delete_configuration_template_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configuration_template_errors()}
  def delete_configuration_template(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConfigurationTemplate", input, options)
  end

  @doc """
  Deletes the draft configuration associated with the running environment.

  Updating a running environment with any configuration changes creates a draft
  configuration set. You can get the draft configuration using
  `DescribeConfigurationSettings` while the update is in progress or if the update
  fails. The `DeploymentStatus` for the draft configuration indicates whether the
  deployment is in process or has failed. The draft configuration remains in
  existence until it
  is deleted with this action.
  """
  @spec delete_environment_configuration(
          map(),
          delete_environment_configuration_message(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_environment_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEnvironmentConfiguration", input, options)
  end

  @doc """
  Deletes the specified version of a custom platform.
  """
  @spec delete_platform_version(map(), delete_platform_version_request(), list()) ::
          {:ok, delete_platform_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_platform_version_errors()}
  def delete_platform_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePlatformVersion", input, options)
  end

  @doc """
  Returns attributes related to AWS Elastic Beanstalk that are associated with the
  calling AWS
  account.

  The result currently has one set of attributes—resource quotas.
  """
  @spec describe_account_attributes(map(), %{}, list()) ::
          {:ok, describe_account_attributes_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_account_attributes_errors()}
  def describe_account_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAccountAttributes", input, options)
  end

  @doc """
  Retrieve a list of application versions.
  """
  @spec describe_application_versions(map(), describe_application_versions_message(), list()) ::
          {:ok, application_version_descriptions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_application_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplicationVersions", input, options)
  end

  @doc """
  Returns the descriptions of existing applications.
  """
  @spec describe_applications(map(), describe_applications_message(), list()) ::
          {:ok, application_descriptions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_applications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplications", input, options)
  end

  @doc """
  Describes the configuration options that are used in a particular configuration
  template or environment, or that a specified solution stack defines.

  The description includes
  the values the options, their default values, and an indication of the required
  action on a
  running environment if an option value is changed.
  """
  @spec describe_configuration_options(map(), describe_configuration_options_message(), list()) ::
          {:ok, configuration_options_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_configuration_options_errors()}
  def describe_configuration_options(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConfigurationOptions", input, options)
  end

  @doc """
  Returns a description of the settings for the specified configuration set, that
  is,
  either a configuration template or the configuration set associated with a
  running
  environment.

  When describing the settings for the configuration set associated with a running
  environment, it is possible to receive two sets of setting descriptions. One is
  the deployed
  configuration set, and the other is a draft configuration of an environment that
  is either in
  the process of deployment or that failed to deploy.

  Related Topics

    *

  `DeleteEnvironmentConfiguration`
  """
  @spec describe_configuration_settings(map(), describe_configuration_settings_message(), list()) ::
          {:ok, configuration_settings_descriptions(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_configuration_settings_errors()}
  def describe_configuration_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConfigurationSettings", input, options)
  end

  @doc """
  Returns information about the overall health of the specified environment.

  The
  **DescribeEnvironmentHealth** operation is only available with
  AWS Elastic Beanstalk Enhanced Health.
  """
  @spec describe_environment_health(map(), describe_environment_health_request(), list()) ::
          {:ok, describe_environment_health_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_environment_health_errors()}
  def describe_environment_health(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEnvironmentHealth", input, options)
  end

  @doc """
  Lists an environment's completed and failed managed actions.
  """
  @spec describe_environment_managed_action_history(
          map(),
          describe_environment_managed_action_history_request(),
          list()
        ) ::
          {:ok, describe_environment_managed_action_history_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_environment_managed_action_history_errors()}
  def describe_environment_managed_action_history(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEnvironmentManagedActionHistory", input, options)
  end

  @doc """
  Lists an environment's upcoming and in-progress managed actions.
  """
  @spec describe_environment_managed_actions(
          map(),
          describe_environment_managed_actions_request(),
          list()
        ) ::
          {:ok, describe_environment_managed_actions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_environment_managed_actions_errors()}
  def describe_environment_managed_actions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEnvironmentManagedActions", input, options)
  end

  @doc """
  Returns AWS resources for this environment.
  """
  @spec describe_environment_resources(map(), describe_environment_resources_message(), list()) ::
          {:ok, environment_resource_descriptions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_environment_resources_errors()}
  def describe_environment_resources(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEnvironmentResources", input, options)
  end

  @doc """
  Returns descriptions for existing environments.
  """
  @spec describe_environments(map(), describe_environments_message(), list()) ::
          {:ok, environment_descriptions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_environments(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEnvironments", input, options)
  end

  @doc """
  Returns list of event descriptions matching criteria up to the last 6 weeks.

  This action returns the most recent 1,000 events from the specified
  `NextToken`.
  """
  @spec describe_events(map(), describe_events_message(), list()) ::
          {:ok, event_descriptions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEvents", input, options)
  end

  @doc """
  Retrieves detailed information about the health of instances in your AWS Elastic
  Beanstalk.

  This operation requires [enhanced health reporting](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html).
  """
  @spec describe_instances_health(map(), describe_instances_health_request(), list()) ::
          {:ok, describe_instances_health_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_instances_health_errors()}
  def describe_instances_health(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeInstancesHealth", input, options)
  end

  @doc """
  Describes a platform version.

  Provides full details. Compare to `ListPlatformVersions`, which provides summary
  information about a list of
  platform versions.

  For definitions of platform version and other platform-related terms, see [AWS Elastic Beanstalk
  Platforms
  Glossary](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html).
  """
  @spec describe_platform_version(map(), describe_platform_version_request(), list()) ::
          {:ok, describe_platform_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_platform_version_errors()}
  def describe_platform_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePlatformVersion", input, options)
  end

  @doc """
  Disassociate the operations role from an environment.

  After this call is made, Elastic Beanstalk uses
  the caller's permissions for permissions to downstream services during
  subsequent calls acting
  on this environment. For more information, see [Operations roles](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html)
  in the
  *AWS Elastic Beanstalk Developer Guide*.
  """
  @spec disassociate_environment_operations_role(
          map(),
          disassociate_environment_operations_role_message(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_environment_operations_role_errors()}
  def disassociate_environment_operations_role(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateEnvironmentOperationsRole", input, options)
  end

  @doc """
  Returns a list of the available solution stack names, with the public version
  first and
  then in reverse chronological order.
  """
  @spec list_available_solution_stacks(map(), %{}, list()) ::
          {:ok, list_available_solution_stacks_result_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_available_solution_stacks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAvailableSolutionStacks", input, options)
  end

  @doc """
  Lists the platform branches available for your account in an AWS Region.

  Provides
  summary information about each platform branch.

  For definitions of platform branch and other platform-related terms, see [AWS Elastic Beanstalk
  Platforms
  Glossary](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html).
  """
  @spec list_platform_branches(map(), list_platform_branches_request(), list()) ::
          {:ok, list_platform_branches_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_platform_branches(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPlatformBranches", input, options)
  end

  @doc """
  Lists the platform versions available for your account in an AWS Region.

  Provides
  summary information about each platform version. Compare to
  `DescribePlatformVersion`, which provides full details about a single platform
  version.

  For definitions of platform version and other platform-related terms, see [AWS Elastic Beanstalk
  Platforms
  Glossary](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html).
  """
  @spec list_platform_versions(map(), list_platform_versions_request(), list()) ::
          {:ok, list_platform_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_platform_versions_errors()}
  def list_platform_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPlatformVersions", input, options)
  end

  @doc """
  Return the tags applied to an AWS Elastic Beanstalk resource.

  The response contains a list of tag key-value pairs.

  Elastic Beanstalk supports tagging of all of its resources. For details about
  resource tagging, see
  [Tagging Application Resources](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html).
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_message(), list()) ::
          {:ok, resource_tags_description_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Deletes and recreates all of the AWS resources (for example: the Auto Scaling
  group,
  load balancer, etc.) for a specified environment and forces a restart.
  """
  @spec rebuild_environment(map(), rebuild_environment_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, rebuild_environment_errors()}
  def rebuild_environment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RebuildEnvironment", input, options)
  end

  @doc """
  Initiates a request to compile the specified type of information of the deployed
  environment.

  Setting the `InfoType` to `tail` compiles the last lines from
  the application server log files of every Amazon EC2 instance in your
  environment.

  Setting the `InfoType` to `bundle` compresses the application
  server log files for every Amazon EC2 instance into a `.zip` file. Legacy and
  .NET
  containers do not support bundle logs.

  Use `RetrieveEnvironmentInfo` to obtain the set of logs.

  Related Topics

    *

  `RetrieveEnvironmentInfo`
  """
  @spec request_environment_info(map(), request_environment_info_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def request_environment_info(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RequestEnvironmentInfo", input, options)
  end

  @doc """
  Causes the environment to restart the application container server running on
  each
  Amazon EC2 instance.
  """
  @spec restart_app_server(map(), restart_app_server_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def restart_app_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestartAppServer", input, options)
  end

  @doc """
  Retrieves the compiled information from a `RequestEnvironmentInfo`
  request.

  Related Topics

    *

  `RequestEnvironmentInfo`
  """
  @spec retrieve_environment_info(map(), retrieve_environment_info_message(), list()) ::
          {:ok, retrieve_environment_info_result_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def retrieve_environment_info(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RetrieveEnvironmentInfo", input, options)
  end

  @doc """
  Swaps the CNAMEs of two environments.
  """
  @spec swap_environment_cnames(map(), swap_environment_cnames_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def swap_environment_cnames(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SwapEnvironmentCNAMEs", input, options)
  end

  @doc """
  Terminates the specified environment.
  """
  @spec terminate_environment(map(), terminate_environment_message(), list()) ::
          {:ok, environment_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_environment_errors()}
  def terminate_environment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TerminateEnvironment", input, options)
  end

  @doc """
  Updates the specified application to have the specified properties.

  If a property (for example, `description`) is not provided, the value
  remains unchanged. To clear these properties, specify an empty string.
  """
  @spec update_application(map(), update_application_message(), list()) ::
          {:ok, application_description_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end

  @doc """
  Modifies lifecycle settings for an application.
  """
  @spec update_application_resource_lifecycle(
          map(),
          update_application_resource_lifecycle_message(),
          list()
        ) ::
          {:ok, application_resource_lifecycle_description_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_resource_lifecycle_errors()}
  def update_application_resource_lifecycle(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateApplicationResourceLifecycle", input, options)
  end

  @doc """
  Updates the specified application version to have the specified properties.

  If a property (for example, `description`) is not provided, the value
  remains unchanged. To clear properties, specify an empty string.
  """
  @spec update_application_version(map(), update_application_version_message(), list()) ::
          {:ok, application_version_description_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_application_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateApplicationVersion", input, options)
  end

  @doc """
  Updates the specified configuration template to have the specified properties or
  configuration option values.

  If a property (for example, `ApplicationName`) is not provided, its value
  remains unchanged. To clear such properties, specify an empty string.

  Related Topics

    *

  `DescribeConfigurationOptions`
  """
  @spec update_configuration_template(map(), update_configuration_template_message(), list()) ::
          {:ok, configuration_settings_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configuration_template_errors()}
  def update_configuration_template(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateConfigurationTemplate", input, options)
  end

  @doc """
  Updates the environment description, deploys a new application version, updates
  the
  configuration settings to an entirely new configuration template, or updates
  select
  configuration option values in the running environment.

  Attempting to update both the release and configuration is not allowed and AWS
  Elastic
  Beanstalk returns an `InvalidParameterCombination` error.

  When updating the configuration settings to a new template or individual
  settings, a
  draft configuration is created and `DescribeConfigurationSettings` for this
  environment returns two setting descriptions with different `DeploymentStatus`
  values.
  """
  @spec update_environment(map(), update_environment_message(), list()) ::
          {:ok, environment_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateEnvironment", input, options)
  end

  @doc """
  Update the list of tags applied to an AWS Elastic Beanstalk resource.

  Two lists can be passed: `TagsToAdd`
  for tags to add or update, and `TagsToRemove`.

  Elastic Beanstalk supports tagging of all of its resources. For details about
  resource tagging, see
  [Tagging Application Resources](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html).

  If you create a custom IAM user policy to control permission to this operation,
  specify
  one of the following two virtual actions (or both) instead of the API operation
  name:

  ## Definitions

  ### elasticbeanstalk:AddTags

  Controls permission to call `UpdateTagsForResource` and pass a list of tags to
  add in the `TagsToAdd`
  parameter.

  ### elasticbeanstalk:RemoveTags

  Controls permission to call `UpdateTagsForResource` and pass a list of tag keys
  to remove in the `TagsToRemove`
  parameter.

  For details about creating a custom user policy, see [Creating a Custom User Policy](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies).
  """
  @spec update_tags_for_resource(map(), update_tags_for_resource_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_tags_for_resource_errors()}
  def update_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTagsForResource", input, options)
  end

  @doc """
  Takes a set of configuration settings and either a configuration template or
  environment, and determines whether those values are valid.

  This action returns a list of messages indicating any errors or warnings
  associated
  with the selection of option values.
  """
  @spec validate_configuration_settings(map(), validate_configuration_settings_message(), list()) ::
          {:ok, configuration_settings_validation_messages(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, validate_configuration_settings_errors()}
  def validate_configuration_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ValidateConfigurationSettings", input, options)
  end
end
