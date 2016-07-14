# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.AutoScaling do
  @moduledoc """
  Application Auto Scaling is a general purpose Auto Scaling service for
  supported elastic AWS resources. With Application Auto Scaling, you can
  automatically scale your AWS resources, with an experience similar to that
  of Auto Scaling.

  <note> At this time, Application Auto Scaling only supports scaling Amazon
  ECS services.

  </note> For example, you can use Application Auto Scaling to accomplish the
  following tasks:

  <ul> <li> Define scaling policies for automatically adjusting your
  application’s resources

  </li> <li> Scale your resources in response to CloudWatch alarms

  </li> <li> View history of your scaling events

  </li> </ul> Application Auto Scaling is available in the following regions:

  <ul> <li> `us-east-1`

  </li> <li> `us-west-2`

  </li> <li> `eu-west-1`

  </li> </ul>
  """

  @doc """
  Deletes an Application Auto Scaling scaling policy that was previously
  created. If you are no longer using a scaling policy, you can delete it
  with this operation.

  Deleting a policy deletes the underlying alarm action, but does not delete
  the CloudWatch alarm, even if it no longer has an associated action.

  To create a new scaling policy or update an existing one, see
  `PutScalingPolicy`.
  """
  def delete_scaling_policy(client, input, options \\ []) do
    request(client, "DeleteScalingPolicy", input, options)
  end

  @doc """
  Deregisters a scalable target that was previously registered. If you are no
  longer using a scalable target, you can delete it with this operation. When
  you deregister a scalable target, all of the scaling policies that are
  associated with that scalable target are deleted.

  To create a new scalable target or update an existing one, see
  `RegisterScalableTarget`.
  """
  def deregister_scalable_target(client, input, options \\ []) do
    request(client, "DeregisterScalableTarget", input, options)
  end

  @doc """
  Provides descriptive information for scalable targets with a specified
  service namespace.

  You can filter the results in a service namespace with the `ResourceIds`
  and `ScalableDimension` parameters.

  To create a new scalable target or update an existing one, see
  `RegisterScalableTarget`. If you are no longer using a scalable target, you
  can deregister it with `DeregisterScalableTarget`.
  """
  def describe_scalable_targets(client, input, options \\ []) do
    request(client, "DescribeScalableTargets", input, options)
  end

  @doc """
  Provides descriptive information for scaling activities with a specified
  service namespace.

  You can filter the results in a service namespace with the `ResourceId` and
  `ScalableDimension` parameters.

  Scaling activities are triggered by CloudWatch alarms that are associated
  with scaling policies. To view the existing scaling policies for a service
  namespace, see `DescribeScalingPolicies`. To create a new scaling policy or
  update an existing one, see `PutScalingPolicy`.
  """
  def describe_scaling_activities(client, input, options \\ []) do
    request(client, "DescribeScalingActivities", input, options)
  end

  @doc """
  Provides descriptive information for scaling policies with a specified
  service namespace.

  You can filter the results in a service namespace with the `ResourceId`,
  `ScalableDimension`, and `PolicyNames` parameters.

  To create a new scaling policy or update an existing one, see
  `PutScalingPolicy`. If you are no longer using a scaling policy, you can
  delete it with `DeleteScalingPolicy`.
  """
  def describe_scaling_policies(client, input, options \\ []) do
    request(client, "DescribeScalingPolicies", input, options)
  end

  @doc """
  Creates or updates a policy for an existing Application Auto Scaling
  scalable target. Each scalable target is identified by service namespace, a
  resource ID, and a scalable dimension, and a scaling policy applies to a
  scalable target that is identified by those three attributes. You cannot
  create a scaling policy without first registering a scalable target with
  `RegisterScalableTarget`.

  To update an existing policy, use the existing policy name and set the
  parameters you want to change. Any existing parameter not changed in an
  update to an existing policy is not changed in this update request.

  You can view the existing scaling policies for a service namespace with
  `DescribeScalingPolicies`. If you are no longer using a scaling policy, you
  can delete it with `DeleteScalingPolicy`.
  """
  def put_scaling_policy(client, input, options \\ []) do
    request(client, "PutScalingPolicy", input, options)
  end

  @doc """
  Registers or updates a scalable target. A scalable target is a resource
  that can be scaled up or down with Application Auto Scaling. After you have
  registered a scalable target, you can use this command to update the
  minimum and maximum values for your scalable dimension.

  <note> At this time, Application Auto Scaling only supports scaling Amazon
  ECS services.

  </note> After you register a scalable target with Application Auto Scaling,
  you can create and apply scaling policies to it with `PutScalingPolicy`.
  You can view the existing scaling policies for a service namespace with
  `DescribeScalableTargets`. If you are no longer using a scalable target,
  you can deregister it with `DeregisterScalableTarget`.
  """
  def register_scalable_target(client, input, options \\ []) do
    request(client, "RegisterScalableTarget", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "autoscaling"}
    host = get_host("autoscaling", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AnyScaleFrontendService.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
