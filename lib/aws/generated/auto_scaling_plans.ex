# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AutoScalingPlans do
  @moduledoc """
  AWS Auto Scaling

  Use AWS Auto Scaling to create scaling plans for your applications to
  automatically scale your scalable AWS resources.

  ## API Summary

  You can use the AWS Auto Scaling service API to accomplish the following tasks:

    *
  Create and manage scaling plans

    *
  Define target tracking scaling policies to dynamically scale your resources
  based
  on utilization

    *
  Scale Amazon EC2 Auto Scaling groups using predictive scaling and dynamic
  scaling to scale your
  Amazon EC2 capacity faster

    *
  Set minimum and maximum capacity limits

    *
  Retrieve information on existing scaling plans

    *
  Access current forecast data and historical forecast data for up to 56 days
  previous

  To learn more about AWS Auto Scaling, including information about granting IAM
  users required
  permissions for AWS Auto Scaling actions, see the [AWS Auto Scaling User Guide](https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      application_source() :: %{
        "CloudFormationStackARN" => String.t() | atom(),
        "TagFilters" => list(tag_filter())
      }
      
  """
  @type application_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      concurrent_update_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type concurrent_update_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_scaling_plan_request() :: %{
        required("ApplicationSource") => application_source(),
        required("ScalingInstructions") => list(scaling_instruction()),
        required("ScalingPlanName") => String.t() | atom()
      }
      
  """
  @type create_scaling_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_scaling_plan_response() :: %{
        "ScalingPlanVersion" => float()
      }
      
  """
  @type create_scaling_plan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      customized_load_metric_specification() :: %{
        "Dimensions" => list(metric_dimension()),
        "MetricName" => String.t() | atom(),
        "Namespace" => String.t() | atom(),
        "Statistic" => list(any()),
        "Unit" => String.t() | atom()
      }
      
  """
  @type customized_load_metric_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      customized_scaling_metric_specification() :: %{
        "Dimensions" => list(metric_dimension()),
        "MetricName" => String.t() | atom(),
        "Namespace" => String.t() | atom(),
        "Statistic" => list(any()),
        "Unit" => String.t() | atom()
      }
      
  """
  @type customized_scaling_metric_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      datapoint() :: %{
        "Timestamp" => non_neg_integer(),
        "Value" => float()
      }
      
  """
  @type datapoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_scaling_plan_request() :: %{
        required("ScalingPlanName") => String.t() | atom(),
        required("ScalingPlanVersion") => float()
      }
      
  """
  @type delete_scaling_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_scaling_plan_response() :: %{}
      
  """
  @type delete_scaling_plan_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_scaling_plan_resources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ScalingPlanName") => String.t() | atom(),
        required("ScalingPlanVersion") => float()
      }
      
  """
  @type describe_scaling_plan_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_plan_resources_response() :: %{
        "NextToken" => String.t() | atom(),
        "ScalingPlanResources" => list(scaling_plan_resource())
      }
      
  """
  @type describe_scaling_plan_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_plans_request() :: %{
        optional("ApplicationSources") => list(application_source()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ScalingPlanNames") => list(String.t() | atom()),
        optional("ScalingPlanVersion") => float()
      }
      
  """
  @type describe_scaling_plans_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_plans_response() :: %{
        "NextToken" => String.t() | atom(),
        "ScalingPlans" => list(scaling_plan())
      }
      
  """
  @type describe_scaling_plans_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_scaling_plan_resource_forecast_data_request() :: %{
        required("EndTime") => non_neg_integer(),
        required("ForecastDataType") => list(any()),
        required("ResourceId") => String.t() | atom(),
        required("ScalableDimension") => list(any()),
        required("ScalingPlanName") => String.t() | atom(),
        required("ScalingPlanVersion") => float(),
        required("ServiceNamespace") => list(any()),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type get_scaling_plan_resource_forecast_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_scaling_plan_resource_forecast_data_response() :: %{
        "Datapoints" => list(datapoint())
      }
      
  """
  @type get_scaling_plan_resource_forecast_data_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_next_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      metric_dimension() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type metric_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      object_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type object_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      predefined_load_metric_specification() :: %{
        "PredefinedLoadMetricType" => list(any()),
        "ResourceLabel" => String.t() | atom()
      }
      
  """
  @type predefined_load_metric_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      predefined_scaling_metric_specification() :: %{
        "PredefinedScalingMetricType" => list(any()),
        "ResourceLabel" => String.t() | atom()
      }
      
  """
  @type predefined_scaling_metric_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scaling_instruction() :: %{
        "CustomizedLoadMetricSpecification" => customized_load_metric_specification(),
        "DisableDynamicScaling" => boolean(),
        "MaxCapacity" => integer(),
        "MinCapacity" => integer(),
        "PredefinedLoadMetricSpecification" => predefined_load_metric_specification(),
        "PredictiveScalingMaxCapacityBehavior" => list(any()),
        "PredictiveScalingMaxCapacityBuffer" => integer(),
        "PredictiveScalingMode" => list(any()),
        "ResourceId" => String.t() | atom(),
        "ScalableDimension" => list(any()),
        "ScalingPolicyUpdateBehavior" => list(any()),
        "ScheduledActionBufferTime" => integer(),
        "ServiceNamespace" => list(any()),
        "TargetTrackingConfigurations" => list(target_tracking_configuration())
      }
      
  """
  @type scaling_instruction() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scaling_plan() :: %{
        "ApplicationSource" => application_source(),
        "CreationTime" => non_neg_integer(),
        "ScalingInstructions" => list(scaling_instruction()),
        "ScalingPlanName" => String.t() | atom(),
        "ScalingPlanVersion" => float(),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t() | atom(),
        "StatusStartTime" => non_neg_integer()
      }
      
  """
  @type scaling_plan() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scaling_plan_resource() :: %{
        "ResourceId" => String.t() | atom(),
        "ScalableDimension" => list(any()),
        "ScalingPlanName" => String.t() | atom(),
        "ScalingPlanVersion" => float(),
        "ScalingPolicies" => list(scaling_policy()),
        "ScalingStatusCode" => list(any()),
        "ScalingStatusMessage" => String.t() | atom(),
        "ServiceNamespace" => list(any())
      }
      
  """
  @type scaling_plan_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scaling_policy() :: %{
        "PolicyName" => String.t() | atom(),
        "PolicyType" => list(any()),
        "TargetTrackingConfiguration" => target_tracking_configuration()
      }
      
  """
  @type scaling_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_filter() :: %{
        "Key" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type tag_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_tracking_configuration() :: %{
        "CustomizedScalingMetricSpecification" => customized_scaling_metric_specification(),
        "DisableScaleIn" => boolean(),
        "EstimatedInstanceWarmup" => integer(),
        "PredefinedScalingMetricSpecification" => predefined_scaling_metric_specification(),
        "ScaleInCooldown" => integer(),
        "ScaleOutCooldown" => integer(),
        "TargetValue" => float()
      }
      
  """
  @type target_tracking_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_scaling_plan_request() :: %{
        optional("ApplicationSource") => application_source(),
        optional("ScalingInstructions") => list(scaling_instruction()),
        required("ScalingPlanName") => String.t() | atom(),
        required("ScalingPlanVersion") => float()
      }
      
  """
  @type update_scaling_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_scaling_plan_response() :: %{}
      
  """
  @type update_scaling_plan_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type create_scaling_plan_errors() ::
          validation_exception()
          | limit_exceeded_exception()
          | internal_service_exception()
          | concurrent_update_exception()

  @type delete_scaling_plan_errors() ::
          validation_exception()
          | object_not_found_exception()
          | internal_service_exception()
          | concurrent_update_exception()

  @type describe_scaling_plan_resources_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | internal_service_exception()
          | concurrent_update_exception()

  @type describe_scaling_plans_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | internal_service_exception()
          | concurrent_update_exception()

  @type get_scaling_plan_resource_forecast_data_errors() ::
          validation_exception() | internal_service_exception()

  @type update_scaling_plan_errors() ::
          validation_exception()
          | object_not_found_exception()
          | internal_service_exception()
          | concurrent_update_exception()

  def metadata do
    %{
      api_version: "2018-01-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "autoscaling-plans",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Auto Scaling Plans",
      signature_version: "v4",
      signing_name: "autoscaling-plans",
      target_prefix: "AnyScaleScalingPlannerFrontendService"
    }
  end

  @doc """
  Creates a scaling plan.
  """
  @spec create_scaling_plan(map(), create_scaling_plan_request(), list()) ::
          {:ok, create_scaling_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_scaling_plan_errors()}
  def create_scaling_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateScalingPlan", input, options)
  end

  @doc """
  Deletes the specified scaling plan.

  Deleting a scaling plan deletes the underlying `ScalingInstruction` for
  all of the scalable resources that are covered by the plan.

  If the plan has launched resources or has scaling activities in progress, you
  must
  delete those resources separately.
  """
  @spec delete_scaling_plan(map(), delete_scaling_plan_request(), list()) ::
          {:ok, delete_scaling_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scaling_plan_errors()}
  def delete_scaling_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScalingPlan", input, options)
  end

  @doc """
  Describes the scalable resources in the specified scaling plan.
  """
  @spec describe_scaling_plan_resources(map(), describe_scaling_plan_resources_request(), list()) ::
          {:ok, describe_scaling_plan_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scaling_plan_resources_errors()}
  def describe_scaling_plan_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingPlanResources", input, options)
  end

  @doc """
  Describes one or more of your scaling plans.
  """
  @spec describe_scaling_plans(map(), describe_scaling_plans_request(), list()) ::
          {:ok, describe_scaling_plans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scaling_plans_errors()}
  def describe_scaling_plans(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingPlans", input, options)
  end

  @doc """
  Retrieves the forecast data for a scalable resource.

  Capacity forecasts are represented as predicted values, or data points, that are
  calculated using historical data points from a specified CloudWatch load metric.
  Data points are
  available for up to 56 days.
  """
  @spec get_scaling_plan_resource_forecast_data(
          map(),
          get_scaling_plan_resource_forecast_data_request(),
          list()
        ) ::
          {:ok, get_scaling_plan_resource_forecast_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_scaling_plan_resource_forecast_data_errors()}
  def get_scaling_plan_resource_forecast_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetScalingPlanResourceForecastData", input, options)
  end

  @doc """
  Updates the specified scaling plan.

  You cannot update a scaling plan if it is in the process of being created,
  updated, or
  deleted.
  """
  @spec update_scaling_plan(map(), update_scaling_plan_request(), list()) ::
          {:ok, update_scaling_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_scaling_plan_errors()}
  def update_scaling_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateScalingPlan", input, options)
  end
end
