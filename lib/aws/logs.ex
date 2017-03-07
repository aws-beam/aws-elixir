# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Logs do
  @moduledoc """
  You can use Amazon CloudWatch Logs to monitor, store, and access your log
  files from EC2 instances, Amazon CloudTrail, or other sources. You can then
  retrieve the associated log data from CloudWatch Logs using the Amazon
  CloudWatch console, the CloudWatch Logs commands in the AWS CLI, the
  CloudWatch Logs API, or the CloudWatch Logs SDK.

  You can use CloudWatch Logs to:

  <ul> <li> **Monitor Logs from Amazon EC2 Instances in Real-time**: You can
  use CloudWatch Logs to monitor applications and systems using log data. For
  example, CloudWatch Logs can track the number of errors that occur in your
  application logs and send you a notification whenever the rate of errors
  exceeds a threshold you specify. CloudWatch Logs uses your log data for
  monitoring; so, no code changes are required. For example, you can monitor
  application logs for specific literal terms (such as
  "NullReferenceException") or count the number of occurrences of a literal
  term at a particular position in log data (such as "404" status codes in an
  Apache access log). When the term you are searching for is found,
  CloudWatch Logs reports the data to a Amazon CloudWatch metric that you
  specify.

  </li> <li> **Monitor Amazon CloudTrail Logged Events**: You can create
  alarms in Amazon CloudWatch and receive notifications of particular API
  activity as captured by CloudTrail and use the notification to perform
  troubleshooting.

  </li> <li> **Archive Log Data**: You can use CloudWatch Logs to store your
  log data in highly durable storage. You can change the log retention
  setting so that any log events older than this setting are automatically
  deleted. The CloudWatch Logs agent makes it easy to quickly send both
  rotated and non-rotated log data off of a host and into the log service.
  You can then access the raw log data when you need it.

  </li> </ul>
  """

  @doc """
  Cancels the specified export task.

  The task must be in the `PENDING` or `RUNNING` state.
  """
  def cancel_export_task(client, input, options \\ []) do
    request(client, "CancelExportTask", input, options)
  end

  @doc """
  Creates an export task, which allows you to efficiently export data from a
  log group to an Amazon S3 bucket.

  This is an asynchronous call. If all the required information is provided,
  this operation initiates an export task and responds with the ID of the
  task. After the task has started, you can use `DescribeExportTasks` to get
  the status of the export task. Each account can only have one active
  (`RUNNING` or `PENDING`) export task at a time. To cancel an export task,
  use `CancelExportTask`.

  You can export logs from multiple log groups or multiple time ranges to the
  same S3 bucket. To separate out log data for each export task, you can
  specify a prefix that will be used as the Amazon S3 key prefix for all
  exported objects.
  """
  def create_export_task(client, input, options \\ []) do
    request(client, "CreateExportTask", input, options)
  end

  @doc """
  Creates a log group with the specified name.

  You can create up to 5000 log groups per account.

  You must use the following guidelines when naming a log group:

  <ul> <li> Log group names must be unique within a region for an AWS
  account.

  </li> <li> Log group names can be between 1 and 512 characters long.

  </li> <li> Log group names consist of the following characters: a-z, A-Z,
  0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).

  </li> </ul>
  """
  def create_log_group(client, input, options \\ []) do
    request(client, "CreateLogGroup", input, options)
  end

  @doc """
  Creates a log stream for the specified log group.

  There is no limit on the number of log streams that you can create for a
  log group.

  You must use the following guidelines when naming a log stream:

  <ul> <li> Log stream names must be unique within the log group.

  </li> <li> Log stream names can be between 1 and 512 characters long.

  </li> <li> The ':' (colon) and '*' (asterisk) characters are not allowed.

  </li> </ul>
  """
  def create_log_stream(client, input, options \\ []) do
    request(client, "CreateLogStream", input, options)
  end

  @doc """
  Deletes the specified destination, and eventually disables all the
  subscription filters that publish to it. This operation does not delete the
  physical resource encapsulated by the destination.
  """
  def delete_destination(client, input, options \\ []) do
    request(client, "DeleteDestination", input, options)
  end

  @doc """
  Deletes the specified log group and permanently deletes all the archived
  log events associated with the log group.
  """
  def delete_log_group(client, input, options \\ []) do
    request(client, "DeleteLogGroup", input, options)
  end

  @doc """
  Deletes the specified log stream and permanently deletes all the archived
  log events associated with the log stream.
  """
  def delete_log_stream(client, input, options \\ []) do
    request(client, "DeleteLogStream", input, options)
  end

  @doc """
  Deletes the specified metric filter.
  """
  def delete_metric_filter(client, input, options \\ []) do
    request(client, "DeleteMetricFilter", input, options)
  end

  @doc """
  Deletes the specified retention policy.

  Log events do not expire if they belong to log groups without a retention
  policy.
  """
  def delete_retention_policy(client, input, options \\ []) do
    request(client, "DeleteRetentionPolicy", input, options)
  end

  @doc """
  Deletes the specified subscription filter.
  """
  def delete_subscription_filter(client, input, options \\ []) do
    request(client, "DeleteSubscriptionFilter", input, options)
  end

  @doc """
  Lists all your destinations. The results are ASCII-sorted by destination
  name.
  """
  def describe_destinations(client, input, options \\ []) do
    request(client, "DescribeDestinations", input, options)
  end

  @doc """
  Lists the specified export tasks. You can list all your export tasks or
  filter the results based on task ID or task status.
  """
  def describe_export_tasks(client, input, options \\ []) do
    request(client, "DescribeExportTasks", input, options)
  end

  @doc """
  Lists the specified log groups. You can list all your log groups or filter
  the results by prefix. The results are ASCII-sorted by log group name.
  """
  def describe_log_groups(client, input, options \\ []) do
    request(client, "DescribeLogGroups", input, options)
  end

  @doc """
  Lists the log streams for the specified log group. You can list all the log
  streams or filter the results by prefix. You can also control how the
  results are ordered.

  This operation has a limit of five transactions per second, after which
  transactions are throttled.
  """
  def describe_log_streams(client, input, options \\ []) do
    request(client, "DescribeLogStreams", input, options)
  end

  @doc """
  Lists the specified metric filters. You can list all the metric filters or
  filter the results by log name, prefix, metric name, and metric namespace.
  The results are ASCII-sorted by filter name.
  """
  def describe_metric_filters(client, input, options \\ []) do
    request(client, "DescribeMetricFilters", input, options)
  end

  @doc """
  Lists the subscription filters for the specified log group. You can list
  all the subscription filters or filter the results by prefix. The results
  are ASCII-sorted by filter name.
  """
  def describe_subscription_filters(client, input, options \\ []) do
    request(client, "DescribeSubscriptionFilters", input, options)
  end

  @doc """
  Lists log events from the specified log group. You can list all the log
  events or filter the results using a filter pattern, a time range, and the
  name of the log stream.

  By default, this operation returns as many log events as can fit in 1MB (up
  to 10,000 log events), or all the events found within the time range that
  you specify. If the results include a token, then there are more log events
  available, and you can get additional results by specifying the token in a
  subsequent call.
  """
  def filter_log_events(client, input, options \\ []) do
    request(client, "FilterLogEvents", input, options)
  end

  @doc """
  Lists log events from the specified log stream. You can list all the log
  events or filter using a time range.

  By default, this operation returns as many log events as can fit in a
  response size of 1MB (up to 10,000 log events). If the results include
  tokens, there are more log events available. You can get additional log
  events by specifying one of the tokens in a subsequent call.
  """
  def get_log_events(client, input, options \\ []) do
    request(client, "GetLogEvents", input, options)
  end

  @doc """
  Lists the tags for the specified log group.

  To add tags, use `TagLogGroup`. To remove tags, use `UntagLogGroup`.
  """
  def list_tags_log_group(client, input, options \\ []) do
    request(client, "ListTagsLogGroup", input, options)
  end

  @doc """
  Creates or updates a destination. A destination encapsulates a physical
  resource (such as a Kinesis stream) and enables you to subscribe to a
  real-time stream of log events of a different account, ingested using
  `PutLogEvents`. Currently, the only supported physical resource is a Amazon
  Kinesis stream belonging to the same account as the destination.

  A destination controls what is written to its Amazon Kinesis stream through
  an access policy. By default, `PutDestination` does not set any access
  policy with the destination, which means a cross-account user cannot call
  `PutSubscriptionFilter` against this destination. To enable this, the
  destination owner must call `PutDestinationPolicy` after `PutDestination`.
  """
  def put_destination(client, input, options \\ []) do
    request(client, "PutDestination", input, options)
  end

  @doc """
  Creates or updates an access policy associated with an existing
  destination. An access policy is an [IAM policy
  document](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html)
  that is used to authorize claims to register a subscription filter against
  a given destination.
  """
  def put_destination_policy(client, input, options \\ []) do
    request(client, "PutDestinationPolicy", input, options)
  end

  @doc """
  Uploads a batch of log events to the specified log stream.

  You must include the sequence token obtained from the response of the
  previous call. An upload in a newly created log stream does not require a
  sequence token. You can also get the sequence token using
  `DescribeLogStreams`.

  The batch of events must satisfy the following constraints:

  <ul> <li> The maximum batch size is 1,048,576 bytes, and this size is
  calculated as the sum of all event messages in UTF-8, plus 26 bytes for
  each log event.

  </li> <li> None of the log events in the batch can be more than 2 hours in
  the future.

  </li> <li> None of the log events in the batch can be older than 14 days or
  the retention period of the log group.

  </li> <li> The log events in the batch must be in chronological ordered by
  their timestamp (the time the event occurred, expressed as the number of
  milliseconds since Jan 1, 1970 00:00:00 UTC).

  </li> <li> The maximum number of log events in a batch is 10,000.

  </li> <li> A batch of log events in a single request cannot span more than
  24 hours. Otherwise, the operation fails.

  </li> </ul>
  """
  def put_log_events(client, input, options \\ []) do
    request(client, "PutLogEvents", input, options)
  end

  @doc """
  Creates or updates a metric filter and associates it with the specified log
  group. Metric filters allow you to configure rules to extract metric data
  from log events ingested through `PutLogEvents`.

  The maximum number of metric filters that can be associated with a log
  group is 100.
  """
  def put_metric_filter(client, input, options \\ []) do
    request(client, "PutMetricFilter", input, options)
  end

  @doc """
  Sets the retention of the specified log group. A retention policy allows
  you to configure the number of days you want to retain log events in the
  specified log group.
  """
  def put_retention_policy(client, input, options \\ []) do
    request(client, "PutRetentionPolicy", input, options)
  end

  @doc """
  Creates or updates a subscription filter and associates it with the
  specified log group. Subscription filters allow you to subscribe to a
  real-time stream of log events ingested through `PutLogEvents` and have
  them delivered to a specific destination. Currently, the supported
  destinations are:

  <ul> <li> An Amazon Kinesis stream belonging to the same account as the
  subscription filter, for same-account delivery.

  </li> <li> A logical destination that belongs to a different account, for
  cross-account delivery.

  </li> <li> An Amazon Kinesis Firehose stream that belongs to the same
  account as the subscription filter, for same-account delivery.

  </li> <li> An AWS Lambda function that belongs to the same account as the
  subscription filter, for same-account delivery.

  </li> </ul> There can only be one subscription filter associated with a log
  group.
  """
  def put_subscription_filter(client, input, options \\ []) do
    request(client, "PutSubscriptionFilter", input, options)
  end

  @doc """
  Adds or updates the specified tags for the specified log group.

  To list the tags for a log group, use `ListTagsLogGroup`. To remove tags,
  use `UntagLogGroup`.

  For more information about tags, see [Tag Log Groups in Amazon CloudWatch
  Logs](http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/log-group-tagging.html)
  in the *Amazon CloudWatch Logs User Guide*.
  """
  def tag_log_group(client, input, options \\ []) do
    request(client, "TagLogGroup", input, options)
  end

  @doc """
  Tests the filter pattern of a metric filter against a sample of log event
  messages. You can use this operation to validate the correctness of a
  metric filter pattern.
  """
  def test_metric_filter(client, input, options \\ []) do
    request(client, "TestMetricFilter", input, options)
  end

  @doc """
  Removes the specified tags from the specified log group.

  To list the tags for a log group, use `ListTagsLogGroup`. To add tags, use
  `UntagLogGroup`.
  """
  def untag_log_group(client, input, options \\ []) do
    request(client, "UntagLogGroup", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "logs"}
    host = get_host("logs", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "Logs_20140328.#{action}"}]
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
