# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AutoScaling do
  @moduledoc """
  Amazon EC2 Auto Scaling

  Amazon EC2 Auto Scaling is designed to automatically launch and terminate EC2
  instances
  based on user-defined scaling policies, scheduled actions, and health checks.

  For more information, see the [Amazon EC2 Auto Scaling User Guide](https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html)
  and the [Amazon EC2 Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/Welcome.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      step_adjustment() :: %{
        "MetricIntervalLowerBound" => float(),
        "MetricIntervalUpperBound" => float(),
        "ScalingAdjustment" => integer()
      }
      
  """
  @type step_adjustment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_lifecycle_hooks_type() :: %{
        optional("LifecycleHookNames") => list(String.t()()),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type describe_lifecycle_hooks_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metric_collection_types_answer() :: %{
        optional("Granularities") => list(metric_granularity_type()()),
        optional("Metrics") => list(metric_collection_type()())
      }
      
  """
  @type describe_metric_collection_types_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_limits_answer() :: %{
        optional("MaxNumberOfAutoScalingGroups") => integer(),
        optional("MaxNumberOfLaunchConfigurations") => integer(),
        optional("NumberOfAutoScalingGroups") => integer(),
        optional("NumberOfLaunchConfigurations") => integer()
      }
      
  """
  @type describe_account_limits_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      adjustment_type() :: %{
        "AdjustmentType" => String.t()
      }
      
  """
  @type adjustment_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancers_request() :: %{
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t(),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type describe_load_balancers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_metric_specification() :: %{
        "CustomizedCapacityMetricSpecification" => predictive_scaling_customized_capacity_metric(),
        "CustomizedLoadMetricSpecification" => predictive_scaling_customized_load_metric(),
        "CustomizedScalingMetricSpecification" => predictive_scaling_customized_scaling_metric(),
        "PredefinedLoadMetricSpecification" => predictive_scaling_predefined_load_metric(),
        "PredefinedMetricPairSpecification" => predictive_scaling_predefined_metric_pair(),
        "PredefinedScalingMetricSpecification" => predictive_scaling_predefined_scaling_metric(),
        "TargetValue" => float()
      }
      
  """
  @type predictive_scaling_metric_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rollback_instance_refresh_answer() :: %{
        optional("InstanceRefreshId") => String.t()
      }
      
  """
  @type rollback_instance_refresh_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notification_configurations_type() :: %{
        optional("AutoScalingGroupNames") => list(String.t()()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_notification_configurations_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_arn_type() :: %{
        "Alarms" => list(alarm()()),
        "PolicyARN" => String.t()
      }
      
  """
  @type policy_arn_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_refresh() :: %{
        "AutoScalingGroupName" => String.t(),
        "DesiredConfiguration" => desired_configuration(),
        "EndTime" => non_neg_integer(),
        "InstanceRefreshId" => String.t(),
        "InstancesToUpdate" => integer(),
        "PercentageComplete" => integer(),
        "Preferences" => refresh_preferences(),
        "ProgressDetails" => instance_refresh_progress_details(),
        "RollbackDetails" => rollback_details(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }
      
  """
  @type instance_refresh() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_launch_configuration_type() :: %{
        optional("AssociatePublicIpAddress") => boolean(),
        optional("BlockDeviceMappings") => list(block_device_mapping()()),
        optional("ClassicLinkVPCId") => String.t(),
        optional("ClassicLinkVPCSecurityGroups") => list(String.t()()),
        optional("EbsOptimized") => boolean(),
        optional("IamInstanceProfile") => String.t(),
        optional("ImageId") => String.t(),
        optional("InstanceId") => String.t(),
        optional("InstanceMonitoring") => instance_monitoring(),
        optional("InstanceType") => String.t(),
        optional("KernelId") => String.t(),
        optional("KeyName") => String.t(),
        optional("MetadataOptions") => instance_metadata_options(),
        optional("PlacementTenancy") => String.t(),
        optional("RamdiskId") => String.t(),
        optional("SecurityGroups") => list(String.t()()),
        optional("SpotPrice") => String.t(),
        optional("UserData") => String.t(),
        required("LaunchConfigurationName") => String.t()
      }
      
  """
  @type create_launch_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_warm_pool_answer() :: %{}
      
  """
  @type delete_warm_pool_answer() :: %{}

  @typedoc """

  ## Example:
      
      instance_refresh_progress_details() :: %{
        "LivePoolProgress" => instance_refresh_live_pool_progress(),
        "WarmPoolProgress" => instance_refresh_warm_pool_progress()
      }
      
  """
  @type instance_refresh_progress_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tags_type() :: %{
        optional("NextToken") => String.t(),
        optional("Tags") => list(tag_description()())
      }
      
  """
  @type tags_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      traffic_source_identifier() :: %{
        "Identifier" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type traffic_source_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      exit_standby_query() :: %{
        optional("InstanceIds") => list(String.t()()),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type exit_standby_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_type() :: %{
        required("Tags") => list(tag()())
      }
      
  """
  @type delete_tags_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_instance_refresh_type() :: %{
        optional("DesiredConfiguration") => desired_configuration(),
        optional("Preferences") => refresh_preferences(),
        optional("Strategy") => list(any()),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type start_instance_refresh_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      process_type() :: %{
        "ProcessName" => String.t()
      }
      
  """
  @type process_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scheduled_actions_type() :: %{
        optional("AutoScalingGroupName") => String.t(),
        optional("EndTime") => non_neg_integer(),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t(),
        optional("ScheduledActionNames") => list(String.t()()),
        optional("StartTime") => non_neg_integer()
      }
      
  """
  @type describe_scheduled_actions_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      block_device_mapping() :: %{
        "DeviceName" => String.t(),
        "Ebs" => ebs(),
        "NoDevice" => boolean(),
        "VirtualName" => String.t()
      }
      
  """
  @type block_device_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric() :: %{
        "Dimensions" => list(metric_dimension()()),
        "MetricName" => String.t(),
        "Namespace" => String.t()
      }
      
  """
  @type metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_predefined_metric_pair() :: %{
        "PredefinedMetricType" => list(any()),
        "ResourceLabel" => String.t()
      }
      
  """
  @type predictive_scaling_predefined_metric_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enter_standby_answer() :: %{
        optional("Activities") => list(activity()())
      }
      
  """
  @type enter_standby_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_reuse_policy() :: %{
        "ReuseOnScaleIn" => boolean()
      }
      
  """
  @type instance_reuse_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alarm() :: %{
        "AlarmARN" => String.t(),
        "AlarmName" => String.t()
      }
      
  """
  @type alarm() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      traffic_source_state() :: %{
        "Identifier" => String.t(),
        "State" => String.t(),
        "TrafficSource" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type traffic_source_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_granularity_type() :: %{
        "Granularity" => String.t()
      }
      
  """
  @type metric_granularity_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_warm_pool_type() :: %{
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t(),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type describe_warm_pool_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_hook() :: %{
        "AutoScalingGroupName" => String.t(),
        "DefaultResult" => String.t(),
        "GlobalTimeout" => integer(),
        "HeartbeatTimeout" => integer(),
        "LifecycleHookName" => String.t(),
        "LifecycleTransition" => String.t(),
        "NotificationMetadata" => String.t(),
        "NotificationTargetARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type lifecycle_hook() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_traffic_sources_request() :: %{
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t(),
        optional("TrafficSourceType") => String.t(),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type describe_traffic_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_auto_scaling_group_type() :: %{
        optional("ForceDelete") => boolean(),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type delete_auto_scaling_group_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_lifecycle_action_heartbeat_answer() :: %{}
      
  """
  @type record_lifecycle_action_heartbeat_answer() :: %{}

  @typedoc """

  ## Example:
      
      describe_lifecycle_hooks_answer() :: %{
        optional("LifecycleHooks") => list(lifecycle_hook()())
      }
      
  """
  @type describe_lifecycle_hooks_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_lifecycle_hook_answer() :: %{}
      
  """
  @type put_lifecycle_hook_answer() :: %{}

  @typedoc """

  ## Example:
      
      memory_gi_b_per_v_cpu_request() :: %{
        "Max" => float(),
        "Min" => float()
      }
      
  """
  @type memory_gi_b_per_v_cpu_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_instance_refresh_answer() :: %{
        optional("InstanceRefreshId") => String.t()
      }
      
  """
  @type cancel_instance_refresh_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_policy() :: %{
        "AdjustmentType" => String.t(),
        "Alarms" => list(alarm()()),
        "AutoScalingGroupName" => String.t(),
        "Cooldown" => integer(),
        "Enabled" => boolean(),
        "EstimatedInstanceWarmup" => integer(),
        "MetricAggregationType" => String.t(),
        "MinAdjustmentMagnitude" => integer(),
        "MinAdjustmentStep" => integer(),
        "PolicyARN" => String.t(),
        "PolicyName" => String.t(),
        "PolicyType" => String.t(),
        "PredictiveScalingConfiguration" => predictive_scaling_configuration(),
        "ScalingAdjustment" => integer(),
        "StepAdjustments" => list(step_adjustment()()),
        "TargetTrackingConfiguration" => target_tracking_configuration()
      }
      
  """
  @type scaling_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_notification_configurations_answer() :: %{
        optional("NextToken") => String.t(),
        required("NotificationConfigurations") => list(notification_configuration()())
      }
      
  """
  @type describe_notification_configurations_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_maintenance_policy() :: %{
        "MaxHealthyPercentage" => integer(),
        "MinHealthyPercentage" => integer()
      }
      
  """
  @type instance_maintenance_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_actions_type() :: %{
        optional("NextToken") => String.t(),
        optional("ScheduledUpdateGroupActions") => list(scheduled_update_group_action()())
      }
      
  """
  @type scheduled_actions_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_load_balancers_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("LoadBalancerNames") => list(String.t()())
      }
      
  """
  @type attach_load_balancers_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_hook_specification() :: %{
        "DefaultResult" => String.t(),
        "HeartbeatTimeout" => integer(),
        "LifecycleHookName" => String.t(),
        "LifecycleTransition" => String.t(),
        "NotificationMetadata" => String.t(),
        "NotificationTargetARN" => String.t(),
        "RoleARN" => String.t()
      }
      
  """
  @type lifecycle_hook_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancer_target_groups_response() :: %{
        "LoadBalancerTargetGroups" => list(load_balancer_target_group_state()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_load_balancer_target_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_process_query() :: %{
        optional("ScalingProcesses") => list(String.t()()),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type scaling_process_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_configuration_names_type() :: %{
        optional("LaunchConfigurationNames") => list(String.t()()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type launch_configuration_names_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_load_balancers_result_type() :: %{}
      
  """
  @type attach_load_balancers_result_type() :: %{}

  @typedoc """

  ## Example:
      
      detach_instances_answer() :: %{
        optional("Activities") => list(activity()())
      }
      
  """
  @type detach_instances_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enabled_metric() :: %{
        "Granularity" => String.t(),
        "Metric" => String.t()
      }
      
  """
  @type enabled_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_predictive_scaling_forecast_answer() :: %{
        required("CapacityForecast") => capacity_forecast(),
        required("LoadForecast") => list(load_forecast()()),
        required("UpdateTime") => non_neg_integer()
      }
      
  """
  @type get_predictive_scaling_forecast_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_activity_in_progress_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type scaling_activity_in_progress_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_policies_type() :: %{
        optional("AutoScalingGroupName") => String.t(),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t(),
        optional("PolicyNames") => list(String.t()()),
        optional("PolicyTypes") => list(String.t()())
      }
      
  """
  @type describe_policies_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mixed_instances_policy() :: %{
        "InstancesDistribution" => instances_distribution(),
        "LaunchTemplate" => launch_template()
      }
      
  """
  @type mixed_instances_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_configurations_type() :: %{
        optional("NextToken") => String.t(),
        required("LaunchConfigurations") => list(launch_configuration()())
      }
      
  """
  @type launch_configurations_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_notification_configuration_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("TopicARN") => String.t()
      }
      
  """
  @type delete_notification_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_predefined_load_metric() :: %{
        "PredefinedMetricType" => list(any()),
        "ResourceLabel" => String.t()
      }
      
  """
  @type predictive_scaling_predefined_load_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customized_metric_specification() :: %{
        "Dimensions" => list(metric_dimension()()),
        "MetricName" => String.t(),
        "Metrics" => list(target_tracking_metric_data_query()()),
        "Namespace" => String.t(),
        "Statistic" => list(any()),
        "Unit" => String.t()
      }
      
  """
  @type customized_metric_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group_names_type() :: %{
        optional("AutoScalingGroupNames") => list(String.t()()),
        optional("Filters") => list(filter()()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type auto_scaling_group_names_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_traffic_sources_response() :: %{
        "NextToken" => String.t(),
        "TrafficSources" => list(traffic_source_state()())
      }
      
  """
  @type describe_traffic_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_refreshes_type() :: %{
        optional("InstanceRefreshIds") => list(String.t()()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t(),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type describe_instance_refreshes_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_notification_configuration_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("NotificationTypes") => list(String.t()()),
        required("TopicARN") => String.t()
      }
      
  """
  @type put_notification_configuration_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policies_type() :: %{
        optional("NextToken") => String.t(),
        optional("ScalingPolicies") => list(scaling_policy()())
      }
      
  """
  @type policies_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_instance_refresh_type() :: %{
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type cancel_instance_refresh_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_policy_type() :: %{
        optional("AutoScalingGroupName") => String.t(),
        optional("BreachThreshold") => float(),
        optional("HonorCooldown") => boolean(),
        optional("MetricValue") => float(),
        required("PolicyName") => String.t()
      }
      
  """
  @type execute_policy_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_load_balancers_result_type() :: %{}
      
  """
  @type detach_load_balancers_result_type() :: %{}

  @typedoc """

  ## Example:
      
      active_instance_refresh_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type active_instance_refresh_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_predefined_scaling_metric() :: %{
        "PredefinedMetricType" => list(any()),
        "ResourceLabel" => String.t()
      }
      
  """
  @type predictive_scaling_predefined_scaling_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_customized_load_metric() :: %{
        "MetricDataQueries" => list(metric_data_query()())
      }
      
  """
  @type predictive_scaling_customized_load_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tags_type() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_tags_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      warm_pool_configuration() :: %{
        "InstanceReusePolicy" => instance_reuse_policy(),
        "MaxGroupPreparedCapacity" => integer(),
        "MinSize" => integer(),
        "PoolState" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type warm_pool_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      v_cpu_count_request() :: %{
        "Max" => integer(),
        "Min" => integer()
      }
      
  """
  @type v_cpu_count_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_instance_in_auto_scaling_group_type() :: %{
        required("InstanceId") => String.t(),
        required("ShouldDecrementDesiredCapacity") => boolean()
      }
      
  """
  @type terminate_instance_in_auto_scaling_group_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_lifecycle_action_type() :: %{
        optional("InstanceId") => String.t(),
        optional("LifecycleActionToken") => String.t(),
        required("AutoScalingGroupName") => String.t(),
        required("LifecycleActionResult") => String.t(),
        required("LifecycleHookName") => String.t()
      }
      
  """
  @type complete_lifecycle_action_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity() :: %{
        "ActivityId" => String.t(),
        "AutoScalingGroupARN" => String.t(),
        "AutoScalingGroupName" => String.t(),
        "AutoScalingGroupState" => String.t(),
        "Cause" => String.t(),
        "Description" => String.t(),
        "Details" => String.t(),
        "EndTime" => non_neg_integer(),
        "Progress" => integer(),
        "StartTime" => non_neg_integer(),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instances_distribution() :: %{
        "OnDemandAllocationStrategy" => String.t(),
        "OnDemandBaseCapacity" => integer(),
        "OnDemandPercentageAboveBaseCapacity" => integer(),
        "SpotAllocationStrategy" => String.t(),
        "SpotInstancePools" => integer(),
        "SpotMaxPrice" => String.t()
      }
      
  """
  @type instances_distribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_traffic_sources_result_type() :: %{}
      
  """
  @type attach_traffic_sources_result_type() :: %{}

  @typedoc """

  ## Example:
      
      describe_load_balancers_response() :: %{
        "LoadBalancers" => list(load_balancer_state()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_load_balancers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "PropagateAtLaunch" => boolean(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_update_group_action() :: %{
        "AutoScalingGroupName" => String.t(),
        "DesiredCapacity" => integer(),
        "EndTime" => non_neg_integer(),
        "MaxSize" => integer(),
        "MinSize" => integer(),
        "Recurrence" => String.t(),
        "ScheduledActionARN" => String.t(),
        "ScheduledActionName" => String.t(),
        "StartTime" => non_neg_integer(),
        "Time" => non_neg_integer(),
        "TimeZone" => String.t()
      }
      
  """
  @type scheduled_update_group_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      load_forecast() :: %{
        "MetricSpecification" => predictive_scaling_metric_specification(),
        "Timestamps" => list(non_neg_integer()()),
        "Values" => list(float()())
      }
      
  """
  @type load_forecast() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      irreversible_instance_refresh_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type irreversible_instance_refresh_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record_lifecycle_action_heartbeat_type() :: %{
        optional("InstanceId") => String.t(),
        optional("LifecycleActionToken") => String.t(),
        required("AutoScalingGroupName") => String.t(),
        required("LifecycleHookName") => String.t()
      }
      
  """
  @type record_lifecycle_action_heartbeat_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accelerator_count_request() :: %{
        "Max" => integer(),
        "Min" => integer()
      }
      
  """
  @type accelerator_count_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_data_query() :: %{
        "Expression" => String.t(),
        "Id" => String.t(),
        "Label" => String.t(),
        "MetricStat" => metric_stat(),
        "ReturnData" => boolean()
      }
      
  """
  @type metric_data_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs() :: %{
        "DeleteOnTermination" => boolean(),
        "Encrypted" => boolean(),
        "Iops" => integer(),
        "SnapshotId" => String.t(),
        "Throughput" => integer(),
        "VolumeSize" => integer(),
        "VolumeType" => String.t()
      }
      
  """
  @type ebs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_scheduled_update_group_action_type() :: %{
        optional("DesiredCapacity") => integer(),
        optional("EndTime") => non_neg_integer(),
        optional("MaxSize") => integer(),
        optional("MinSize") => integer(),
        optional("Recurrence") => String.t(),
        optional("StartTime") => non_neg_integer(),
        optional("Time") => non_neg_integer(),
        optional("TimeZone") => String.t(),
        required("AutoScalingGroupName") => String.t(),
        required("ScheduledActionName") => String.t()
      }
      
  """
  @type put_scheduled_update_group_action_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_description() :: %{
        "Key" => String.t(),
        "PropagateAtLaunch" => boolean(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_metric_stat() :: %{
        "Metric" => metric(),
        "Stat" => String.t(),
        "Unit" => String.t()
      }
      
  """
  @type target_tracking_metric_stat() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_traffic_sources_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("TrafficSources") => list(traffic_source_identifier()())
      }
      
  """
  @type detach_traffic_sources_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_load_balancers_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("LoadBalancerNames") => list(String.t()())
      }
      
  """
  @type detach_load_balancers_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_contention_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_contention_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_instance_details() :: %{
        "AutoScalingGroupName" => String.t(),
        "AvailabilityZone" => String.t(),
        "HealthStatus" => String.t(),
        "InstanceId" => String.t(),
        "InstanceType" => String.t(),
        "LaunchConfigurationName" => String.t(),
        "LaunchTemplate" => launch_template_specification(),
        "LifecycleState" => String.t(),
        "ProtectedFromScaleIn" => boolean(),
        "WeightedCapacity" => String.t()
      }
      
  """
  @type auto_scaling_instance_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      load_balancer_state() :: %{
        "LoadBalancerName" => String.t(),
        "State" => String.t()
      }
      
  """
  @type load_balancer_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_traffic_sources_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("TrafficSources") => list(traffic_source_identifier()())
      }
      
  """
  @type attach_traffic_sources_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_customized_scaling_metric() :: %{
        "MetricDataQueries" => list(metric_data_query()())
      }
      
  """
  @type predictive_scaling_customized_scaling_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suspended_process() :: %{
        "ProcessName" => String.t(),
        "SuspensionReason" => String.t()
      }
      
  """
  @type suspended_process() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_update_group_action_request() :: %{
        "DesiredCapacity" => integer(),
        "EndTime" => non_neg_integer(),
        "MaxSize" => integer(),
        "MinSize" => integer(),
        "Recurrence" => String.t(),
        "ScheduledActionName" => String.t(),
        "StartTime" => non_neg_integer(),
        "TimeZone" => String.t()
      }
      
  """
  @type scheduled_update_group_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enter_standby_query() :: %{
        optional("InstanceIds") => list(String.t()()),
        required("AutoScalingGroupName") => String.t(),
        required("ShouldDecrementDesiredCapacity") => boolean()
      }
      
  """
  @type enter_standby_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_lifecycle_action_answer() :: %{}
      
  """
  @type complete_lifecycle_action_answer() :: %{}

  @typedoc """

  ## Example:
      
      describe_lifecycle_hook_types_answer() :: %{
        optional("LifecycleHookTypes") => list(String.t()())
      }
      
  """
  @type describe_lifecycle_hook_types_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_load_balancer_target_groups_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("TargetGroupARNs") => list(String.t()())
      }
      
  """
  @type detach_load_balancer_target_groups_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_lifecycle_hook_type() :: %{
        optional("DefaultResult") => String.t(),
        optional("HeartbeatTimeout") => integer(),
        optional("LifecycleTransition") => String.t(),
        optional("NotificationMetadata") => String.t(),
        optional("NotificationTargetARN") => String.t(),
        optional("RoleARN") => String.t(),
        required("AutoScalingGroupName") => String.t(),
        required("LifecycleHookName") => String.t()
      }
      
  """
  @type put_lifecycle_hook_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_template_overrides() :: %{
        "InstanceRequirements" => instance_requirements(),
        "InstanceType" => String.t(),
        "LaunchTemplateSpecification" => launch_template_specification(),
        "WeightedCapacity" => String.t()
      }
      
  """
  @type launch_template_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_termination_policy_types_answer() :: %{
        optional("TerminationPolicyTypes") => list(String.t()())
      }
      
  """
  @type describe_termination_policy_types_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_or_update_tags_type() :: %{
        required("Tags") => list(tag()())
      }
      
  """
  @type create_or_update_tags_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_scheduled_update_group_action_request() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "ScheduledActionName" => String.t()
      }
      
  """
  @type failed_scheduled_update_group_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_dimension() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type metric_dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_auto_scaling_group_type() :: %{
        optional("AvailabilityZones") => list(String.t()()),
        optional("CapacityRebalance") => boolean(),
        optional("Context") => String.t(),
        optional("DefaultCooldown") => integer(),
        optional("DefaultInstanceWarmup") => integer(),
        optional("DesiredCapacity") => integer(),
        optional("DesiredCapacityType") => String.t(),
        optional("HealthCheckGracePeriod") => integer(),
        optional("HealthCheckType") => String.t(),
        optional("InstanceId") => String.t(),
        optional("InstanceMaintenancePolicy") => instance_maintenance_policy(),
        optional("LaunchConfigurationName") => String.t(),
        optional("LaunchTemplate") => launch_template_specification(),
        optional("LifecycleHookSpecificationList") => list(lifecycle_hook_specification()()),
        optional("LoadBalancerNames") => list(String.t()()),
        optional("MaxInstanceLifetime") => integer(),
        optional("MixedInstancesPolicy") => mixed_instances_policy(),
        optional("NewInstancesProtectedFromScaleIn") => boolean(),
        optional("PlacementGroup") => String.t(),
        optional("ServiceLinkedRoleARN") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TargetGroupARNs") => list(String.t()()),
        optional("TerminationPolicies") => list(String.t()()),
        optional("TrafficSources") => list(traffic_source_identifier()()),
        optional("VPCZoneIdentifier") => String.t(),
        required("AutoScalingGroupName") => String.t(),
        required("MaxSize") => integer(),
        required("MinSize") => integer()
      }
      
  """
  @type create_auto_scaling_group_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_predictive_scaling_forecast_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("EndTime") => non_neg_integer(),
        required("PolicyName") => String.t(),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type get_predictive_scaling_forecast_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_bandwidth_gbps_request() :: %{
        "Max" => float(),
        "Min" => float()
      }
      
  """
  @type network_bandwidth_gbps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_warm_pool_type() :: %{
        optional("InstanceReusePolicy") => instance_reuse_policy(),
        optional("MaxGroupPreparedCapacity") => integer(),
        optional("MinSize") => integer(),
        optional("PoolState") => list(any()),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type put_warm_pool_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_instance_refresh_answer() :: %{
        optional("InstanceRefreshId") => String.t()
      }
      
  """
  @type start_instance_refresh_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification_configuration() :: %{
        "AutoScalingGroupName" => String.t(),
        "NotificationType" => String.t(),
        "TopicARN" => String.t()
      }
      
  """
  @type notification_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_refresh_warm_pool_progress() :: %{
        "InstancesToUpdate" => integer(),
        "PercentageComplete" => integer()
      }
      
  """
  @type instance_refresh_warm_pool_progress() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_scheduled_action_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("ScheduledActionNames") => list(String.t()())
      }
      
  """
  @type batch_delete_scheduled_action_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      exit_standby_answer() :: %{
        optional("Activities") => list(activity()())
      }
      
  """
  @type exit_standby_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_adjustment_types_answer() :: %{
        optional("AdjustmentTypes") => list(adjustment_type()())
      }
      
  """
  @type describe_adjustment_types_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_configuration_name_type() :: %{
        required("LaunchConfigurationName") => String.t()
      }
      
  """
  @type launch_configuration_name_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accelerator_total_memory_mi_b_request() :: %{
        "Max" => integer(),
        "Min" => integer()
      }
      
  """
  @type accelerator_total_memory_mi_b_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_type() :: %{
        optional("Activity") => activity()
      }
      
  """
  @type activity_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      processes_type() :: %{
        optional("Processes") => list(process_type()())
      }
      
  """
  @type processes_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_traffic_sources_result_type() :: %{}
      
  """
  @type detach_traffic_sources_result_type() :: %{}

  @typedoc """

  ## Example:
      
      delete_warm_pool_type() :: %{
        optional("ForceDelete") => boolean(),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type delete_warm_pool_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_warm_pool_answer() :: %{
        optional("Instances") => list(instance()()),
        optional("NextToken") => String.t(),
        optional("WarmPoolConfiguration") => warm_pool_configuration()
      }
      
  """
  @type describe_warm_pool_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "AvailabilityZone" => String.t(),
        "HealthStatus" => String.t(),
        "InstanceId" => String.t(),
        "InstanceType" => String.t(),
        "LaunchConfigurationName" => String.t(),
        "LaunchTemplate" => launch_template_specification(),
        "LifecycleState" => list(any()),
        "ProtectedFromScaleIn" => boolean(),
        "WeightedCapacity" => String.t()
      }
      
  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_instances_query() :: %{
        optional("InstanceIds") => list(String.t()()),
        required("AutoScalingGroupName") => String.t(),
        required("ShouldDecrementDesiredCapacity") => boolean()
      }
      
  """
  @type detach_instances_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_metadata_options() :: %{
        "HttpEndpoint" => list(any()),
        "HttpPutResponseHopLimit" => integer(),
        "HttpTokens" => list(any())
      }
      
  """
  @type instance_metadata_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      load_balancer_target_group_state() :: %{
        "LoadBalancerTargetGroupARN" => String.t(),
        "State" => String.t()
      }
      
  """
  @type load_balancer_target_group_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      predefined_metric_specification() :: %{
        "PredefinedMetricType" => list(any()),
        "ResourceLabel" => String.t()
      }
      
  """
  @type predefined_metric_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_stat() :: %{
        "Metric" => metric(),
        "Stat" => String.t(),
        "Unit" => String.t()
      }
      
  """
  @type metric_stat() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activities_type() :: %{
        optional("NextToken") => String.t(),
        required("Activities") => list(activity()())
      }
      
  """
  @type activities_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_instances_query() :: %{
        optional("InstanceIds") => list(String.t()()),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type attach_instances_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_requirements() :: %{
        "AcceleratorCount" => accelerator_count_request(),
        "AcceleratorManufacturers" => list(list(any())()),
        "AcceleratorNames" => list(list(any())()),
        "AcceleratorTotalMemoryMiB" => accelerator_total_memory_mi_b_request(),
        "AcceleratorTypes" => list(list(any())()),
        "AllowedInstanceTypes" => list(String.t()()),
        "BareMetal" => list(any()),
        "BaselineEbsBandwidthMbps" => baseline_ebs_bandwidth_mbps_request(),
        "BurstablePerformance" => list(any()),
        "CpuManufacturers" => list(list(any())()),
        "ExcludedInstanceTypes" => list(String.t()()),
        "InstanceGenerations" => list(list(any())()),
        "LocalStorage" => list(any()),
        "LocalStorageTypes" => list(list(any())()),
        "MaxSpotPriceAsPercentageOfOptimalOnDemandPrice" => integer(),
        "MemoryGiBPerVCpu" => memory_gi_b_per_v_cpu_request(),
        "MemoryMiB" => memory_mi_b_request(),
        "NetworkBandwidthGbps" => network_bandwidth_gbps_request(),
        "NetworkInterfaceCount" => network_interface_count_request(),
        "OnDemandMaxPricePercentageOverLowestPrice" => integer(),
        "RequireHibernateSupport" => boolean(),
        "SpotMaxPricePercentageOverLowestPrice" => integer(),
        "TotalLocalStorageGB" => total_local_storage_g_b_request(),
        "VCpuCount" => v_cpu_count_request()
      }
      
  """
  @type instance_requirements() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_monitoring() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type instance_monitoring() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_desired_capacity_type() :: %{
        optional("HonorCooldown") => boolean(),
        required("AutoScalingGroupName") => String.t(),
        required("DesiredCapacity") => integer()
      }
      
  """
  @type set_desired_capacity_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group() :: %{
        "Status" => String.t(),
        "InstanceMaintenancePolicy" => instance_maintenance_policy(),
        "EnabledMetrics" => list(enabled_metric()()),
        "SuspendedProcesses" => list(suspended_process()()),
        "Tags" => list(tag_description()()),
        "WarmPoolSize" => integer(),
        "ServiceLinkedRoleARN" => String.t(),
        "Context" => String.t(),
        "DefaultCooldown" => integer(),
        "MaxInstanceLifetime" => integer(),
        "LoadBalancerNames" => list(String.t()()),
        "MinSize" => integer(),
        "HealthCheckGracePeriod" => integer(),
        "AvailabilityZones" => list(String.t()()),
        "DesiredCapacityType" => String.t(),
        "TrafficSources" => list(traffic_source_identifier()()),
        "VPCZoneIdentifier" => String.t(),
        "MaxSize" => integer(),
        "CapacityRebalance" => boolean(),
        "Instances" => list(instance()()),
        "TerminationPolicies" => list(String.t()()),
        "LaunchConfigurationName" => String.t(),
        "HealthCheckType" => String.t(),
        "PlacementGroup" => String.t(),
        "AutoScalingGroupARN" => String.t(),
        "DesiredCapacity" => integer(),
        "WarmPoolConfiguration" => warm_pool_configuration(),
        "DefaultInstanceWarmup" => integer(),
        "AutoScalingGroupName" => String.t(),
        "PredictedCapacity" => integer(),
        "TargetGroupARNs" => list(String.t()()),
        "MixedInstancesPolicy" => mixed_instances_policy(),
        "CreatedTime" => non_neg_integer(),
        "NewInstancesProtectedFromScaleIn" => boolean(),
        "LaunchTemplate" => launch_template_specification()
      }
      
  """
  @type auto_scaling_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_put_scheduled_update_group_action_answer() :: %{
        optional("FailedScheduledUpdateGroupActions") => list(failed_scheduled_update_group_action_request()())
      }
      
  """
  @type batch_put_scheduled_update_group_action_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_auto_scaling_notification_types_answer() :: %{
        optional("AutoScalingNotificationTypes") => list(String.t()())
      }
      
  """
  @type describe_auto_scaling_notification_types_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      refresh_preferences() :: %{
        "AlarmSpecification" => alarm_specification(),
        "AutoRollback" => boolean(),
        "BakeTime" => integer(),
        "CheckpointDelay" => integer(),
        "CheckpointPercentages" => list(integer()()),
        "InstanceWarmup" => integer(),
        "MaxHealthyPercentage" => integer(),
        "MinHealthyPercentage" => integer(),
        "ScaleInProtectedInstances" => list(any()),
        "SkipMatching" => boolean(),
        "StandbyInstances" => list(any())
      }
      
  """
  @type refresh_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_template() :: %{
        "LaunchTemplateSpecification" => launch_template_specification(),
        "Overrides" => list(launch_template_overrides()())
      }
      
  """
  @type launch_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_put_scheduled_update_group_action_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("ScheduledUpdateGroupActions") => list(scheduled_update_group_action_request()())
      }
      
  """
  @type batch_put_scheduled_update_group_action_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_refreshes_answer() :: %{
        optional("InstanceRefreshes") => list(instance_refresh()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_instance_refreshes_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_warm_pool_answer() :: %{}
      
  """
  @type put_warm_pool_answer() :: %{}

  @typedoc """

  ## Example:
      
      update_auto_scaling_group_type() :: %{
        optional("AvailabilityZones") => list(String.t()()),
        optional("CapacityRebalance") => boolean(),
        optional("Context") => String.t(),
        optional("DefaultCooldown") => integer(),
        optional("DefaultInstanceWarmup") => integer(),
        optional("DesiredCapacity") => integer(),
        optional("DesiredCapacityType") => String.t(),
        optional("HealthCheckGracePeriod") => integer(),
        optional("HealthCheckType") => String.t(),
        optional("InstanceMaintenancePolicy") => instance_maintenance_policy(),
        optional("LaunchConfigurationName") => String.t(),
        optional("LaunchTemplate") => launch_template_specification(),
        optional("MaxInstanceLifetime") => integer(),
        optional("MaxSize") => integer(),
        optional("MinSize") => integer(),
        optional("MixedInstancesPolicy") => mixed_instances_policy(),
        optional("NewInstancesProtectedFromScaleIn") => boolean(),
        optional("PlacementGroup") => String.t(),
        optional("ServiceLinkedRoleARN") => String.t(),
        optional("TerminationPolicies") => list(String.t()()),
        optional("VPCZoneIdentifier") => String.t(),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type update_auto_scaling_group_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_load_balancer_target_groups_request() :: %{
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t(),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type describe_load_balancer_target_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_refresh_in_progress_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type instance_refresh_in_progress_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scheduled_action_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("ScheduledActionName") => String.t()
      }
      
  """
  @type delete_scheduled_action_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_configuration() :: %{
        "AssociatePublicIpAddress" => boolean(),
        "BlockDeviceMappings" => list(block_device_mapping()()),
        "ClassicLinkVPCId" => String.t(),
        "ClassicLinkVPCSecurityGroups" => list(String.t()()),
        "CreatedTime" => non_neg_integer(),
        "EbsOptimized" => boolean(),
        "IamInstanceProfile" => String.t(),
        "ImageId" => String.t(),
        "InstanceMonitoring" => instance_monitoring(),
        "InstanceType" => String.t(),
        "KernelId" => String.t(),
        "KeyName" => String.t(),
        "LaunchConfigurationARN" => String.t(),
        "LaunchConfigurationName" => String.t(),
        "MetadataOptions" => instance_metadata_options(),
        "PlacementTenancy" => String.t(),
        "RamdiskId" => String.t(),
        "SecurityGroups" => list(String.t()()),
        "SpotPrice" => String.t(),
        "UserData" => String.t()
      }
      
  """
  @type launch_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_load_balancer_target_groups_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("TargetGroupARNs") => list(String.t()())
      }
      
  """
  @type attach_load_balancer_target_groups_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_template_specification() :: %{
        "LaunchTemplateId" => String.t(),
        "LaunchTemplateName" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type launch_template_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rollback_details() :: %{
        "InstancesToUpdateOnRollback" => integer(),
        "PercentageCompleteOnRollback" => integer(),
        "ProgressDetailsOnRollback" => instance_refresh_progress_details(),
        "RollbackReason" => String.t(),
        "RollbackStartTime" => non_neg_integer()
      }
      
  """
  @type rollback_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_instance_protection_query() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("InstanceIds") => list(String.t()()),
        required("ProtectedFromScaleIn") => boolean()
      }
      
  """
  @type set_instance_protection_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      memory_mi_b_request() :: %{
        "Max" => integer(),
        "Min" => integer()
      }
      
  """
  @type memory_mi_b_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_interface_count_request() :: %{
        "Max" => integer(),
        "Min" => integer()
      }
      
  """
  @type network_interface_count_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_instance_health_query() :: %{
        optional("ShouldRespectGracePeriod") => boolean(),
        required("HealthStatus") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type set_instance_health_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lifecycle_hook_type() :: %{
        required("AutoScalingGroupName") => String.t(),
        required("LifecycleHookName") => String.t()
      }
      
  """
  @type delete_lifecycle_hook_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_metrics_collection_query() :: %{
        optional("Metrics") => list(String.t()()),
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type disable_metrics_collection_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      total_local_storage_g_b_request() :: %{
        "Max" => float(),
        "Min" => float()
      }
      
  """
  @type total_local_storage_g_b_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_linked_role_failure() :: %{
        "message" => String.t()
      }
      
  """
  @type service_linked_role_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_instance_protection_answer() :: %{}
      
  """
  @type set_instance_protection_answer() :: %{}

  @typedoc """

  ## Example:
      
      predictive_scaling_customized_capacity_metric() :: %{
        "MetricDataQueries" => list(metric_data_query()())
      }
      
  """
  @type predictive_scaling_customized_capacity_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rollback_instance_refresh_type() :: %{
        required("AutoScalingGroupName") => String.t()
      }
      
  """
  @type rollback_instance_refresh_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_metric_data_query() :: %{
        "Expression" => String.t(),
        "Id" => String.t(),
        "Label" => String.t(),
        "MetricStat" => target_tracking_metric_stat(),
        "ReturnData" => boolean()
      }
      
  """
  @type target_tracking_metric_data_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_forecast() :: %{
        "Timestamps" => list(non_neg_integer()()),
        "Values" => list(float()())
      }
      
  """
  @type capacity_forecast() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_instances_type() :: %{
        optional("AutoScalingInstances") => list(auto_scaling_instance_details()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type auto_scaling_instances_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_load_balancer_target_groups_result_type() :: %{}
      
  """
  @type detach_load_balancer_target_groups_result_type() :: %{}

  @typedoc """

  ## Example:
      
      alarm_specification() :: %{
        "Alarms" => list(String.t()())
      }
      
  """
  @type alarm_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_activities_type() :: %{
        optional("ActivityIds") => list(String.t()()),
        optional("AutoScalingGroupName") => String.t(),
        optional("IncludeDeletedGroups") => boolean(),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_scaling_activities_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_lifecycle_hook_answer() :: %{}
      
  """
  @type delete_lifecycle_hook_answer() :: %{}

  @typedoc """

  ## Example:
      
      describe_auto_scaling_instances_type() :: %{
        optional("InstanceIds") => list(String.t()()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_auto_scaling_instances_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_refresh_live_pool_progress() :: %{
        "InstancesToUpdate" => integer(),
        "PercentageComplete" => integer()
      }
      
  """
  @type instance_refresh_live_pool_progress() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_groups_type() :: %{
        optional("NextToken") => String.t(),
        required("AutoScalingGroups") => list(auto_scaling_group()())
      }
      
  """
  @type auto_scaling_groups_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_collection_type() :: %{
        "Metric" => String.t()
      }
      
  """
  @type metric_collection_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_scheduled_action_answer() :: %{
        optional("FailedScheduledActions") => list(failed_scheduled_update_group_action_request()())
      }
      
  """
  @type batch_delete_scheduled_action_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_metrics_collection_query() :: %{
        optional("Metrics") => list(String.t()()),
        required("AutoScalingGroupName") => String.t(),
        required("Granularity") => String.t()
      }
      
  """
  @type enable_metrics_collection_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      desired_configuration() :: %{
        "LaunchTemplate" => launch_template_specification(),
        "MixedInstancesPolicy" => mixed_instances_policy()
      }
      
  """
  @type desired_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_next_token() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      baseline_ebs_bandwidth_mbps_request() :: %{
        "Max" => integer(),
        "Min" => integer()
      }
      
  """
  @type baseline_ebs_bandwidth_mbps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_scaling_policy_type() :: %{
        optional("AdjustmentType") => String.t(),
        optional("Cooldown") => integer(),
        optional("Enabled") => boolean(),
        optional("EstimatedInstanceWarmup") => integer(),
        optional("MetricAggregationType") => String.t(),
        optional("MinAdjustmentMagnitude") => integer(),
        optional("MinAdjustmentStep") => integer(),
        optional("PolicyType") => String.t(),
        optional("PredictiveScalingConfiguration") => predictive_scaling_configuration(),
        optional("ScalingAdjustment") => integer(),
        optional("StepAdjustments") => list(step_adjustment()()),
        optional("TargetTrackingConfiguration") => target_tracking_configuration(),
        required("AutoScalingGroupName") => String.t(),
        required("PolicyName") => String.t()
      }
      
  """
  @type put_scaling_policy_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_load_balancer_target_groups_result_type() :: %{}
      
  """
  @type attach_load_balancer_target_groups_result_type() :: %{}

  @typedoc """

  ## Example:
      
      predictive_scaling_configuration() :: %{
        "MaxCapacityBreachBehavior" => list(any()),
        "MaxCapacityBuffer" => integer(),
        "MetricSpecifications" => list(predictive_scaling_metric_specification()()),
        "Mode" => list(any()),
        "SchedulingBufferTime" => integer()
      }
      
  """
  @type predictive_scaling_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_configuration() :: %{
        "CustomizedMetricSpecification" => customized_metric_specification(),
        "DisableScaleIn" => boolean(),
        "PredefinedMetricSpecification" => predefined_metric_specification(),
        "TargetValue" => float()
      }
      
  """
  @type target_tracking_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_policy_type() :: %{
        optional("AutoScalingGroupName") => String.t(),
        required("PolicyName") => String.t()
      }
      
  """
  @type delete_policy_type() :: %{String.t() => any()}

  @type attach_instances_errors() :: service_linked_role_failure() | resource_contention_fault()

  @type attach_load_balancer_target_groups_errors() ::
          service_linked_role_failure() | resource_contention_fault()

  @type attach_load_balancers_errors() ::
          service_linked_role_failure() | resource_contention_fault()

  @type attach_traffic_sources_errors() ::
          service_linked_role_failure() | resource_contention_fault()

  @type batch_delete_scheduled_action_errors() :: resource_contention_fault()

  @type batch_put_scheduled_update_group_action_errors() ::
          already_exists_fault() | resource_contention_fault() | limit_exceeded_fault()

  @type cancel_instance_refresh_errors() ::
          resource_contention_fault()
          | active_instance_refresh_not_found_fault()
          | limit_exceeded_fault()

  @type complete_lifecycle_action_errors() :: resource_contention_fault()

  @type create_auto_scaling_group_errors() ::
          service_linked_role_failure()
          | already_exists_fault()
          | resource_contention_fault()
          | limit_exceeded_fault()

  @type create_launch_configuration_errors() ::
          already_exists_fault() | resource_contention_fault() | limit_exceeded_fault()

  @type create_or_update_tags_errors() ::
          already_exists_fault()
          | resource_in_use_fault()
          | resource_contention_fault()
          | limit_exceeded_fault()

  @type delete_auto_scaling_group_errors() ::
          resource_in_use_fault()
          | resource_contention_fault()
          | scaling_activity_in_progress_fault()

  @type delete_launch_configuration_errors() ::
          resource_in_use_fault() | resource_contention_fault()

  @type delete_lifecycle_hook_errors() :: resource_contention_fault()

  @type delete_notification_configuration_errors() :: resource_contention_fault()

  @type delete_policy_errors() :: service_linked_role_failure() | resource_contention_fault()

  @type delete_scheduled_action_errors() :: resource_contention_fault()

  @type delete_tags_errors() :: resource_in_use_fault() | resource_contention_fault()

  @type delete_warm_pool_errors() ::
          resource_in_use_fault()
          | resource_contention_fault()
          | scaling_activity_in_progress_fault()
          | limit_exceeded_fault()

  @type describe_account_limits_errors() :: resource_contention_fault()

  @type describe_adjustment_types_errors() :: resource_contention_fault()

  @type describe_auto_scaling_groups_errors() ::
          invalid_next_token() | resource_contention_fault()

  @type describe_auto_scaling_instances_errors() ::
          invalid_next_token() | resource_contention_fault()

  @type describe_auto_scaling_notification_types_errors() :: resource_contention_fault()

  @type describe_instance_refreshes_errors() :: invalid_next_token() | resource_contention_fault()

  @type describe_launch_configurations_errors() ::
          invalid_next_token() | resource_contention_fault()

  @type describe_lifecycle_hook_types_errors() :: resource_contention_fault()

  @type describe_lifecycle_hooks_errors() :: resource_contention_fault()

  @type describe_load_balancer_target_groups_errors() ::
          invalid_next_token() | resource_contention_fault()

  @type describe_load_balancers_errors() :: invalid_next_token() | resource_contention_fault()

  @type describe_metric_collection_types_errors() :: resource_contention_fault()

  @type describe_notification_configurations_errors() ::
          invalid_next_token() | resource_contention_fault()

  @type describe_policies_errors() ::
          invalid_next_token() | service_linked_role_failure() | resource_contention_fault()

  @type describe_scaling_activities_errors() :: invalid_next_token() | resource_contention_fault()

  @type describe_scaling_process_types_errors() :: resource_contention_fault()

  @type describe_scheduled_actions_errors() :: invalid_next_token() | resource_contention_fault()

  @type describe_tags_errors() :: invalid_next_token() | resource_contention_fault()

  @type describe_termination_policy_types_errors() :: resource_contention_fault()

  @type describe_traffic_sources_errors() :: invalid_next_token() | resource_contention_fault()

  @type describe_warm_pool_errors() ::
          invalid_next_token() | resource_contention_fault() | limit_exceeded_fault()

  @type detach_instances_errors() :: resource_contention_fault()

  @type detach_load_balancer_target_groups_errors() :: resource_contention_fault()

  @type detach_load_balancers_errors() :: resource_contention_fault()

  @type detach_traffic_sources_errors() :: resource_contention_fault()

  @type disable_metrics_collection_errors() :: resource_contention_fault()

  @type enable_metrics_collection_errors() :: resource_contention_fault()

  @type enter_standby_errors() :: resource_contention_fault()

  @type execute_policy_errors() ::
          resource_contention_fault() | scaling_activity_in_progress_fault()

  @type exit_standby_errors() :: resource_contention_fault()

  @type get_predictive_scaling_forecast_errors() :: resource_contention_fault()

  @type put_lifecycle_hook_errors() :: resource_contention_fault() | limit_exceeded_fault()

  @type put_notification_configuration_errors() ::
          service_linked_role_failure() | resource_contention_fault() | limit_exceeded_fault()

  @type put_scaling_policy_errors() ::
          service_linked_role_failure() | resource_contention_fault() | limit_exceeded_fault()

  @type put_scheduled_update_group_action_errors() ::
          already_exists_fault() | resource_contention_fault() | limit_exceeded_fault()

  @type put_warm_pool_errors() :: resource_contention_fault() | limit_exceeded_fault()

  @type record_lifecycle_action_heartbeat_errors() :: resource_contention_fault()

  @type resume_processes_errors() :: resource_in_use_fault() | resource_contention_fault()

  @type rollback_instance_refresh_errors() ::
          resource_contention_fault()
          | irreversible_instance_refresh_fault()
          | active_instance_refresh_not_found_fault()
          | limit_exceeded_fault()

  @type set_desired_capacity_errors() ::
          resource_contention_fault() | scaling_activity_in_progress_fault()

  @type set_instance_health_errors() :: resource_contention_fault()

  @type set_instance_protection_errors() :: resource_contention_fault() | limit_exceeded_fault()

  @type start_instance_refresh_errors() ::
          instance_refresh_in_progress_fault()
          | resource_contention_fault()
          | limit_exceeded_fault()

  @type suspend_processes_errors() :: resource_in_use_fault() | resource_contention_fault()

  @type terminate_instance_in_auto_scaling_group_errors() ::
          resource_contention_fault() | scaling_activity_in_progress_fault()

  @type update_auto_scaling_group_errors() ::
          service_linked_role_failure()
          | resource_contention_fault()
          | scaling_activity_in_progress_fault()

  def metadata do
    %{
      api_version: "2011-01-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "autoscaling",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "Auto Scaling",
      signature_version: "v4",
      signing_name: "autoscaling",
      target_prefix: "AutoScaling_2011_01_01"
    }
  end

  @doc """
  Attaches one or more EC2 instances to the specified Auto Scaling group.

  When you attach instances, Amazon EC2 Auto Scaling increases the desired
  capacity of the group by the
  number of instances being attached. If the number of instances being attached
  plus the
  desired capacity of the group exceeds the maximum size of the group, the
  operation
  fails.

  If there is a Classic Load Balancer attached to your Auto Scaling group, the
  instances are
  also registered with the load balancer. If there are target groups attached to
  your Auto Scaling
  group, the instances are also registered with the target groups.

  For more information, see [Detach or attach
  instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-detach-attach-instances.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec attach_instances(map(), attach_instances_query(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_instances_errors()}
  def attach_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachInstances", input, options)
  end

  @doc """

  This API operation is superseded by
  [AttachTrafficSources](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html), which
  can attach multiple traffic sources types.

  We recommend using
  `AttachTrafficSources` to simplify how you manage traffic sources.
  However, we continue to support `AttachLoadBalancerTargetGroups`. You can
  use both the original `AttachLoadBalancerTargetGroups` API operation and
  `AttachTrafficSources` on the same Auto Scaling group.

  Attaches one or more target groups to the specified Auto Scaling group.

  This operation is used with the following load balancer types:

    *
  Application Load Balancer - Operates at the application layer (layer 7) and
  supports HTTP and
  HTTPS.

    *
  Network Load Balancer - Operates at the transport layer (layer 4) and supports
  TCP, TLS, and
  UDP.

    *
  Gateway Load Balancer - Operates at the network layer (layer 3).

  To describe the target groups for an Auto Scaling group, call the
  [DescribeLoadBalancerTargetGroups](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancerTargetGroups.html)
  API. To detach the target group from
  the Auto Scaling group, call the
  [DetachLoadBalancerTargetGroups](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachLoadBalancerTargetGroups.html) API.

  This operation is additive and does not detach existing target groups or Classic
  Load
  Balancers from the Auto Scaling group.

  For more information, see [Use Elastic Load Balancing to
  distribute traffic across the instances in your Auto Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec attach_load_balancer_target_groups(
          map(),
          attach_load_balancer_target_groups_type(),
          list()
        ) ::
          {:ok, attach_load_balancer_target_groups_result_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_load_balancer_target_groups_errors()}
  def attach_load_balancer_target_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachLoadBalancerTargetGroups", input, options)
  end

  @doc """

  This API operation is superseded by
  [https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html), which
  can attach multiple traffic sources types.

  We recommend using
  `AttachTrafficSources` to simplify how you manage traffic sources.
  However, we continue to support `AttachLoadBalancers`. You can use both
  the original `AttachLoadBalancers` API operation and
  `AttachTrafficSources` on the same Auto Scaling group.

  Attaches one or more Classic Load Balancers to the specified Auto Scaling group.
  Amazon EC2 Auto Scaling registers the
  running instances with these Classic Load Balancers.

  To describe the load balancers for an Auto Scaling group, call the
  [DescribeLoadBalancers](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancers.html)
  API.
  To detach a load balancer from the Auto Scaling group, call the
  [DetachLoadBalancers](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachLoadBalancers.html) API.

  This operation is additive and does not detach existing Classic Load Balancers
  or
  target groups from the Auto Scaling group.

  For more information, see [Use Elastic Load Balancing to
  distribute traffic across the instances in your Auto Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec attach_load_balancers(map(), attach_load_balancers_type(), list()) ::
          {:ok, attach_load_balancers_result_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_load_balancers_errors()}
  def attach_load_balancers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachLoadBalancers", input, options)
  end

  @doc """
  Attaches one or more traffic sources to the specified Auto Scaling group.

  You can use any of the following as traffic sources for an Auto Scaling group:

    *
  Application Load Balancer

    *
  Classic Load Balancer

    *
  Gateway Load Balancer

    *
  Network Load Balancer

    *
  VPC Lattice

  This operation is additive and does not detach existing traffic sources from the
  Auto Scaling
  group.

  After the operation completes, use the
  [DescribeTrafficSources](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html) API to
  return details about the state of the attachments between traffic sources and
  your Auto Scaling
  group. To detach a traffic source from the Auto Scaling group, call the
  [DetachTrafficSources](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachTrafficSources.html)
  API.
  """
  @spec attach_traffic_sources(map(), attach_traffic_sources_type(), list()) ::
          {:ok, attach_traffic_sources_result_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_traffic_sources_errors()}
  def attach_traffic_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachTrafficSources", input, options)
  end

  @doc """
  Deletes one or more scheduled actions for the specified Auto Scaling group.
  """
  @spec batch_delete_scheduled_action(map(), batch_delete_scheduled_action_type(), list()) ::
          {:ok, batch_delete_scheduled_action_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_scheduled_action_errors()}
  def batch_delete_scheduled_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteScheduledAction", input, options)
  end

  @doc """
  Creates or updates one or more scheduled scaling actions for an Auto Scaling
  group.
  """
  @spec batch_put_scheduled_update_group_action(
          map(),
          batch_put_scheduled_update_group_action_type(),
          list()
        ) ::
          {:ok, batch_put_scheduled_update_group_action_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_put_scheduled_update_group_action_errors()}
  def batch_put_scheduled_update_group_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchPutScheduledUpdateGroupAction", input, options)
  end

  @doc """
  Cancels an instance refresh or rollback that is in progress.

  If an instance refresh or
  rollback is not in progress, an `ActiveInstanceRefreshNotFound` error
  occurs.

  This operation is part of the [instance refresh feature](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  in Amazon EC2 Auto Scaling, which helps you update instances in your Auto
  Scaling group
  after you make configuration changes.

  When you cancel an instance refresh, this does not roll back any changes that it
  made.
  Use the
  [RollbackInstanceRefresh](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RollbackInstanceRefresh.html)
  API to roll back instead.
  """
  @spec cancel_instance_refresh(map(), cancel_instance_refresh_type(), list()) ::
          {:ok, cancel_instance_refresh_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_instance_refresh_errors()}
  def cancel_instance_refresh(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelInstanceRefresh", input, options)
  end

  @doc """
  Completes the lifecycle action for the specified token or instance with the
  specified
  result.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling
  group:

    1.
  (Optional) Create a launch template or launch configuration with a user data
  script that runs while an instance is in a wait state due to a lifecycle
  hook.

    2.
  (Optional) Create a Lambda function and a rule that allows Amazon EventBridge to
  invoke
  your Lambda function when an instance is put into a wait state due to a
  lifecycle hook.

    3.
  (Optional) Create a notification target and an IAM role. The target can be
  either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2
  Auto Scaling to publish
  lifecycle notifications to the target.

    4.
  Create the lifecycle hook. Specify whether the hook is used when the instances
  launch or terminate.

    5.
  If you need more time, record the lifecycle action heartbeat to keep the
  instance in a wait state.

    6.

  ## If you finish before the timeout period ends, send a
  callback by using the
  [CompleteLifecycleAction](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CompleteLifecycleAction.html) API
  call.

  For more information, see [Complete a lifecycle
  action](https://docs.aws.amazon.com/autoscaling/ec2/userguide/completing-lifecycle-hooks.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec complete_lifecycle_action(map(), complete_lifecycle_action_type(), list()) ::
          {:ok, complete_lifecycle_action_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, complete_lifecycle_action_errors()}
  def complete_lifecycle_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CompleteLifecycleAction", input, options)
  end

  @doc """

  ## We strongly recommend using a launch template when calling this operation to
  ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2.

  Creates an Auto Scaling group with the specified name and attributes.

  If you exceed your maximum limit of Auto Scaling groups, the call fails. To
  query this limit,
  call the
  [DescribeAccountLimits](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAccountLimits.html) API. For information about updating
  this limit, see [Quotas for
  Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  If you're new to Amazon EC2 Auto Scaling, see the introductory tutorials in [Get started
  with Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/get-started-with-ec2-auto-scaling.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  Every Auto Scaling group has three size properties (`DesiredCapacity`,
  `MaxSize`, and `MinSize`). Usually, you set these sizes based
  on a specific number of instances. However, if you configure a mixed instances
  policy
  that defines weights for the instance types, you must specify these sizes with
  the same
  units that you use for weighting instances.
  """
  @spec create_auto_scaling_group(map(), create_auto_scaling_group_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_auto_scaling_group_errors()}
  def create_auto_scaling_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAutoScalingGroup", input, options)
  end

  @doc """
  Creates a launch configuration.

  If you exceed your maximum limit of launch configurations, the call fails. To
  query
  this limit, call the
  [DescribeAccountLimits](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAccountLimits.html) API.
  For information about updating this limit, see [Quotas for
  Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  For more information, see [Launch configurations](https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-configurations.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  Amazon EC2 Auto Scaling configures instances launched as part of an Auto Scaling
  group using either a
  launch template or a launch configuration. We strongly recommend that you do not
  use
  launch configurations. They do not provide full functionality for Amazon EC2
  Auto Scaling or Amazon EC2.
  For information about using launch templates, see [Launch templates](https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-templates.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec create_launch_configuration(map(), create_launch_configuration_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_launch_configuration_errors()}
  def create_launch_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLaunchConfiguration", input, options)
  end

  @doc """
  Creates or updates tags for the specified Auto Scaling group.

  When you specify a tag with a key that already exists, the operation overwrites
  the
  previous tag definition, and you do not get an error message.

  For more information, see [Tag Auto Scaling groups and instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec create_or_update_tags(map(), create_or_update_tags_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_or_update_tags_errors()}
  def create_or_update_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateOrUpdateTags", input, options)
  end

  @doc """
  Deletes the specified Auto Scaling group.

  If the group has instances or scaling activities in progress, you must specify
  the
  option to force the deletion in order for it to succeed. The force delete
  operation will
  also terminate the EC2 instances. If the group has a warm pool, the force delete
  option
  also deletes the warm pool.

  To remove instances from the Auto Scaling group before deleting it, call the
  [DetachInstances](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachInstances.html) API with the list of instances and the option to
  decrement the desired capacity. This ensures that Amazon EC2 Auto Scaling does
  not launch replacement
  instances.

  To terminate all instances before deleting the Auto Scaling group, call the
  [UpdateAutoScalingGroup](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_UpdateAutoScalingGroup.html)
  API and set the minimum size and desired capacity
  of the Auto Scaling group to
  zero.

  If the group has scaling policies, deleting the group deletes the policies, the
  underlying alarm actions, and any alarm that no longer has an associated action.

  For more information, see [Delete your Auto Scaling infrastructure](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-process-shutdown.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec delete_auto_scaling_group(map(), delete_auto_scaling_group_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_auto_scaling_group_errors()}
  def delete_auto_scaling_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAutoScalingGroup", input, options)
  end

  @doc """
  Deletes the specified launch configuration.

  The launch configuration must not be attached to an Auto Scaling group. When
  this call
  completes, the launch configuration is no longer available for use.
  """
  @spec delete_launch_configuration(map(), launch_configuration_name_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_launch_configuration_errors()}
  def delete_launch_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLaunchConfiguration", input, options)
  end

  @doc """
  Deletes the specified lifecycle hook.

  If there are any outstanding lifecycle actions, they are completed first
  (`ABANDON` for launching instances, `CONTINUE` for terminating
  instances).
  """
  @spec delete_lifecycle_hook(map(), delete_lifecycle_hook_type(), list()) ::
          {:ok, delete_lifecycle_hook_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lifecycle_hook_errors()}
  def delete_lifecycle_hook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLifecycleHook", input, options)
  end

  @doc """
  Deletes the specified notification.
  """
  @spec delete_notification_configuration(map(), delete_notification_configuration_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_notification_configuration_errors()}
  def delete_notification_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNotificationConfiguration", input, options)
  end

  @doc """
  Deletes the specified scaling policy.

  Deleting either a step scaling policy or a simple scaling policy deletes the
  underlying alarm action, but does not delete the alarm, even if it no longer has
  an
  associated action.

  For more information, see [Delete a scaling policy](https://docs.aws.amazon.com/autoscaling/ec2/userguide/deleting-scaling-policy.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec delete_policy(map(), delete_policy_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_policy_errors()}
  def delete_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePolicy", input, options)
  end

  @doc """
  Deletes the specified scheduled action.
  """
  @spec delete_scheduled_action(map(), delete_scheduled_action_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_scheduled_action_errors()}
  def delete_scheduled_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScheduledAction", input, options)
  end

  @doc """
  Deletes the specified tags.
  """
  @spec delete_tags(map(), delete_tags_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tags_errors()}
  def delete_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTags", input, options)
  end

  @doc """
  Deletes the warm pool for the specified Auto Scaling group.

  For more information, see [Warm pools for Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec delete_warm_pool(map(), delete_warm_pool_type(), list()) ::
          {:ok, delete_warm_pool_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_warm_pool_errors()}
  def delete_warm_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWarmPool", input, options)
  end

  @doc """
  Describes the current Amazon EC2 Auto Scaling resource quotas for your account.

  When you establish an Amazon Web Services account, the account has initial
  quotas on the maximum
  number of Auto Scaling groups and launch configurations that you can create in a
  given Region.
  For more information, see [Quotas for Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec describe_account_limits(map(), %{}, list()) ::
          {:ok, describe_account_limits_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_limits_errors()}
  def describe_account_limits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountLimits", input, options)
  end

  @doc """
  Describes the available adjustment types for step scaling and simple scaling
  policies.

  The following adjustment types are supported:

    *

  `ChangeInCapacity`

    *

  `ExactCapacity`

    *

  `PercentChangeInCapacity`
  """
  @spec describe_adjustment_types(map(), %{}, list()) ::
          {:ok, describe_adjustment_types_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_adjustment_types_errors()}
  def describe_adjustment_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAdjustmentTypes", input, options)
  end

  @doc """
  Gets information about the Auto Scaling groups in the account and Region.

  If you specify Auto Scaling group names, the output includes information for
  only the
  specified Auto Scaling groups. If you specify filters, the output includes
  information for only
  those Auto Scaling groups that meet the filter criteria. If you do not specify
  group names or
  filters, the output includes information for all Auto Scaling groups.

  This operation also returns information about instances in Auto Scaling groups.
  To retrieve
  information about the instances in a warm pool, you must call the
  [DescribeWarmPool](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeWarmPool.html)
  API.
  """
  @spec describe_auto_scaling_groups(map(), auto_scaling_group_names_type(), list()) ::
          {:ok, auto_scaling_groups_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_auto_scaling_groups_errors()}
  def describe_auto_scaling_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutoScalingGroups", input, options)
  end

  @doc """
  Gets information about the Auto Scaling instances in the account and Region.
  """
  @spec describe_auto_scaling_instances(map(), describe_auto_scaling_instances_type(), list()) ::
          {:ok, auto_scaling_instances_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_auto_scaling_instances_errors()}
  def describe_auto_scaling_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutoScalingInstances", input, options)
  end

  @doc """
  Describes the notification types that are supported by Amazon EC2 Auto Scaling.
  """
  @spec describe_auto_scaling_notification_types(map(), %{}, list()) ::
          {:ok, describe_auto_scaling_notification_types_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_auto_scaling_notification_types_errors()}
  def describe_auto_scaling_notification_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutoScalingNotificationTypes", input, options)
  end

  @doc """
  Gets information about the instance refreshes for the specified Auto Scaling
  group from the
  previous six weeks.

  This operation is part of the [instance refresh feature](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  in Amazon EC2 Auto Scaling, which helps you update instances in your Auto
  Scaling group
  after you make configuration changes.

  To help you determine the status of an instance refresh, Amazon EC2 Auto Scaling
  returns information
  about the instance refreshes you previously initiated, including their status,
  start
  time, end time, the percentage of the instance refresh that is complete, and the
  number
  of instances remaining to update before the instance refresh is complete. If a
  rollback
  is initiated while an instance refresh is in progress, Amazon EC2 Auto Scaling
  also returns information
  about the rollback of the instance refresh.
  """
  @spec describe_instance_refreshes(map(), describe_instance_refreshes_type(), list()) ::
          {:ok, describe_instance_refreshes_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instance_refreshes_errors()}
  def describe_instance_refreshes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceRefreshes", input, options)
  end

  @doc """
  Gets information about the launch configurations in the account and Region.
  """
  @spec describe_launch_configurations(map(), launch_configuration_names_type(), list()) ::
          {:ok, launch_configurations_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_launch_configurations_errors()}
  def describe_launch_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLaunchConfigurations", input, options)
  end

  @doc """
  Describes the available types of lifecycle hooks.

  The following hook types are supported:

    *

  `autoscaling:EC2_INSTANCE_LAUNCHING`

    *

  `autoscaling:EC2_INSTANCE_TERMINATING`
  """
  @spec describe_lifecycle_hook_types(map(), %{}, list()) ::
          {:ok, describe_lifecycle_hook_types_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_lifecycle_hook_types_errors()}
  def describe_lifecycle_hook_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLifecycleHookTypes", input, options)
  end

  @doc """
  Gets information about the lifecycle hooks for the specified Auto Scaling group.
  """
  @spec describe_lifecycle_hooks(map(), describe_lifecycle_hooks_type(), list()) ::
          {:ok, describe_lifecycle_hooks_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_lifecycle_hooks_errors()}
  def describe_lifecycle_hooks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLifecycleHooks", input, options)
  end

  @doc """

  This API operation is superseded by
  [DescribeTrafficSources](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html), which can describe multiple traffic sources types.

  We recommend using
  `DetachTrafficSources` to simplify how you manage traffic sources.
  However, we continue to support `DescribeLoadBalancerTargetGroups`. You
  can use both the original `DescribeLoadBalancerTargetGroups` API
  operation and `DescribeTrafficSources` on the same Auto Scaling group.

  Gets information about the Elastic Load Balancing target groups for the
  specified Auto Scaling group.

  To determine the attachment status of the target group, use the `State`
  element in the response. When you attach a target group to an Auto Scaling
  group, the initial
  `State` value is `Adding`. The state transitions to
  `Added` after all Auto Scaling instances are registered with the target group.
  If
  Elastic Load Balancing health checks are enabled for the Auto Scaling group, the
  state transitions to
  `InService` after at least one Auto Scaling instance passes the health check.
  When the target group is in the `InService` state, Amazon EC2 Auto Scaling can
  terminate and
  replace any instances that are reported as unhealthy. If no registered instances
  pass
  the health checks, the target group doesn't enter the `InService` state.

  Target groups also have an `InService` state if you attach them in the
  [CreateAutoScalingGroup](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html)
  API call. If your target group state is
  `InService`, but it is not working properly, check the scaling activities
  by calling
  [DescribeScalingActivities](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html) and take any corrective actions
  necessary.

  For help with failed health checks, see [Troubleshooting Amazon EC2 Auto
  Scaling:
  Health
  checks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html)
  in the *Amazon EC2 Auto Scaling User Guide*. For more
  information, see [Use Elastic Load Balancing to distribute traffic across the instances in your Auto Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.

  You can use this operation to describe target groups that were attached by using
  [AttachLoadBalancerTargetGroups](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachLoadBalancerTargetGroups.html), but not for target groups that
  were attached by using
  [AttachTrafficSources](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html).
  """
  @spec describe_load_balancer_target_groups(
          map(),
          describe_load_balancer_target_groups_request(),
          list()
        ) ::
          {:ok, describe_load_balancer_target_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_load_balancer_target_groups_errors()}
  def describe_load_balancer_target_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLoadBalancerTargetGroups", input, options)
  end

  @doc """

  This API operation is superseded by
  [DescribeTrafficSources](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html), which can describe multiple traffic sources types.

  We recommend using
  `DescribeTrafficSources` to simplify how you manage traffic sources.
  However, we continue to support `DescribeLoadBalancers`. You can use both
  the original `DescribeLoadBalancers` API operation and
  `DescribeTrafficSources` on the same Auto Scaling group.

  Gets information about the load balancers for the specified Auto Scaling group.

  This operation describes only Classic Load Balancers. If you have Application
  Load Balancers, Network Load Balancers, or Gateway Load Balancers, use the
  [DescribeLoadBalancerTargetGroups](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancerTargetGroups.html)
  API instead.

  To determine the attachment status of the load balancer, use the `State`
  element in the response. When you attach a load balancer to an Auto Scaling
  group, the initial
  `State` value is `Adding`. The state transitions to
  `Added` after all Auto Scaling instances are registered with the load balancer.
  If Elastic Load Balancing health checks are enabled for the Auto Scaling group,
  the state transitions to
  `InService` after at least one Auto Scaling instance passes the health check.
  When the load balancer is in the `InService` state, Amazon EC2 Auto Scaling can
  terminate
  and replace any instances that are reported as unhealthy. If no registered
  instances
  pass the health checks, the load balancer doesn't enter the `InService`
  state.

  Load balancers also have an `InService` state if you attach them in the
  [CreateAutoScalingGroup](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html) API call. If your load balancer state is
  `InService`, but it is not working properly, check the scaling activities
  by calling
  [DescribeScalingActivities](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html)
  and take any corrective actions
  necessary.

  For help with failed health checks, see [Troubleshooting Amazon EC2 Auto Scaling:
  Health
  checks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html)
  in the *Amazon EC2 Auto Scaling User Guide*. For more
  information, see [Use Elastic Load Balancing to distribute traffic across the instances in your Auto Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec describe_load_balancers(map(), describe_load_balancers_request(), list()) ::
          {:ok, describe_load_balancers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_load_balancers_errors()}
  def describe_load_balancers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLoadBalancers", input, options)
  end

  @doc """
  Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling.
  """
  @spec describe_metric_collection_types(map(), %{}, list()) ::
          {:ok, describe_metric_collection_types_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_metric_collection_types_errors()}
  def describe_metric_collection_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMetricCollectionTypes", input, options)
  end

  @doc """
  Gets information about the Amazon SNS notifications that are configured for one
  or more
  Auto Scaling groups.
  """
  @spec describe_notification_configurations(
          map(),
          describe_notification_configurations_type(),
          list()
        ) ::
          {:ok, describe_notification_configurations_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_notification_configurations_errors()}
  def describe_notification_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNotificationConfigurations", input, options)
  end

  @doc """
  Gets information about the scaling policies in the account and Region.
  """
  @spec describe_policies(map(), describe_policies_type(), list()) ::
          {:ok, policies_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_policies_errors()}
  def describe_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePolicies", input, options)
  end

  @doc """
  Gets information about the scaling activities in the account and Region.

  When scaling events occur, you see a record of the scaling activity in the
  scaling
  activities. For more information, see [Verify a scaling activity for an Auto Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  If the scaling event succeeds, the value of the `StatusCode` element in the
  response is `Successful`. If an attempt to launch instances failed, the
  `StatusCode` value is `Failed` or `Cancelled` and
  the `StatusMessage` element in the response indicates the cause of the
  failure. For help interpreting the `StatusMessage`, see [Troubleshooting Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/CHAP_Troubleshooting.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec describe_scaling_activities(map(), describe_scaling_activities_type(), list()) ::
          {:ok, activities_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_scaling_activities_errors()}
  def describe_scaling_activities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingActivities", input, options)
  end

  @doc """
  Describes the scaling process types for use with the
  [ResumeProcesses](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_ResumeProcesses.html) and
  [SuspendProcesses](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_SuspendProcesses.html)
  APIs.
  """
  @spec describe_scaling_process_types(map(), %{}, list()) ::
          {:ok, processes_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_scaling_process_types_errors()}
  def describe_scaling_process_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingProcessTypes", input, options)
  end

  @doc """
  Gets information about the scheduled actions that haven't run or that have not
  reached
  their end time.

  To describe the scaling activities for scheduled actions that have already run,
  call
  the
  [DescribeScalingActivities](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html)
  API.
  """
  @spec describe_scheduled_actions(map(), describe_scheduled_actions_type(), list()) ::
          {:ok, scheduled_actions_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_scheduled_actions_errors()}
  def describe_scheduled_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScheduledActions", input, options)
  end

  @doc """
  Describes the specified tags.

  You can use filters to limit the results. For example, you can query for the
  tags for
  a specific Auto Scaling group. You can specify multiple values for a filter. A
  tag must match at
  least one of the specified values for it to be included in the results.

  You can also specify multiple filters. The result includes information for a
  particular tag only if it matches all the filters. If there's no match, no
  special
  message is returned.

  For more information, see [Tag Auto Scaling groups and instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec describe_tags(map(), describe_tags_type(), list()) ::
          {:ok, tags_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tags_errors()}
  def describe_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
  Describes the termination policies supported by Amazon EC2 Auto Scaling.

  For more information, see [Configure termination policies for Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec describe_termination_policy_types(map(), %{}, list()) ::
          {:ok, describe_termination_policy_types_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_termination_policy_types_errors()}
  def describe_termination_policy_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTerminationPolicyTypes", input, options)
  end

  @doc """
  Gets information about the traffic sources for the specified Auto Scaling group.

  You can optionally provide a traffic source type. If you provide a traffic
  source
  type, then the results only include that traffic source type.

  If you do not provide a traffic source type, then the results include all the
  traffic
  sources for the specified Auto Scaling group.
  """
  @spec describe_traffic_sources(map(), describe_traffic_sources_request(), list()) ::
          {:ok, describe_traffic_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_traffic_sources_errors()}
  def describe_traffic_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTrafficSources", input, options)
  end

  @doc """
  Gets information about a warm pool and its instances.

  For more information, see [Warm pools for Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec describe_warm_pool(map(), describe_warm_pool_type(), list()) ::
          {:ok, describe_warm_pool_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_warm_pool_errors()}
  def describe_warm_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWarmPool", input, options)
  end

  @doc """
  Removes one or more instances from the specified Auto Scaling group.

  After the instances are detached, you can manage them independent of the Auto
  Scaling
  group.

  If you do not specify the option to decrement the desired capacity, Amazon EC2
  Auto Scaling launches
  instances to replace the ones that are detached.

  If there is a Classic Load Balancer attached to the Auto Scaling group, the
  instances are
  deregistered from the load balancer. If there are target groups attached to the
  Auto Scaling
  group, the instances are deregistered from the target groups.

  For more information, see [Detach or attach
  instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-detach-attach-instances.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec detach_instances(map(), detach_instances_query(), list()) ::
          {:ok, detach_instances_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_instances_errors()}
  def detach_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachInstances", input, options)
  end

  @doc """

  This API operation is superseded by
  [DetachTrafficSources](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html), which
  can detach multiple traffic sources types.

  We recommend using
  `DetachTrafficSources` to simplify how you manage traffic sources.
  However, we continue to support `DetachLoadBalancerTargetGroups`. You can
  use both the original `DetachLoadBalancerTargetGroups` API operation and
  `DetachTrafficSources` on the same Auto Scaling group.

  Detaches one or more target groups from the specified Auto Scaling group.

  When you detach a target group, it enters the `Removing` state while
  deregistering the instances in the group. When all instances are deregistered,
  then you
  can no longer describe the target group using the
  [DescribeLoadBalancerTargetGroups](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancerTargetGroups.html)

  API call. The instances remain running.

  You can use this operation to detach target groups that were attached by using
  [AttachLoadBalancerTargetGroups](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachLoadBalancerTargetGroups.html), but not for target groups that
  were attached by using
  [AttachTrafficSources](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_AttachTrafficSources.html).
  """
  @spec detach_load_balancer_target_groups(
          map(),
          detach_load_balancer_target_groups_type(),
          list()
        ) ::
          {:ok, detach_load_balancer_target_groups_result_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_load_balancer_target_groups_errors()}
  def detach_load_balancer_target_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachLoadBalancerTargetGroups", input, options)
  end

  @doc """

  This API operation is superseded by
  [DetachTrafficSources](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachTrafficSources.html), which
  can detach multiple traffic sources types.

  We recommend using
  `DetachTrafficSources` to simplify how you manage traffic sources.
  However, we continue to support `DetachLoadBalancers`. You can use both
  the original `DetachLoadBalancers` API operation and
  `DetachTrafficSources` on the same Auto Scaling group.

  Detaches one or more Classic Load Balancers from the specified Auto Scaling
  group.

  This operation detaches only Classic Load Balancers. If you have Application
  Load Balancers, Network Load Balancers, or
  Gateway Load Balancers, use the
  [DetachLoadBalancerTargetGroups](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DetachLoadBalancerTargetGroups.html)
  API instead.

  When you detach a load balancer, it enters the `Removing` state while
  deregistering the instances in the group. When all instances are deregistered,
  then you
  can no longer describe the load balancer using the
  [DescribeLoadBalancers](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLoadBalancers.html)
  API call. The instances remain running.
  """
  @spec detach_load_balancers(map(), detach_load_balancers_type(), list()) ::
          {:ok, detach_load_balancers_result_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_load_balancers_errors()}
  def detach_load_balancers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachLoadBalancers", input, options)
  end

  @doc """
  Detaches one or more traffic sources from the specified Auto Scaling group.

  When you detach a traffic source, it enters the `Removing` state while
  deregistering the instances in the group. When all instances are deregistered,
  then you
  can no longer describe the traffic source using the
  [DescribeTrafficSources](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeTrafficSources.html)

  API call. The instances continue to run.
  """
  @spec detach_traffic_sources(map(), detach_traffic_sources_type(), list()) ::
          {:ok, detach_traffic_sources_result_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_traffic_sources_errors()}
  def detach_traffic_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachTrafficSources", input, options)
  end

  @doc """
  Disables group metrics collection for the specified Auto Scaling group.
  """
  @spec disable_metrics_collection(map(), disable_metrics_collection_query(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_metrics_collection_errors()}
  def disable_metrics_collection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableMetricsCollection", input, options)
  end

  @doc """
  Enables group metrics collection for the specified Auto Scaling group.

  You can use these metrics to track changes in an Auto Scaling group and to set
  alarms on
  threshold values. You can view group metrics using the Amazon EC2 Auto Scaling
  console or the CloudWatch
  console. For more information, see [Monitor CloudWatch metrics for your Auto Scaling groups and
  instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec enable_metrics_collection(map(), enable_metrics_collection_query(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_metrics_collection_errors()}
  def enable_metrics_collection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableMetricsCollection", input, options)
  end

  @doc """
  Moves the specified instances into the standby state.

  If you choose to decrement the desired capacity of the Auto Scaling group, the
  instances can
  enter standby as long as the desired capacity of the Auto Scaling group after
  the instances are
  placed into standby is equal to or greater than the minimum capacity of the
  group.

  If you choose not to decrement the desired capacity of the Auto Scaling group,
  the Auto Scaling group
  launches new instances to replace the instances on standby.

  For more information, see [Temporarily removing instances from your Auto Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec enter_standby(map(), enter_standby_query(), list()) ::
          {:ok, enter_standby_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enter_standby_errors()}
  def enter_standby(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnterStandby", input, options)
  end

  @doc """
  Executes the specified policy.

  This can be useful for testing the design of your
  scaling policy.
  """
  @spec execute_policy(map(), execute_policy_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_policy_errors()}
  def execute_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecutePolicy", input, options)
  end

  @doc """
  Moves the specified instances out of the standby state.

  After you put the instances back in service, the desired capacity is
  incremented.

  For more information, see [Temporarily removing instances from your Auto Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec exit_standby(map(), exit_standby_query(), list()) ::
          {:ok, exit_standby_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, exit_standby_errors()}
  def exit_standby(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExitStandby", input, options)
  end

  @doc """
  Retrieves the forecast data for a predictive scaling policy.

  Load forecasts are predictions of the hourly load values using historical load
  data
  from CloudWatch and an analysis of historical trends. Capacity forecasts are
  represented as
  predicted values for the minimum capacity that is needed on an hourly basis,
  based on
  the hourly load forecast.

  A minimum of 24 hours of data is required to create the initial forecasts.
  However,
  having a full 14 days of historical data results in more accurate forecasts.

  For more information, see [Predictive scaling for Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec get_predictive_scaling_forecast(map(), get_predictive_scaling_forecast_type(), list()) ::
          {:ok, get_predictive_scaling_forecast_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_predictive_scaling_forecast_errors()}
  def get_predictive_scaling_forecast(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPredictiveScalingForecast", input, options)
  end

  @doc """
  Creates or updates a lifecycle hook for the specified Auto Scaling group.

  Lifecycle hooks let you create solutions that are aware of events in the Auto
  Scaling instance
  lifecycle, and then perform a custom action on instances when the corresponding
  lifecycle event occurs.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling
  group:

    1.
  (Optional) Create a launch template or launch configuration with a user data
  script that runs while an instance is in a wait state due to a lifecycle
  hook.

    2.
  (Optional) Create a Lambda function and a rule that allows Amazon EventBridge to
  invoke
  your Lambda function when an instance is put into a wait state due to a
  lifecycle hook.

    3.
  (Optional) Create a notification target and an IAM role. The target can be
  either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2
  Auto Scaling to publish
  lifecycle notifications to the target.

    4.

  ## Create the lifecycle hook. Specify whether the hook is
  used when the instances launch or terminate.

    5.
  If you need more time, record the lifecycle action heartbeat to keep the
  instance in a wait state using the
  [RecordLifecycleActionHeartbeat](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RecordLifecycleActionHeartbeat.html) API call.

    6.
  If you finish before the timeout period ends, send a callback by using the
  [CompleteLifecycleAction](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CompleteLifecycleAction.html)
  API call.

  For more information, see [Amazon EC2 Auto Scaling lifecycle hooks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  If you exceed your maximum limit of lifecycle hooks, which by default is 50 per
  Auto Scaling
  group, the call fails.

  You can view the lifecycle hooks for an Auto Scaling group using the
  [DescribeLifecycleHooks](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeLifecycleHooks.html) API call. If you are no longer using a lifecycle
  hook, you can delete it by calling the
  [DeleteLifecycleHook](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeleteLifecycleHook.html)
  API.
  """
  @spec put_lifecycle_hook(map(), put_lifecycle_hook_type(), list()) ::
          {:ok, put_lifecycle_hook_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_lifecycle_hook_errors()}
  def put_lifecycle_hook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutLifecycleHook", input, options)
  end

  @doc """
  Configures an Auto Scaling group to send notifications when specified events
  take place.

  Subscribers to the specified topic can have messages delivered to an endpoint
  such as a
  web server or an email address.

  This configuration overwrites any existing configuration.

  For more information, see [Amazon SNS notification options for Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-sns-notifications.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.

  If you exceed your maximum limit of SNS topics, which is 10 per Auto Scaling
  group, the call
  fails.
  """
  @spec put_notification_configuration(map(), put_notification_configuration_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_notification_configuration_errors()}
  def put_notification_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutNotificationConfiguration", input, options)
  end

  @doc """
  Creates or updates a scaling policy for an Auto Scaling group.

  Scaling policies are used to
  scale an Auto Scaling group based on configurable metrics. If no policies are
  defined, the
  dynamic scaling and predictive scaling features are not used.

  For more information about using dynamic scaling, see [Target tracking scaling
  policies](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html)
  and [Step and simple scaling policies](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  For more information about using predictive scaling, see [Predictive scaling for Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  You can view the scaling policies for an Auto Scaling group using the
  [DescribePolicies](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribePolicies.html) API call. If you are no longer using a scaling policy,
  you can delete it by calling the
  [DeletePolicy](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeletePolicy.html)
  API.
  """
  @spec put_scaling_policy(map(), put_scaling_policy_type(), list()) ::
          {:ok, policy_arn_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_scaling_policy_errors()}
  def put_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutScalingPolicy", input, options)
  end

  @doc """
  Creates or updates a scheduled scaling action for an Auto Scaling group.

  For more information, see [Scheduled scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scheduled-scaling.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.

  You can view the scheduled actions for an Auto Scaling group using the
  [DescribeScheduledActions](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScheduledActions.html)  API call. If you are no longer using a scheduled action, you can delete it by
  calling the
  [DeleteScheduledAction](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeleteScheduledAction.html)
  API.

  If you try to schedule your action in the past, Amazon EC2 Auto Scaling returns
  an error
  message.
  """
  @spec put_scheduled_update_group_action(map(), put_scheduled_update_group_action_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_scheduled_update_group_action_errors()}
  def put_scheduled_update_group_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutScheduledUpdateGroupAction", input, options)
  end

  @doc """
  Creates or updates a warm pool for the specified Auto Scaling group.

  A warm pool is a pool of
  pre-initialized EC2 instances that sits alongside the Auto Scaling group.
  Whenever your
  application needs to scale out, the Auto Scaling group can draw on the warm pool
  to meet its new
  desired capacity.

  This operation must be called from the Region in which the Auto Scaling group
  was
  created.

  You can view the instances in the warm pool using the
  [DescribeWarmPool](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeWarmPool.html) API call.
  If you are no longer using a warm pool, you can delete it by calling the
  [DeleteWarmPool](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeleteWarmPool.html)
  API.

  For more information, see [Warm pools for Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec put_warm_pool(map(), put_warm_pool_type(), list()) ::
          {:ok, put_warm_pool_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_warm_pool_errors()}
  def put_warm_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutWarmPool", input, options)
  end

  @doc """
  Records a heartbeat for the lifecycle action associated with the specified token
  or
  instance.

  This extends the timeout by the length of time defined using the
  [PutLifecycleHook](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PutLifecycleHook.html) API call.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling
  group:

    1.
  (Optional) Create a launch template or launch configuration with a user data
  script that runs while an instance is in a wait state due to a lifecycle
  hook.

    2.
  (Optional) Create a Lambda function and a rule that allows Amazon EventBridge to
  invoke
  your Lambda function when an instance is put into a wait state due to a
  lifecycle hook.

    3.
  (Optional) Create a notification target and an IAM role. The target can be
  either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2
  Auto Scaling to publish
  lifecycle notifications to the target.

    4.
  Create the lifecycle hook. Specify whether the hook is used when the instances
  launch or terminate.

    5.

  ## If you need more time, record the lifecycle action
  heartbeat to keep the instance in a wait state.

    6.
  If you finish before the timeout period ends, send a callback by using the
  [CompleteLifecycleAction](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CompleteLifecycleAction.html)
  API call.

  For more information, see [Amazon EC2 Auto Scaling lifecycle hooks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec record_lifecycle_action_heartbeat(map(), record_lifecycle_action_heartbeat_type(), list()) ::
          {:ok, record_lifecycle_action_heartbeat_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, record_lifecycle_action_heartbeat_errors()}
  def record_lifecycle_action_heartbeat(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RecordLifecycleActionHeartbeat", input, options)
  end

  @doc """
  Resumes the specified suspended auto scaling processes, or all suspended
  process, for
  the specified Auto Scaling group.

  For more information, see [Suspend and resume Amazon EC2 Auto Scaling
  processes](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec resume_processes(map(), scaling_process_query(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resume_processes_errors()}
  def resume_processes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResumeProcesses", input, options)
  end

  @doc """
  Cancels an instance refresh that is in progress and rolls back any changes that
  it
  made.

  Amazon EC2 Auto Scaling replaces any instances that were replaced during the
  instance refresh.
  This restores your Auto Scaling group to the configuration that it was using
  before the start of
  the instance refresh.

  This operation is part of the [instance refresh feature](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  in Amazon EC2 Auto Scaling, which helps you update instances in your Auto
  Scaling group
  after you make configuration changes.

  A rollback is not supported in the following situations:

    *
  There is no desired configuration specified for the instance refresh.

    *
  The Auto Scaling group has a launch template that uses an Amazon Web Services
  Systems Manager parameter instead
  of an AMI ID for the `ImageId` property.

    *
  The Auto Scaling group uses the launch template's `$Latest` or
  `$Default` version.

  When you receive a successful response from this operation, Amazon EC2 Auto
  Scaling immediately
  begins replacing instances. You can check the status of this operation through
  the
  [DescribeInstanceRefreshes](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeInstanceRefreshes.html)
  API operation.
  """
  @spec rollback_instance_refresh(map(), rollback_instance_refresh_type(), list()) ::
          {:ok, rollback_instance_refresh_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, rollback_instance_refresh_errors()}
  def rollback_instance_refresh(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RollbackInstanceRefresh", input, options)
  end

  @doc """
  Sets the size of the specified Auto Scaling group.

  If a scale-in activity occurs as a result of a new `DesiredCapacity` value
  that is lower than the current size of the group, the Auto Scaling group uses
  its termination
  policy to determine which instances to terminate.

  For more information, see [Manual scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-manually.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec set_desired_capacity(map(), set_desired_capacity_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_desired_capacity_errors()}
  def set_desired_capacity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetDesiredCapacity", input, options)
  end

  @doc """
  Sets the health status of the specified instance.

  For more information, see [Set up a custom health check for your Auto Scaling
  group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/set-up-a-custom-health-check.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec set_instance_health(map(), set_instance_health_query(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_instance_health_errors()}
  def set_instance_health(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetInstanceHealth", input, options)
  end

  @doc """
  Updates the instance protection settings of the specified instances.

  This operation
  cannot be called on instances in a warm pool.

  For more information, see [Use instance scale-in
  protection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html)
  in the
  *Amazon EC2 Auto Scaling User Guide*.

  If you exceed your maximum limit of instance IDs, which is 50 per Auto Scaling
  group, the call
  fails.
  """
  @spec set_instance_protection(map(), set_instance_protection_query(), list()) ::
          {:ok, set_instance_protection_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_instance_protection_errors()}
  def set_instance_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetInstanceProtection", input, options)
  end

  @doc """
  Starts an instance refresh.

  This operation is part of the [instance refresh feature](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  in Amazon EC2 Auto Scaling, which helps you update instances in your Auto
  Scaling group.
  This feature is helpful, for example, when you have a new AMI or a new user data
  script.
  You just need to create a new launch template that specifies the new AMI or user
  data
  script. Then start an instance refresh to immediately begin the process of
  updating
  instances in the group.

  If successful, the request's response contains a unique ID that you can use to
  track
  the progress of the instance refresh. To query its status, call the
  [DescribeInstanceRefreshes](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeInstanceRefreshes.html) API.
  To describe the instance refreshes that
  have already run, call the
  [DescribeInstanceRefreshes](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeInstanceRefreshes.html)
  API. To cancel an
  instance refresh that is in progress, use the
  [CancelInstanceRefresh](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CancelInstanceRefresh.html) API.

  An instance refresh might fail for several reasons, such as EC2 launch failures,
  misconfigured health checks, or not ignoring or allowing the termination of
  instances
  that are in `Standby` state or protected from scale in. You can monitor for
  failed EC2 launches using the scaling activities. To find the scaling
  activities, call
  the
  [DescribeScalingActivities](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeScalingActivities.html)
  API.

  If you enable auto rollback, your Auto Scaling group will be rolled back
  automatically when
  the instance refresh fails. You can enable this feature before starting an
  instance
  refresh by specifying the `AutoRollback` property in the instance refresh
  preferences. Otherwise, to roll back an instance refresh before it finishes, use
  the
  [RollbackInstanceRefresh](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RollbackInstanceRefresh.html)
  API.
  """
  @spec start_instance_refresh(map(), start_instance_refresh_type(), list()) ::
          {:ok, start_instance_refresh_answer(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_instance_refresh_errors()}
  def start_instance_refresh(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartInstanceRefresh", input, options)
  end

  @doc """
  Suspends the specified auto scaling processes, or all processes, for the
  specified
  Auto Scaling group.

  If you suspend either the `Launch` or `Terminate` process types,
  it can prevent other process types from functioning properly. For more
  information, see
  [Suspend and resume Amazon EC2 Auto Scaling
  processes](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  To resume processes that have been suspended, call the
  [ResumeProcesses](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_ResumeProcesses.html)
  API.
  """
  @spec suspend_processes(map(), scaling_process_query(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, suspend_processes_errors()}
  def suspend_processes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SuspendProcesses", input, options)
  end

  @doc """
  Terminates the specified instance and optionally adjusts the desired group size.

  This
  operation cannot be called on instances in a warm pool.

  This call simply makes a termination request. The instance is not terminated
  immediately. When an instance is terminated, the instance status changes to
  `terminated`. You can't connect to or start an instance after you've
  terminated it.

  If you do not specify the option to decrement the desired capacity, Amazon EC2
  Auto Scaling launches
  instances to replace the ones that are terminated.

  By default, Amazon EC2 Auto Scaling balances instances across all Availability
  Zones. If you
  decrement the desired capacity, your Auto Scaling group can become unbalanced
  between
  Availability Zones. Amazon EC2 Auto Scaling tries to rebalance the group, and
  rebalancing might
  terminate instances in other zones. For more information, see [Manual scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-manually.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  @spec terminate_instance_in_auto_scaling_group(
          map(),
          terminate_instance_in_auto_scaling_group_type(),
          list()
        ) ::
          {:ok, activity_type(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, terminate_instance_in_auto_scaling_group_errors()}
  def terminate_instance_in_auto_scaling_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateInstanceInAutoScalingGroup", input, options)
  end

  @doc """

  ## We strongly recommend that all Auto Scaling groups use launch templates to
  ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2.

  Updates the configuration for the specified Auto Scaling group.

  To update an Auto Scaling group, specify the name of the group and the property
  that you want
  to change. Any properties that you don't specify are not changed by this update
  request.
  The new settings take effect on any scaling activities after this call returns.

  If you associate a new launch configuration or template with an Auto Scaling
  group, all new
  instances will get the updated configuration. Existing instances continue to run
  with
  the configuration that they were originally launched with. When you update a
  group to
  specify a mixed instances policy instead of a launch configuration or template,
  existing
  instances may be replaced to match the new purchasing options that you specified
  in the
  policy. For example, if the group currently has 100% On-Demand capacity and the
  policy
  specifies 50% Spot capacity, this means that half of your instances will be
  gradually
  terminated and relaunched as Spot Instances. When replacing instances, Amazon
  EC2 Auto Scaling launches
  new instances before terminating the old ones, so that updating your group does
  not
  compromise the performance or availability of your application.

  Note the following about changing `DesiredCapacity`, `MaxSize`,
  or `MinSize`:

    *
  If a scale-in activity occurs as a result of a new
  `DesiredCapacity` value that is lower than the current size of
  the group, the Auto Scaling group uses its termination policy to determine which
  instances to terminate.

    *
  If you specify a new value for `MinSize` without specifying a value
  for `DesiredCapacity`, and the new `MinSize` is larger
  than the current size of the group, this sets the group's
  `DesiredCapacity` to the new `MinSize` value.

    *
  If you specify a new value for `MaxSize` without specifying a value
  for `DesiredCapacity`, and the new `MaxSize` is smaller
  than the current size of the group, this sets the group's
  `DesiredCapacity` to the new `MaxSize` value.

  To see which properties have been set, call the
  [DescribeAutoScalingGroups](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAutoScalingGroups.html) API.
  To view the scaling policies for an Auto Scaling
  group, call the
  [DescribePolicies](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribePolicies.html)
  API. If the group has scaling
  policies, you can update them by calling the
  [PutScalingPolicy](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PutScalingPolicy.html)
  API.
  """
  @spec update_auto_scaling_group(map(), update_auto_scaling_group_type(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_auto_scaling_group_errors()}
  def update_auto_scaling_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAutoScalingGroup", input, options)
  end
end
