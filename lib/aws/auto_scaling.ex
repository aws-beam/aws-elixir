# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AutoScaling do
  @moduledoc """
  Amazon EC2 Auto Scaling

  Amazon EC2 Auto Scaling is designed to automatically launch or terminate
  EC2 instances based on user-defined scaling policies, scheduled actions,
  and health checks. Use this service with AWS Auto Scaling, Amazon
  CloudWatch, and Elastic Load Balancing.

  For more information, including information about granting IAM users
  required permissions for Amazon EC2 Auto Scaling actions, see the [Amazon
  EC2 Auto Scaling User
  Guide](https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html).
  """

  @doc """
  Attaches one or more EC2 instances to the specified Auto Scaling group.

  When you attach instances, Amazon EC2 Auto Scaling increases the desired
  capacity of the group by the number of instances being attached. If the
  number of instances being attached plus the desired capacity of the group
  exceeds the maximum size of the group, the operation fails.

  If there is a Classic Load Balancer attached to your Auto Scaling group,
  the instances are also registered with the load balancer. If there are
  target groups attached to your Auto Scaling group, the instances are also
  registered with the target groups.

  For more information, see [Attach EC2 Instances to Your Auto Scaling
  Group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-instance-asg.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def attach_instances(client, input, options \\ []) do
    request(client, "AttachInstances", input, options)
  end

  @doc """
  Attaches one or more target groups to the specified Auto Scaling group.

  To describe the target groups for an Auto Scaling group, call the
  `DescribeLoadBalancerTargetGroups` API. To detach the target group from the
  Auto Scaling group, call the `DetachLoadBalancerTargetGroups` API.

  With Application Load Balancers and Network Load Balancers, instances are
  registered as targets with a target group. With Classic Load Balancers,
  instances are registered with the load balancer. For more information, see
  [Attaching a Load Balancer to Your Auto Scaling
  Group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-load-balancer-asg.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def attach_load_balancer_target_groups(client, input, options \\ []) do
    request(client, "AttachLoadBalancerTargetGroups", input, options)
  end

  @doc """
  <note> To attach an Application Load Balancer or a Network Load Balancer,
  use the `AttachLoadBalancerTargetGroups` API operation instead.

  </note> Attaches one or more Classic Load Balancers to the specified Auto
  Scaling group. Amazon EC2 Auto Scaling registers the running instances with
  these Classic Load Balancers.

  To describe the load balancers for an Auto Scaling group, call the
  `DescribeLoadBalancers` API. To detach the load balancer from the Auto
  Scaling group, call the `DetachLoadBalancers` API.

  For more information, see [Attaching a Load Balancer to Your Auto Scaling
  Group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-load-balancer-asg.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def attach_load_balancers(client, input, options \\ []) do
    request(client, "AttachLoadBalancers", input, options)
  end

  @doc """
  Deletes one or more scheduled actions for the specified Auto Scaling group.
  """
  def batch_delete_scheduled_action(client, input, options \\ []) do
    request(client, "BatchDeleteScheduledAction", input, options)
  end

  @doc """
  Creates or updates one or more scheduled scaling actions for an Auto
  Scaling group. If you leave a parameter unspecified when updating a
  scheduled scaling action, the corresponding value remains unchanged.
  """
  def batch_put_scheduled_update_group_action(client, input, options \\ []) do
    request(client, "BatchPutScheduledUpdateGroupAction", input, options)
  end

  @doc """
  Cancels an instance refresh operation in progress. Cancellation does not
  roll back any replacements that have already been completed, but it
  prevents new replacements from being started.

  For more information, see [Replacing Auto Scaling Instances Based on an
  Instance
  Refresh](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html).
  """
  def cancel_instance_refresh(client, input, options \\ []) do
    request(client, "CancelInstanceRefresh", input, options)
  end

  @doc """
  Completes the lifecycle action for the specified token or instance with the
  specified result.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling group:

  <ol> <li> (Optional) Create a Lambda function and a rule that allows
  CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto
  Scaling launches or terminates instances.

  </li> <li> (Optional) Create a notification target and an IAM role. The
  target can be either an Amazon SQS queue or an Amazon SNS topic. The role
  allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the
  target.

  </li> <li> Create the lifecycle hook. Specify whether the hook is used when
  the instances launch or terminate.

  </li> <li> If you need more time, record the lifecycle action heartbeat to
  keep the instance in a pending state.

  </li> <li> **If you finish before the timeout period ends, complete the
  lifecycle action.**

  </li> </ol> For more information, see [Amazon EC2 Auto Scaling Lifecycle
  Hooks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def complete_lifecycle_action(client, input, options \\ []) do
    request(client, "CompleteLifecycleAction", input, options)
  end

  @doc """
  Creates an Auto Scaling group with the specified name and attributes.

  If you exceed your maximum limit of Auto Scaling groups, the call fails. To
  query this limit, call the `DescribeAccountLimits` API. For information
  about updating this limit, see [Amazon EC2 Auto Scaling Service
  Quotas](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  For introductory exercises for creating an Auto Scaling group, see [Getting
  Started with Amazon EC2 Auto
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/GettingStartedTutorial.html)
  and [Tutorial: Set Up a Scaled and Load-Balanced
  Application](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-register-lbs-with-asg.html)
  in the *Amazon EC2 Auto Scaling User Guide*. For more information, see
  [Auto Scaling
  Groups](https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  Every Auto Scaling group has three size parameters (`DesiredCapacity`,
  `MaxSize`, and `MinSize`). Usually, you set these sizes based on a specific
  number of instances. However, if you configure a mixed instances policy
  that defines weights for the instance types, you must specify these sizes
  with the same units that you use for weighting instances.
  """
  def create_auto_scaling_group(client, input, options \\ []) do
    request(client, "CreateAutoScalingGroup", input, options)
  end

  @doc """
  Creates a launch configuration.

  If you exceed your maximum limit of launch configurations, the call fails.
  To query this limit, call the `DescribeAccountLimits` API. For information
  about updating this limit, see [Amazon EC2 Auto Scaling Service
  Quotas](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  For more information, see [Launch
  Configurations](https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchConfiguration.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def create_launch_configuration(client, input, options \\ []) do
    request(client, "CreateLaunchConfiguration", input, options)
  end

  @doc """
  Creates or updates tags for the specified Auto Scaling group.

  When you specify a tag with a key that already exists, the operation
  overwrites the previous tag definition, and you do not get an error
  message.

  For more information, see [Tagging Auto Scaling Groups and
  Instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def create_or_update_tags(client, input, options \\ []) do
    request(client, "CreateOrUpdateTags", input, options)
  end

  @doc """
  Deletes the specified Auto Scaling group.

  If the group has instances or scaling activities in progress, you must
  specify the option to force the deletion in order for it to succeed.

  If the group has policies, deleting the group deletes the policies, the
  underlying alarm actions, and any alarm that no longer has an associated
  action.

  To remove instances from the Auto Scaling group before deleting it, call
  the `DetachInstances` API with the list of instances and the option to
  decrement the desired capacity. This ensures that Amazon EC2 Auto Scaling
  does not launch replacement instances.

  To terminate all instances before deleting the Auto Scaling group, call the
  `UpdateAutoScalingGroup` API and set the minimum size and desired capacity
  of the Auto Scaling group to zero.
  """
  def delete_auto_scaling_group(client, input, options \\ []) do
    request(client, "DeleteAutoScalingGroup", input, options)
  end

  @doc """
  Deletes the specified launch configuration.

  The launch configuration must not be attached to an Auto Scaling group.
  When this call completes, the launch configuration is no longer available
  for use.
  """
  def delete_launch_configuration(client, input, options \\ []) do
    request(client, "DeleteLaunchConfiguration", input, options)
  end

  @doc """
  Deletes the specified lifecycle hook.

  If there are any outstanding lifecycle actions, they are completed first
  (`ABANDON` for launching instances, `CONTINUE` for terminating instances).
  """
  def delete_lifecycle_hook(client, input, options \\ []) do
    request(client, "DeleteLifecycleHook", input, options)
  end

  @doc """
  Deletes the specified notification.
  """
  def delete_notification_configuration(client, input, options \\ []) do
    request(client, "DeleteNotificationConfiguration", input, options)
  end

  @doc """
  Deletes the specified scaling policy.

  Deleting either a step scaling policy or a simple scaling policy deletes
  the underlying alarm action, but does not delete the alarm, even if it no
  longer has an associated action.

  For more information, see [Deleting a Scaling
  Policy](https://docs.aws.amazon.com/autoscaling/ec2/userguide/deleting-scaling-policy.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def delete_policy(client, input, options \\ []) do
    request(client, "DeletePolicy", input, options)
  end

  @doc """
  Deletes the specified scheduled action.
  """
  def delete_scheduled_action(client, input, options \\ []) do
    request(client, "DeleteScheduledAction", input, options)
  end

  @doc """
  Deletes the specified tags.
  """
  def delete_tags(client, input, options \\ []) do
    request(client, "DeleteTags", input, options)
  end

  @doc """
  Describes the current Amazon EC2 Auto Scaling resource quotas for your AWS
  account.

  For information about requesting an increase, see [Amazon EC2 Auto Scaling
  Service
  Quotas](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_account_limits(client, input, options \\ []) do
    request(client, "DescribeAccountLimits", input, options)
  end

  @doc """
  Describes the available adjustment types for Amazon EC2 Auto Scaling
  scaling policies. These settings apply to step scaling policies and simple
  scaling policies; they do not apply to target tracking scaling policies.

  The following adjustment types are supported:

  <ul> <li> ChangeInCapacity

  </li> <li> ExactCapacity

  </li> <li> PercentChangeInCapacity

  </li> </ul>
  """
  def describe_adjustment_types(client, input, options \\ []) do
    request(client, "DescribeAdjustmentTypes", input, options)
  end

  @doc """
  Describes one or more Auto Scaling groups.
  """
  def describe_auto_scaling_groups(client, input, options \\ []) do
    request(client, "DescribeAutoScalingGroups", input, options)
  end

  @doc """
  Describes one or more Auto Scaling instances.
  """
  def describe_auto_scaling_instances(client, input, options \\ []) do
    request(client, "DescribeAutoScalingInstances", input, options)
  end

  @doc """
  Describes the notification types that are supported by Amazon EC2 Auto
  Scaling.
  """
  def describe_auto_scaling_notification_types(client, input, options \\ []) do
    request(client, "DescribeAutoScalingNotificationTypes", input, options)
  end

  @doc """
  Describes one or more instance refreshes.

  You can determine the status of a request by looking at the `Status`
  parameter. The following are the possible statuses:

  <ul> <li> `Pending` - The request was created, but the operation has not
  started.

  </li> <li> `InProgress` - The operation is in progress.

  </li> <li> `Successful` - The operation completed successfully.

  </li> <li> `Failed` - The operation failed to complete. You can
  troubleshoot using the status reason and the scaling activities.

  </li> <li> `Cancelling` - An ongoing operation is being cancelled.
  Cancellation does not roll back any replacements that have already been
  completed, but it prevents new replacements from being started.

  </li> <li> `Cancelled` - The operation is cancelled.

  </li> </ul> For more information, see [Replacing Auto Scaling Instances
  Based on an Instance
  Refresh](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html).
  """
  def describe_instance_refreshes(client, input, options \\ []) do
    request(client, "DescribeInstanceRefreshes", input, options)
  end

  @doc """
  Describes one or more launch configurations.
  """
  def describe_launch_configurations(client, input, options \\ []) do
    request(client, "DescribeLaunchConfigurations", input, options)
  end

  @doc """
  Describes the available types of lifecycle hooks.

  The following hook types are supported:

  <ul> <li> autoscaling:EC2_INSTANCE_LAUNCHING

  </li> <li> autoscaling:EC2_INSTANCE_TERMINATING

  </li> </ul>
  """
  def describe_lifecycle_hook_types(client, input, options \\ []) do
    request(client, "DescribeLifecycleHookTypes", input, options)
  end

  @doc """
  Describes the lifecycle hooks for the specified Auto Scaling group.
  """
  def describe_lifecycle_hooks(client, input, options \\ []) do
    request(client, "DescribeLifecycleHooks", input, options)
  end

  @doc """
  Describes the target groups for the specified Auto Scaling group.
  """
  def describe_load_balancer_target_groups(client, input, options \\ []) do
    request(client, "DescribeLoadBalancerTargetGroups", input, options)
  end

  @doc """
  Describes the load balancers for the specified Auto Scaling group.

  This operation describes only Classic Load Balancers. If you have
  Application Load Balancers or Network Load Balancers, use the
  `DescribeLoadBalancerTargetGroups` API instead.
  """
  def describe_load_balancers(client, input, options \\ []) do
    request(client, "DescribeLoadBalancers", input, options)
  end

  @doc """
  Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling.

  The `GroupStandbyInstances` metric is not returned by default. You must
  explicitly request this metric when calling the `EnableMetricsCollection`
  API.
  """
  def describe_metric_collection_types(client, input, options \\ []) do
    request(client, "DescribeMetricCollectionTypes", input, options)
  end

  @doc """
  Describes the notification actions associated with the specified Auto
  Scaling group.
  """
  def describe_notification_configurations(client, input, options \\ []) do
    request(client, "DescribeNotificationConfigurations", input, options)
  end

  @doc """
  Describes the policies for the specified Auto Scaling group.
  """
  def describe_policies(client, input, options \\ []) do
    request(client, "DescribePolicies", input, options)
  end

  @doc """
  Describes one or more scaling activities for the specified Auto Scaling
  group.
  """
  def describe_scaling_activities(client, input, options \\ []) do
    request(client, "DescribeScalingActivities", input, options)
  end

  @doc """
  Describes the scaling process types for use with the `ResumeProcesses` and
  `SuspendProcesses` APIs.
  """
  def describe_scaling_process_types(client, input, options \\ []) do
    request(client, "DescribeScalingProcessTypes", input, options)
  end

  @doc """
  Describes the actions scheduled for your Auto Scaling group that haven't
  run or that have not reached their end time. To describe the actions that
  have already run, call the `DescribeScalingActivities` API.
  """
  def describe_scheduled_actions(client, input, options \\ []) do
    request(client, "DescribeScheduledActions", input, options)
  end

  @doc """
  Describes the specified tags.

  You can use filters to limit the results. For example, you can query for
  the tags for a specific Auto Scaling group. You can specify multiple values
  for a filter. A tag must match at least one of the specified values for it
  to be included in the results.

  You can also specify multiple filters. The result includes information for
  a particular tag only if it matches all the filters. If there's no match,
  no special message is returned.

  For more information, see [Tagging Auto Scaling Groups and
  Instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_tags(client, input, options \\ []) do
    request(client, "DescribeTags", input, options)
  end

  @doc """
  Describes the termination policies supported by Amazon EC2 Auto Scaling.

  For more information, see [Controlling Which Auto Scaling Instances
  Terminate During Scale
  In](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def describe_termination_policy_types(client, input, options \\ []) do
    request(client, "DescribeTerminationPolicyTypes", input, options)
  end

  @doc """
  Removes one or more instances from the specified Auto Scaling group.

  After the instances are detached, you can manage them independent of the
  Auto Scaling group.

  If you do not specify the option to decrement the desired capacity, Amazon
  EC2 Auto Scaling launches instances to replace the ones that are detached.

  If there is a Classic Load Balancer attached to the Auto Scaling group, the
  instances are deregistered from the load balancer. If there are target
  groups attached to the Auto Scaling group, the instances are deregistered
  from the target groups.

  For more information, see [Detach EC2 Instances from Your Auto Scaling
  Group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/detach-instance-asg.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def detach_instances(client, input, options \\ []) do
    request(client, "DetachInstances", input, options)
  end

  @doc """
  Detaches one or more target groups from the specified Auto Scaling group.
  """
  def detach_load_balancer_target_groups(client, input, options \\ []) do
    request(client, "DetachLoadBalancerTargetGroups", input, options)
  end

  @doc """
  Detaches one or more Classic Load Balancers from the specified Auto Scaling
  group.

  This operation detaches only Classic Load Balancers. If you have
  Application Load Balancers or Network Load Balancers, use the
  `DetachLoadBalancerTargetGroups` API instead.

  When you detach a load balancer, it enters the `Removing` state while
  deregistering the instances in the group. When all instances are
  deregistered, then you can no longer describe the load balancer using the
  `DescribeLoadBalancers` API call. The instances remain running.
  """
  def detach_load_balancers(client, input, options \\ []) do
    request(client, "DetachLoadBalancers", input, options)
  end

  @doc """
  Disables group metrics for the specified Auto Scaling group.
  """
  def disable_metrics_collection(client, input, options \\ []) do
    request(client, "DisableMetricsCollection", input, options)
  end

  @doc """
  Enables group metrics for the specified Auto Scaling group. For more
  information, see [Monitoring Your Auto Scaling Groups and
  Instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-monitoring.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def enable_metrics_collection(client, input, options \\ []) do
    request(client, "EnableMetricsCollection", input, options)
  end

  @doc """
  Moves the specified instances into the standby state.

  If you choose to decrement the desired capacity of the Auto Scaling group,
  the instances can enter standby as long as the desired capacity of the Auto
  Scaling group after the instances are placed into standby is equal to or
  greater than the minimum capacity of the group.

  If you choose not to decrement the desired capacity of the Auto Scaling
  group, the Auto Scaling group launches new instances to replace the
  instances on standby.

  For more information, see [Temporarily Removing Instances from Your Auto
  Scaling
  Group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def enter_standby(client, input, options \\ []) do
    request(client, "EnterStandby", input, options)
  end

  @doc """
  Executes the specified policy. This can be useful for testing the design of
  your scaling policy.
  """
  def execute_policy(client, input, options \\ []) do
    request(client, "ExecutePolicy", input, options)
  end

  @doc """
  Moves the specified instances out of the standby state.

  After you put the instances back in service, the desired capacity is
  incremented.

  For more information, see [Temporarily Removing Instances from Your Auto
  Scaling
  Group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def exit_standby(client, input, options \\ []) do
    request(client, "ExitStandby", input, options)
  end

  @doc """
  Creates or updates a lifecycle hook for the specified Auto Scaling group.

  A lifecycle hook tells Amazon EC2 Auto Scaling to perform an action on an
  instance when the instance launches (before it is put into service) or as
  the instance terminates (before it is fully terminated).

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling group:

  <ol> <li> (Optional) Create a Lambda function and a rule that allows
  CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto
  Scaling launches or terminates instances.

  </li> <li> (Optional) Create a notification target and an IAM role. The
  target can be either an Amazon SQS queue or an Amazon SNS topic. The role
  allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the
  target.

  </li> <li> **Create the lifecycle hook. Specify whether the hook is used
  when the instances launch or terminate.**

  </li> <li> If you need more time, record the lifecycle action heartbeat to
  keep the instance in a pending state using the
  `RecordLifecycleActionHeartbeat` API call.

  </li> <li> If you finish before the timeout period ends, complete the
  lifecycle action using the `CompleteLifecycleAction` API call.

  </li> </ol> For more information, see [Amazon EC2 Auto Scaling Lifecycle
  Hooks](https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  If you exceed your maximum limit of lifecycle hooks, which by default is 50
  per Auto Scaling group, the call fails.

  You can view the lifecycle hooks for an Auto Scaling group using the
  `DescribeLifecycleHooks` API call. If you are no longer using a lifecycle
  hook, you can delete it by calling the `DeleteLifecycleHook` API.
  """
  def put_lifecycle_hook(client, input, options \\ []) do
    request(client, "PutLifecycleHook", input, options)
  end

  @doc """
  Configures an Auto Scaling group to send notifications when specified
  events take place. Subscribers to the specified topic can have messages
  delivered to an endpoint such as a web server or an email address.

  This configuration overwrites any existing configuration.

  For more information, see [Getting Amazon SNS Notifications When Your Auto
  Scaling Group
  Scales](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ASGettingNotifications.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def put_notification_configuration(client, input, options \\ []) do
    request(client, "PutNotificationConfiguration", input, options)
  end

  @doc """
  Creates or updates a scaling policy for an Auto Scaling group.

  For more information about using scaling policies to scale your Auto
  Scaling group, see [Target Tracking Scaling
  Policies](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html)
  and [Step and Simple Scaling
  Policies](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def put_scaling_policy(client, input, options \\ []) do
    request(client, "PutScalingPolicy", input, options)
  end

  @doc """
  Creates or updates a scheduled scaling action for an Auto Scaling group. If
  you leave a parameter unspecified when updating a scheduled scaling action,
  the corresponding value remains unchanged.

  For more information, see [Scheduled
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/schedule_time.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def put_scheduled_update_group_action(client, input, options \\ []) do
    request(client, "PutScheduledUpdateGroupAction", input, options)
  end

  @doc """
  Records a heartbeat for the lifecycle action associated with the specified
  token or instance. This extends the timeout by the length of time defined
  using the `PutLifecycleHook` API call.

  This step is a part of the procedure for adding a lifecycle hook to an Auto
  Scaling group:

  <ol> <li> (Optional) Create a Lambda function and a rule that allows
  CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto
  Scaling launches or terminates instances.

  </li> <li> (Optional) Create a notification target and an IAM role. The
  target can be either an Amazon SQS queue or an Amazon SNS topic. The role
  allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the
  target.

  </li> <li> Create the lifecycle hook. Specify whether the hook is used when
  the instances launch or terminate.

  </li> <li> **If you need more time, record the lifecycle action heartbeat
  to keep the instance in a pending state.**

  </li> <li> If you finish before the timeout period ends, complete the
  lifecycle action.

  </li> </ol> For more information, see [Auto Scaling
  Lifecycle](https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def record_lifecycle_action_heartbeat(client, input, options \\ []) do
    request(client, "RecordLifecycleActionHeartbeat", input, options)
  end

  @doc """
  Resumes the specified suspended automatic scaling processes, or all
  suspended process, for the specified Auto Scaling group.

  For more information, see [Suspending and Resuming Scaling
  Processes](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def resume_processes(client, input, options \\ []) do
    request(client, "ResumeProcesses", input, options)
  end

  @doc """
  Sets the size of the specified Auto Scaling group.

  If a scale-in activity occurs as a result of a new `DesiredCapacity` value
  that is lower than the current size of the group, the Auto Scaling group
  uses its termination policy to determine which instances to terminate.

  For more information, see [Manual
  Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-manual-scaling.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def set_desired_capacity(client, input, options \\ []) do
    request(client, "SetDesiredCapacity", input, options)
  end

  @doc """
  Sets the health status of the specified instance.

  For more information, see [Health Checks for Auto Scaling
  Instances](https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def set_instance_health(client, input, options \\ []) do
    request(client, "SetInstanceHealth", input, options)
  end

  @doc """
  Updates the instance protection settings of the specified instances.

  For more information about preventing instances that are part of an Auto
  Scaling group from terminating on scale in, see [Instance
  Protection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def set_instance_protection(client, input, options \\ []) do
    request(client, "SetInstanceProtection", input, options)
  end

  @doc """
  Starts a new instance refresh operation, which triggers a rolling
  replacement of all previously launched instances in the Auto Scaling group
  with a new group of instances.

  If successful, this call creates a new instance refresh request with a
  unique ID that you can use to track its progress. To query its status, call
  the `DescribeInstanceRefreshes` API. To describe the instance refreshes
  that have already run, call the `DescribeInstanceRefreshes` API. To cancel
  an instance refresh operation in progress, use the `CancelInstanceRefresh`
  API.

  For more information, see [Replacing Auto Scaling Instances Based on an
  Instance
  Refresh](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html).
  """
  def start_instance_refresh(client, input, options \\ []) do
    request(client, "StartInstanceRefresh", input, options)
  end

  @doc """
  Suspends the specified automatic scaling processes, or all processes, for
  the specified Auto Scaling group.

  If you suspend either the `Launch` or `Terminate` process types, it can
  prevent other process types from functioning properly. For more
  information, see [Suspending and Resuming Scaling
  Processes](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html)
  in the *Amazon EC2 Auto Scaling User Guide*.

  To resume processes that have been suspended, call the `ResumeProcesses`
  API.
  """
  def suspend_processes(client, input, options \\ []) do
    request(client, "SuspendProcesses", input, options)
  end

  @doc """
  Terminates the specified instance and optionally adjusts the desired group
  size.

  This call simply makes a termination request. The instance is not
  terminated immediately. When an instance is terminated, the instance status
  changes to `terminated`. You can't connect to or start an instance after
  you've terminated it.

  If you do not specify the option to decrement the desired capacity, Amazon
  EC2 Auto Scaling launches instances to replace the ones that are
  terminated.

  By default, Amazon EC2 Auto Scaling balances instances across all
  Availability Zones. If you decrement the desired capacity, your Auto
  Scaling group can become unbalanced between Availability Zones. Amazon EC2
  Auto Scaling tries to rebalance the group, and rebalancing might terminate
  instances in other zones. For more information, see [Rebalancing
  Activities](https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-benefits.html#AutoScalingBehavior.InstanceUsage)
  in the *Amazon EC2 Auto Scaling User Guide*.
  """
  def terminate_instance_in_auto_scaling_group(client, input, options \\ []) do
    request(client, "TerminateInstanceInAutoScalingGroup", input, options)
  end

  @doc """
  Updates the configuration for the specified Auto Scaling group.

  To update an Auto Scaling group, specify the name of the group and the
  parameter that you want to change. Any parameters that you don't specify
  are not changed by this update request. The new settings take effect on any
  scaling activities after this call returns.

  If you associate a new launch configuration or template with an Auto
  Scaling group, all new instances will get the updated configuration.
  Existing instances continue to run with the configuration that they were
  originally launched with. When you update a group to specify a mixed
  instances policy instead of a launch configuration or template, existing
  instances may be replaced to match the new purchasing options that you
  specified in the policy. For example, if the group currently has 100%
  On-Demand capacity and the policy specifies 50% Spot capacity, this means
  that half of your instances will be gradually terminated and relaunched as
  Spot Instances. When replacing instances, Amazon EC2 Auto Scaling launches
  new instances before terminating the old ones, so that updating your group
  does not compromise the performance or availability of your application.

  Note the following about changing `DesiredCapacity`, `MaxSize`, or
  `MinSize`:

  <ul> <li> If a scale-in activity occurs as a result of a new
  `DesiredCapacity` value that is lower than the current size of the group,
  the Auto Scaling group uses its termination policy to determine which
  instances to terminate.

  </li> <li> If you specify a new value for `MinSize` without specifying a
  value for `DesiredCapacity`, and the new `MinSize` is larger than the
  current size of the group, this sets the group's `DesiredCapacity` to the
  new `MinSize` value.

  </li> <li> If you specify a new value for `MaxSize` without specifying a
  value for `DesiredCapacity`, and the new `MaxSize` is smaller than the
  current size of the group, this sets the group's `DesiredCapacity` to the
  new `MaxSize` value.

  </li> </ul> To see which parameters have been set, call the
  `DescribeAutoScalingGroups` API. To view the scaling policies for an Auto
  Scaling group, call the `DescribePolicies` API. If the group has scaling
  policies, you can update them by calling the `PutScalingPolicy` API.
  """
  def update_auto_scaling_group(client, input, options \\ []) do
    request(client, "UpdateAutoScalingGroup", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "autoscaling"}
    host = build_host("autoscaling", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-www-form-urlencoded"}
    ]

    input = Map.merge(input, %{"Action" => action, "Version" => "2011-01-01"})
    payload = AWS.Util.encode_query(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    AWS.HTTP.request(:post, url, payload, headers, options, 200)
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
end
