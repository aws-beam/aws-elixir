# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.CloudWatch.Events do
  @moduledoc """
  Amazon CloudWatch Events helps you to respond to state changes in your AWS
  resources. When your resources change state, they automatically send events
  into an event stream. You can create rules that match selected events in
  the stream and route them to targets to take action. You can also use rules
  to take action on a predetermined schedule. For example, you can configure
  rules to:

  <ul> <li> Automatically invoke an AWS Lambda function to update DNS entries
  when an event notifies you that Amazon EC2 instance enters the running
  state.

  </li> <li> Direct specific API records from AWS CloudTrail to an Amazon
  Kinesis data stream for detailed analysis of potential security or
  availability risks.

  </li> <li> Periodically invoke a built-in target to create a snapshot of an
  Amazon EBS volume.

  </li> </ul> For more information about the features of Amazon CloudWatch
  Events, see the [Amazon CloudWatch Events User
  Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events).
  """

  @doc """
  Deletes the specified rule.

  Before you can delete the rule, you must remove all targets, using
  `RemoveTargets`.

  When you delete a rule, incoming events might continue to match to the
  deleted rule. Allow a short period of time for changes to take effect.

  Managed rules are rules created and managed by another AWS service on your
  behalf. These rules are created by those other AWS services to support
  functionality in those services. You can delete these rules using the
  `Force` option, but you should do so only if you are sure the other service
  is not still using that rule.
  """
  def delete_rule(client, input, options \\ []) do
    request(client, "DeleteRule", input, options)
  end

  @doc """
  Displays the external AWS accounts that are permitted to write events to
  your account using your account's event bus, and the associated policy. To
  enable your account to receive events from other accounts, use
  `PutPermission`.
  """
  def describe_event_bus(client, input, options \\ []) do
    request(client, "DescribeEventBus", input, options)
  end

  @doc """
  Describes the specified rule.

  DescribeRule does not list the targets of a rule. To see the targets
  associated with a rule, use `ListTargetsByRule`.
  """
  def describe_rule(client, input, options \\ []) do
    request(client, "DescribeRule", input, options)
  end

  @doc """
  Disables the specified rule. A disabled rule won't match any events, and
  won't self-trigger if it has a schedule expression.

  When you disable a rule, incoming events might continue to match to the
  disabled rule. Allow a short period of time for changes to take effect.
  """
  def disable_rule(client, input, options \\ []) do
    request(client, "DisableRule", input, options)
  end

  @doc """
  Enables the specified rule. If the rule does not exist, the operation
  fails.

  When you enable a rule, incoming events might not immediately start
  matching to a newly enabled rule. Allow a short period of time for changes
  to take effect.
  """
  def enable_rule(client, input, options \\ []) do
    request(client, "EnableRule", input, options)
  end

  @doc """
  Lists the rules for the specified target. You can see which of the rules in
  Amazon CloudWatch Events can invoke a specific target in your account.
  """
  def list_rule_names_by_target(client, input, options \\ []) do
    request(client, "ListRuleNamesByTarget", input, options)
  end

  @doc """
  Lists your Amazon CloudWatch Events rules. You can either list all the
  rules or you can provide a prefix to match to the rule names.

  ListRules does not list the targets of a rule. To see the targets
  associated with a rule, use `ListTargetsByRule`.
  """
  def list_rules(client, input, options \\ []) do
    request(client, "ListRules", input, options)
  end

  @doc """
  Displays the tags associated with a CloudWatch Events resource. In
  CloudWatch Events, rules can be tagged.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Lists the targets assigned to the specified rule.
  """
  def list_targets_by_rule(client, input, options \\ []) do
    request(client, "ListTargetsByRule", input, options)
  end

  @doc """
  Sends custom events to Amazon CloudWatch Events so that they can be matched
  to rules.
  """
  def put_events(client, input, options \\ []) do
    request(client, "PutEvents", input, options)
  end

  @doc """
  Running `PutPermission` permits the specified AWS account or AWS
  organization to put events to your account's default *event bus*.
  CloudWatch Events rules in your account are triggered by these events
  arriving to your default event bus.

  For another account to send events to your account, that external account
  must have a CloudWatch Events rule with your account's default event bus as
  a target.

  To enable multiple AWS accounts to put events to your default event bus,
  run `PutPermission` once for each of these accounts. Or, if all the
  accounts are members of the same AWS organization, you can run
  `PutPermission` once specifying `Principal` as "*" and specifying the AWS
  organization ID in `Condition`, to grant permissions to all accounts in
  that organization.

  If you grant permissions using an organization, then accounts in that
  organization must specify a `RoleArn` with proper permissions when they use
  `PutTarget` to add your account's event bus as a target. For more
  information, see [Sending and Receiving Events Between AWS
  Accounts](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEvents-CrossAccountEventDelivery.html)
  in the *Amazon CloudWatch Events User Guide*.

  The permission policy on the default event bus cannot exceed 10 KB in size.
  """
  def put_permission(client, input, options \\ []) do
    request(client, "PutPermission", input, options)
  end

  @doc """
  Creates or updates the specified rule. Rules are enabled by default, or
  based on value of the state. You can disable a rule using `DisableRule`.

  If you are updating an existing rule, the rule is replaced with what you
  specify in this `PutRule` command. If you omit arguments in `PutRule`, the
  old values for those arguments are not kept. Instead, they are replaced
  with null values.

  When you create or update a rule, incoming events might not immediately
  start matching to new or updated rules. Allow a short period of time for
  changes to take effect.

  A rule must contain at least an EventPattern or ScheduleExpression. Rules
  with EventPatterns are triggered when a matching event is observed. Rules
  with ScheduleExpressions self-trigger based on the given schedule. A rule
  can have both an EventPattern and a ScheduleExpression, in which case the
  rule triggers on matching events as well as on a schedule.

  When you initially create a rule, you can optionally assign one or more
  tags to the rule. Tags can help you organize and categorize your resources.
  You can also use them to scope user permissions, by granting a user
  permission to access or change only rules with certain tag values. To use
  the `PutRule` operation and assign tags, you must have both the
  `events:PutRule` and `events:TagResource` permissions.

  If you are updating an existing rule, any tags you specify in the `PutRule`
  operation are ignored. To update the tags of an existing rule, use
  `TagResource` and `UntagResource`.

  Most services in AWS treat : or / as the same character in Amazon Resource
  Names (ARNs). However, CloudWatch Events uses an exact match in event
  patterns and rules. Be sure to use the correct ARN characters when creating
  event patterns so that they match the ARN syntax in the event you want to
  match.

  In CloudWatch Events, it is possible to create rules that lead to infinite
  loops, where a rule is fired repeatedly. For example, a rule might detect
  that ACLs have changed on an S3 bucket, and trigger software to change them
  to the desired state. If the rule is not written carefully, the subsequent
  change to the ACLs fires the rule again, creating an infinite loop.

  To prevent this, write the rules so that the triggered actions do not
  re-fire the same rule. For example, your rule could fire only if ACLs are
  found to be in a bad state, instead of after any change.

  An infinite loop can quickly cause higher than expected charges. We
  recommend that you use budgeting, which alerts you when charges exceed your
  specified limit. For more information, see [Managing Your Costs with
  Budgets](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html).
  """
  def put_rule(client, input, options \\ []) do
    request(client, "PutRule", input, options)
  end

  @doc """
  Adds the specified targets to the specified rule, or updates the targets if
  they are already associated with the rule.

  Targets are the resources that are invoked when a rule is triggered.

  You can configure the following as targets for CloudWatch Events:

  <ul> <li> EC2 instances

  </li> <li> SSM Run Command

  </li> <li> SSM Automation

  </li> <li> AWS Lambda functions

  </li> <li> Data streams in Amazon Kinesis Data Streams

  </li> <li> Data delivery streams in Amazon Kinesis Data Firehose

  </li> <li> Amazon ECS tasks

  </li> <li> AWS Step Functions state machines

  </li> <li> AWS Batch jobs

  </li> <li> AWS CodeBuild projects

  </li> <li> Pipelines in AWS CodePipeline

  </li> <li> Amazon Inspector assessment templates

  </li> <li> Amazon SNS topics

  </li> <li> Amazon SQS queues, including FIFO queues

  </li> <li> The default event bus of another AWS account

  </li> </ul> Creating rules with built-in targets is supported only in the
  AWS Management Console. The built-in targets are `EC2 CreateSnapshot API
  call`, `EC2 RebootInstances API call`, `EC2 StopInstances API call`, and
  `EC2 TerminateInstances API call`.

  For some target types, `PutTargets` provides target-specific parameters. If
  the target is a Kinesis data stream, you can optionally specify which shard
  the event goes to by using the `KinesisParameters` argument. To invoke a
  command on multiple EC2 instances with one rule, you can use the
  `RunCommandParameters` field.

  To be able to make API calls against the resources that you own, Amazon
  CloudWatch Events needs the appropriate permissions. For AWS Lambda and
  Amazon SNS resources, CloudWatch Events relies on resource-based policies.
  For EC2 instances, Kinesis data streams, and AWS Step Functions state
  machines, CloudWatch Events relies on IAM roles that you specify in the
  `RoleARN` argument in `PutTargets`. For more information, see
  [Authentication and Access
  Control](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/auth-and-access-control-cwe.html)
  in the *Amazon CloudWatch Events User Guide*.

  If another AWS account is in the same region and has granted you permission
  (using `PutPermission`), you can send events to that account. Set that
  account's event bus as a target of the rules in your account. To send the
  matched events to the other account, specify that account's event bus as
  the `Arn` value when you run `PutTargets`. If your account sends events to
  another account, your account is charged for each sent event. Each event
  sent to another account is charged as a custom event. The account receiving
  the event is not charged. For more information, see [Amazon CloudWatch
  Pricing](https://aws.amazon.com/cloudwatch/pricing/).

  If you are setting the event bus of another account as the target, and that
  account granted permission to your account through an organization instead
  of directly by the account ID, then you must specify a `RoleArn` with
  proper permissions in the `Target` structure. For more information, see
  [Sending and Receiving Events Between AWS
  Accounts](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEvents-CrossAccountEventDelivery.html)
  in the *Amazon CloudWatch Events User Guide*.

  For more information about enabling cross-account events, see
  `PutPermission`.

  **Input**, **InputPath**, and **InputTransformer** are mutually exclusive
  and optional parameters of a target. When a rule is triggered due to a
  matched event:

  <ul> <li> If none of the following arguments are specified for a target,
  then the entire event is passed to the target in JSON format (unless the
  target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing
  from the event is passed to the target).

  </li> <li> If **Input** is specified in the form of valid JSON, then the
  matched event is overridden with this constant.

  </li> <li> If **InputPath** is specified in the form of JSONPath (for
  example, `$.detail`), then only the part of the event specified in the path
  is passed to the target (for example, only the detail part of the event is
  passed).

  </li> <li> If **InputTransformer** is specified, then one or more specified
  JSONPaths are extracted from the event and used as values in a template
  that you specify as the input to the target.

  </li> </ul> When you specify `InputPath` or `InputTransformer`, you must
  use JSON dot notation, not bracket notation.

  When you add targets to a rule and the associated rule triggers soon after,
  new or updated targets might not be immediately invoked. Allow a short
  period of time for changes to take effect.

  This action can partially fail if too many requests are made at the same
  time. If that happens, `FailedEntryCount` is non-zero in the response and
  each entry in `FailedEntries` provides the ID of the failed target and the
  error code.
  """
  def put_targets(client, input, options \\ []) do
    request(client, "PutTargets", input, options)
  end

  @doc """
  Revokes the permission of another AWS account to be able to put events to
  your default event bus. Specify the account to revoke by the `StatementId`
  value that you associated with the account when you granted it permission
  with `PutPermission`. You can find the `StatementId` by using
  `DescribeEventBus`.
  """
  def remove_permission(client, input, options \\ []) do
    request(client, "RemovePermission", input, options)
  end

  @doc """
  Removes the specified targets from the specified rule. When the rule is
  triggered, those targets are no longer be invoked.

  When you remove a target, when the associated rule triggers, removed
  targets might continue to be invoked. Allow a short period of time for
  changes to take effect.

  This action can partially fail if too many requests are made at the same
  time. If that happens, `FailedEntryCount` is non-zero in the response and
  each entry in `FailedEntries` provides the ID of the failed target and the
  error code.
  """
  def remove_targets(client, input, options \\ []) do
    request(client, "RemoveTargets", input, options)
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified CloudWatch
  Events resource. Tags can help you organize and categorize your resources.
  You can also use them to scope user permissions by granting a user
  permission to access or change only resources with certain tag values. In
  CloudWatch Events, rules can be tagged.

  Tags don't have any semantic meaning to AWS and are interpreted strictly as
  strings of characters.

  You can use the `TagResource` action with a rule that already has tags. If
  you specify a new tag key for the rule, this tag is appended to the list of
  tags associated with the rule. If you specify a tag key that is already
  associated with the rule, the new tag value that you specify replaces the
  previous value for that tag.

  You can associate as many as 50 tags with a resource.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Tests whether the specified event pattern matches the provided event.

  Most services in AWS treat : or / as the same character in Amazon Resource
  Names (ARNs). However, CloudWatch Events uses an exact match in event
  patterns and rules. Be sure to use the correct ARN characters when creating
  event patterns so that they match the ARN syntax in the event you want to
  match.
  """
  def test_event_pattern(client, input, options \\ []) do
    request(client, "TestEventPattern", input, options)
  end

  @doc """
  Removes one or more tags from the specified CloudWatch Events resource. In
  CloudWatch Events, rules can be tagged.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "events"}
    host = get_host("events", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AWSEvents.#{action}"}]
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
