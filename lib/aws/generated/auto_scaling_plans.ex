# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AutoScalingPlans do
  @moduledoc """
  AWS Auto Scaling

  Use AWS Auto Scaling to quickly discover all the scalable AWS resources for
  your application and configure dynamic scaling and predictive scaling for
  your resources using scaling plans. Use this service in conjunction with
  the Amazon EC2 Auto Scaling, Application Auto Scaling, Amazon CloudWatch,
  and AWS CloudFormation services.

  Currently, predictive scaling is only available for Amazon EC2 Auto Scaling
  groups.

  For more information about AWS Auto Scaling, including information about
  granting IAM users required permissions for AWS Auto Scaling actions, see
  the [AWS Auto Scaling User
  Guide](https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html).
  """

  @doc """
  Creates a scaling plan.
  """
  def create_scaling_plan(client, input, options \\ []) do
    request(client, "CreateScalingPlan", input, options)
  end

  @doc """
  Deletes the specified scaling plan.

  Deleting a scaling plan deletes the underlying `ScalingInstruction` for all
  of the scalable resources that are covered by the plan.

  If the plan has launched resources or has scaling activities in progress,
  you must delete those resources separately.
  """
  def delete_scaling_plan(client, input, options \\ []) do
    request(client, "DeleteScalingPlan", input, options)
  end

  @doc """
  Describes the scalable resources in the specified scaling plan.
  """
  def describe_scaling_plan_resources(client, input, options \\ []) do
    request(client, "DescribeScalingPlanResources", input, options)
  end

  @doc """
  Describes one or more of your scaling plans.
  """
  def describe_scaling_plans(client, input, options \\ []) do
    request(client, "DescribeScalingPlans", input, options)
  end

  @doc """
  Retrieves the forecast data for a scalable resource.

  Capacity forecasts are represented as predicted values, or data points,
  that are calculated using historical data points from a specified
  CloudWatch load metric. Data points are available for up to 56 days.
  """
  def get_scaling_plan_resource_forecast_data(client, input, options \\ []) do
    request(client, "GetScalingPlanResourceForecastData", input, options)
  end

  @doc """
  Updates the specified scaling plan.

  You cannot update a scaling plan if it is in the process of being created,
  updated, or deleted.
  """
  def update_scaling_plan(client, input, options \\ []) do
    request(client, "UpdateScalingPlan", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "autoscaling-plans"}
    host = build_host("autoscaling-plans", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AnyScaleScalingPlannerFrontendService.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
