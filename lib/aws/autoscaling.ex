# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.AutoScaling do
  @moduledoc """
  With Application Auto Scaling, you can configure automatic scaling for your
  scalable resources. You can use Application Auto Scaling to accomplish the
  following tasks:

  <ul> <li> Define scaling policies to automatically scale your AWS or custom
  resources

  </li> <li> Scale your resources in response to CloudWatch alarms

  </li> <li> Schedule one-time or recurring scaling actions

  </li> <li> View the history of your scaling events

  </li> </ul> Application Auto Scaling can scale the following resources:

  <ul> <li> Amazon ECS services. For more information, see [Service Auto
  Scaling](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  </li> <li> Amazon EC2 Spot fleets. For more information, see [Automatic
  Scaling for Spot
  Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-auto-scaling.html)
  in the *Amazon EC2 User Guide*.

  </li> <li> Amazon EMR clusters. For more information, see [Using Automatic
  Scaling in Amazon
  EMR](https://docs.aws.amazon.com/ElasticMapReduce/latest/ManagementGuide/emr-automatic-scaling.html)
  in the *Amazon EMR Management Guide*.

  </li> <li> AppStream 2.0 fleets. For more information, see [Fleet Auto
  Scaling for Amazon AppStream
  2.0](https://docs.aws.amazon.com/appstream2/latest/developerguide/autoscaling.html)
  in the *Amazon AppStream 2.0 Developer Guide*.

  </li> <li> Provisioned read and write capacity for Amazon DynamoDB tables
  and global secondary indexes. For more information, see [Managing
  Throughput Capacity Automatically with DynamoDB Auto
  Scaling](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/AutoScaling.html)
  in the *Amazon DynamoDB Developer Guide*.

  </li> <li> Amazon Aurora Replicas. For more information, see [Using Amazon
  Aurora Auto Scaling with Aurora
  Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Integrating.AutoScaling.html).

  </li> <li> Amazon SageMaker endpoint variants. For more information, see
  [Automatically Scaling Amazon SageMaker
  Models](https://docs.aws.amazon.com/sagemaker/latest/dg/endpoint-auto-scaling.html).

  </li> <li> Custom resources provided by your own applications or services.
  More information is available in our [GitHub
  repository](https://github.com/aws/aws-auto-scaling-custom-resource).

  </li> </ul> To learn more about Application Auto Scaling, including
  information about granting IAM users required permissions for Application
  Auto Scaling actions, see the [Application Auto Scaling User
  Guide](https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html).
  """

  @doc """
  Deletes the specified Application Auto Scaling scaling policy.

  Deleting a policy deletes the underlying alarm action, but does not delete
  the CloudWatch alarm associated with the scaling policy, even if it no
  longer has an associated action.

  To create a scaling policy or update an existing one, see
  `PutScalingPolicy`.
  """
  def delete_scaling_policy(client, input, options \\ []) do
    request(client, "DeleteScalingPolicy", input, options)
  end

  @doc """
  Deletes the specified Application Auto Scaling scheduled action.
  """
  def delete_scheduled_action(client, input, options \\ []) do
    request(client, "DeleteScheduledAction", input, options)
  end

  @doc """
  Deregisters a scalable target.

  Deregistering a scalable target deletes the scaling policies that are
  associated with it.

  To create a scalable target or update an existing one, see
  `RegisterScalableTarget`.
  """
  def deregister_scalable_target(client, input, options \\ []) do
    request(client, "DeregisterScalableTarget", input, options)
  end

  @doc """
  Gets information about the scalable targets in the specified namespace.

  You can filter the results using the `ResourceIds` and `ScalableDimension`
  parameters.

  To create a scalable target or update an existing one, see
  `RegisterScalableTarget`. If you are no longer using a scalable target, you
  can deregister it using `DeregisterScalableTarget`.
  """
  def describe_scalable_targets(client, input, options \\ []) do
    request(client, "DescribeScalableTargets", input, options)
  end

  @doc """
  Provides descriptive information about the scaling activities in the
  specified namespace from the previous six weeks.

  You can filter the results using the `ResourceId` and `ScalableDimension`
  parameters.

  Scaling activities are triggered by CloudWatch alarms that are associated
  with scaling policies. To view the scaling policies for a service
  namespace, see `DescribeScalingPolicies`. To create a scaling policy or
  update an existing one, see `PutScalingPolicy`.
  """
  def describe_scaling_activities(client, input, options \\ []) do
    request(client, "DescribeScalingActivities", input, options)
  end

  @doc """
  Describes the scaling policies for the specified service namespace.

  You can filter the results using the `ResourceId`, `ScalableDimension`, and
  `PolicyNames` parameters.

  To create a scaling policy or update an existing one, see
  `PutScalingPolicy`. If you are no longer using a scaling policy, you can
  delete it using `DeleteScalingPolicy`.
  """
  def describe_scaling_policies(client, input, options \\ []) do
    request(client, "DescribeScalingPolicies", input, options)
  end

  @doc """
  Describes the scheduled actions for the specified service namespace.

  You can filter the results using the `ResourceId`, `ScalableDimension`, and
  `ScheduledActionNames` parameters.

  To create a scheduled action or update an existing one, see
  `PutScheduledAction`. If you are no longer using a scheduled action, you
  can delete it using `DeleteScheduledAction`.
  """
  def describe_scheduled_actions(client, input, options \\ []) do
    request(client, "DescribeScheduledActions", input, options)
  end

  @doc """
  Creates or updates a policy for an Application Auto Scaling scalable
  target.

  Each scalable target is identified by a service namespace, resource ID, and
  scalable dimension. A scaling policy applies to the scalable target
  identified by those three attributes. You cannot create a scaling policy
  until you have registered the resource as a scalable target using
  `RegisterScalableTarget`.

  To update a policy, specify its policy name and the parameters that you
  want to change. Any parameters that you don't specify are not changed by
  this update request.

  You can view the scaling policies for a service namespace using
  `DescribeScalingPolicies`. If you are no longer using a scaling policy, you
  can delete it using `DeleteScalingPolicy`.

  Multiple scaling policies can be in force at the same time for the same
  scalable target. You can have one or more target tracking scaling policies,
  one or more step scaling policies, or both. However, there is a chance that
  multiple policies could conflict, instructing the scalable target to scale
  out or in at the same time. Application Auto Scaling gives precedence to
  the policy that provides the largest capacity for both scale in and scale
  out. For example, if one policy increases capacity by 3, another policy
  increases capacity by 200 percent, and the current capacity is 10,
  Application Auto Scaling uses the policy with the highest calculated
  capacity (200% of 10 = 20) and scales out to 30.

  Learn more about how to work with scaling policies in the [Application Auto
  Scaling User
  Guide](https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html).
  """
  def put_scaling_policy(client, input, options \\ []) do
    request(client, "PutScalingPolicy", input, options)
  end

  @doc """
  Creates or updates a scheduled action for an Application Auto Scaling
  scalable target.

  Each scalable target is identified by a service namespace, resource ID, and
  scalable dimension. A scheduled action applies to the scalable target
  identified by those three attributes. You cannot create a scheduled action
  until you have registered the resource as a scalable target using
  `RegisterScalableTarget`.

  To update an action, specify its name and the parameters that you want to
  change. If you don't specify start and end times, the old values are
  deleted. Any other parameters that you don't specify are not changed by
  this update request.

  You can view the scheduled actions using `DescribeScheduledActions`. If you
  are no longer using a scheduled action, you can delete it using
  `DeleteScheduledAction`.

  Learn more about how to work with scheduled actions in the [Application
  Auto Scaling User
  Guide](https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html).
  """
  def put_scheduled_action(client, input, options \\ []) do
    request(client, "PutScheduledAction", input, options)
  end

  @doc """
  Registers or updates a scalable target. A scalable target is a resource
  that Application Auto Scaling can scale out and scale in. Each scalable
  target has a resource ID, scalable dimension, and namespace, as well as
  values for minimum and maximum capacity.

  After you register a scalable target, you do not need to register it again
  to use other Application Auto Scaling operations. To see which resources
  have been registered, use `DescribeScalableTargets`. You can also view the
  scaling policies for a service namespace using `DescribeScalableTargets`.

  If you no longer need a scalable target, you can deregister it using
  `DeregisterScalableTarget`.
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
