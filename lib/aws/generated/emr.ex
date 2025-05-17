# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EMR do
  @moduledoc """
  Amazon EMR is a web service that makes it easier to process large amounts of
  data efficiently.

  Amazon EMR uses Hadoop processing combined with several Amazon Web Services
  services to do tasks such as web indexing, data mining, log file analysis,
  machine learning, scientific simulation, and data warehouse management.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      cancel_steps_info() :: %{
        "Reason" => String.t(),
        "Status" => list(any()),
        "StepId" => String.t()
      }
      
  """
  @type cancel_steps_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_state_change_reason() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type instance_state_change_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_notebook_s3_location_from_input() :: %{
        "Bucket" => String.t(),
        "Key" => String.t()
      }
      
  """
  @type output_notebook_s3_location_from_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_auto_termination_policy_input() :: %{
        required("ClusterId") => String.t()
      }
      
  """
  @type get_auto_termination_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_persistent_app_ui_input() :: %{
        optional("EMRContainersConfig") => emr_containers_config(),
        optional("ProfilerType") => list(any()),
        optional("Tags") => list(tag()()),
        optional("XReferer") => String.t(),
        required("TargetResourceArn") => String.t()
      }
      
  """
  @type create_persistent_app_ui_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bootstrap_action_detail() :: %{
        "BootstrapActionConfig" => bootstrap_action_config()
      }
      
  """
  @type bootstrap_action_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bootstrap_actions_input() :: %{
        optional("Marker") => String.t(),
        required("ClusterId") => String.t()
      }
      
  """
  @type list_bootstrap_actions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_auto_termination_policy_output() :: %{}
      
  """
  @type put_auto_termination_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      auto_termination_policy() :: %{
        "IdleTimeout" => float()
      }
      
  """
  @type auto_termination_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_release_label_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ReleaseLabel") => String.t()
      }
      
  """
  @type describe_release_label_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_trigger() :: %{
        "CloudWatchAlarmDefinition" => cloud_watch_alarm_definition()
      }
      
  """
  @type scaling_trigger() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bootstrap_action_config() :: %{
        "Name" => String.t(),
        "ScriptBootstrapAction" => script_bootstrap_action_config()
      }
      
  """
  @type bootstrap_action_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_studio_input() :: %{
        required("StudioId") => String.t()
      }
      
  """
  @type delete_studio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_security_configuration_output() :: %{
        "CreationDateTime" => non_neg_integer(),
        "Name" => String.t(),
        "SecurityConfiguration" => String.t()
      }
      
  """
  @type describe_security_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_groups_output() :: %{
        "InstanceGroups" => list(instance_group()()),
        "Marker" => String.t()
      }
      
  """
  @type list_instance_groups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step_state_change_reason() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type step_state_change_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      release_label_filter() :: %{
        "Application" => String.t(),
        "Prefix" => String.t()
      }
      
  """
  @type release_label_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_policy_status() :: %{
        "State" => list(any()),
        "StateChangeReason" => auto_scaling_policy_state_change_reason()
      }
      
  """
  @type auto_scaling_policy_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_output() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type describe_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_studio_session_mapping_input() :: %{
        optional("IdentityId") => String.t(),
        optional("IdentityName") => String.t(),
        required("IdentityType") => list(any()),
        required("SessionPolicyArn") => String.t(),
        required("StudioId") => String.t()
      }
      
  """
  @type create_studio_session_mapping_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_cluster_session_credentials_input() :: %{
        optional("ExecutionRoleArn") => String.t(),
        required("ClusterId") => String.t()
      }
      
  """
  @type get_cluster_session_credentials_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simplified_application() :: %{
        "Name" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type simplified_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_step_output() :: %{
        "Step" => step()
      }
      
  """
  @type describe_step_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_visible_to_all_users_input() :: %{
        required("JobFlowIds") => list(String.t()()),
        required("VisibleToAllUsers") => boolean()
      }
      
  """
  @type set_visible_to_all_users_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_block_public_access_configuration_input() :: %{
        required("BlockPublicAccessConfiguration") => block_public_access_configuration()
      }
      
  """
  @type put_block_public_access_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_instance_fleet_input() :: %{
        required("ClusterId") => String.t(),
        required("InstanceFleet") => instance_fleet_config()
      }
      
  """
  @type add_instance_fleet_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_fleets_output() :: %{
        "InstanceFleets" => list(instance_fleet()()),
        "Marker" => String.t()
      }
      
  """
  @type list_instance_fleets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step_detail() :: %{
        "ExecutionStatusDetail" => step_execution_status_detail(),
        "StepConfig" => step_config()
      }
      
  """
  @type step_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      script_bootstrap_action_config() :: %{
        "Args" => list(String.t()()),
        "Path" => String.t()
      }
      
  """
  @type script_bootstrap_action_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_instance_groups_output() :: %{
        "ClusterArn" => String.t(),
        "InstanceGroupIds" => list(String.t()()),
        "JobFlowId" => String.t()
      }
      
  """
  @type add_instance_groups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_specification() :: %{
        "Iops" => integer(),
        "SizeInGB" => integer(),
        "Throughput" => integer(),
        "VolumeType" => String.t()
      }
      
  """
  @type volume_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_persistent_app_ui_presigned_url_input() :: %{
        optional("ApplicationId") => String.t(),
        optional("AuthProxyCall") => boolean(),
        optional("ExecutionRoleArn") => String.t(),
        optional("PersistentAppUIType") => list(any()),
        required("PersistentAppUIId") => String.t()
      }
      
  """
  @type get_persistent_app_ui_presigned_url_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_steps_input() :: %{
        optional("Marker") => String.t(),
        optional("StepIds") => list(String.t()()),
        optional("StepStates") => list(list(any())()),
        required("ClusterId") => String.t()
      }
      
  """
  @type list_steps_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_output() :: %{}
      
  """
  @type add_tags_output() :: %{}

  @typedoc """

  ## Example:
      
      start_notebook_execution_output() :: %{
        "NotebookExecutionId" => String.t()
      }
      
  """
  @type start_notebook_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      spot_resizing_specification() :: %{
        "AllocationStrategy" => list(any()),
        "TimeoutDurationMinutes" => integer()
      }
      
  """
  @type spot_resizing_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration() :: %{
        "Classification" => String.t(),
        "Configurations" => list(configuration()()),
        "Properties" => map()
      }
      
  """
  @type configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_group_timeline() :: %{
        "CreationDateTime" => non_neg_integer(),
        "EndDateTime" => non_neg_integer(),
        "ReadyDateTime" => non_neg_integer()
      }
      
  """
  @type instance_group_timeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      supported_product_config() :: %{
        "Args" => list(String.t()()),
        "Name" => String.t()
      }
      
  """
  @type supported_product_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_security_configurations_input() :: %{
        optional("Marker") => String.t()
      }
      
  """
  @type list_security_configurations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_policy() :: %{
        "Constraints" => scaling_constraints(),
        "Rules" => list(scaling_rule()())
      }
      
  """
  @type auto_scaling_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_fleet() :: %{
        "Context" => String.t(),
        "Id" => String.t(),
        "InstanceFleetType" => list(any()),
        "InstanceTypeSpecifications" => list(instance_type_specification()()),
        "LaunchSpecifications" => instance_fleet_provisioning_specifications(),
        "Name" => String.t(),
        "ProvisionedOnDemandCapacity" => integer(),
        "ProvisionedSpotCapacity" => integer(),
        "ResizeSpecifications" => instance_fleet_resizing_specifications(),
        "Status" => instance_fleet_status(),
        "TargetOnDemandCapacity" => integer(),
        "TargetSpotCapacity" => integer()
      }
      
  """
  @type instance_fleet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_job_flows_input() :: %{
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("JobFlowIds") => list(String.t()()),
        optional("JobFlowStates") => list(list(any())())
      }
      
  """
  @type describe_job_flows_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      placement_group_config() :: %{
        "InstanceRole" => list(any()),
        "PlacementStrategy" => list(any())
      }
      
  """
  @type placement_group_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_input() :: %{
        required("ResourceId") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type add_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hadoop_step_config() :: %{
        "Args" => list(String.t()()),
        "Jar" => String.t(),
        "MainClass" => String.t(),
        "Properties" => map()
      }
      
  """
  @type hadoop_step_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_supported_instance_types_input() :: %{
        optional("Marker") => String.t(),
        required("ReleaseLabel") => String.t()
      }
      
  """
  @type list_supported_instance_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_release_label_output() :: %{
        "Applications" => list(simplified_application()()),
        "AvailableOSReleases" => list(o_s_release()()),
        "NextToken" => String.t(),
        "ReleaseLabel" => String.t()
      }
      
  """
  @type describe_release_label_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_managed_scaling_policy_input() :: %{
        required("ClusterId") => String.t()
      }
      
  """
  @type get_managed_scaling_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_configuration_summary() :: %{
        "CreationDateTime" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type security_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_flow_detail() :: %{
        "AmiVersion" => String.t(),
        "AutoScalingRole" => String.t(),
        "BootstrapActions" => list(bootstrap_action_detail()()),
        "ExecutionStatusDetail" => job_flow_execution_status_detail(),
        "Instances" => job_flow_instances_detail(),
        "JobFlowId" => String.t(),
        "JobFlowRole" => String.t(),
        "LogEncryptionKmsKeyId" => String.t(),
        "LogUri" => String.t(),
        "Name" => String.t(),
        "ScaleDownBehavior" => list(any()),
        "ServiceRole" => String.t(),
        "Steps" => list(step_detail()()),
        "SupportedProducts" => list(String.t()()),
        "VisibleToAllUsers" => boolean()
      }
      
  """
  @type job_flow_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_auto_termination_policy_input() :: %{
        required("ClusterId") => String.t()
      }
      
  """
  @type remove_auto_termination_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instances_output() :: %{
        "Instances" => list(instance()()),
        "Marker" => String.t()
      }
      
  """
  @type list_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failure_details() :: %{
        "LogFile" => String.t(),
        "Message" => String.t(),
        "Reason" => String.t()
      }
      
  """
  @type failure_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_clusters_output() :: %{
        "Clusters" => list(cluster_summary()()),
        "Marker" => String.t()
      }
      
  """
  @type list_clusters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_auto_termination_policy_output() :: %{
        "AutoTerminationPolicy" => auto_termination_policy()
      }
      
  """
  @type get_auto_termination_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notebook_execution() :: %{
        "Arn" => String.t(),
        "EditorId" => String.t(),
        "EndTime" => non_neg_integer(),
        "EnvironmentVariables" => map(),
        "ExecutionEngine" => execution_engine_config(),
        "LastStateChangeReason" => String.t(),
        "NotebookExecutionId" => String.t(),
        "NotebookExecutionName" => String.t(),
        "NotebookInstanceSecurityGroupId" => String.t(),
        "NotebookParams" => String.t(),
        "NotebookS3Location" => notebook_s3_location_for_output(),
        "OutputNotebookFormat" => list(any()),
        "OutputNotebookS3Location" => output_notebook_s3_location_for_output(),
        "OutputNotebookURI" => String.t(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "Tags" => list(tag()())
      }
      
  """
  @type notebook_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_output() :: %{}
      
  """
  @type remove_tags_output() :: %{}

  @typedoc """

  ## Example:
      
      instance_group_status() :: %{
        "State" => list(any()),
        "StateChangeReason" => instance_group_state_change_reason(),
        "Timeline" => instance_group_timeline()
      }
      
  """
  @type instance_group_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notebook_s3_location_from_input() :: %{
        "Bucket" => String.t(),
        "Key" => String.t()
      }
      
  """
  @type notebook_s3_location_from_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      block_public_access_configuration_metadata() :: %{
        "CreatedByArn" => String.t(),
        "CreationDateTime" => non_neg_integer()
      }
      
  """
  @type block_public_access_configuration_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_block_public_access_configuration_output() :: %{}
      
  """
  @type put_block_public_access_configuration_output() :: %{}

  @typedoc """

  ## Example:
      
      cluster_summary() :: %{
        "ClusterArn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "NormalizedInstanceHours" => integer(),
        "OutpostArn" => String.t(),
        "Status" => cluster_status()
      }
      
  """
  @type cluster_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_auto_scaling_policy_input() :: %{
        required("AutoScalingPolicy") => auto_scaling_policy(),
        required("ClusterId") => String.t(),
        required("InstanceGroupId") => String.t()
      }
      
  """
  @type put_auto_scaling_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_alarm_definition() :: %{
        "ComparisonOperator" => list(any()),
        "Dimensions" => list(metric_dimension()()),
        "EvaluationPeriods" => integer(),
        "MetricName" => String.t(),
        "Namespace" => String.t(),
        "Period" => integer(),
        "Statistic" => list(any()),
        "Threshold" => float(),
        "Unit" => list(any())
      }
      
  """
  @type cloud_watch_alarm_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_persistent_app_ui_output() :: %{
        "PersistentAppUIId" => String.t(),
        "RuntimeRoleEnabledCluster" => boolean()
      }
      
  """
  @type create_persistent_app_ui_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_output() :: %{
        "StepConcurrencyLevel" => integer()
      }
      
  """
  @type modify_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step_status() :: %{
        "FailureDetails" => failure_details(),
        "State" => list(any()),
        "StateChangeReason" => step_state_change_reason(),
        "Timeline" => step_timeline()
      }
      
  """
  @type step_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_on_cluster_app_ui_presigned_url_input() :: %{
        optional("ApplicationId") => String.t(),
        optional("DryRun") => boolean(),
        optional("ExecutionRoleArn") => String.t(),
        optional("OnClusterAppUIType") => list(any()),
        required("ClusterId") => String.t()
      }
      
  """
  @type get_on_cluster_app_ui_presigned_url_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_studio_session_mapping_input() :: %{
        optional("IdentityId") => String.t(),
        optional("IdentityName") => String.t(),
        required("IdentityType") => list(any()),
        required("StudioId") => String.t()
      }
      
  """
  @type delete_studio_session_mapping_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_managed_scaling_policy_input() :: %{
        required("ClusterId") => String.t()
      }
      
  """
  @type remove_managed_scaling_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      on_demand_capacity_reservation_options() :: %{
        "CapacityReservationPreference" => list(any()),
        "CapacityReservationResourceGroupArn" => String.t(),
        "UsageStrategy" => list(any())
      }
      
  """
  @type on_demand_capacity_reservation_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_keep_job_flow_alive_when_no_steps_input() :: %{
        required("JobFlowIds") => list(String.t()()),
        required("KeepJobFlowAliveWhenNoSteps") => boolean()
      }
      
  """
  @type set_keep_job_flow_alive_when_no_steps_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_security_configuration_output() :: %{
        "CreationDateTime" => non_neg_integer(),
        "Name" => String.t()
      }
      
  """
  @type create_security_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_job_flow_steps_output() :: %{
        "StepIds" => list(String.t()())
      }
      
  """
  @type add_job_flow_steps_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_policy_state_change_reason() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type auto_scaling_policy_state_change_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notebook_executions_output() :: %{
        "Marker" => String.t(),
        "NotebookExecutions" => list(notebook_execution_summary()())
      }
      
  """
  @type list_notebook_executions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_mapping_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "IdentityId" => String.t(),
        "IdentityName" => String.t(),
        "IdentityType" => list(any()),
        "SessionPolicyArn" => String.t(),
        "StudioId" => String.t()
      }
      
  """
  @type session_mapping_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_studios_input() :: %{
        optional("Marker") => String.t()
      }
      
  """
  @type list_studios_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_instance_groups_input() :: %{
        required("InstanceGroups") => list(instance_group_config()()),
        required("JobFlowId") => String.t()
      }
      
  """
  @type add_instance_groups_input() :: %{String.t() => any()}

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
      
      instance_group_detail() :: %{
        "BidPrice" => String.t(),
        "CreationDateTime" => non_neg_integer(),
        "CustomAmiId" => String.t(),
        "EndDateTime" => non_neg_integer(),
        "InstanceGroupId" => String.t(),
        "InstanceRequestCount" => integer(),
        "InstanceRole" => list(any()),
        "InstanceRunningCount" => integer(),
        "InstanceType" => String.t(),
        "LastStateChangeReason" => String.t(),
        "Market" => list(any()),
        "Name" => String.t(),
        "ReadyDateTime" => non_neg_integer(),
        "StartDateTime" => non_neg_integer(),
        "State" => list(any())
      }
      
  """
  @type instance_group_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_studio_session_mappings_input() :: %{
        optional("IdentityType") => list(any()),
        optional("Marker") => String.t(),
        optional("StudioId") => String.t()
      }
      
  """
  @type list_studio_session_mappings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_volume() :: %{
        "Device" => String.t(),
        "VolumeId" => String.t()
      }
      
  """
  @type ebs_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_security_configuration_input() :: %{
        required("Name") => String.t()
      }
      
  """
  @type describe_security_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster() :: %{
        "Status" => cluster_status(),
        "SecurityConfiguration" => String.t(),
        "AutoScalingRole" => String.t(),
        "TerminationProtected" => boolean(),
        "ClusterArn" => String.t(),
        "Tags" => list(tag()()),
        "ReleaseLabel" => String.t(),
        "CustomAmiId" => String.t(),
        "LogUri" => String.t(),
        "Configurations" => list(configuration()()),
        "Applications" => list(application()()),
        "AutoTerminate" => boolean(),
        "StepConcurrencyLevel" => integer(),
        "MasterPublicDnsName" => String.t(),
        "OutpostArn" => String.t(),
        "Id" => String.t(),
        "KerberosAttributes" => kerberos_attributes(),
        "EbsRootVolumeThroughput" => integer(),
        "ServiceRole" => String.t(),
        "PlacementGroups" => list(placement_group_config()()),
        "RequestedAmiVersion" => String.t(),
        "NormalizedInstanceHours" => integer(),
        "EbsRootVolumeIops" => integer(),
        "UnhealthyNodeReplacement" => boolean(),
        "ScaleDownBehavior" => list(any()),
        "VisibleToAllUsers" => boolean(),
        "Ec2InstanceAttributes" => ec2_instance_attributes(),
        "EbsRootVolumeSize" => integer(),
        "RepoUpgradeOnBoot" => list(any()),
        "Name" => String.t(),
        "InstanceCollectionType" => list(any()),
        "LogEncryptionKmsKeyId" => String.t(),
        "RunningAmiVersion" => String.t(),
        "OSReleaseLabel" => String.t()
      }
      
  """
  @type cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_studio_session_mapping_output() :: %{
        "SessionMapping" => session_mapping_detail()
      }
      
  """
  @type get_studio_session_mapping_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_group_config() :: %{
        "AutoScalingPolicy" => auto_scaling_policy(),
        "BidPrice" => String.t(),
        "Configurations" => list(configuration()()),
        "CustomAmiId" => String.t(),
        "EbsConfiguration" => ebs_configuration(),
        "InstanceCount" => integer(),
        "InstanceRole" => list(any()),
        "InstanceType" => String.t(),
        "Market" => list(any()),
        "Name" => String.t()
      }
      
  """
  @type instance_group_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_security_configurations_output() :: %{
        "Marker" => String.t(),
        "SecurityConfigurations" => list(security_configuration_summary()())
      }
      
  """
  @type list_security_configurations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_policy_description() :: %{
        "Constraints" => scaling_constraints(),
        "Rules" => list(scaling_rule()()),
        "Status" => auto_scaling_policy_status()
      }
      
  """
  @type auto_scaling_policy_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_managed_scaling_policy_output() :: %{
        "ManagedScalingPolicy" => managed_scaling_policy()
      }
      
  """
  @type get_managed_scaling_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run_job_flow_output() :: %{
        "ClusterArn" => String.t(),
        "JobFlowId" => String.t()
      }
      
  """
  @type run_job_flow_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_state_change_reason() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type cluster_state_change_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_fleets_input() :: %{
        optional("Marker") => String.t(),
        required("ClusterId") => String.t()
      }
      
  """
  @type list_instance_fleets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_clusters_input() :: %{
        optional("ClusterStates") => list(list(any())()),
        optional("CreatedAfter") => non_neg_integer(),
        optional("CreatedBefore") => non_neg_integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type list_clusters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_auto_scaling_policy_output() :: %{
        "AutoScalingPolicy" => auto_scaling_policy_description(),
        "ClusterArn" => String.t(),
        "ClusterId" => String.t(),
        "InstanceGroupId" => String.t()
      }
      
  """
  @type put_auto_scaling_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_notebook_execution_input() :: %{
        required("NotebookExecutionId") => String.t()
      }
      
  """
  @type stop_notebook_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_studio_session_mappings_output() :: %{
        "Marker" => String.t(),
        "SessionMappings" => list(session_mapping_summary()())
      }
      
  """
  @type list_studio_session_mappings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_auto_termination_policy_output() :: %{}
      
  """
  @type remove_auto_termination_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      get_cluster_session_credentials_output() :: %{
        "Credentials" => list(),
        "ExpiresAt" => non_neg_integer()
      }
      
  """
  @type get_cluster_session_credentials_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_fleet_provisioning_specifications() :: %{
        "OnDemandSpecification" => on_demand_provisioning_specification(),
        "SpotSpecification" => spot_provisioning_specification()
      }
      
  """
  @type instance_fleet_provisioning_specifications() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application() :: %{
        "AdditionalInfo" => map(),
        "Args" => list(String.t()()),
        "Name" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_security_configuration_output() :: %{}
      
  """
  @type delete_security_configuration_output() :: %{}

  @typedoc """

  ## Example:
      
      describe_studio_input() :: %{
        required("StudioId") => String.t()
      }
      
  """
  @type describe_studio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_supported_instance_types_output() :: %{
        "Marker" => String.t(),
        "SupportedInstanceTypes" => list(supported_instance_type()())
      }
      
  """
  @type list_supported_instance_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_fleet_resizing_specifications() :: %{
        "OnDemandResizeSpecification" => on_demand_resizing_specification(),
        "SpotResizeSpecification" => spot_resizing_specification()
      }
      
  """
  @type instance_fleet_resizing_specifications() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_type_config() :: %{
        "BidPrice" => String.t(),
        "BidPriceAsPercentageOfOnDemandPrice" => float(),
        "Configurations" => list(configuration()()),
        "CustomAmiId" => String.t(),
        "EbsConfiguration" => ebs_configuration(),
        "InstanceType" => String.t(),
        "Priority" => float(),
        "WeightedCapacity" => integer()
      }
      
  """
  @type instance_type_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      supported_instance_type() :: %{
        "Architecture" => String.t(),
        "EbsOptimizedAvailable" => boolean(),
        "EbsOptimizedByDefault" => boolean(),
        "EbsStorageOnly" => boolean(),
        "InstanceFamilyId" => String.t(),
        "Is64BitsOnly" => boolean(),
        "MemoryGB" => float(),
        "NumberOfDisks" => integer(),
        "StorageGB" => integer(),
        "Type" => String.t(),
        "VCPU" => integer()
      }
      
  """
  @type supported_instance_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_job_flows_output() :: %{
        "JobFlows" => list(job_flow_detail()())
      }
      
  """
  @type describe_job_flows_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_fleet_status() :: %{
        "State" => list(any()),
        "StateChangeReason" => instance_fleet_state_change_reason(),
        "Timeline" => instance_fleet_timeline()
      }
      
  """
  @type instance_fleet_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step_config() :: %{
        "ActionOnFailure" => list(any()),
        "HadoopJarStep" => hadoop_jar_step_config(),
        "Name" => String.t()
      }
      
  """
  @type step_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_instance_fleet_output() :: %{
        "ClusterArn" => String.t(),
        "ClusterId" => String.t(),
        "InstanceFleetId" => String.t()
      }
      
  """
  @type add_instance_fleet_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bootstrap_actions_output() :: %{
        "BootstrapActions" => list(command()()),
        "Marker" => String.t()
      }
      
  """
  @type list_bootstrap_actions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_group() :: %{
        "AutoScalingPolicy" => auto_scaling_policy_description(),
        "BidPrice" => String.t(),
        "Configurations" => list(configuration()()),
        "ConfigurationsVersion" => float(),
        "CustomAmiId" => String.t(),
        "EbsBlockDevices" => list(ebs_block_device()()),
        "EbsOptimized" => boolean(),
        "Id" => String.t(),
        "InstanceGroupType" => list(any()),
        "InstanceType" => String.t(),
        "LastSuccessfullyAppliedConfigurations" => list(configuration()()),
        "LastSuccessfullyAppliedConfigurationsVersion" => float(),
        "Market" => list(any()),
        "Name" => String.t(),
        "RequestedInstanceCount" => integer(),
        "RunningInstanceCount" => integer(),
        "ShrinkPolicy" => shrink_policy(),
        "Status" => instance_group_status()
      }
      
  """
  @type instance_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step_timeline() :: %{
        "CreationDateTime" => non_neg_integer(),
        "EndDateTime" => non_neg_integer(),
        "StartDateTime" => non_neg_integer()
      }
      
  """
  @type step_timeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_block_device() :: %{
        "Device" => String.t(),
        "VolumeSpecification" => volume_specification()
      }
      
  """
  @type ebs_block_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_configuration() :: %{
        "EbsBlockDeviceConfigs" => list(ebs_block_device_config()()),
        "EbsOptimized" => boolean()
      }
      
  """
  @type ebs_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_studio_input() :: %{
        optional("DefaultS3Location") => String.t(),
        optional("Description") => String.t(),
        optional("EncryptionKeyArn") => String.t(),
        optional("Name") => String.t(),
        optional("SubnetIds") => list(String.t()()),
        required("StudioId") => String.t()
      }
      
  """
  @type update_studio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_resize_policy() :: %{
        "InstanceTerminationTimeout" => integer(),
        "InstancesToProtect" => list(String.t()()),
        "InstancesToTerminate" => list(String.t()())
      }
      
  """
  @type instance_resize_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_studio_session_mapping_input() :: %{
        optional("IdentityId") => String.t(),
        optional("IdentityName") => String.t(),
        required("IdentityType") => list(any()),
        required("StudioId") => String.t()
      }
      
  """
  @type get_studio_session_mapping_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_block_public_access_configuration_output() :: %{
        "BlockPublicAccessConfiguration" => block_public_access_configuration(),
        "BlockPublicAccessConfigurationMetadata" => block_public_access_configuration_metadata()
      }
      
  """
  @type get_block_public_access_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_dimension() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type metric_dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_managed_scaling_policy_output() :: %{}
      
  """
  @type remove_managed_scaling_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      remove_auto_scaling_policy_input() :: %{
        required("ClusterId") => String.t(),
        required("InstanceGroupId") => String.t()
      }
      
  """
  @type remove_auto_scaling_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_studios_output() :: %{
        "Marker" => String.t(),
        "Studios" => list(studio_summary()())
      }
      
  """
  @type list_studios_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_flow_instances_config() :: %{
        "AdditionalMasterSecurityGroups" => list(String.t()()),
        "AdditionalSlaveSecurityGroups" => list(String.t()()),
        "Ec2KeyName" => String.t(),
        "Ec2SubnetId" => String.t(),
        "Ec2SubnetIds" => list(String.t()()),
        "EmrManagedMasterSecurityGroup" => String.t(),
        "EmrManagedSlaveSecurityGroup" => String.t(),
        "HadoopVersion" => String.t(),
        "InstanceCount" => integer(),
        "InstanceFleets" => list(instance_fleet_config()()),
        "InstanceGroups" => list(instance_group_config()()),
        "KeepJobFlowAliveWhenNoSteps" => boolean(),
        "MasterInstanceType" => String.t(),
        "Placement" => placement_type(),
        "ServiceAccessSecurityGroup" => String.t(),
        "SlaveInstanceType" => String.t(),
        "TerminationProtected" => boolean(),
        "UnhealthyNodeReplacement" => boolean()
      }
      
  """
  @type job_flow_instances_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_steps_output() :: %{
        "CancelStepsInfoList" => list(cancel_steps_info()())
      }
      
  """
  @type cancel_steps_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_engine_config() :: %{
        "ExecutionRoleArn" => String.t(),
        "Id" => String.t(),
        "MasterInstanceSecurityGroupId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type execution_engine_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_notebook_execution_input() :: %{
        optional("EditorId") => String.t(),
        optional("EnvironmentVariables") => map(),
        optional("NotebookExecutionName") => String.t(),
        optional("NotebookInstanceSecurityGroupId") => String.t(),
        optional("NotebookParams") => String.t(),
        optional("NotebookS3Location") => notebook_s3_location_from_input(),
        optional("OutputNotebookFormat") => list(any()),
        optional("OutputNotebookS3Location") => output_notebook_s3_location_from_input(),
        optional("RelativePath") => String.t(),
        optional("Tags") => list(tag()()),
        required("ExecutionEngine") => execution_engine_config(),
        required("ServiceRole") => String.t()
      }
      
  """
  @type start_notebook_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      o_s_release() :: %{
        "Label" => String.t()
      }
      
  """
  @type o_s_release() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      studio_summary() :: %{
        "AuthMode" => list(any()),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "Name" => String.t(),
        "StudioId" => String.t(),
        "Url" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type studio_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_block_public_access_configuration_input() :: %{}
      
  """
  @type get_block_public_access_configuration_input() :: %{}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      block_public_access_configuration() :: %{
        "BlockPublicSecurityGroupRules" => boolean(),
        "Classification" => String.t(),
        "Configurations" => list(configuration()()),
        "PermittedPublicSecurityGroupRuleRanges" => list(port_range()()),
        "Properties" => map()
      }
      
  """
  @type block_public_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_group_modify_config() :: %{
        "Configurations" => list(configuration()()),
        "EC2InstanceIdsToTerminate" => list(String.t()()),
        "InstanceCount" => integer(),
        "InstanceGroupId" => String.t(),
        "ReconfigurationType" => list(any()),
        "ShrinkPolicy" => shrink_policy()
      }
      
  """
  @type instance_group_modify_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_constraints() :: %{
        "MaxCapacity" => integer(),
        "MinCapacity" => integer()
      }
      
  """
  @type scaling_constraints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_step_input() :: %{
        required("ClusterId") => String.t(),
        required("StepId") => String.t()
      }
      
  """
  @type describe_step_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      port_range() :: %{
        "MaxRange" => integer(),
        "MinRange" => integer()
      }
      
  """
  @type port_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_studio_output() :: %{
        "StudioId" => String.t(),
        "Url" => String.t()
      }
      
  """
  @type create_studio_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_block_device_config() :: %{
        "VolumeSpecification" => volume_specification(),
        "VolumesPerInstance" => integer()
      }
      
  """
  @type ebs_block_device_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notebook_s3_location_for_output() :: %{
        "Bucket" => String.t(),
        "Key" => String.t()
      }
      
  """
  @type notebook_s3_location_for_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_detail() :: %{
        "ErrorCode" => String.t(),
        "ErrorData" => list(map()()),
        "ErrorMessage" => String.t()
      }
      
  """
  @type error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kerberos_attributes() :: %{
        "ADDomainJoinPassword" => String.t(),
        "ADDomainJoinUser" => String.t(),
        "CrossRealmTrustPrincipalPassword" => String.t(),
        "KdcAdminPassword" => String.t(),
        "Realm" => String.t()
      }
      
  """
  @type kerberos_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_timeline() :: %{
        "CreationDateTime" => non_neg_integer(),
        "EndDateTime" => non_neg_integer(),
        "ReadyDateTime" => non_neg_integer()
      }
      
  """
  @type instance_timeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{}
      
  """
  @type internal_server_error() :: %{}

  @typedoc """

  ## Example:
      
      update_studio_session_mapping_input() :: %{
        optional("IdentityId") => String.t(),
        optional("IdentityName") => String.t(),
        required("IdentityType") => list(any()),
        required("SessionPolicyArn") => String.t(),
        required("StudioId") => String.t()
      }
      
  """
  @type update_studio_session_mapping_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instances_input() :: %{
        optional("InstanceFleetId") => String.t(),
        optional("InstanceFleetType") => list(any()),
        optional("InstanceGroupId") => String.t(),
        optional("InstanceGroupTypes") => list(list(any())()),
        optional("InstanceStates") => list(list(any())()),
        optional("Marker") => String.t(),
        required("ClusterId") => String.t()
      }
      
  """
  @type list_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "EbsVolumes" => list(ebs_volume()()),
        "Ec2InstanceId" => String.t(),
        "Id" => String.t(),
        "InstanceFleetId" => String.t(),
        "InstanceGroupId" => String.t(),
        "InstanceType" => String.t(),
        "Market" => list(any()),
        "PrivateDnsName" => String.t(),
        "PrivateIpAddress" => String.t(),
        "PublicDnsName" => String.t(),
        "PublicIpAddress" => String.t(),
        "Status" => instance_status()
      }
      
  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_persistent_app_ui_input() :: %{
        required("PersistentAppUIId") => String.t()
      }
      
  """
  @type describe_persistent_app_ui_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_group_state_change_reason() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type instance_group_state_change_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_timeline() :: %{
        "CreationDateTime" => non_neg_integer(),
        "EndDateTime" => non_neg_integer(),
        "ReadyDateTime" => non_neg_integer()
      }
      
  """
  @type cluster_timeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_auto_scaling_policy_output() :: %{}
      
  """
  @type remove_auto_scaling_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      describe_notebook_execution_input() :: %{
        required("NotebookExecutionId") => String.t()
      }
      
  """
  @type describe_notebook_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_steps_input() :: %{
        optional("StepCancellationOption") => list(any()),
        required("ClusterId") => String.t(),
        required("StepIds") => list(String.t()())
      }
      
  """
  @type cancel_steps_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simple_scaling_policy_configuration() :: %{
        "AdjustmentType" => list(any()),
        "CoolDown" => integer(),
        "ScalingAdjustment" => integer()
      }
      
  """
  @type simple_scaling_policy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      username_password() :: %{
        "Password" => String.t(),
        "Username" => String.t()
      }
      
  """
  @type username_password() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_release_labels_input() :: %{
        optional("Filters") => release_label_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_release_labels_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_input() :: %{
        optional("StepConcurrencyLevel") => integer(),
        required("ClusterId") => String.t()
      }
      
  """
  @type modify_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hadoop_jar_step_config() :: %{
        "Args" => list(String.t()()),
        "Jar" => String.t(),
        "MainClass" => String.t(),
        "Properties" => list(key_value()())
      }
      
  """
  @type hadoop_jar_step_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_limits() :: %{
        "MaximumCapacityUnits" => integer(),
        "MaximumCoreCapacityUnits" => integer(),
        "MaximumOnDemandCapacityUnits" => integer(),
        "MinimumCapacityUnits" => integer(),
        "UnitType" => list(any())
      }
      
  """
  @type compute_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_job_flow_steps_input() :: %{
        optional("ExecutionRoleArn") => String.t(),
        required("JobFlowId") => String.t(),
        required("Steps") => list(step_config()())
      }
      
  """
  @type add_job_flow_steps_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_status() :: %{
        "ErrorDetails" => list(error_detail()()),
        "State" => list(any()),
        "StateChangeReason" => cluster_state_change_reason(),
        "Timeline" => cluster_timeline()
      }
      
  """
  @type cluster_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_on_cluster_app_ui_presigned_url_output() :: %{
        "PresignedURL" => String.t(),
        "PresignedURLReady" => boolean()
      }
      
  """
  @type get_on_cluster_app_ui_presigned_url_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      persistent_app_ui() :: %{
        "AuthorId" => String.t(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "LastStateChangeReason" => String.t(),
        "PersistentAppUIId" => String.t(),
        "PersistentAppUIStatus" => String.t(),
        "PersistentAppUITypeList" => list(list(any())()),
        "Tags" => list(tag()())
      }
      
  """
  @type persistent_app_ui() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_unhealthy_node_replacement_input() :: %{
        required("JobFlowIds") => list(String.t()()),
        required("UnhealthyNodeReplacement") => boolean()
      }
      
  """
  @type set_unhealthy_node_replacement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_steps_output() :: %{
        "Marker" => String.t(),
        "Steps" => list(step_summary()())
      }
      
  """
  @type list_steps_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_job_flows_input() :: %{
        required("JobFlowIds") => list(String.t()())
      }
      
  """
  @type terminate_job_flows_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_attributes() :: %{
        "AdditionalMasterSecurityGroups" => list(String.t()()),
        "AdditionalSlaveSecurityGroups" => list(String.t()()),
        "Ec2AvailabilityZone" => String.t(),
        "Ec2KeyName" => String.t(),
        "Ec2SubnetId" => String.t(),
        "EmrManagedMasterSecurityGroup" => String.t(),
        "EmrManagedSlaveSecurityGroup" => String.t(),
        "IamInstanceProfile" => String.t(),
        "RequestedEc2AvailabilityZones" => list(String.t()()),
        "RequestedEc2SubnetIds" => list(String.t()()),
        "ServiceAccessSecurityGroup" => String.t()
      }
      
  """
  @type ec2_instance_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      on_demand_resizing_specification() :: %{
        "AllocationStrategy" => list(any()),
        "CapacityReservationOptions" => on_demand_capacity_reservation_options(),
        "TimeoutDurationMinutes" => integer()
      }
      
  """
  @type on_demand_resizing_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_studio_input() :: %{
        optional("Description") => String.t(),
        optional("EncryptionKeyArn") => String.t(),
        optional("IdcInstanceArn") => String.t(),
        optional("IdcUserAssignment") => list(any()),
        optional("IdpAuthUrl") => String.t(),
        optional("IdpRelayStateParameterName") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TrustedIdentityPropagationEnabled") => boolean(),
        optional("UserRole") => String.t(),
        required("AuthMode") => list(any()),
        required("DefaultS3Location") => String.t(),
        required("EngineSecurityGroupId") => String.t(),
        required("Name") => String.t(),
        required("ServiceRole") => String.t(),
        required("SubnetIds") => list(String.t()()),
        required("VpcId") => String.t(),
        required("WorkspaceSecurityGroupId") => String.t()
      }
      
  """
  @type create_studio_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_flow_execution_status_detail() :: %{
        "CreationDateTime" => non_neg_integer(),
        "EndDateTime" => non_neg_integer(),
        "LastStateChangeReason" => String.t(),
        "ReadyDateTime" => non_neg_integer(),
        "StartDateTime" => non_neg_integer(),
        "State" => list(any())
      }
      
  """
  @type job_flow_execution_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_studio_output() :: %{
        "Studio" => studio()
      }
      
  """
  @type describe_studio_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      session_mapping_detail() :: %{
        "CreationTime" => non_neg_integer(),
        "IdentityId" => String.t(),
        "IdentityName" => String.t(),
        "IdentityType" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "SessionPolicyArn" => String.t(),
        "StudioId" => String.t()
      }
      
  """
  @type session_mapping_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step_execution_status_detail() :: %{
        "CreationDateTime" => non_neg_integer(),
        "EndDateTime" => non_neg_integer(),
        "LastStateChangeReason" => String.t(),
        "StartDateTime" => non_neg_integer(),
        "State" => list(any())
      }
      
  """
  @type step_execution_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_auto_termination_policy_input() :: %{
        optional("AutoTerminationPolicy") => auto_termination_policy(),
        required("ClusterId") => String.t()
      }
      
  """
  @type put_auto_termination_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_action() :: %{
        "Market" => list(any()),
        "SimpleScalingPolicyConfiguration" => simple_scaling_policy_configuration()
      }
      
  """
  @type scaling_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_groups_input() :: %{
        optional("Marker") => String.t(),
        required("ClusterId") => String.t()
      }
      
  """
  @type list_instance_groups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_notebook_executions_input() :: %{
        optional("EditorId") => String.t(),
        optional("ExecutionEngineId") => String.t(),
        optional("From") => non_neg_integer(),
        optional("Marker") => String.t(),
        optional("Status") => list(any()),
        optional("To") => non_neg_integer()
      }
      
  """
  @type list_notebook_executions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_flow_instances_detail() :: %{
        "Ec2KeyName" => String.t(),
        "Ec2SubnetId" => String.t(),
        "HadoopVersion" => String.t(),
        "InstanceCount" => integer(),
        "InstanceGroups" => list(instance_group_detail()()),
        "KeepJobFlowAliveWhenNoSteps" => boolean(),
        "MasterInstanceId" => String.t(),
        "MasterInstanceType" => String.t(),
        "MasterPublicDnsName" => String.t(),
        "NormalizedInstanceHours" => integer(),
        "Placement" => placement_type(),
        "SlaveInstanceType" => String.t(),
        "TerminationProtected" => boolean(),
        "UnhealthyNodeReplacement" => boolean()
      }
      
  """
  @type job_flow_instances_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shrink_policy() :: %{
        "DecommissionTimeout" => integer(),
        "InstanceResizePolicy" => instance_resize_policy()
      }
      
  """
  @type shrink_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notebook_execution_summary() :: %{
        "EditorId" => String.t(),
        "EndTime" => non_neg_integer(),
        "ExecutionEngineId" => String.t(),
        "NotebookExecutionId" => String.t(),
        "NotebookExecutionName" => String.t(),
        "NotebookS3Location" => notebook_s3_location_for_output(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type notebook_execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_security_configuration_input() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_security_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      command() :: %{
        "Args" => list(String.t()()),
        "Name" => String.t(),
        "ScriptPath" => String.t()
      }
      
  """
  @type command() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_fleet_config() :: %{
        "Context" => String.t(),
        "InstanceFleetType" => list(any()),
        "InstanceTypeConfigs" => list(instance_type_config()()),
        "LaunchSpecifications" => instance_fleet_provisioning_specifications(),
        "Name" => String.t(),
        "ResizeSpecifications" => instance_fleet_resizing_specifications(),
        "TargetOnDemandCapacity" => integer(),
        "TargetSpotCapacity" => integer()
      }
      
  """
  @type instance_fleet_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      spot_provisioning_specification() :: %{
        "AllocationStrategy" => list(any()),
        "BlockDurationMinutes" => integer(),
        "TimeoutAction" => list(any()),
        "TimeoutDurationMinutes" => integer()
      }
      
  """
  @type spot_provisioning_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_value() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type key_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_status() :: %{
        "State" => list(any()),
        "StateChangeReason" => instance_state_change_reason(),
        "Timeline" => instance_timeline()
      }
      
  """
  @type instance_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_fleet_modify_config() :: %{
        "Context" => String.t(),
        "InstanceFleetId" => String.t(),
        "InstanceTypeConfigs" => list(instance_type_config()()),
        "ResizeSpecifications" => instance_fleet_resizing_specifications(),
        "TargetOnDemandCapacity" => integer(),
        "TargetSpotCapacity" => integer()
      }
      
  """
  @type instance_fleet_modify_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_scaling_policy() :: %{
        "ComputeLimits" => compute_limits(),
        "ScalingStrategy" => list(any()),
        "UtilizationPerformanceIndex" => integer()
      }
      
  """
  @type managed_scaling_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      placement_type() :: %{
        "AvailabilityZone" => String.t(),
        "AvailabilityZones" => list(String.t()())
      }
      
  """
  @type placement_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_persistent_app_ui_presigned_url_output() :: %{
        "PresignedURL" => String.t(),
        "PresignedURLReady" => boolean()
      }
      
  """
  @type get_persistent_app_ui_presigned_url_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_termination_protection_input() :: %{
        required("JobFlowIds") => list(String.t()()),
        required("TerminationProtected") => boolean()
      }
      
  """
  @type set_termination_protection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_notebook_s3_location_for_output() :: %{
        "Bucket" => String.t(),
        "Key" => String.t()
      }
      
  """
  @type output_notebook_s3_location_for_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_release_labels_output() :: %{
        "NextToken" => String.t(),
        "ReleaseLabels" => list(String.t()())
      }
      
  """
  @type list_release_labels_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_input() :: %{
        required("ClusterId") => String.t()
      }
      
  """
  @type describe_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_input() :: %{
        required("ResourceId") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type remove_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step() :: %{
        "ActionOnFailure" => list(any()),
        "Config" => hadoop_step_config(),
        "ExecutionRoleArn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Status" => step_status()
      }
      
  """
  @type step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_instance_groups_input() :: %{
        optional("ClusterId") => String.t(),
        optional("InstanceGroups") => list(instance_group_modify_config()())
      }
      
  """
  @type modify_instance_groups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_managed_scaling_policy_input() :: %{
        required("ClusterId") => String.t(),
        required("ManagedScalingPolicy") => managed_scaling_policy()
      }
      
  """
  @type put_managed_scaling_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      on_demand_provisioning_specification() :: %{
        "AllocationStrategy" => list(any()),
        "CapacityReservationOptions" => on_demand_capacity_reservation_options()
      }
      
  """
  @type on_demand_provisioning_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step_summary() :: %{
        "ActionOnFailure" => list(any()),
        "Config" => hadoop_step_config(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Status" => step_status()
      }
      
  """
  @type step_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_fleet_state_change_reason() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type instance_fleet_state_change_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notebook_execution_output() :: %{
        "NotebookExecution" => notebook_execution()
      }
      
  """
  @type describe_notebook_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_fleet_timeline() :: %{
        "CreationDateTime" => non_neg_integer(),
        "EndDateTime" => non_neg_integer(),
        "ReadyDateTime" => non_neg_integer()
      }
      
  """
  @type instance_fleet_timeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      emr_containers_config() :: %{
        "JobRunId" => String.t()
      }
      
  """
  @type emr_containers_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_instance_fleet_input() :: %{
        required("ClusterId") => String.t(),
        required("InstanceFleet") => instance_fleet_modify_config()
      }
      
  """
  @type modify_instance_fleet_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      studio() :: %{
        "AuthMode" => list(any()),
        "CreationTime" => non_neg_integer(),
        "DefaultS3Location" => String.t(),
        "Description" => String.t(),
        "EncryptionKeyArn" => String.t(),
        "EngineSecurityGroupId" => String.t(),
        "IdcInstanceArn" => String.t(),
        "IdcUserAssignment" => list(any()),
        "IdpAuthUrl" => String.t(),
        "IdpRelayStateParameterName" => String.t(),
        "Name" => String.t(),
        "ServiceRole" => String.t(),
        "StudioArn" => String.t(),
        "StudioId" => String.t(),
        "SubnetIds" => list(String.t()()),
        "Tags" => list(tag()()),
        "TrustedIdentityPropagationEnabled" => boolean(),
        "Url" => String.t(),
        "UserRole" => String.t(),
        "VpcId" => String.t(),
        "WorkspaceSecurityGroupId" => String.t()
      }
      
  """
  @type studio() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_managed_scaling_policy_output() :: %{}
      
  """
  @type put_managed_scaling_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      describe_persistent_app_ui_output() :: %{
        "PersistentAppUI" => persistent_app_ui()
      }
      
  """
  @type describe_persistent_app_ui_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_type_specification() :: %{
        "BidPrice" => String.t(),
        "BidPriceAsPercentageOfOnDemandPrice" => float(),
        "Configurations" => list(configuration()()),
        "CustomAmiId" => String.t(),
        "EbsBlockDevices" => list(ebs_block_device()()),
        "EbsOptimized" => boolean(),
        "InstanceType" => String.t(),
        "Priority" => float(),
        "WeightedCapacity" => integer()
      }
      
  """
  @type instance_type_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run_job_flow_input() :: %{
        optional("AdditionalInfo") => String.t(),
        optional("AmiVersion") => String.t(),
        optional("Applications") => list(application()()),
        optional("AutoScalingRole") => String.t(),
        optional("AutoTerminationPolicy") => auto_termination_policy(),
        optional("BootstrapActions") => list(bootstrap_action_config()()),
        optional("Configurations") => list(configuration()()),
        optional("CustomAmiId") => String.t(),
        optional("EbsRootVolumeIops") => integer(),
        optional("EbsRootVolumeSize") => integer(),
        optional("EbsRootVolumeThroughput") => integer(),
        optional("JobFlowRole") => String.t(),
        optional("KerberosAttributes") => kerberos_attributes(),
        optional("LogEncryptionKmsKeyId") => String.t(),
        optional("LogUri") => String.t(),
        optional("ManagedScalingPolicy") => managed_scaling_policy(),
        optional("NewSupportedProducts") => list(supported_product_config()()),
        optional("OSReleaseLabel") => String.t(),
        optional("PlacementGroupConfigs") => list(placement_group_config()()),
        optional("ReleaseLabel") => String.t(),
        optional("RepoUpgradeOnBoot") => list(any()),
        optional("ScaleDownBehavior") => list(any()),
        optional("SecurityConfiguration") => String.t(),
        optional("ServiceRole") => String.t(),
        optional("StepConcurrencyLevel") => integer(),
        optional("Steps") => list(step_config()()),
        optional("SupportedProducts") => list(String.t()()),
        optional("Tags") => list(tag()()),
        optional("VisibleToAllUsers") => boolean(),
        required("Instances") => job_flow_instances_config(),
        required("Name") => String.t()
      }
      
  """
  @type run_job_flow_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_security_configuration_input() :: %{
        required("Name") => String.t(),
        required("SecurityConfiguration") => String.t()
      }
      
  """
  @type create_security_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_rule() :: %{
        "Action" => scaling_action(),
        "Description" => String.t(),
        "Name" => String.t(),
        "Trigger" => scaling_trigger()
      }
      
  """
  @type scaling_rule() :: %{String.t() => any()}

  @type add_instance_fleet_errors() :: internal_server_exception() | invalid_request_exception()

  @type add_instance_groups_errors() :: internal_server_error()

  @type add_job_flow_steps_errors() :: internal_server_error()

  @type add_tags_errors() :: internal_server_exception() | invalid_request_exception()

  @type cancel_steps_errors() :: internal_server_error() | invalid_request_exception()

  @type create_persistent_app_ui_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type create_security_configuration_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type create_studio_errors() :: internal_server_exception() | invalid_request_exception()

  @type create_studio_session_mapping_errors() ::
          internal_server_error() | invalid_request_exception()

  @type delete_security_configuration_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type delete_studio_errors() :: internal_server_exception() | invalid_request_exception()

  @type delete_studio_session_mapping_errors() ::
          internal_server_error() | invalid_request_exception()

  @type describe_cluster_errors() :: internal_server_exception() | invalid_request_exception()

  @type describe_job_flows_errors() :: internal_server_error()

  @type describe_notebook_execution_errors() ::
          internal_server_error() | invalid_request_exception()

  @type describe_persistent_app_ui_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type describe_release_label_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type describe_security_configuration_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type describe_step_errors() :: internal_server_exception() | invalid_request_exception()

  @type describe_studio_errors() :: internal_server_exception() | invalid_request_exception()

  @type get_block_public_access_configuration_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type get_cluster_session_credentials_errors() ::
          internal_server_error() | invalid_request_exception()

  @type get_on_cluster_app_ui_presigned_url_errors() ::
          internal_server_error() | invalid_request_exception()

  @type get_persistent_app_ui_presigned_url_errors() ::
          internal_server_error() | invalid_request_exception()

  @type get_studio_session_mapping_errors() ::
          internal_server_error() | invalid_request_exception()

  @type list_bootstrap_actions_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type list_clusters_errors() :: internal_server_exception() | invalid_request_exception()

  @type list_instance_fleets_errors() :: internal_server_exception() | invalid_request_exception()

  @type list_instance_groups_errors() :: internal_server_exception() | invalid_request_exception()

  @type list_instances_errors() :: internal_server_exception() | invalid_request_exception()

  @type list_notebook_executions_errors() :: internal_server_error() | invalid_request_exception()

  @type list_release_labels_errors() :: internal_server_exception() | invalid_request_exception()

  @type list_security_configurations_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type list_steps_errors() :: internal_server_exception() | invalid_request_exception()

  @type list_studio_session_mappings_errors() ::
          internal_server_error() | invalid_request_exception()

  @type list_studios_errors() :: internal_server_exception() | invalid_request_exception()

  @type list_supported_instance_types_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type modify_cluster_errors() :: internal_server_error() | invalid_request_exception()

  @type modify_instance_fleet_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type modify_instance_groups_errors() :: internal_server_error()

  @type put_block_public_access_configuration_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type remove_tags_errors() :: internal_server_exception() | invalid_request_exception()

  @type run_job_flow_errors() :: internal_server_error()

  @type set_keep_job_flow_alive_when_no_steps_errors() :: internal_server_error()

  @type set_termination_protection_errors() :: internal_server_error()

  @type set_unhealthy_node_replacement_errors() :: internal_server_error()

  @type set_visible_to_all_users_errors() :: internal_server_error()

  @type start_notebook_execution_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type stop_notebook_execution_errors() :: internal_server_error() | invalid_request_exception()

  @type terminate_job_flows_errors() :: internal_server_error()

  @type update_studio_errors() :: internal_server_exception() | invalid_request_exception()

  @type update_studio_session_mapping_errors() ::
          internal_server_error() | invalid_request_exception()

  def metadata do
    %{
      api_version: "2009-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "elasticmapreduce",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "EMR",
      signature_version: "v4",
      signing_name: "elasticmapreduce",
      target_prefix: "ElasticMapReduce"
    }
  end

  @doc """
  Adds an instance fleet to a running cluster.

  The instance fleet configuration is available only in Amazon EMR releases
  4.8.0 and later, excluding 5.0.x.
  """
  @spec add_instance_fleet(map(), add_instance_fleet_input(), list()) ::
          {:ok, add_instance_fleet_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_instance_fleet_errors()}
  def add_instance_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddInstanceFleet", input, options)
  end

  @doc """
  Adds one or more instance groups to a running cluster.
  """
  @spec add_instance_groups(map(), add_instance_groups_input(), list()) ::
          {:ok, add_instance_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_instance_groups_errors()}
  def add_instance_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddInstanceGroups", input, options)
  end

  @doc """
  AddJobFlowSteps adds new steps to a running cluster.

  A maximum of 256 steps are allowed
  in each job flow.

  If your cluster is long-running (such as a Hive data warehouse) or complex, you
  may
  require more than 256 steps to process your data. You can bypass the 256-step
  limitation in
  various ways, including using SSH to connect to the master node and submitting
  queries
  directly to the software running on the master node, such as Hive and Hadoop.

  A step specifies the location of a JAR file stored either on the master node of
  the
  cluster or in Amazon S3. Each step is performed by the main function of the main
  class of the JAR file. The main class can be specified either in the manifest of
  the JAR or
  by using the MainFunction parameter of the step.

  Amazon EMR executes each step in the order listed. For a step to be considered
  complete, the main function must exit with a zero exit code and all Hadoop jobs
  started
  while the step was running must have completed and run successfully.

  You can only add steps to a cluster that is in one of the following states:
  STARTING,
  BOOTSTRAPPING, RUNNING, or WAITING.

  The string values passed into `HadoopJarStep` object cannot exceed a total
  of 10240 characters.
  """
  @spec add_job_flow_steps(map(), add_job_flow_steps_input(), list()) ::
          {:ok, add_job_flow_steps_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_job_flow_steps_errors()}
  def add_job_flow_steps(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddJobFlowSteps", input, options)
  end

  @doc """
  Adds tags to an Amazon EMR resource, such as a cluster or an Amazon EMR
  Studio.

  Tags make it easier to associate resources in various ways, such as grouping
  clusters to track your Amazon EMR resource allocation costs. For more
  information,
  see [Tag Clusters](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).
  """
  @spec add_tags(map(), add_tags_input(), list()) ::
          {:ok, add_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_tags_errors()}
  def add_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTags", input, options)
  end

  @doc """
  Cancels a pending step or steps in a running cluster.

  Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0.
  A maximum of 256 steps are allowed in
  each CancelSteps request. CancelSteps is idempotent but asynchronous; it does
  not guarantee
  that a step will be canceled, even if the request is successfully submitted.
  When you use
  Amazon EMR releases 5.28.0 and later, you can cancel steps that are in a
  `PENDING` or `RUNNING` state. In earlier versions of Amazon EMR, you can only
  cancel steps that are in a `PENDING` state.
  """
  @spec cancel_steps(map(), cancel_steps_input(), list()) ::
          {:ok, cancel_steps_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_steps_errors()}
  def cancel_steps(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelSteps", input, options)
  end

  @doc """
  Creates a persistent application user interface.
  """
  @spec create_persistent_app_ui(map(), create_persistent_app_ui_input(), list()) ::
          {:ok, create_persistent_app_ui_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_persistent_app_ui_errors()}
  def create_persistent_app_ui(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePersistentAppUI", input, options)
  end

  @doc """
  Creates a security configuration, which is stored in the service and can be
  specified
  when a cluster is created.
  """
  @spec create_security_configuration(map(), create_security_configuration_input(), list()) ::
          {:ok, create_security_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_security_configuration_errors()}
  def create_security_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSecurityConfiguration", input, options)
  end

  @doc """
  Creates a new Amazon EMR Studio.
  """
  @spec create_studio(map(), create_studio_input(), list()) ::
          {:ok, create_studio_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_studio_errors()}
  def create_studio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStudio", input, options)
  end

  @doc """
  Maps a user or group to the Amazon EMR Studio specified by
  `StudioId`, and applies a session policy to refine Studio permissions for that
  user or group.

  Use `CreateStudioSessionMapping` to assign users to a Studio when
  you use IAM Identity Center authentication. For instructions on how to assign
  users to a
  Studio when you use IAM authentication, see [Assign a user or group to your EMR Studio](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-studio-manage-users.html#emr-studio-assign-users-groups).
  """
  @spec create_studio_session_mapping(map(), create_studio_session_mapping_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_studio_session_mapping_errors()}
  def create_studio_session_mapping(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStudioSessionMapping", input, options)
  end

  @doc """
  Deletes a security configuration.
  """
  @spec delete_security_configuration(map(), delete_security_configuration_input(), list()) ::
          {:ok, delete_security_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_security_configuration_errors()}
  def delete_security_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSecurityConfiguration", input, options)
  end

  @doc """
  Removes an Amazon EMR Studio from the Studio metadata store.
  """
  @spec delete_studio(map(), delete_studio_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_studio_errors()}
  def delete_studio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStudio", input, options)
  end

  @doc """
  Removes a user or group from an Amazon EMR Studio.
  """
  @spec delete_studio_session_mapping(map(), delete_studio_session_mapping_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_studio_session_mapping_errors()}
  def delete_studio_session_mapping(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStudioSessionMapping", input, options)
  end

  @doc """
  Provides cluster-level details including status, hardware and software
  configuration,
  VPC settings, and so on.
  """
  @spec describe_cluster(map(), describe_cluster_input(), list()) ::
          {:ok, describe_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cluster_errors()}
  def describe_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCluster", input, options)
  end

  @doc """
  This API is no longer supported and will eventually be removed.

  We recommend you use
  `ListClusters`, `DescribeCluster`, `ListSteps`, `ListInstanceGroups` and
  `ListBootstrapActions` instead.

  DescribeJobFlows returns a list of job flows that match all of the supplied
  parameters.
  The parameters can include a list of job flow IDs, job flow states, and
  restrictions on job
  flow creation date and time.

  Regardless of supplied parameters, only job flows created within the last two
  months are
  returned.

  If no parameters are supplied, then job flows matching either of the following
  criteria
  are returned:

    *
  Job flows created and completed in the last two weeks

    *
  Job flows created within the last two months that are in one of the following
  states: `RUNNING`, `WAITING`, `SHUTTING_DOWN`,
  `STARTING`

  Amazon EMR can return a maximum of 512 job flow descriptions.
  """
  @spec describe_job_flows(map(), describe_job_flows_input(), list()) ::
          {:ok, describe_job_flows_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_job_flows_errors()}
  def describe_job_flows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeJobFlows", input, options)
  end

  @doc """
  Provides details of a notebook execution.
  """
  @spec describe_notebook_execution(map(), describe_notebook_execution_input(), list()) ::
          {:ok, describe_notebook_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_notebook_execution_errors()}
  def describe_notebook_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNotebookExecution", input, options)
  end

  @doc """
  Describes a persistent application user interface.
  """
  @spec describe_persistent_app_ui(map(), describe_persistent_app_ui_input(), list()) ::
          {:ok, describe_persistent_app_ui_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_persistent_app_ui_errors()}
  def describe_persistent_app_ui(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePersistentAppUI", input, options)
  end

  @doc """
  Provides Amazon EMR release label details, such as the releases available the
  Region where the API request is run, and the available applications for a
  specific Amazon EMR release label.

  Can also list Amazon EMR releases that support a
  specified version of Spark.
  """
  @spec describe_release_label(map(), describe_release_label_input(), list()) ::
          {:ok, describe_release_label_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_release_label_errors()}
  def describe_release_label(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReleaseLabel", input, options)
  end

  @doc """
  Provides the details of a security configuration by returning the configuration
  JSON.
  """
  @spec describe_security_configuration(map(), describe_security_configuration_input(), list()) ::
          {:ok, describe_security_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_security_configuration_errors()}
  def describe_security_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSecurityConfiguration", input, options)
  end

  @doc """
  Provides more detail about the cluster step.
  """
  @spec describe_step(map(), describe_step_input(), list()) ::
          {:ok, describe_step_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_step_errors()}
  def describe_step(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStep", input, options)
  end

  @doc """
  Returns details for the specified Amazon EMR Studio including ID, Name, VPC,
  Studio access URL, and so on.
  """
  @spec describe_studio(map(), describe_studio_input(), list()) ::
          {:ok, describe_studio_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_studio_errors()}
  def describe_studio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStudio", input, options)
  end

  @doc """
  Returns the auto-termination policy for an Amazon EMR cluster.
  """
  @spec get_auto_termination_policy(map(), get_auto_termination_policy_input(), list()) ::
          {:ok, get_auto_termination_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_auto_termination_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAutoTerminationPolicy", input, options)
  end

  @doc """
  Returns the Amazon EMR block public access configuration for your Amazon Web
  Services account in the current Region.

  For more information see [Configure Block Public Access for Amazon
  EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html)
  in the *Amazon EMR
  Management Guide*.
  """
  @spec get_block_public_access_configuration(
          map(),
          get_block_public_access_configuration_input(),
          list()
        ) ::
          {:ok, get_block_public_access_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_block_public_access_configuration_errors()}
  def get_block_public_access_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBlockPublicAccessConfiguration", input, options)
  end

  @doc """
  Provides temporary, HTTP basic credentials that are associated with a given
  runtime
  IAM role and used by a cluster with fine-grained access control
  activated.

  You can use these credentials to connect to cluster endpoints that support
  username and password authentication.
  """
  @spec get_cluster_session_credentials(map(), get_cluster_session_credentials_input(), list()) ::
          {:ok, get_cluster_session_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cluster_session_credentials_errors()}
  def get_cluster_session_credentials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetClusterSessionCredentials", input, options)
  end

  @doc """
  Fetches the attached managed scaling policy for an Amazon EMR cluster.
  """
  @spec get_managed_scaling_policy(map(), get_managed_scaling_policy_input(), list()) ::
          {:ok, get_managed_scaling_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_managed_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetManagedScalingPolicy", input, options)
  end

  @doc """
  The presigned URL properties for the cluster's application user interface.
  """
  @spec get_on_cluster_app_ui_presigned_url(
          map(),
          get_on_cluster_app_ui_presigned_url_input(),
          list()
        ) ::
          {:ok, get_on_cluster_app_ui_presigned_url_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_on_cluster_app_ui_presigned_url_errors()}
  def get_on_cluster_app_ui_presigned_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOnClusterAppUIPresignedURL", input, options)
  end

  @doc """
  The presigned URL properties for the cluster's application user interface.
  """
  @spec get_persistent_app_ui_presigned_url(
          map(),
          get_persistent_app_ui_presigned_url_input(),
          list()
        ) ::
          {:ok, get_persistent_app_ui_presigned_url_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_persistent_app_ui_presigned_url_errors()}
  def get_persistent_app_ui_presigned_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPersistentAppUIPresignedURL", input, options)
  end

  @doc """
  Fetches mapping details for the specified Amazon EMR Studio and identity (user
  or group).
  """
  @spec get_studio_session_mapping(map(), get_studio_session_mapping_input(), list()) ::
          {:ok, get_studio_session_mapping_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_studio_session_mapping_errors()}
  def get_studio_session_mapping(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetStudioSessionMapping", input, options)
  end

  @doc """
  Provides information about the bootstrap actions associated with a cluster.
  """
  @spec list_bootstrap_actions(map(), list_bootstrap_actions_input(), list()) ::
          {:ok, list_bootstrap_actions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bootstrap_actions_errors()}
  def list_bootstrap_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBootstrapActions", input, options)
  end

  @doc """
  Provides the status of all clusters visible to this Amazon Web Services account.

  Allows
  you to filter the list of clusters based on certain criteria; for example,
  filtering by
  cluster creation date and time or by status. This call returns a maximum of 50
  clusters in
  unsorted order per call, but returns a marker to track the paging of the cluster
  list
  across multiple ListClusters calls.
  """
  @spec list_clusters(map(), list_clusters_input(), list()) ::
          {:ok, list_clusters_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_clusters_errors()}
  def list_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListClusters", input, options)
  end

  @doc """
  Lists all available details about the instance fleets in a cluster.

  The instance fleet configuration is available only in Amazon EMR releases
  4.8.0 and later, excluding 5.0.x versions.
  """
  @spec list_instance_fleets(map(), list_instance_fleets_input(), list()) ::
          {:ok, list_instance_fleets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_instance_fleets_errors()}
  def list_instance_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInstanceFleets", input, options)
  end

  @doc """
  Provides all available details about the instance groups in a cluster.
  """
  @spec list_instance_groups(map(), list_instance_groups_input(), list()) ::
          {:ok, list_instance_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_instance_groups_errors()}
  def list_instance_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInstanceGroups", input, options)
  end

  @doc """
  Provides information for all active Amazon EC2 instances and Amazon EC2
  instances terminated in the last 30 days, up to a maximum of 2,000.

  Amazon EC2
  instances in any of the following states are considered active:
  AWAITING_FULFILLMENT,
  PROVISIONING, BOOTSTRAPPING, RUNNING.
  """
  @spec list_instances(map(), list_instances_input(), list()) ::
          {:ok, list_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_instances_errors()}
  def list_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInstances", input, options)
  end

  @doc """
  Provides summaries of all notebook executions.

  You can filter the list based on multiple
  criteria such as status, time range, and editor id. Returns a maximum of 50
  notebook
  executions and a marker to track the paging of a longer notebook execution list
  across
  multiple `ListNotebookExecutions` calls.
  """
  @spec list_notebook_executions(map(), list_notebook_executions_input(), list()) ::
          {:ok, list_notebook_executions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_notebook_executions_errors()}
  def list_notebook_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListNotebookExecutions", input, options)
  end

  @doc """
  Retrieves release labels of Amazon EMR services in the Region where the API is
  called.
  """
  @spec list_release_labels(map(), list_release_labels_input(), list()) ::
          {:ok, list_release_labels_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_release_labels_errors()}
  def list_release_labels(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReleaseLabels", input, options)
  end

  @doc """
  Lists all the security configurations visible to this account, providing their
  creation
  dates and times, and their names.

  This call returns a maximum of 50 clusters per call, but
  returns a marker to track the paging of the cluster list across multiple
  ListSecurityConfigurations calls.
  """
  @spec list_security_configurations(map(), list_security_configurations_input(), list()) ::
          {:ok, list_security_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_security_configurations_errors()}
  def list_security_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSecurityConfigurations", input, options)
  end

  @doc """
  Provides a list of steps for the cluster in reverse order unless you specify
  `stepIds` with the request or filter by `StepStates`.

  You can
  specify a maximum of 10 `stepIDs`. The CLI automatically
  paginates results to return a list greater than 50 steps. To return more than 50
  steps
  using the CLI, specify a `Marker`, which is a pagination token
  that indicates the next set of steps to retrieve.
  """
  @spec list_steps(map(), list_steps_input(), list()) ::
          {:ok, list_steps_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_steps_errors()}
  def list_steps(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSteps", input, options)
  end

  @doc """
  Returns a list of all user or group session mappings for the Amazon EMR Studio
  specified by `StudioId`.
  """
  @spec list_studio_session_mappings(map(), list_studio_session_mappings_input(), list()) ::
          {:ok, list_studio_session_mappings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_studio_session_mappings_errors()}
  def list_studio_session_mappings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStudioSessionMappings", input, options)
  end

  @doc """
  Returns a list of all Amazon EMR Studios associated with the Amazon Web Services
  account.

  The list includes details such as ID, Studio Access URL, and
  creation time for each Studio.
  """
  @spec list_studios(map(), list_studios_input(), list()) ::
          {:ok, list_studios_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_studios_errors()}
  def list_studios(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStudios", input, options)
  end

  @doc """
  A list of the instance types that Amazon EMR supports.

  You can filter the
  list by Amazon Web Services Region and Amazon EMR release.
  """
  @spec list_supported_instance_types(map(), list_supported_instance_types_input(), list()) ::
          {:ok, list_supported_instance_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_supported_instance_types_errors()}
  def list_supported_instance_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSupportedInstanceTypes", input, options)
  end

  @doc """
  Modifies the number of steps that can be executed concurrently for the cluster
  specified
  using ClusterID.
  """
  @spec modify_cluster(map(), modify_cluster_input(), list()) ::
          {:ok, modify_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_cluster_errors()}
  def modify_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyCluster", input, options)
  end

  @doc """
  Modifies the target On-Demand and target Spot capacities for the instance fleet
  with the
  specified InstanceFleetID within the cluster specified using ClusterID.

  The call either
  succeeds or fails atomically.

  The instance fleet configuration is available only in Amazon EMR releases
  4.8.0 and later, excluding 5.0.x versions.
  """
  @spec modify_instance_fleet(map(), modify_instance_fleet_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_instance_fleet_errors()}
  def modify_instance_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyInstanceFleet", input, options)
  end

  @doc """
  ModifyInstanceGroups modifies the number of nodes and configuration settings of
  an
  instance group.

  The input parameters include the new target instance count for the group
  and the instance group ID. The call will either succeed or fail atomically.
  """
  @spec modify_instance_groups(map(), modify_instance_groups_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_instance_groups_errors()}
  def modify_instance_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyInstanceGroups", input, options)
  end

  @doc """
  Creates or updates an automatic scaling policy for a core instance group or task
  instance group in an Amazon EMR cluster.

  The automatic scaling policy defines how
  an instance group dynamically adds and terminates Amazon EC2 instances in
  response
  to the value of a CloudWatch metric.
  """
  @spec put_auto_scaling_policy(map(), put_auto_scaling_policy_input(), list()) ::
          {:ok, put_auto_scaling_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def put_auto_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAutoScalingPolicy", input, options)
  end

  @doc """

  Auto-termination is supported in Amazon EMR releases 5.30.0 and 6.1.0 and
  later.

  For more information, see [Using an auto-termination
  policy](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-auto-termination-policy.html).

  Creates or updates an auto-termination policy for an Amazon EMR cluster. An
  auto-termination policy defines the amount of idle time in seconds after which a
  cluster
  automatically terminates. For alternative cluster termination options, see
  [Control cluster
  termination](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html).
  """
  @spec put_auto_termination_policy(map(), put_auto_termination_policy_input(), list()) ::
          {:ok, put_auto_termination_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def put_auto_termination_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAutoTerminationPolicy", input, options)
  end

  @doc """
  Creates or updates an Amazon EMR block public access configuration for your
  Amazon Web Services account in the current Region.

  For more information see [Configure Block Public Access for Amazon
  EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html)
  in the *Amazon EMR
  Management Guide*.
  """
  @spec put_block_public_access_configuration(
          map(),
          put_block_public_access_configuration_input(),
          list()
        ) ::
          {:ok, put_block_public_access_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_block_public_access_configuration_errors()}
  def put_block_public_access_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutBlockPublicAccessConfiguration", input, options)
  end

  @doc """
  Creates or updates a managed scaling policy for an Amazon EMR cluster.

  The
  managed scaling policy defines the limits for resources, such as Amazon EC2
  instances that can be added or terminated from a cluster. The policy only
  applies to the
  core and task nodes. The master node cannot be scaled after initial
  configuration.
  """
  @spec put_managed_scaling_policy(map(), put_managed_scaling_policy_input(), list()) ::
          {:ok, put_managed_scaling_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def put_managed_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutManagedScalingPolicy", input, options)
  end

  @doc """
  Removes an automatic scaling policy from a specified instance group within an
  Amazon EMR cluster.
  """
  @spec remove_auto_scaling_policy(map(), remove_auto_scaling_policy_input(), list()) ::
          {:ok, remove_auto_scaling_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def remove_auto_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveAutoScalingPolicy", input, options)
  end

  @doc """
  Removes an auto-termination policy from an Amazon EMR cluster.
  """
  @spec remove_auto_termination_policy(map(), remove_auto_termination_policy_input(), list()) ::
          {:ok, remove_auto_termination_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def remove_auto_termination_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveAutoTerminationPolicy", input, options)
  end

  @doc """
  Removes a managed scaling policy from a specified Amazon EMR cluster.
  """
  @spec remove_managed_scaling_policy(map(), remove_managed_scaling_policy_input(), list()) ::
          {:ok, remove_managed_scaling_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def remove_managed_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveManagedScalingPolicy", input, options)
  end

  @doc """
  Removes tags from an Amazon EMR resource, such as a cluster or Amazon EMR
  Studio.

  Tags make it easier to associate resources in various ways, such as grouping
  clusters to track your Amazon EMR resource allocation costs. For more
  information,
  see [Tag Clusters](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).

  The following example removes the stack tag with value Prod from a cluster:
  """
  @spec remove_tags(map(), remove_tags_input(), list()) ::
          {:ok, remove_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_tags_errors()}
  def remove_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTags", input, options)
  end

  @doc """
  RunJobFlow creates and starts running a new cluster (job flow).

  The cluster runs the
  steps specified. After the steps complete, the cluster stops and the HDFS
  partition is
  lost. To prevent loss of data, configure the last step of the job flow to store
  results in
  Amazon S3. If the `JobFlowInstancesConfig`
  `KeepJobFlowAliveWhenNoSteps` parameter is set to `TRUE`, the cluster
  transitions to the WAITING state rather than shutting down after the steps have
  completed.

  For additional protection, you can set the `JobFlowInstancesConfig`
  `TerminationProtected` parameter to `TRUE` to lock the cluster and
  prevent it from being terminated by API call, user intervention, or in the event
  of a job
  flow error.

  A maximum of 256 steps are allowed in each job flow.

  If your cluster is long-running (such as a Hive data warehouse) or complex, you
  may
  require more than 256 steps to process your data. You can bypass the 256-step
  limitation in
  various ways, including using the SSH shell to connect to the master node and
  submitting
  queries directly to the software running on the master node, such as Hive and
  Hadoop.

  For long-running clusters, we recommend that you periodically store your
  results.

  The instance fleets configuration is available only in Amazon EMR releases
  4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain
  InstanceFleets parameters or InstanceGroups parameters, but not both.
  """
  @spec run_job_flow(map(), run_job_flow_input(), list()) ::
          {:ok, run_job_flow_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, run_job_flow_errors()}
  def run_job_flow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RunJobFlow", input, options)
  end

  @doc """
  You can use the `SetKeepJobFlowAliveWhenNoSteps` to configure a cluster (job
  flow) to terminate after the step execution, i.e., all your
  steps are executed.

  If you want a transient cluster that shuts down after the last of the current
  executing steps are completed,
  you can configure `SetKeepJobFlowAliveWhenNoSteps` to false. If you want a long
  running cluster, configure `SetKeepJobFlowAliveWhenNoSteps` to true.

  For more information, see [Managing Cluster Termination](https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html)
  in the *Amazon EMR Management Guide*.
  """
  @spec set_keep_job_flow_alive_when_no_steps(
          map(),
          set_keep_job_flow_alive_when_no_steps_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_keep_job_flow_alive_when_no_steps_errors()}
  def set_keep_job_flow_alive_when_no_steps(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetKeepJobFlowAliveWhenNoSteps", input, options)
  end

  @doc """
  SetTerminationProtection locks a cluster (job flow) so the Amazon EC2 instances
  in the cluster cannot be terminated by user intervention, an API call, or in the
  event of a
  job-flow error.

  The cluster still terminates upon successful completion of the job flow.
  Calling `SetTerminationProtection` on a cluster is similar to calling the
  Amazon EC2
  `DisableAPITermination` API on all Amazon EC2 instances in a
  cluster.

  `SetTerminationProtection` is used to prevent accidental termination of a
  cluster and to ensure that in the event of an error, the instances persist so
  that you can
  recover any data stored in their ephemeral instance storage.

  To terminate a cluster that has been locked by setting
  `SetTerminationProtection` to `true`, you must first unlock the
  job flow by a subsequent call to `SetTerminationProtection` in which you set the
  value to `false`.

  For more information, see [Managing Cluster Termination](https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html)
  in the *Amazon EMR Management Guide*.
  """
  @spec set_termination_protection(map(), set_termination_protection_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_termination_protection_errors()}
  def set_termination_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetTerminationProtection", input, options)
  end

  @doc """
  Specify whether to enable unhealthy node replacement, which lets Amazon EMR
  gracefully
  replace core nodes on a cluster if any nodes become unhealthy.

  For example, a node becomes
  unhealthy if disk usage is above 90%. If unhealthy node replacement is on and
  `TerminationProtected` are off,
  Amazon EMR immediately terminates the unhealthy core nodes. To use unhealthy
  node replacement
  and retain unhealthy core nodes, use to turn on
  termination protection. In such cases, Amazon EMR adds
  the unhealthy nodes to a denylist, reducing job interruptions and failures.

  If unhealthy node replacement is on, Amazon EMR
  notifies YARN and other applications on the cluster to stop scheduling tasks
  with these nodes, moves the data, and then terminates the nodes.

  For more information, see [graceful node
  replacement](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-node-replacement.html)
  in the *Amazon EMR Management Guide*.
  """
  @spec set_unhealthy_node_replacement(map(), set_unhealthy_node_replacement_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_unhealthy_node_replacement_errors()}
  def set_unhealthy_node_replacement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetUnhealthyNodeReplacement", input, options)
  end

  @doc """

  The SetVisibleToAllUsers parameter is no longer supported.

  Your cluster may be
  visible to all users in your account. To restrict cluster access using an IAM
  policy, see [Identity and Access Management for Amazon
  EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-access-IAM.html).

  Sets the `Cluster$VisibleToAllUsers` value for an Amazon EMR
  cluster. When `true`, IAM principals in the Amazon Web Services account can
  perform Amazon EMR cluster actions that their IAM policies allow. When `false`,
  only the IAM
  principal that created the cluster and the Amazon Web Services account root user
  can perform
  Amazon EMR actions on the cluster, regardless of IAM permissions
  policies attached to other IAM principals.

  This action works on running clusters. When you create a cluster, use the
  `RunJobFlowInput$VisibleToAllUsers` parameter.

  For more information, see [Understanding the Amazon EMR Cluster VisibleToAllUsers
  Setting](https://docs.aws.amazon.com/emr/latest/ManagementGuide/security_IAM_emr-with-IAM.html#security_set_visible_to_all_users)
  in the
  *Amazon EMR Management Guide*.
  """
  @spec set_visible_to_all_users(map(), set_visible_to_all_users_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_visible_to_all_users_errors()}
  def set_visible_to_all_users(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetVisibleToAllUsers", input, options)
  end

  @doc """
  Starts a notebook execution.
  """
  @spec start_notebook_execution(map(), start_notebook_execution_input(), list()) ::
          {:ok, start_notebook_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_notebook_execution_errors()}
  def start_notebook_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartNotebookExecution", input, options)
  end

  @doc """
  Stops a notebook execution.
  """
  @spec stop_notebook_execution(map(), stop_notebook_execution_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_notebook_execution_errors()}
  def stop_notebook_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopNotebookExecution", input, options)
  end

  @doc """
  TerminateJobFlows shuts a list of clusters (job flows) down.

  When a job flow is shut
  down, any step not yet completed is canceled and the Amazon EC2 instances on
  which
  the cluster is running are stopped. Any log files not already saved are uploaded
  to Amazon S3 if a LogUri was specified when the cluster was created.

  The maximum number of clusters allowed is 10. The call to `TerminateJobFlows`
  is asynchronous. Depending on the configuration of the cluster, it may take up
  to 1-5
  minutes for the cluster to completely terminate and release allocated resources,
  such as
  Amazon EC2 instances.
  """
  @spec terminate_job_flows(map(), terminate_job_flows_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_job_flows_errors()}
  def terminate_job_flows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateJobFlows", input, options)
  end

  @doc """
  Updates an Amazon EMR Studio configuration, including attributes such as name,
  description, and subnets.
  """
  @spec update_studio(map(), update_studio_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_studio_errors()}
  def update_studio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStudio", input, options)
  end

  @doc """
  Updates the session policy attached to the user or group for the specified
  Amazon EMR Studio.
  """
  @spec update_studio_session_mapping(map(), update_studio_session_mapping_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_studio_session_mapping_errors()}
  def update_studio_session_mapping(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStudioSessionMapping", input, options)
  end
end
