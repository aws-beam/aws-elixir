# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationAutoScaling do
  @moduledoc """
  With Application Auto Scaling, you can configure automatic scaling for the
  following resources:

    * Amazon AppStream 2.0 fleets

    * Amazon Aurora Replicas

    * Amazon Comprehend document classification and entity recognizer
  endpoints

    * Amazon DynamoDB tables and global secondary indexes throughput
  capacity

    * Amazon ECS services

    * Amazon ElastiCache for Redis clusters (replication groups)

    * Amazon EMR clusters

    * Amazon Keyspaces (for Apache Cassandra) tables

    * Lambda function provisioned concurrency

    * Amazon Managed Streaming for Apache Kafka broker storage

    * Amazon Neptune clusters

    * Amazon SageMaker endpoint variants

    * Amazon SageMaker Serverless endpoint provisioned concurrency

    * Spot Fleets (Amazon EC2)

    * Custom resources provided by your own applications or services

  To learn more about Application Auto Scaling, see the [Application Auto Scaling User
  Guide](https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html).

  ## API Summary

  The Application Auto Scaling service API includes three key sets of actions:

    * Register and manage scalable targets - Register Amazon Web
  Services or custom resources as scalable targets (a resource that Application
  Auto Scaling can scale), set minimum and maximum capacity limits, and retrieve
  information on existing scalable targets.

    * Configure and manage automatic scaling - Define scaling policies
  to dynamically scale your resources in response to CloudWatch alarms, schedule
  one-time or recurring scaling actions, and retrieve your recent scaling activity
  history.

    * Suspend and resume scaling - Temporarily suspend and later resume
  automatic scaling by calling the
  [RegisterScalableTarget](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  API action for any Application Auto Scaling scalable target. You can suspend and
  resume (individually or in combination) scale-out activities that are triggered
  by a scaling policy, scale-in activities that are triggered by a scaling policy,
  and scheduled scaling.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2016-02-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "application-autoscaling",
      global?: false,
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
  delete the CloudWatch alarm associated with the scaling policy, even if it no
  longer has an associated action.

  For more information, see [Delete a step scaling policy](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html#delete-step-scaling-policy)
  and [Delete a target tracking scaling policy](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html#delete-target-tracking-policy)
  in the *Application Auto Scaling User Guide*.
  """
  def delete_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScalingPolicy", input, options)
  end

  @doc """
  Deletes the specified scheduled action for an Application Auto Scaling scalable
  target.

  For more information, see [Delete a scheduled action](https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html#delete-scheduled-action)
  in the *Application Auto Scaling User Guide*.
  """
  def delete_scheduled_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScheduledAction", input, options)
  end

  @doc """
  Deregisters an Application Auto Scaling scalable target when you have finished
  using it.

  To see which resources have been registered, use
  [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html).

  Deregistering a scalable target deletes the scaling policies and the scheduled
  actions that are associated with it.
  """
  def deregister_scalable_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterScalableTarget", input, options)
  end

  @doc """
  Gets information about the scalable targets in the specified namespace.

  You can filter the results using `ResourceIds` and `ScalableDimension`.
  """
  def describe_scalable_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalableTargets", input, options)
  end

  @doc """
  Provides descriptive information about the scaling activities in the specified
  namespace from the previous six weeks.

  You can filter the results using `ResourceId` and `ScalableDimension`.

  For information about viewing scaling activities using the Amazon Web Services
  CLI, see [Scaling activities for Application Auto Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scaling-activities.html).
  """
  def describe_scaling_activities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingActivities", input, options)
  end

  @doc """
  Describes the Application Auto Scaling scaling policies for the specified
  service namespace.

  You can filter the results using `ResourceId`, `ScalableDimension`, and
  `PolicyNames`.

  For more information, see [Target tracking scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html)
  and [Step scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html)
  in the *Application Auto Scaling User Guide*.
  """
  def describe_scaling_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingPolicies", input, options)
  end

  @doc """
  Describes the Application Auto Scaling scheduled actions for the specified
  service namespace.

  You can filter the results using the `ResourceId`, `ScalableDimension`, and
  `ScheduledActionNames` parameters.

  For more information, see [Scheduled scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html)
  and [Managing scheduled scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html)
  in the *Application Auto Scaling User Guide*.
  """
  def describe_scheduled_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScheduledActions", input, options)
  end

  @doc """
  Returns all the tags on the specified Application Auto Scaling scalable target.

  For general information about tags, including the format and syntax, see
  [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates a scaling policy for an Application Auto Scaling scalable
  target.

  Each scalable target is identified by a service namespace, resource ID, and
  scalable dimension. A scaling policy applies to the scalable target identified
  by those three attributes. You cannot create a scaling policy until you have
  registered the resource as a scalable target.

  Multiple scaling policies can be in force at the same time for the same scalable
  target. You can have one or more target tracking scaling policies, one or more
  step scaling policies, or both. However, there is a chance that multiple
  policies could conflict, instructing the scalable target to scale out or in at
  the same time. Application Auto Scaling gives precedence to the policy that
  provides the largest capacity for both scale out and scale in. For example, if
  one policy increases capacity by 3, another policy increases capacity by 200
  percent, and the current capacity is 10, Application Auto Scaling uses the
  policy with the highest calculated capacity (200% of 10 = 20) and scales out to
  30.

  We recommend caution, however, when using target tracking scaling policies with
  step scaling policies because conflicts between these policies can cause
  undesirable behavior. For example, if the step scaling policy initiates a
  scale-in activity before the target tracking policy is ready to scale in, the
  scale-in activity will not be blocked. After the scale-in activity completes,
  the target tracking policy could instruct the scalable target to scale out
  again.

  For more information, see [Target tracking scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html)
  and [Step scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html)
  in the *Application Auto Scaling User Guide*.

  If a scalable target is deregistered, the scalable target is no longer available
  to use scaling policies. Any scaling policies that were specified for the
  scalable target are deleted.
  """
  def put_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutScalingPolicy", input, options)
  end

  @doc """
  Creates or updates a scheduled action for an Application Auto Scaling scalable
  target.

  Each scalable target is identified by a service namespace, resource ID, and
  scalable dimension. A scheduled action applies to the scalable target identified
  by those three attributes. You cannot create a scheduled action until you have
  registered the resource as a scalable target.

  When you specify start and end times with a recurring schedule using a cron
  expression or rates, they form the boundaries for when the recurring action
  starts and stops.

  To update a scheduled action, specify the parameters that you want to change. If
  you don't specify start and end times, the old values are deleted.

  For more information, see [Scheduled scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html)
  in the *Application Auto Scaling User Guide*.

  If a scalable target is deregistered, the scalable target is no longer available
  to run scheduled actions. Any scheduled actions that were specified for the
  scalable target are deleted.
  """
  def put_scheduled_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutScheduledAction", input, options)
  end

  @doc """
  Registers or updates a scalable target, which is the resource that you want to
  scale.

  Scalable targets are uniquely identified by the combination of resource ID,
  scalable dimension, and namespace, which represents some capacity dimension of
  the underlying service.

  When you register a new scalable target, you must specify values for the minimum
  and maximum capacity. If the specified resource is not active in the target
  service, this operation does not change the resource's current capacity.
  Otherwise, it changes the resource's current capacity to a value that is inside
  of this range.

  If you add a scaling policy, current capacity is adjustable within the specified
  range when scaling starts. Application Auto Scaling scaling policies will not
  scale capacity to values that are outside of the minimum and maximum range.

  After you register a scalable target, you do not need to register it again to
  use other Application Auto Scaling operations. To see which resources have been
  registered, use
  [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html). You can also view the scaling policies for a service namespace by using
  [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html).
  If you no longer need a scalable target, you can deregister it by using
  [DeregisterScalableTarget](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DeregisterScalableTarget.html).  To update a scalable target, specify the parameters that you want to change.
  Include the parameters that identify the scalable target: resource ID, scalable
  dimension, and namespace. Any parameters that you don't specify are not changed
  by this update request.

  If you call the `RegisterScalableTarget` API operation to create a scalable
  target, there might be a brief delay until the operation achieves [eventual
  consistency](https://en.wikipedia.org/wiki/Eventual_consistency). You might
  become aware of this brief delay if you get unexpected errors when performing
  sequential operations. The typical strategy is to retry the request, and some
  Amazon Web Services SDKs include automatic backoff and retry logic.

  If you call the `RegisterScalableTarget` API operation to update an existing
  scalable target, Application Auto Scaling retrieves the current capacity of the
  resource. If it's below the minimum capacity or above the maximum capacity,
  Application Auto Scaling adjusts the capacity of the scalable target to place it
  within these bounds, even if you don't include the `MinCapacity` or
  `MaxCapacity` request parameters.
  """
  def register_scalable_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterScalableTarget", input, options)
  end

  @doc """
  Adds or edits tags on an Application Auto Scaling scalable target.

  Each tag consists of a tag key and a tag value, which are both case-sensitive
  strings. To add a tag, specify a new tag key and a tag value. To edit a tag,
  specify an existing tag key and a new tag value.

  You can use this operation to tag an Application Auto Scaling scalable target,
  but you cannot tag a scaling policy or scheduled action.

  You can also add tags to an Application Auto Scaling scalable target while
  creating it (`RegisterScalableTarget`).

  For general information about tags, including the format and syntax, see
  [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*.

  Use tags to control access to a scalable target. For more information, see
  [Tagging support for Application Auto Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/resource-tagging-support.html)
  in the *Application Auto Scaling User Guide*.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes tags from an Application Auto Scaling scalable target.

  To delete a tag, specify the tag key and the Application Auto Scaling scalable
  target.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
