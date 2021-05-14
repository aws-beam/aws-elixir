# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AutoScaling do
  @moduledoc """
  Amazon EC2 Auto Scaling

  Amazon EC2 Auto Scaling is designed to automatically launch or terminate EC2
  instances based on user-defined scaling policies, scheduled actions, and health
  checks.

  Use this service with AWS Auto Scaling, Amazon CloudWatch, and Elastic Load
  Balancing.

  For more information, including information about granting IAM users required
  permissions for Amazon EC2 Auto Scaling actions, see the [Amazon EC2 Auto Scaling User
  Guide](https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2011-01-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "autoscaling",
      global?: false,
      protocol: "query",
      service_id: "Auto Scaling",
      signature_version: "v4",
      signing_name: "autoscaling",
      target_prefix: nil
    }
  end

  @doc """
  Attaches one or more EC2 instances to the specified Auto Scaling group.

  When you attach instances, Amazon EC2 Auto Scaling increases the desired
  capacity of the group by the number of instances being attached. If the number
  of instances being attached plus the desired capacity of the group exceeds the
  maximum size of the group, the operation fails.

  If there is a Classic Load Balancer attached to your Auto Scaling group, the
  instances are also registered with the load balancer. If there are target groups
  attached to your Auto Scaling group, the instances are also registered with the
  target groups.

  For more information, see [Attach EC2 instances to your Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-instance-asg.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def attach_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AttachInstances", input, options)
  end

  @doc """
  Attaches one or more target groups to the specified Auto Scaling group.

  This operation is used with the following load balancer types:

    * Application Load Balancer - Operates at the application layer
  (layer 7) and supports HTTP and HTTPS.

    * Network Load Balancer - Operates at the transport layer (layer 4)
  and supports TCP, TLS, and UDP.

    * Gateway Load Balancer - Operates at the network layer (layer 3).

  To describe the target groups for an Auto Scaling group, call the
  `DescribeLoadBalancerTargetGroups` API. To detach the target group from the Auto
  Scaling group, call the `DetachLoadBalancerTargetGroups` API.

  For more information, see [Elastic Load Balancing and Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def attach_load_balancer_target_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AttachLoadBalancerTargetGroups", input, options)
  end

  @doc """
  To attach an Application Load Balancer, Network Load Balancer, or Gateway Load
  Balancer, use the `AttachLoadBalancerTargetGroups` API operation instead.

  Attaches one or more Classic Load Balancers to the specified Auto Scaling group.
  Amazon EC2 Auto Scaling registers the running instances with these Classic Load
  Balancers.

  To describe the load balancers for an Auto Scaling group, call the
  `DescribeLoadBalancers` API. To detach the load balancer from the Auto Scaling
  group, call the `DetachLoadBalancers` API.

  For more information, see [Elastic Load Balancing and Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def attach_load_balancers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AttachLoadBalancers", input, options)
  end

  @doc """
  Deletes one or more scheduled actions for the specified Auto Scaling group.
  """
  def batch_delete_scheduled_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchDeleteScheduledAction", input, options)
  end

  @doc """
  Creates or updates one or more scheduled scaling actions for an Auto Scaling
  group.
  """
  def batch_put_scheduled_update_group_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchPutScheduledUpdateGroupAction", input, options)
  end

  @doc """
  Cancels an instance refresh operation in progress.

  Cancellation does not roll back any replacements that have already been
  completed, but it prevents new replacements from being started.

  For more information, see [Replacing Auto Scaling instances based on an instance refresh](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def cancel_instance_refresh(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelInstanceRefresh", input, options)
  end

  @doc """
  Completes the lifecycle action for the specified token or instance with the
  specified result.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling group:

    1. (Optional) Create a Lambda function and a rule that allows
  CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling
  launches or terminates instances.

    2. (Optional) Create a notification target and an IAM role. The
  target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows
  Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.

    3. Create the lifecycle hook. Specify whether the hook is used when
  the instances launch or terminate.

    4. If you need more time, record the lifecycle action heartbeat to
  keep the instance in a pending state.

    5. ## If you finish before the timeout period ends, complete the
  lifecycle action.

  For more information, see [Amazon EC2 Auto Scaling lifecycle hooks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def complete_lifecycle_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CompleteLifecycleAction", input, options)
  end

  @doc """
  ## We strongly recommend using a launch template when calling this operation to
  ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2.

  Creates an Auto Scaling group with the specified name and attributes.

  If you exceed your maximum limit of Auto Scaling groups, the call fails. To
  query this limit, call the `DescribeAccountLimits` API. For information about
  updating this limit, see [Amazon EC2 Auto Scaling service quotas](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  For introductory exercises for creating an Auto Scaling group, see [Getting started with Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/GettingStartedTutorial.html)
  and [Tutorial: Set up a scaled and load-balanced application](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-register-lbs-with-asg.html)
  in the *Amazon EC2 Auto Scaling User Guide*. For more information, see [Auto Scaling
  groups](https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  Every Auto Scaling group has three size parameters (`DesiredCapacity`,
  `MaxSize`, and `MinSize`). Usually, you set these sizes based on a specific
  number of instances. However, if you configure a mixed instances policy that
  defines weights for the instance types, you must specify these sizes with the
  same units that you use for weighting instances.
  """
  def create_auto_scaling_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAutoScalingGroup", input, options)
  end

  @doc """
  Creates a launch configuration.

  If you exceed your maximum limit of launch configurations, the call fails. To
  query this limit, call the `DescribeAccountLimits` API. For information about
  updating this limit, see [Amazon EC2 Auto Scaling service quotas](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  For more information, see [Launch configurations](https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchConfiguration.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def create_launch_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLaunchConfiguration", input, options)
  end

  @doc """
  Creates or updates tags for the specified Auto Scaling group.

  When you specify a tag with a key that already exists, the operation overwrites
  the previous tag definition, and you do not get an error message.

  For more information, see [Tagging Auto Scaling groups and instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def create_or_update_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateOrUpdateTags", input, options)
  end

  @doc """
  Deletes the specified Auto Scaling group.

  If the group has instances or scaling activities in progress, you must specify
  the option to force the deletion in order for it to succeed.

  If the group has policies, deleting the group deletes the policies, the
  underlying alarm actions, and any alarm that no longer has an associated action.

  To remove instances from the Auto Scaling group before deleting it, call the
  `DetachInstances` API with the list of instances and the option to decrement the
  desired capacity. This ensures that Amazon EC2 Auto Scaling does not launch
  replacement instances.

  To terminate all instances before deleting the Auto Scaling group, call the
  `UpdateAutoScalingGroup` API and set the minimum size and desired capacity of
  the Auto Scaling group to zero.
  """
  def delete_auto_scaling_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAutoScalingGroup", input, options)
  end

  @doc """
  Deletes the specified launch configuration.

  The launch configuration must not be attached to an Auto Scaling group. When
  this call completes, the launch configuration is no longer available for use.
  """
  def delete_launch_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLaunchConfiguration", input, options)
  end

  @doc """
  Deletes the specified lifecycle hook.

  If there are any outstanding lifecycle actions, they are completed first
  (`ABANDON` for launching instances, `CONTINUE` for terminating instances).
  """
  def delete_lifecycle_hook(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLifecycleHook", input, options)
  end

  @doc """
  Deletes the specified notification.
  """
  def delete_notification_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteNotificationConfiguration", input, options)
  end

  @doc """
  Deletes the specified scaling policy.

  Deleting either a step scaling policy or a simple scaling policy deletes the
  underlying alarm action, but does not delete the alarm, even if it no longer has
  an associated action.

  For more information, see [Deleting a scaling policy](https://docs.aws.amazon.com/autoscaling/ec2/userguide/deleting-scaling-policy.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def delete_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePolicy", input, options)
  end

  @doc """
  Deletes the specified scheduled action.
  """
  def delete_scheduled_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteScheduledAction", input, options)
  end

  @doc """
  Deletes the specified tags.
  """
  def delete_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTags", input, options)
  end

  @doc """
  Describes the current Amazon EC2 Auto Scaling resource quotas for your AWS
  account.

  For information about requesting an increase, see [Amazon EC2 Auto Scaling service
  quotas](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_account_limits(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAccountLimits", input, options)
  end

  @doc """
  Describes the available adjustment types for Amazon EC2 Auto Scaling scaling
  policies.

  These settings apply to step scaling policies and simple scaling policies; they
  do not apply to target tracking scaling policies.

  The following adjustment types are supported:

    * ChangeInCapacity

    * ExactCapacity

    * PercentChangeInCapacity
  """
  def describe_adjustment_types(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAdjustmentTypes", input, options)
  end

  @doc """
  Describes one or more Auto Scaling groups.
  """
  def describe_auto_scaling_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAutoScalingGroups", input, options)
  end

  @doc """
  Describes one or more Auto Scaling instances.
  """
  def describe_auto_scaling_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAutoScalingInstances", input, options)
  end

  @doc """
  Describes the notification types that are supported by Amazon EC2 Auto Scaling.
  """
  def describe_auto_scaling_notification_types(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeAutoScalingNotificationTypes",
      input,
      options
    )
  end

  @doc """
  Describes one or more instance refreshes.

  You can determine the status of a request by looking at the `Status` parameter.
  The following are the possible statuses:

    * `Pending` - The request was created, but the operation has not
  started.

    * `InProgress` - The operation is in progress.

    * `Successful` - The operation completed successfully.

    * `Failed` - The operation failed to complete. You can troubleshoot
  using the status reason and the scaling activities.

    * `Cancelling` - An ongoing operation is being cancelled.
  Cancellation does not roll back any replacements that have already been
  completed, but it prevents new replacements from being started.

    * `Cancelled` - The operation is cancelled.

  For more information, see [Replacing Auto Scaling instances based on an instance refresh](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_instance_refreshes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeInstanceRefreshes", input, options)
  end

  @doc """
  Describes one or more launch configurations.
  """
  def describe_launch_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLaunchConfigurations", input, options)
  end

  @doc """
  Describes the available types of lifecycle hooks.

  The following hook types are supported:

    * autoscaling:EC2_INSTANCE_LAUNCHING

    * autoscaling:EC2_INSTANCE_TERMINATING
  """
  def describe_lifecycle_hook_types(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLifecycleHookTypes", input, options)
  end

  @doc """
  Describes the lifecycle hooks for the specified Auto Scaling group.
  """
  def describe_lifecycle_hooks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLifecycleHooks", input, options)
  end

  @doc """
  Describes the target groups for the specified Auto Scaling group.
  """
  def describe_load_balancer_target_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLoadBalancerTargetGroups", input, options)
  end

  @doc """
  Describes the load balancers for the specified Auto Scaling group.

  This operation describes only Classic Load Balancers. If you have Application
  Load Balancers, Network Load Balancers, or Gateway Load Balancers, use the
  `DescribeLoadBalancerTargetGroups` API instead.
  """
  def describe_load_balancers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLoadBalancers", input, options)
  end

  @doc """
  Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling.

  The `GroupStandbyInstances` metric is not returned by default. You must
  explicitly request this metric when calling the `EnableMetricsCollection` API.
  """
  def describe_metric_collection_types(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeMetricCollectionTypes", input, options)
  end

  @doc """
  Describes the notification actions associated with the specified Auto Scaling
  group.
  """
  def describe_notification_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeNotificationConfigurations", input, options)
  end

  @doc """
  Describes the policies for the specified Auto Scaling group.
  """
  def describe_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePolicies", input, options)
  end

  @doc """
  Describes one or more scaling activities for the specified Auto Scaling group.

  To view the scaling activities from the Amazon EC2 Auto Scaling console, choose
  the **Activity** tab of the Auto Scaling group. When scaling events occur, you
  see scaling activity messages in the **Activity history**. For more information,
  see [Verifying a scaling activity for an Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_scaling_activities(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeScalingActivities", input, options)
  end

  @doc """
  Describes the scaling process types for use with the `ResumeProcesses` and
  `SuspendProcesses` APIs.
  """
  def describe_scaling_process_types(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeScalingProcessTypes", input, options)
  end

  @doc """
  Describes the actions scheduled for your Auto Scaling group that haven't run or
  that have not reached their end time.

  To describe the actions that have already run, call the
  `DescribeScalingActivities` API.
  """
  def describe_scheduled_actions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeScheduledActions", input, options)
  end

  @doc """
  Describes the specified tags.

  You can use filters to limit the results. For example, you can query for the
  tags for a specific Auto Scaling group. You can specify multiple values for a
  filter. A tag must match at least one of the specified values for it to be
  included in the results.

  You can also specify multiple filters. The result includes information for a
  particular tag only if it matches all the filters. If there's no match, no
  special message is returned.

  For more information, see [Tagging Auto Scaling groups and instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTags", input, options)
  end

  @doc """
  Describes the termination policies supported by Amazon EC2 Auto Scaling.

  For more information, see [Controlling which Auto Scaling instances terminate during scale
  in](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_termination_policy_types(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTerminationPolicyTypes", input, options)
  end

  @doc """
  Removes one or more instances from the specified Auto Scaling group.

  After the instances are detached, you can manage them independent of the Auto
  Scaling group.

  If you do not specify the option to decrement the desired capacity, Amazon EC2
  Auto Scaling launches instances to replace the ones that are detached.

  If there is a Classic Load Balancer attached to the Auto Scaling group, the
  instances are deregistered from the load balancer. If there are target groups
  attached to the Auto Scaling group, the instances are deregistered from the
  target groups.

  For more information, see [Detach EC2 instances from your Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/detach-instance-asg.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def detach_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DetachInstances", input, options)
  end

  @doc """
  Detaches one or more target groups from the specified Auto Scaling group.
  """
  def detach_load_balancer_target_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DetachLoadBalancerTargetGroups", input, options)
  end

  @doc """
  Detaches one or more Classic Load Balancers from the specified Auto Scaling
  group.

  This operation detaches only Classic Load Balancers. If you have Application
  Load Balancers, Network Load Balancers, or Gateway Load Balancers, use the
  `DetachLoadBalancerTargetGroups` API instead.

  When you detach a load balancer, it enters the `Removing` state while
  deregistering the instances in the group. When all instances are deregistered,
  then you can no longer describe the load balancer using the
  `DescribeLoadBalancers` API call. The instances remain running.
  """
  def detach_load_balancers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DetachLoadBalancers", input, options)
  end

  @doc """
  Disables group metrics for the specified Auto Scaling group.
  """
  def disable_metrics_collection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableMetricsCollection", input, options)
  end

  @doc """
  Enables group metrics for the specified Auto Scaling group.

  For more information, see [Monitoring CloudWatch metrics for your Auto Scaling groups and
  instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-monitoring.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def enable_metrics_collection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableMetricsCollection", input, options)
  end

  @doc """
  Moves the specified instances into the standby state.

  If you choose to decrement the desired capacity of the Auto Scaling group, the
  instances can enter standby as long as the desired capacity of the Auto Scaling
  group after the instances are placed into standby is equal to or greater than
  the minimum capacity of the group.

  If you choose not to decrement the desired capacity of the Auto Scaling group,
  the Auto Scaling group launches new instances to replace the instances on
  standby.

  For more information, see [Temporarily removing instances from your Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def enter_standby(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnterStandby", input, options)
  end

  @doc """
  Executes the specified policy.

  This can be useful for testing the design of your scaling policy.
  """
  def execute_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ExecutePolicy", input, options)
  end

  @doc """
  Moves the specified instances out of the standby state.

  After you put the instances back in service, the desired capacity is
  incremented.

  For more information, see [Temporarily removing instances from your Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def exit_standby(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ExitStandby", input, options)
  end

  @doc """
  Creates or updates a lifecycle hook for the specified Auto Scaling group.

  A lifecycle hook tells Amazon EC2 Auto Scaling to perform an action on an
  instance when the instance launches (before it is put into service) or as the
  instance terminates (before it is fully terminated).

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling group:

    1. (Optional) Create a Lambda function and a rule that allows
  CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling
  launches or terminates instances.

    2. (Optional) Create a notification target and an IAM role. The
  target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows
  Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.

    3. ## Create the lifecycle hook. Specify whether the hook is used
  when the instances launch or terminate.

    4. If you need more time, record the lifecycle action heartbeat to
  keep the instance in a pending state using the `RecordLifecycleActionHeartbeat`
  API call.

    5. If you finish before the timeout period ends, complete the
  lifecycle action using the `CompleteLifecycleAction` API call.

  For more information, see [Amazon EC2 Auto Scaling lifecycle hooks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  If you exceed your maximum limit of lifecycle hooks, which by default is 50 per
  Auto Scaling group, the call fails.

  You can view the lifecycle hooks for an Auto Scaling group using the
  `DescribeLifecycleHooks` API call. If you are no longer using a lifecycle hook,
  you can delete it by calling the `DeleteLifecycleHook` API.
  """
  def put_lifecycle_hook(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutLifecycleHook", input, options)
  end

  @doc """
  Configures an Auto Scaling group to send notifications when specified events
  take place.

  Subscribers to the specified topic can have messages delivered to an endpoint
  such as a web server or an email address.

  This configuration overwrites any existing configuration.

  For more information, see [Getting Amazon SNS notifications when your Auto Scaling group
  scales](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ASGettingNotifications.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  If you exceed your maximum limit of SNS topics, which is 10 per Auto Scaling
  group, the call fails.
  """
  def put_notification_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutNotificationConfiguration", input, options)
  end

  @doc """
  Creates or updates a scaling policy for an Auto Scaling group.

  For more information about using scaling policies to scale your Auto Scaling
  group, see [Target tracking scaling policies](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html)
  and [Step and simple scaling policies](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def put_scaling_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutScalingPolicy", input, options)
  end

  @doc """
  Creates or updates a scheduled scaling action for an Auto Scaling group.

  For more information, see [Scheduled scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/schedule_time.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def put_scheduled_update_group_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutScheduledUpdateGroupAction", input, options)
  end

  @doc """
  Records a heartbeat for the lifecycle action associated with the specified token
  or instance.

  This extends the timeout by the length of time defined using the
  `PutLifecycleHook` API call.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling group:

    1. (Optional) Create a Lambda function and a rule that allows
  CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling
  launches or terminates instances.

    2. (Optional) Create a notification target and an IAM role. The
  target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows
  Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.

    3. Create the lifecycle hook. Specify whether the hook is used when
  the instances launch or terminate.

    4. ## If you need more time, record the lifecycle action heartbeat to
  keep the instance in a pending state.

    5. If you finish before the timeout period ends, complete the
  lifecycle action.

  For more information, see [Auto Scaling lifecycle](https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def record_lifecycle_action_heartbeat(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RecordLifecycleActionHeartbeat", input, options)
  end

  @doc """
  Resumes the specified suspended auto scaling processes, or all suspended
  process, for the specified Auto Scaling group.

  For more information, see [Suspending and resuming scaling processes](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def resume_processes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResumeProcesses", input, options)
  end

  @doc """
  Sets the size of the specified Auto Scaling group.

  If a scale-in activity occurs as a result of a new `DesiredCapacity` value that
  is lower than the current size of the group, the Auto Scaling group uses its
  termination policy to determine which instances to terminate.

  For more information, see [Manual scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-manual-scaling.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def set_desired_capacity(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetDesiredCapacity", input, options)
  end

  @doc """
  Sets the health status of the specified instance.

  For more information, see [Health checks for Auto Scaling instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def set_instance_health(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetInstanceHealth", input, options)
  end

  @doc """
  Updates the instance protection settings of the specified instances.

  For more information about preventing instances that are part of an Auto Scaling
  group from terminating on scale in, see [Instance scale-in protection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection)
  in the *Amazon EC2 Auto Scaling User Guide*.

  If you exceed your maximum limit of instance IDs, which is 50 per Auto Scaling
  group, the call fails.
  """
  def set_instance_protection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetInstanceProtection", input, options)
  end

  @doc """
  Starts a new instance refresh operation, which triggers a rolling replacement of
  all previously launched instances in the Auto Scaling group with a new group of
  instances.

  If successful, this call creates a new instance refresh request with a unique ID
  that you can use to track its progress. To query its status, call the
  `DescribeInstanceRefreshes` API. To describe the instance refreshes that have
  already run, call the `DescribeInstanceRefreshes` API. To cancel an instance
  refresh operation in progress, use the `CancelInstanceRefresh` API.

  For more information, see [Replacing Auto Scaling instances based on an instance refresh](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def start_instance_refresh(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartInstanceRefresh", input, options)
  end

  @doc """
  Suspends the specified auto scaling processes, or all processes, for the
  specified Auto Scaling group.

  If you suspend either the `Launch` or `Terminate` process types, it can prevent
  other process types from functioning properly. For more information, see
  [Suspending and resuming scaling processes](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  To resume processes that have been suspended, call the `ResumeProcesses` API.
  """
  def suspend_processes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SuspendProcesses", input, options)
  end

  @doc """
  Terminates the specified instance and optionally adjusts the desired group size.

  This call simply makes a termination request. The instance is not terminated
  immediately. When an instance is terminated, the instance status changes to
  `terminated`. You can't connect to or start an instance after you've terminated
  it.

  If you do not specify the option to decrement the desired capacity, Amazon EC2
  Auto Scaling launches instances to replace the ones that are terminated.

  By default, Amazon EC2 Auto Scaling balances instances across all Availability
  Zones. If you decrement the desired capacity, your Auto Scaling group can become
  unbalanced between Availability Zones. Amazon EC2 Auto Scaling tries to
  rebalance the group, and rebalancing might terminate instances in other zones.
  For more information, see [Rebalancing activities](https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-benefits.html#AutoScalingBehavior.InstanceUsage)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def terminate_instance_in_auto_scaling_group(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "TerminateInstanceInAutoScalingGroup",
      input,
      options
    )
  end

  @doc """
  ## We strongly recommend that all Auto Scaling groups use launch templates to
  ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2.

  Updates the configuration for the specified Auto Scaling group.

  To update an Auto Scaling group, specify the name of the group and the parameter
  that you want to change. Any parameters that you don't specify are not changed
  by this update request. The new settings take effect on any scaling activities
  after this call returns.

  If you associate a new launch configuration or template with an Auto Scaling
  group, all new instances will get the updated configuration. Existing instances
  continue to run with the configuration that they were originally launched with.
  When you update a group to specify a mixed instances policy instead of a launch
  configuration or template, existing instances may be replaced to match the new
  purchasing options that you specified in the policy. For example, if the group
  currently has 100% On-Demand capacity and the policy specifies 50% Spot
  capacity, this means that half of your instances will be gradually terminated
  and relaunched as Spot Instances. When replacing instances, Amazon EC2 Auto
  Scaling launches new instances before terminating the old ones, so that updating
  your group does not compromise the performance or availability of your
  application.

  Note the following about changing `DesiredCapacity`, `MaxSize`, or `MinSize`:

    * If a scale-in activity occurs as a result of a new
  `DesiredCapacity` value that is lower than the current size of the group, the
  Auto Scaling group uses its termination policy to determine which instances to
  terminate.

    * If you specify a new value for `MinSize` without specifying a
  value for `DesiredCapacity`, and the new `MinSize` is larger than the current
  size of the group, this sets the group's `DesiredCapacity` to the new `MinSize`
  value.

    * If you specify a new value for `MaxSize` without specifying a
  value for `DesiredCapacity`, and the new `MaxSize` is smaller than the current
  size of the group, this sets the group's `DesiredCapacity` to the new `MaxSize`
  value.

  To see which parameters have been set, call the `DescribeAutoScalingGroups` API.
  To view the scaling policies for an Auto Scaling group, call the
  `DescribePolicies` API. If the group has scaling policies, you can update them
  by calling the `PutScalingPolicy` API.
  """
  def update_auto_scaling_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAutoScalingGroup", input, options)
  end
end
