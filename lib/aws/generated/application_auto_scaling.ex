# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationAutoScaling do
  @moduledoc """
  With Application Auto Scaling, you can configure automatic scaling for the
  following
  resources:

    *
  Amazon AppStream 2.0 fleets

    *
  Amazon Aurora Replicas

    *
  Amazon Comprehend document classification and entity recognizer endpoints

    *
  Amazon DynamoDB tables and global secondary indexes throughput capacity

    *
  Amazon ECS services

    *
  Amazon ElastiCache replication groups (Redis OSS and Valkey) and Memcached
  clusters

    *
  Amazon EMR clusters

    *
  Amazon Keyspaces (for Apache Cassandra) tables

    *
  Lambda function provisioned concurrency

    *
  Amazon Managed Streaming for Apache Kafka broker storage

    *
  Amazon Neptune clusters

    *
  Amazon SageMaker endpoint variants

    *
  Amazon SageMaker inference components

    *
  Amazon SageMaker serverless endpoint provisioned concurrency

    *
  Spot Fleets (Amazon EC2)

    *
  Pool of WorkSpaces

    *
  Custom resources provided by your own applications or services

  To learn more about Application Auto Scaling, see the [Application Auto Scaling User
  Guide](https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html).

  ## API Summary

  The Application Auto Scaling service API includes three key sets of actions:

    *
  Register and manage scalable targets - Register Amazon Web Services or custom
  resources as scalable
  targets (a resource that Application Auto Scaling can scale), set minimum and
  maximum capacity limits, and
  retrieve information on existing scalable targets.

    *
  Configure and manage automatic scaling - Define scaling policies to dynamically
  scale
  your resources in response to CloudWatch alarms, schedule one-time or recurring
  scaling actions,
  and retrieve your recent scaling activity history.

    *
  Suspend and resume scaling - Temporarily suspend and later resume automatic
  scaling by
  calling the
  [RegisterScalableTarget](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  API action for any Application Auto Scaling scalable target. You can
  suspend and resume (individually or in combination) scale-out activities that
  are
  triggered by a scaling policy, scale-in activities that are triggered by a
  scaling policy,
  and scheduled scaling.
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
  @type step_adjustment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_metric_specification() :: %{
        "CustomizedCapacityMetricSpecification" => predictive_scaling_customized_metric_specification(),
        "CustomizedLoadMetricSpecification" => predictive_scaling_customized_metric_specification(),
        "CustomizedScalingMetricSpecification" => predictive_scaling_customized_metric_specification(),
        "PredefinedLoadMetricSpecification" => predictive_scaling_predefined_load_metric_specification(),
        "PredefinedMetricPairSpecification" => predictive_scaling_predefined_metric_pair_specification(),
        "PredefinedScalingMetricSpecification" => predictive_scaling_predefined_scaling_metric_specification(),
        "TargetValue" => float()
      }
      
  """
  @type predictive_scaling_metric_specification() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | Atom.t(),
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_predictive_scaling_forecast_request() :: %{
        required("EndTime") => non_neg_integer(),
        required("PolicyName") => String.t() | Atom.t(),
        required("ResourceId") => String.t() | Atom.t(),
        required("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any()),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type get_predictive_scaling_forecast_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("PolicyNames") => list(String.t() | Atom.t()),
        optional("ResourceId") => String.t() | Atom.t(),
        optional("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type describe_scaling_policies_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_metric_dimension() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type predictive_scaling_metric_dimension() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scheduled_action_response() :: %{}
      
  """
  @type delete_scheduled_action_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      predictive_scaling_predefined_scaling_metric_specification() :: %{
        "PredefinedMetricType" => String.t() | Atom.t(),
        "ResourceLabel" => String.t() | Atom.t()
      }
      
  """
  @type predictive_scaling_predefined_scaling_metric_specification() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:
      
      alarm() :: %{
        "AlarmARN" => String.t() | Atom.t(),
        "AlarmName" => String.t() | Atom.t()
      }
      
  """
  @type alarm() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_scaling_policy_configuration() :: %{
        "CustomizedMetricSpecification" => customized_metric_specification(),
        "DisableScaleIn" => boolean(),
        "PredefinedMetricSpecification" => predefined_metric_specification(),
        "ScaleInCooldown" => integer(),
        "ScaleOutCooldown" => integer(),
        "TargetValue" => float()
      }
      
  """
  @type target_tracking_scaling_policy_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_predictive_scaling_forecast_response() :: %{
        "CapacityForecast" => capacity_forecast(),
        "LoadForecast" => list(load_forecast()),
        "UpdateTime" => non_neg_integer()
      }
      
  """
  @type get_predictive_scaling_forecast_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_scalable_target_request() :: %{
        required("ResourceId") => String.t() | Atom.t(),
        required("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type deregister_scalable_target_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_policy() :: %{
        "Alarms" => list(alarm()),
        "CreationTime" => non_neg_integer(),
        "PolicyARN" => String.t() | Atom.t(),
        "PolicyName" => String.t() | Atom.t(),
        "PolicyType" => list(any()),
        "PredictiveScalingPolicyConfiguration" => predictive_scaling_policy_configuration(),
        "ResourceId" => String.t() | Atom.t(),
        "ScalableDimension" => list(any()),
        "ServiceNamespace" => list(any()),
        "StepScalingPolicyConfiguration" => step_scaling_policy_configuration(),
        "TargetTrackingScalingPolicyConfiguration" => target_tracking_scaling_policy_configuration()
      }
      
  """
  @type scaling_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scheduled_actions_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "ScheduledActions" => list(scheduled_action())
      }
      
  """
  @type describe_scheduled_actions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scheduled_actions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ResourceId") => String.t() | Atom.t(),
        optional("ScalableDimension") => list(any()),
        optional("ScheduledActionNames") => list(String.t() | Atom.t()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type describe_scheduled_actions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | Atom.t(),
        required("TagKeys") => list(String.t() | Atom.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_predefined_load_metric_specification() :: %{
        "PredefinedMetricType" => String.t() | Atom.t(),
        "ResourceLabel" => String.t() | Atom.t()
      }
      
  """
  @type predictive_scaling_predefined_load_metric_specification() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:
      
      customized_metric_specification() :: %{
        "Dimensions" => list(metric_dimension()),
        "MetricName" => String.t() | Atom.t(),
        "Metrics" => list(target_tracking_metric_data_query()),
        "Namespace" => String.t() | Atom.t(),
        "Statistic" => list(any()),
        "Unit" => String.t() | Atom.t()
      }
      
  """
  @type customized_metric_specification() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_activities_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "ScalingActivities" => list(scaling_activity())
      }
      
  """
  @type describe_scaling_activities_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      suspended_state() :: %{
        "DynamicScalingInSuspended" => boolean(),
        "DynamicScalingOutSuspended" => boolean(),
        "ScheduledScalingSuspended" => boolean()
      }
      
  """
  @type suspended_state() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "ResourceName" => String.t() | Atom.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      load_forecast() :: %{
        "MetricSpecification" => predictive_scaling_metric_specification(),
        "Timestamps" => list(non_neg_integer()),
        "Values" => list(float())
      }
      
  """
  @type load_forecast() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_metric_stat() :: %{
        "Metric" => target_tracking_metric(),
        "Stat" => String.t() | Atom.t(),
        "Unit" => String.t() | Atom.t()
      }
      
  """
  @type target_tracking_metric_stat() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      scheduled_action() :: %{
        "CreationTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "ResourceId" => String.t() | Atom.t(),
        "ScalableDimension" => list(any()),
        "ScalableTargetAction" => scalable_target_action(),
        "Schedule" => String.t() | Atom.t(),
        "ScheduledActionARN" => String.t() | Atom.t(),
        "ScheduledActionName" => String.t() | Atom.t(),
        "ServiceNamespace" => list(any()),
        "StartTime" => non_neg_integer(),
        "Timezone" => String.t() | Atom.t()
      }
      
  """
  @type scheduled_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_predefined_metric_pair_specification() :: %{
        "PredefinedMetricType" => String.t() | Atom.t(),
        "ResourceLabel" => String.t() | Atom.t()
      }
      
  """
  @type predictive_scaling_predefined_metric_pair_specification() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:
      
      scaling_activity() :: %{
        "ActivityId" => String.t() | Atom.t(),
        "Cause" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "Details" => String.t() | Atom.t(),
        "EndTime" => non_neg_integer(),
        "NotScaledReasons" => list(not_scaled_reason()),
        "ResourceId" => String.t() | Atom.t(),
        "ScalableDimension" => list(any()),
        "ServiceNamespace" => list(any()),
        "StartTime" => non_neg_integer(),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t() | Atom.t()
      }
      
  """
  @type scaling_activity() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      register_scalable_target_request() :: %{
        optional("MaxCapacity") => integer(),
        optional("MinCapacity") => integer(),
        optional("RoleARN") => String.t() | Atom.t(),
        optional("SuspendedState") => suspended_state(),
        optional("Tags") => map(),
        required("ResourceId") => String.t() | Atom.t(),
        required("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type register_scalable_target_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      step_scaling_policy_configuration() :: %{
        "AdjustmentType" => list(any()),
        "Cooldown" => integer(),
        "MetricAggregationType" => list(any()),
        "MinAdjustmentMagnitude" => integer(),
        "StepAdjustments" => list(step_adjustment())
      }
      
  """
  @type step_scaling_policy_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_activities_request() :: %{
        optional("IncludeNotScaledActivities") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ResourceId") => String.t() | Atom.t(),
        optional("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type describe_scaling_activities_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_metric() :: %{
        "Dimensions" => list(target_tracking_metric_dimension()),
        "MetricName" => String.t() | Atom.t(),
        "Namespace" => String.t() | Atom.t()
      }
      
  """
  @type target_tracking_metric() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      metric_dimension() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type metric_dimension() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_customized_metric_specification() :: %{
        "MetricDataQueries" => list(predictive_scaling_metric_data_query())
      }
      
  """
  @type predictive_scaling_customized_metric_specification() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_scaling_policy_response() :: %{
        "Alarms" => list(alarm()),
        "PolicyARN" => String.t() | Atom.t()
      }
      
  """
  @type put_scaling_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_metric_data_query() :: %{
        "Expression" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "Label" => String.t() | Atom.t(),
        "MetricStat" => predictive_scaling_metric_stat(),
        "ReturnData" => boolean()
      }
      
  """
  @type predictive_scaling_metric_data_query() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      scalable_target_action() :: %{
        "MaxCapacity" => integer(),
        "MinCapacity" => integer()
      }
      
  """
  @type scalable_target_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scalable_targets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ResourceIds") => list(String.t() | Atom.t()),
        optional("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type describe_scalable_targets_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_policies_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "ScalingPolicies" => list(scaling_policy())
      }
      
  """
  @type describe_scaling_policies_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scaling_policy_request() :: %{
        required("PolicyName") => String.t() | Atom.t(),
        required("ResourceId") => String.t() | Atom.t(),
        required("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type delete_scaling_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_scheduled_action_request() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("ScalableTargetAction") => scalable_target_action(),
        optional("Schedule") => String.t() | Atom.t(),
        optional("StartTime") => non_neg_integer(),
        optional("Timezone") => String.t() | Atom.t(),
        required("ResourceId") => String.t() | Atom.t(),
        required("ScalableDimension") => list(any()),
        required("ScheduledActionName") => String.t() | Atom.t(),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type put_scheduled_action_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      object_not_found_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type object_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_scheduled_action_response() :: %{}
      
  """
  @type put_scheduled_action_response() :: %{}

  @typedoc """

  ## Example:
      
      predefined_metric_specification() :: %{
        "PredefinedMetricType" => list(any()),
        "ResourceLabel" => String.t() | Atom.t()
      }
      
  """
  @type predefined_metric_specification() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      scalable_target() :: %{
        "CreationTime" => non_neg_integer(),
        "MaxCapacity" => integer(),
        "MinCapacity" => integer(),
        "PredictedCapacity" => integer(),
        "ResourceId" => String.t() | Atom.t(),
        "RoleARN" => String.t() | Atom.t(),
        "ScalableDimension" => list(any()),
        "ScalableTargetARN" => String.t() | Atom.t(),
        "ServiceNamespace" => list(any()),
        "SuspendedState" => suspended_state()
      }
      
  """
  @type scalable_target() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      predictive_scaling_policy_configuration() :: %{
        "MaxCapacityBreachBehavior" => list(any()),
        "MaxCapacityBuffer" => integer(),
        "MetricSpecifications" => list(predictive_scaling_metric_specification()),
        "Mode" => list(any()),
        "SchedulingBufferTime" => integer()
      }
      
  """
  @type predictive_scaling_policy_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_update_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type concurrent_update_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | Atom.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_scaling_policy_request() :: %{
        optional("PolicyType") => list(any()),
        optional("PredictiveScalingPolicyConfiguration") => predictive_scaling_policy_configuration(),
        optional("StepScalingPolicyConfiguration") => step_scaling_policy_configuration(),
        optional("TargetTrackingScalingPolicyConfiguration") => target_tracking_scaling_policy_configuration(),
        required("PolicyName") => String.t() | Atom.t(),
        required("ResourceId") => String.t() | Atom.t(),
        required("ScalableDimension") => list(any()),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type put_scaling_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scaling_policy_response() :: %{}
      
  """
  @type delete_scaling_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scheduled_action_request() :: %{
        required("ResourceId") => String.t() | Atom.t(),
        required("ScalableDimension") => list(any()),
        required("ScheduledActionName") => String.t() | Atom.t(),
        required("ServiceNamespace") => list(any())
      }
      
  """
  @type delete_scheduled_action_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_metric_dimension() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type target_tracking_metric_dimension() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_metric_stat() :: %{
        "Metric" => predictive_scaling_metric(),
        "Stat" => String.t() | Atom.t(),
        "Unit" => String.t() | Atom.t()
      }
      
  """
  @type predictive_scaling_metric_stat() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scalable_targets_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "ScalableTargets" => list(scalable_target())
      }
      
  """
  @type describe_scalable_targets_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_metric_data_query() :: %{
        "Expression" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "Label" => String.t() | Atom.t(),
        "MetricStat" => target_tracking_metric_stat(),
        "ReturnData" => boolean()
      }
      
  """
  @type target_tracking_metric_data_query() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_forecast() :: %{
        "Timestamps" => list(non_neg_integer()),
        "Values" => list(float())
      }
      
  """
  @type capacity_forecast() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      not_scaled_reason() :: %{
        "Code" => String.t() | Atom.t(),
        "CurrentCapacity" => integer(),
        "MaxCapacity" => integer(),
        "MinCapacity" => integer()
      }
      
  """
  @type not_scaled_reason() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      predictive_scaling_metric() :: %{
        "Dimensions" => list(predictive_scaling_metric_dimension()),
        "MetricName" => String.t() | Atom.t(),
        "Namespace" => String.t() | Atom.t()
      }
      
  """
  @type predictive_scaling_metric() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_scalable_target_response() :: %{}
      
  """
  @type deregister_scalable_target_response() :: %{}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "ResourceName" => String.t() | Atom.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      failed_resource_access_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type failed_resource_access_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      register_scalable_target_response() :: %{
        "ScalableTargetARN" => String.t() | Atom.t()
      }
      
  """
  @type register_scalable_target_response() :: %{String.t() | Atom.t() => any()}

  @type delete_scaling_policy_errors() ::
          validation_exception()
          | concurrent_update_exception()
          | object_not_found_exception()
          | internal_service_exception()

  @type delete_scheduled_action_errors() ::
          validation_exception()
          | concurrent_update_exception()
          | object_not_found_exception()
          | internal_service_exception()

  @type deregister_scalable_target_errors() ::
          validation_exception()
          | concurrent_update_exception()
          | object_not_found_exception()
          | internal_service_exception()

  @type describe_scalable_targets_errors() ::
          validation_exception()
          | concurrent_update_exception()
          | invalid_next_token_exception()
          | internal_service_exception()

  @type describe_scaling_activities_errors() ::
          validation_exception()
          | concurrent_update_exception()
          | invalid_next_token_exception()
          | internal_service_exception()

  @type describe_scaling_policies_errors() ::
          failed_resource_access_exception()
          | validation_exception()
          | concurrent_update_exception()
          | invalid_next_token_exception()
          | internal_service_exception()

  @type describe_scheduled_actions_errors() ::
          validation_exception()
          | concurrent_update_exception()
          | invalid_next_token_exception()
          | internal_service_exception()

  @type get_predictive_scaling_forecast_errors() ::
          validation_exception() | internal_service_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type put_scaling_policy_errors() ::
          failed_resource_access_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | concurrent_update_exception()
          | object_not_found_exception()
          | internal_service_exception()

  @type put_scheduled_action_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | concurrent_update_exception()
          | object_not_found_exception()
          | internal_service_exception()

  @type register_scalable_target_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | concurrent_update_exception()
          | internal_service_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception() | validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2016-02-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "application-autoscaling",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Application Auto Scaling",
      signature_version: "v4",
      signing_name: "application-autoscaling",
      target_prefix: "AnyScaleFrontendService"
    }
  end

  @doc """
  Deletes the specified scaling policy for an Application Auto Scaling scalable
  target.

  Deleting a step scaling policy deletes the underlying alarm action, but does not
  delete
  the CloudWatch alarm associated with the scaling policy, even if it no longer
  has an associated
  action.

  For more information, see [Delete a step scaling policy](https://docs.aws.amazon.com/autoscaling/application/userguide/create-step-scaling-policy-cli.html#delete-step-scaling-policy)
  and [Delete a target tracking scaling policy](https://docs.aws.amazon.com/autoscaling/application/userguide/create-target-tracking-policy-cli.html#delete-target-tracking-policy)
  in the
  *Application Auto Scaling User Guide*.
  """
  @spec delete_scaling_policy(map(), delete_scaling_policy_request(), list()) ::
          {:ok, delete_scaling_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scaling_policy_errors()}
  def delete_scaling_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteScalingPolicy", input, options)
  end

  @doc """
  Deletes the specified scheduled action for an Application Auto Scaling scalable
  target.

  For more information, see [Delete a scheduled action](https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html#delete-scheduled-action)
  in the *Application Auto Scaling User Guide*.
  """
  @spec delete_scheduled_action(map(), delete_scheduled_action_request(), list()) ::
          {:ok, delete_scheduled_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scheduled_action_errors()}
  def delete_scheduled_action(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteScheduledAction", input, options)
  end

  @doc """
  Deregisters an Application Auto Scaling scalable target when you have finished
  using it.

  To see which
  resources have been registered, use
  [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html).

  Deregistering a scalable target deletes the scaling policies and the scheduled
  actions that are associated with it.
  """
  @spec deregister_scalable_target(map(), deregister_scalable_target_request(), list()) ::
          {:ok, deregister_scalable_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_scalable_target_errors()}
  def deregister_scalable_target(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterScalableTarget", input, options)
  end

  @doc """
  Gets information about the scalable targets in the specified namespace.

  You can filter the results using `ResourceIds` and
  `ScalableDimension`.
  """
  @spec describe_scalable_targets(map(), describe_scalable_targets_request(), list()) ::
          {:ok, describe_scalable_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scalable_targets_errors()}
  def describe_scalable_targets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScalableTargets", input, options)
  end

  @doc """
  Provides descriptive information about the scaling activities in the specified
  namespace
  from the previous six weeks.

  You can filter the results using `ResourceId` and
  `ScalableDimension`.

  For information about viewing scaling activities using the Amazon Web Services
  CLI, see [Scaling activities for Application Auto Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scaling-activities.html).
  """
  @spec describe_scaling_activities(map(), describe_scaling_activities_request(), list()) ::
          {:ok, describe_scaling_activities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scaling_activities_errors()}
  def describe_scaling_activities(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScalingActivities", input, options)
  end

  @doc """
  Describes the Application Auto Scaling scaling policies for the specified
  service namespace.

  You can filter the results using `ResourceId`,
  `ScalableDimension`, and `PolicyNames`.

  For more information, see [Target tracking scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html)
  and [Step scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html)
  in the *Application Auto Scaling User Guide*.
  """
  @spec describe_scaling_policies(map(), describe_scaling_policies_request(), list()) ::
          {:ok, describe_scaling_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scaling_policies_errors()}
  def describe_scaling_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScalingPolicies", input, options)
  end

  @doc """
  Describes the Application Auto Scaling scheduled actions for the specified
  service namespace.

  You can filter the results using the `ResourceId`,
  `ScalableDimension`, and `ScheduledActionNames` parameters.

  For more information, see [Scheduled scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html)
  in the *Application Auto Scaling User Guide*.
  """
  @spec describe_scheduled_actions(map(), describe_scheduled_actions_request(), list()) ::
          {:ok, describe_scheduled_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scheduled_actions_errors()}
  def describe_scheduled_actions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeScheduledActions", input, options)
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
  """
  @spec get_predictive_scaling_forecast(map(), get_predictive_scaling_forecast_request(), list()) ::
          {:ok, get_predictive_scaling_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_predictive_scaling_forecast_errors()}
  def get_predictive_scaling_forecast(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPredictiveScalingForecast", input, options)
  end

  @doc """
  Returns all the tags on the specified Application Auto Scaling scalable target.

  For general information about tags, including the format and syntax, see
  [Tagging your Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates a scaling policy for an Application Auto Scaling scalable
  target.

  Each scalable target is identified by a service namespace, resource ID, and
  scalable
  dimension. A scaling policy applies to the scalable target identified by those
  three
  attributes. You cannot create a scaling policy until you have registered the
  resource as a
  scalable target.

  Multiple scaling policies can be in force at the same time for the same scalable
  target.
  You can have one or more target tracking scaling policies, one or more step
  scaling
  policies, or both. However, there is a chance that multiple policies could
  conflict,
  instructing the scalable target to scale out or in at the same time. Application
  Auto Scaling gives
  precedence to the policy that provides the largest capacity for both scale out
  and scale
  in. For example, if one policy increases capacity by 3, another policy increases
  capacity
  by 200 percent, and the current capacity is 10, Application Auto Scaling uses
  the policy with the highest
  calculated capacity (200% of 10 = 20) and scales out to 30.

  We recommend caution, however, when using target tracking scaling policies with
  step
  scaling policies because conflicts between these policies can cause undesirable
  behavior.
  For example, if the step scaling policy initiates a scale-in activity before the
  target
  tracking policy is ready to scale in, the scale-in activity will not be blocked.
  After the
  scale-in activity completes, the target tracking policy could instruct the
  scalable target
  to scale out again.

  For more information, see [Target tracking scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html),
  [Step scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html),
  and [Predictive scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/aas-create-predictive-scaling-policy.html)
  in the *Application Auto Scaling User Guide*.

  If a scalable target is deregistered, the scalable target is no longer available
  to
  use scaling policies. Any scaling policies that were specified for the scalable
  target
  are deleted.
  """
  @spec put_scaling_policy(map(), put_scaling_policy_request(), list()) ::
          {:ok, put_scaling_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_scaling_policy_errors()}
  def put_scaling_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutScalingPolicy", input, options)
  end

  @doc """
  Creates or updates a scheduled action for an Application Auto Scaling scalable
  target.

  Each scalable target is identified by a service namespace, resource ID, and
  scalable
  dimension. A scheduled action applies to the scalable target identified by those
  three
  attributes. You cannot create a scheduled action until you have registered the
  resource as
  a scalable target.

  When you specify start and end times with a recurring schedule using a cron
  expression
  or rates, they form the boundaries for when the recurring action starts and
  stops.

  To update a scheduled action, specify the parameters that you want to change. If
  you
  don't specify start and end times, the old values are deleted.

  For more information, see [Scheduled scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html)
  in the *Application Auto Scaling User Guide*.

  If a scalable target is deregistered, the scalable target is no longer available
  to
  run scheduled actions. Any scheduled actions that were specified for the
  scalable target
  are deleted.
  """
  @spec put_scheduled_action(map(), put_scheduled_action_request(), list()) ::
          {:ok, put_scheduled_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_scheduled_action_errors()}
  def put_scheduled_action(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutScheduledAction", input, options)
  end

  @doc """
  Registers or updates a scalable target, which is the resource that you want to
  scale.

  Scalable targets are uniquely identified by the combination of resource ID,
  scalable
  dimension, and namespace, which represents some capacity dimension of the
  underlying
  service.

  When you register a new scalable target, you must specify values for the minimum
  and
  maximum capacity. If the specified resource is not active in the target service,
  this
  operation does not change the resource's current capacity. Otherwise, it changes
  the
  resource's current capacity to a value that is inside of this range.

  If you add a scaling policy, current capacity is adjustable within the specified
  range
  when scaling starts. Application Auto Scaling scaling policies will not scale
  capacity to values that are
  outside of the minimum and maximum range.

  After you register a scalable target, you do not need to register it again to
  use other
  Application Auto Scaling operations. To see which resources have been
  registered, use
  [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html). You can also view the scaling policies for a service
  namespace by using
  [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html).
  If you no longer need a scalable target, you can
  deregister it by using
  [DeregisterScalableTarget](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DeregisterScalableTarget.html).   To update a scalable target, specify the parameters that you want to change.
  Include the
  parameters that identify the scalable target: resource ID, scalable dimension,
  and
  namespace. Any parameters that you don't specify are not changed by this update
  request.

  If you call the `RegisterScalableTarget` API operation to create a
  scalable target, there might be a brief delay until the operation achieves
  [eventual
  consistency](https://en.wikipedia.org/wiki/Eventual_consistency). You might
  become aware of this brief delay if you get unexpected
  errors when performing sequential operations. The typical strategy is to retry
  the
  request, and some Amazon Web Services SDKs include automatic backoff and retry
  logic.

  If you call the `RegisterScalableTarget` API operation to update an
  existing scalable target, Application Auto Scaling retrieves the current
  capacity of the resource. If
  it's below the minimum capacity or above the maximum capacity, Application Auto
  Scaling adjusts the
  capacity of the scalable target to place it within these bounds, even if you
  don't
  include the `MinCapacity` or `MaxCapacity` request
  parameters.
  """
  @spec register_scalable_target(map(), register_scalable_target_request(), list()) ::
          {:ok, register_scalable_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_scalable_target_errors()}
  def register_scalable_target(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterScalableTarget", input, options)
  end

  @doc """
  Adds or edits tags on an Application Auto Scaling scalable target.

  Each tag consists of a tag key and a tag value, which are both case-sensitive
  strings.
  To add a tag, specify a new tag key and a tag value. To edit a tag, specify an
  existing tag
  key and a new tag value.

  You can use this operation to tag an Application Auto Scaling scalable target,
  but you cannot tag a
  scaling policy or scheduled action.

  You can also add tags to an Application Auto Scaling scalable target while
  creating it
  (`RegisterScalableTarget`).

  For general information about tags, including the format and syntax, see
  [Tagging your Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*.

  Use tags to control access to a scalable target. For more information, see
  [Tagging support for Application Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/resource-tagging-support.html)
  in the *Application Auto Scaling User Guide*.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes tags from an Application Auto Scaling scalable target.

  To delete a tag, specify the tag key and
  the Application Auto Scaling scalable target.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
