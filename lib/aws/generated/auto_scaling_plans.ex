# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AutoScalingPlans do
  @moduledoc """
  AWS Auto Scaling

  Use AWS Auto Scaling to create scaling plans for your applications to
  automatically scale your scalable AWS resources.

  ## API Summary

  You can use the AWS Auto Scaling service API to accomplish the following tasks:

    * Create and manage scaling plans

    * Define target tracking scaling policies to dynamically scale your
  resources based on utilization

    * Scale Amazon EC2 Auto Scaling groups using predictive scaling and
  dynamic scaling to scale your Amazon EC2 capacity faster

    * Set minimum and maximum capacity limits

    * Retrieve information on existing scaling plans

    * Access current forecast data and historical forecast data for up
  to 56 days previous

  To learn more about AWS Auto Scaling, including information about granting IAM
  users required permissions for AWS Auto Scaling actions, see the [AWS Auto Scaling User
  Guide](https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-01-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "autoscaling-plans",
      global?: false,
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
  def create_scaling_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateScalingPlan", input, options)
  end

  @doc """
  Deletes the specified scaling plan.

  Deleting a scaling plan deletes the underlying `ScalingInstruction` for all of
  the scalable resources that are covered by the plan.

  If the plan has launched resources or has scaling activities in progress, you
  must delete those resources separately.
  """
  def delete_scaling_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScalingPlan", input, options)
  end

  @doc """
  Describes the scalable resources in the specified scaling plan.
  """
  def describe_scaling_plan_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingPlanResources", input, options)
  end

  @doc """
  Describes one or more of your scaling plans.
  """
  def describe_scaling_plans(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingPlans", input, options)
  end

  @doc """
  Retrieves the forecast data for a scalable resource.

  Capacity forecasts are represented as predicted values, or data points, that are
  calculated using historical data points from a specified CloudWatch load metric.
  Data points are available for up to 56 days.
  """
  def get_scaling_plan_resource_forecast_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetScalingPlanResourceForecastData", input, options)
  end

  @doc """
  Updates the specified scaling plan.

  You cannot update a scaling plan if it is in the process of being created,
  updated, or deleted.
  """
  def update_scaling_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateScalingPlan", input, options)
  end
end
