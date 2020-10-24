# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudWatchEvents do
  @moduledoc """
  Amazon EventBridge helps you to respond to state changes in your AWS
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

  </li> </ul> For more information about the features of Amazon EventBridge,
  see the [Amazon EventBridge User
  Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide).
  """

  @doc """
  Activates a partner event source that has been deactivated. Once activated,
  your matching event bus will start receiving events from the event source.
  """
  def activate_event_source(client, input, options \\ []) do
    request(client, "ActivateEventSource", input, options)
  end

  @doc """
  Creates a new event bus within your account. This can be a custom event bus
  which you can use to receive events from your custom applications and
  services, or it can be a partner event bus which can be matched to a
  partner event source.
  """
  def create_event_bus(client, input, options \\ []) do
    request(client, "CreateEventBus", input, options)
  end

  @doc """
  Called by an SaaS partner to create a partner event source. This operation
  is not used by AWS customers.

  Each partner event source can be used by one AWS account to create a
  matching partner event bus in that AWS account. A SaaS partner must create
  one partner event source for each AWS account that wants to receive those
  event types.

  A partner event source creates events based on resources within the SaaS
  partner's service or application.

  An AWS account that creates a partner event bus that matches the partner
  event source can use that event bus to receive events from the partner, and
  then process them using AWS Events rules and targets.

  Partner event source names follow this format:

  ` *partner_name*/*event_namespace*/*event_name* `

  *partner_name* is determined during partner registration and identifies the
  partner to AWS customers. *event_namespace* is determined by the partner
  and is a way for the partner to categorize their events. *event_name* is
  determined by the partner, and should uniquely identify an event-generating
  resource within the partner system. The combination of *event_namespace*
  and *event_name* should help AWS customers decide whether to create an
  event bus to receive these events.
  """
  def create_partner_event_source(client, input, options \\ []) do
    request(client, "CreatePartnerEventSource", input, options)
  end

  @doc """
  You can use this operation to temporarily stop receiving events from the
  specified partner event source. The matching event bus is not deleted.

  When you deactivate a partner event source, the source goes into PENDING
  state. If it remains in PENDING state for more than two weeks, it is
  deleted.

  To activate a deactivated partner event source, use `ActivateEventSource`.
  """
  def deactivate_event_source(client, input, options \\ []) do
    request(client, "DeactivateEventSource", input, options)
  end

  @doc """
  Deletes the specified custom event bus or partner event bus. All rules
  associated with this event bus need to be deleted. You can't delete your
  account's default event bus.
  """
  def delete_event_bus(client, input, options \\ []) do
    request(client, "DeleteEventBus", input, options)
  end

  @doc """
  This operation is used by SaaS partners to delete a partner event source.
  This operation is not used by AWS customers.

  When you delete an event source, the status of the corresponding partner
  event bus in the AWS customer account becomes DELETED.

  <p/>
  """
  def delete_partner_event_source(client, input, options \\ []) do
    request(client, "DeletePartnerEventSource", input, options)
  end

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
  Displays details about an event bus in your account. This can include the
  external AWS accounts that are permitted to write events to your default
  event bus, and the associated policy. For custom event buses and partner
  event buses, it displays the name, ARN, policy, state, and creation time.

  To enable your account to receive events from other accounts on its default
  event bus, use `PutPermission`.

  For more information about partner event buses, see `CreateEventBus`.
  """
  def describe_event_bus(client, input, options \\ []) do
    request(client, "DescribeEventBus", input, options)
  end

  @doc """
  This operation lists details about a partner event source that is shared
  with your account.
  """
  def describe_event_source(client, input, options \\ []) do
    request(client, "DescribeEventSource", input, options)
  end

  @doc """
  An SaaS partner can use this operation to list details about a partner
  event source that they have created. AWS customers do not use this
  operation. Instead, AWS customers can use `DescribeEventSource` to see
  details about a partner event source that is shared with them.
  """
  def describe_partner_event_source(client, input, options \\ []) do
    request(client, "DescribePartnerEventSource", input, options)
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
  Lists all the event buses in your account, including the default event bus,
  custom event buses, and partner event buses.
  """
  def list_event_buses(client, input, options \\ []) do
    request(client, "ListEventBuses", input, options)
  end

  @doc """
  You can use this to see all the partner event sources that have been shared
  with your AWS account. For more information about partner event sources,
  see `CreateEventBus`.
  """
  def list_event_sources(client, input, options \\ []) do
    request(client, "ListEventSources", input, options)
  end

  @doc """
  An SaaS partner can use this operation to display the AWS account ID that a
  particular partner event source name is associated with. This operation is
  not used by AWS customers.
  """
  def list_partner_event_source_accounts(client, input, options \\ []) do
    request(client, "ListPartnerEventSourceAccounts", input, options)
  end

  @doc """
  An SaaS partner can use this operation to list all the partner event source
  names that they have created. This operation is not used by AWS customers.
  """
  def list_partner_event_sources(client, input, options \\ []) do
    request(client, "ListPartnerEventSources", input, options)
  end

  @doc """
  Lists the rules for the specified target. You can see which of the rules in
  Amazon EventBridge can invoke a specific target in your account.
  """
  def list_rule_names_by_target(client, input, options \\ []) do
    request(client, "ListRuleNamesByTarget", input, options)
  end

  @doc """
  Lists your Amazon EventBridge rules. You can either list all the rules or
  you can provide a prefix to match to the rule names.

  ListRules does not list the targets of a rule. To see the targets
  associated with a rule, use `ListTargetsByRule`.
  """
  def list_rules(client, input, options \\ []) do
    request(client, "ListRules", input, options)
  end

  @doc """
  Displays the tags associated with an EventBridge resource. In EventBridge,
  rules and event buses can be tagged.
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
  Sends custom events to Amazon EventBridge so that they can be matched to
  rules.
  """
  def put_events(client, input, options \\ []) do
    request(client, "PutEvents", input, options)
  end

  @doc """
  This is used by SaaS partners to write events to a customer's partner event
  bus. AWS customers do not use this operation.
  """
  def put_partner_events(client, input, options \\ []) do
    request(client, "PutPartnerEvents", input, options)
  end

  @doc """
  Running `PutPermission` permits the specified AWS account or AWS
  organization to put events to the specified *event bus*. Amazon EventBridge
  (CloudWatch Events) rules in your account are triggered by these events
  arriving to an event bus in your account.

  For another account to send events to your account, that external account
  must have an EventBridge rule with your account's event bus as a target.

  To enable multiple AWS accounts to put events to your event bus, run
  `PutPermission` once for each of these accounts. Or, if all the accounts
  are members of the same AWS organization, you can run `PutPermission` once
  specifying `Principal` as "*" and specifying the AWS organization ID in
  `Condition`, to grant permissions to all accounts in that organization.

  If you grant permissions using an organization, then accounts in that
  organization must specify a `RoleArn` with proper permissions when they use
  `PutTarget` to add your account's event bus as a target. For more
  information, see [Sending and Receiving Events Between AWS
  Accounts](https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html)
  in the *Amazon EventBridge User Guide*.

  The permission policy on the default event bus cannot exceed 10 KB in size.
  """
  def put_permission(client, input, options \\ []) do
    request(client, "PutPermission", input, options)
  end

  @doc """
  Creates or updates the specified rule. Rules are enabled by default, or
  based on value of the state. You can disable a rule using `DisableRule`.

  A single rule watches for events from a single event bus. Events generated
  by AWS services go to your account's default event bus. Events generated by
  SaaS partner services or applications go to the matching partner event bus.
  If you have custom applications or services, you can specify whether their
  events go to your default event bus or a custom event bus that you have
  created. For more information, see `CreateEventBus`.

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
  Names (ARNs). However, EventBridge uses an exact match in event patterns
  and rules. Be sure to use the correct ARN characters when creating event
  patterns so that they match the ARN syntax in the event you want to match.

  In EventBridge, it is possible to create rules that lead to infinite loops,
  where a rule is fired repeatedly. For example, a rule might detect that
  ACLs have changed on an S3 bucket, and trigger software to change them to
  the desired state. If the rule is not written carefully, the subsequent
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

  You can configure the following as targets for Events:

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

  </li> <li> Amazon API Gateway REST APIs

  </li> <li> Redshift Clusters to invoke Data API ExecuteStatement on

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
  EventBridge (CloudWatch Events) needs the appropriate permissions. For AWS
  Lambda and Amazon SNS resources, EventBridge relies on resource-based
  policies. For EC2 instances, Kinesis data streams, AWS Step Functions state
  machines and API Gateway REST APIs, EventBridge relies on IAM roles that
  you specify in the `RoleARN` argument in `PutTargets`. For more
  information, see [Authentication and Access
  Control](https://docs.aws.amazon.com/eventbridge/latest/userguide/auth-and-access-control-eventbridge.html)
  in the *Amazon EventBridge User Guide*.

  If another AWS account is in the same region and has granted you permission
  (using `PutPermission`), you can send events to that account. Set that
  account's event bus as a target of the rules in your account. To send the
  matched events to the other account, specify that account's event bus as
  the `Arn` value when you run `PutTargets`. If your account sends events to
  another account, your account is charged for each sent event. Each event
  sent to another account is charged as a custom event. The account receiving
  the event is not charged. For more information, see [Amazon EventBridge
  (CloudWatch Events) Pricing](https://aws.amazon.com/eventbridge/pricing/).

  <note> `Input`, `InputPath`, and `InputTransformer` are not available with
  `PutTarget` if the target is an event bus of a different AWS account.

  </note> If you are setting the event bus of another account as the target,
  and that account granted permission to your account through an organization
  instead of directly by the account ID, then you must specify a `RoleArn`
  with proper permissions in the `Target` structure. For more information,
  see [Sending and Receiving Events Between AWS
  Accounts](https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html)
  in the *Amazon EventBridge User Guide*.

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
  the specified event bus. Specify the account to revoke by the `StatementId`
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
  Assigns one or more tags (key-value pairs) to the specified EventBridge
  resource. Tags can help you organize and categorize your resources. You can
  also use them to scope user permissions by granting a user permission to
  access or change only resources with certain tag values. In EventBridge,
  rules and event buses can be tagged.

  Tags don't have any semantic meaning to AWS and are interpreted strictly as
  strings of characters.

  You can use the `TagResource` action with a resource that already has tags.
  If you specify a new tag key, this tag is appended to the list of tags
  associated with the resource. If you specify a tag key that is already
  associated with the resource, the new tag value that you specify replaces
  the previous value for that tag.

  You can associate as many as 50 tags with a resource.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Tests whether the specified event pattern matches the provided event.

  Most services in AWS treat : or / as the same character in Amazon Resource
  Names (ARNs). However, EventBridge uses an exact match in event patterns
  and rules. Be sure to use the correct ARN characters when creating event
  patterns so that they match the ARN syntax in the event you want to match.
  """
  def test_event_pattern(client, input, options \\ []) do
    request(client, "TestEventPattern", input, options)
  end

  @doc """
  Removes one or more tags from the specified EventBridge resource. In Amazon
  EventBridge (CloudWatch Events, rules and event buses can be tagged.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "events"}
    host = build_host("events", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSEvents.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(url, payload, headers, options)
  end

  defp post(url, payload, headers, options) do
    case AWS.HTTP.request(:post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: 200, body: body} = response} ->
        {:ok, AWS.JSON.decode!(body), response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

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
end
