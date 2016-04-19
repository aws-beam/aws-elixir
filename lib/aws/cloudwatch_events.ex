# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.CloudWatch.Events do
  @moduledoc """
  Amazon CloudWatch Events helps you to respond to state changes in your AWS
  resources. When your resources change state they automatically send events
  into an event stream. You can create rules that match selected events in
  the stream and route them to targets to take action. You can also use rules
  to take action on a pre-determined schedule. For example, you can configure
  rules to:

  <ul> <li>Automatically invoke an AWS Lambda function to update DNS entries
  when an event notifies you that Amazon EC2 instance enters the running
  state.</li> <li>Direct specific API records from CloudTrail to an Amazon
  Kinesis stream for detailed analysis of potential security or availability
  risks.</li> <li>Periodically invoke a built-in target to create a snapshot
  of an Amazon EBS volume.</li> </ul> For more information about Amazon
  CloudWatch Events features, see the [Amazon CloudWatch Developer
  Guide](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide).
  """

  @doc """
  Deletes a rule. You must remove all targets from a rule using
  `RemoveTargets` before you can delete the rule.

  **Note:** When you delete a rule, incoming events might still continue to
  match to the deleted rule. Please allow a short period of time for changes
  to take effect.
  """
  def delete_rule(client, input, options \\ []) do
    request(client, "DeleteRule", input, options)
  end

  @doc """
  Describes the details of the specified rule.
  """
  def describe_rule(client, input, options \\ []) do
    request(client, "DescribeRule", input, options)
  end

  @doc """
  Disables a rule. A disabled rule won't match any events, and won't
  self-trigger if it has a schedule expression.

  **Note:** When you disable a rule, incoming events might still continue to
  match to the disabled rule. Please allow a short period of time for changes
  to take effect.
  """
  def disable_rule(client, input, options \\ []) do
    request(client, "DisableRule", input, options)
  end

  @doc """
  Enables a rule. If the rule does not exist, the operation fails.

  **Note:** When you enable a rule, incoming events might not immediately
  start matching to a newly enabled rule. Please allow a short period of time
  for changes to take effect.
  """
  def enable_rule(client, input, options \\ []) do
    request(client, "EnableRule", input, options)
  end

  @doc """
  Lists the names of the rules that the given target is put to. You can see
  which of the rules in Amazon CloudWatch Events can invoke a specific target
  in your account. If you have more rules in your account than the given
  limit, the results will be paginated. In that case, use the next token
  returned in the response and repeat ListRulesByTarget until the NextToken
  in the response is returned as null.
  """
  def list_rule_names_by_target(client, input, options \\ []) do
    request(client, "ListRuleNamesByTarget", input, options)
  end

  @doc """
  Lists the Amazon CloudWatch Events rules in your account. You can either
  list all the rules or you can provide a prefix to match to the rule names.
  If you have more rules in your account than the given limit, the results
  will be paginated. In that case, use the next token returned in the
  response and repeat ListRules until the NextToken in the response is
  returned as null.
  """
  def list_rules(client, input, options \\ []) do
    request(client, "ListRules", input, options)
  end

  @doc """
  Lists of targets assigned to the rule.
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
  Creates or updates a rule. Rules are enabled by default, or based on value
  of the State parameter. You can disable a rule using `DisableRule`.

  **Note:** When you create or update a rule, incoming events might not
  immediately start matching to new or updated rules. Please allow a short
  period of time for changes to take effect.

  A rule must contain at least an EventPattern or ScheduleExpression. Rules
  with EventPatterns are triggered when a matching event is observed. Rules
  with ScheduleExpressions self-trigger based on the given schedule. A rule
  can have both an EventPattern and a ScheduleExpression, in which case the
  rule will trigger on matching events as well as on a schedule.

  **Note:** Most services in AWS treat : or / as the same character in Amazon
  Resource Names (ARNs). However, CloudWatch Events uses an exact match in
  event patterns and rules. Be sure to use the correct ARN characters when
  creating event patterns so that they match the ARN syntax in the event you
  want to match.
  """
  def put_rule(client, input, options \\ []) do
    request(client, "PutRule", input, options)
  end

  @doc """
  Adds target(s) to a rule. Targets are the resources that can be invoked
  when a rule is triggered. For example, AWS Lambda functions, Amazon Kinesis
  streams, and built-in targets. Updates the target(s) if they are already
  associated with the role. In other words, if there is already a target with
  the given target ID, then the target associated with that ID is updated.

  In order to be able to make API calls against the resources you own, Amazon
  CloudWatch Events needs the appropriate permissions. For AWS Lambda and
  Amazon SNS resources, CloudWatch Events relies on resource-based policies.
  For Amazon Kinesis streams, CloudWatch Events relies on IAM roles. For more
  information, see [Permissions for Sending Events to
  Targets](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/EventsTargetPermissions.html)
  in the ***Amazon CloudWatch Developer Guide***.

  **Input** and **InputPath** are mutually-exclusive and optional parameters
  of a target. When a rule is triggered due to a matched event, if for a
  target:

  <ul> <li>Neither **Input** nor **InputPath** is specified, then the entire
  event is passed to the target in JSON form.</li> <li> **InputPath** is
  specified in the form of JSONPath (e.g. **$.detail**), then only the part
  of the event specified in the path is passed to the target (e.g. only the
  detail part of the event is passed). </li> <li> **Input** is specified in
  the form of a valid JSON, then the matched event is overridden with this
  constant.</li> </ul> **Note:** When you add targets to a rule, when the
  associated rule triggers, new or updated targets might not be immediately
  invoked. Please allow a short period of time for changes to take effect.
  """
  def put_targets(client, input, options \\ []) do
    request(client, "PutTargets", input, options)
  end

  @doc """
  Removes target(s) from a rule so that when the rule is triggered, those
  targets will no longer be invoked.

  **Note:** When you remove a target, when the associated rule triggers,
  removed targets might still continue to be invoked. Please allow a short
  period of time for changes to take effect.
  """
  def remove_targets(client, input, options \\ []) do
    request(client, "RemoveTargets", input, options)
  end

  @doc """
  Tests whether an event pattern matches the provided event.

  **Note:** Most services in AWS treat : or / as the same character in Amazon
  Resource Names (ARNs). However, CloudWatch Events uses an exact match in
  event patterns and rules. Be sure to use the correct ARN characters when
  creating event patterns so that they match the ARN syntax in the event you
  want to match.
  """
  def test_event_pattern(client, input, options \\ []) do
    request(client, "TestEventPattern", input, options)
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
