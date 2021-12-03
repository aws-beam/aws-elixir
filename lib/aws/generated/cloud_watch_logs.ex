# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudWatchLogs do
  @moduledoc """
  You can use Amazon CloudWatch Logs to monitor, store, and access your log files
  from EC2 instances, CloudTrail, and other sources.

  You can then retrieve the associated log data from CloudWatch Logs using the
  CloudWatch console, CloudWatch Logs commands in the Amazon Web Services CLI,
  CloudWatch Logs API, or CloudWatch Logs SDK.

  You can use CloudWatch Logs to:

    * **Monitor logs from EC2 instances in real-time**: You can use
  CloudWatch Logs to monitor applications and systems using log data. For example,
  CloudWatch Logs can track the number of errors that occur in your application
  logs and send you a notification whenever the rate of errors exceeds a threshold
  that you specify. CloudWatch Logs uses your log data for monitoring so no code
  changes are required. For example, you can monitor application logs for specific
  literal terms (such as "NullReferenceException") or count the number of
  occurrences of a literal term at a particular position in log data (such as
  "404" status codes in an Apache access log). When the term you are searching for
  is found, CloudWatch Logs reports the data to a CloudWatch metric that you
  specify.

    * **Monitor CloudTrail logged events**: You can create alarms in
  CloudWatch and receive notifications of particular API activity as captured by
  CloudTrail. You can use the notification to perform troubleshooting.

    * **Archive log data**: You can use CloudWatch Logs to store your
  log data in highly durable storage. You can change the log retention setting so
  that any log events older than this setting are automatically deleted. The
  CloudWatch Logs agent makes it easy to quickly send both rotated and non-rotated
  log data off of a host and into the log service. You can then access the raw log
  data when you need it.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2014-03-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "logs",
      global?: false,
      protocol: "json",
      service_id: "CloudWatch Logs",
      signature_version: "v4",
      signing_name: "logs",
      target_prefix: "Logs_20140328"
    }
  end

  @doc """
  Associates the specified Key Management Service customer master key (CMK) with
  the specified log group.

  Associating an KMS CMK with a log group overrides any existing associations
  between the log group and a CMK. After a CMK is associated with a log group, all
  newly ingested data for the log group is encrypted using the CMK. This
  association is stored as long as the data encrypted with the CMK is still within
  CloudWatch Logs. This enables CloudWatch Logs to decrypt this data whenever it
  is requested.

  CloudWatch Logs supports only symmetric CMKs. Do not use an associate an
  asymmetric CMK with your log group. For more information, see [Using Symmetric and Asymmetric
  Keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html).

  It can take up to 5 minutes for this operation to take effect.

  If you attempt to associate a CMK with a log group but the CMK does not exist or
  the CMK is disabled, you receive an `InvalidParameterException` error.
  """
  def associate_kms_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateKmsKey", input, options)
  end

  @doc """
  Cancels the specified export task.

  The task must be in the `PENDING` or `RUNNING` state.
  """
  def cancel_export_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelExportTask", input, options)
  end

  @doc """
  Creates an export task, which allows you to efficiently export data from a log
  group to an Amazon S3 bucket.

  When you perform a `CreateExportTask` operation, you must use credentials that
  have permission to write to the S3 bucket that you specify as the destination.

  This is an asynchronous call. If all the required information is provided, this
  operation initiates an export task and responds with the ID of the task. After
  the task has started, you can use
  [DescribeExportTasks](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeExportTasks.html) to get the status of the export task. Each account can only have one active
  (`RUNNING` or `PENDING`) export task at a time. To cancel an export task, use
  [CancelExportTask](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CancelExportTask.html).

  You can export logs from multiple log groups or multiple time ranges to the same
  S3 bucket. To separate out log data for each export task, you can specify a
  prefix to be used as the Amazon S3 key prefix for all exported objects.

  Exporting to S3 buckets that are encrypted with AES-256 is supported. Exporting
  to S3 buckets encrypted with SSE-KMS is not supported.
  """
  def create_export_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateExportTask", input, options)
  end

  @doc """
  Creates a log group with the specified name.

  You can create up to 20,000 log groups per account.

  You must use the following guidelines when naming a log group:

    * Log group names must be unique within a region for an Amazon Web
  Services account.

    * Log group names can be between 1 and 512 characters long.

    * Log group names consist of the following characters: a-z, A-Z,
  0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), '.' (period), and '#'
  (number sign)

  When you create a log group, by default the log events in the log group never
  expire. To set a retention policy so that events expire and are deleted after a
  specified time, use
  [PutRetentionPolicy](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutRetentionPolicy.html).  If you associate a Key Management Service customer master key (CMK) with the log
  group, ingested data is encrypted using the CMK. This association is stored as
  long as the data encrypted with the CMK is still within CloudWatch Logs. This
  enables CloudWatch Logs to decrypt this data whenever it is requested.

  If you attempt to associate a CMK with the log group but the CMK does not exist
  or the CMK is disabled, you receive an `InvalidParameterException` error.

  CloudWatch Logs supports only symmetric CMKs. Do not associate an asymmetric CMK
  with your log group. For more information, see [Using Symmetric and Asymmetric
  Keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html).
  """
  def create_log_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLogGroup", input, options)
  end

  @doc """
  Creates a log stream for the specified log group.

  A log stream is a sequence of log events that originate from a single source,
  such as an application instance or a resource that is being monitored.

  There is no limit on the number of log streams that you can create for a log
  group. There is a limit of 50 TPS on `CreateLogStream` operations, after which
  transactions are throttled.

  You must use the following guidelines when naming a log stream:

    * Log stream names must be unique within the log group.

    * Log stream names can be between 1 and 512 characters long.

    * The ':' (colon) and '*' (asterisk) characters are not allowed.
  """
  def create_log_stream(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLogStream", input, options)
  end

  @doc """
  Deletes the specified destination, and eventually disables all the subscription
  filters that publish to it.

  This operation does not delete the physical resource encapsulated by the
  destination.
  """
  def delete_destination(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDestination", input, options)
  end

  @doc """
  Deletes the specified log group and permanently deletes all the archived log
  events associated with the log group.
  """
  def delete_log_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLogGroup", input, options)
  end

  @doc """
  Deletes the specified log stream and permanently deletes all the archived log
  events associated with the log stream.
  """
  def delete_log_stream(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLogStream", input, options)
  end

  @doc """
  Deletes the specified metric filter.
  """
  def delete_metric_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteMetricFilter", input, options)
  end

  @doc """
  Deletes a saved CloudWatch Logs Insights query definition.

  A query definition contains details about a saved CloudWatch Logs Insights
  query.

  Each `DeleteQueryDefinition` operation can delete one query definition.

  You must have the `logs:DeleteQueryDefinition` permission to be able to perform
  this operation.
  """
  def delete_query_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteQueryDefinition", input, options)
  end

  @doc """
  Deletes a resource policy from this account.

  This revokes the access of the identities in that policy to put log events to
  this account.
  """
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes the specified retention policy.

  Log events do not expire if they belong to log groups without a retention
  policy.
  """
  def delete_retention_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRetentionPolicy", input, options)
  end

  @doc """
  Deletes the specified subscription filter.
  """
  def delete_subscription_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSubscriptionFilter", input, options)
  end

  @doc """
  Lists all your destinations.

  The results are ASCII-sorted by destination name.
  """
  def describe_destinations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDestinations", input, options)
  end

  @doc """
  Lists the specified export tasks.

  You can list all your export tasks or filter the results based on task ID or
  task status.
  """
  def describe_export_tasks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeExportTasks", input, options)
  end

  @doc """
  Lists the specified log groups.

  You can list all your log groups or filter the results by prefix. The results
  are ASCII-sorted by log group name.

  CloudWatch Logs doesn’t support IAM policies that control access to the
  `DescribeLogGroups` action by using the `aws:ResourceTag/*key-name* ` condition
  key. Other CloudWatch Logs actions do support the use of the
  `aws:ResourceTag/*key-name* ` condition key to control access. For more
  information about using tags to control access, see [Controlling access to Amazon Web Services resources using
  tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).
  """
  def describe_log_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLogGroups", input, options)
  end

  @doc """
  Lists the log streams for the specified log group.

  You can list all the log streams or filter the results by prefix. You can also
  control how the results are ordered.

  This operation has a limit of five transactions per second, after which
  transactions are throttled.
  """
  def describe_log_streams(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLogStreams", input, options)
  end

  @doc """
  Lists the specified metric filters.

  You can list all of the metric filters or filter the results by log name,
  prefix, metric name, or metric namespace. The results are ASCII-sorted by filter
  name.
  """
  def describe_metric_filters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeMetricFilters", input, options)
  end

  @doc """
  Returns a list of CloudWatch Logs Insights queries that are scheduled,
  executing, or have been executed recently in this account.

  You can request all queries or limit it to queries of a specific log group or
  queries with a certain status.
  """
  def describe_queries(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeQueries", input, options)
  end

  @doc """
  This operation returns a paginated list of your saved CloudWatch Logs Insights
  query definitions.

  You can use the `queryDefinitionNamePrefix` parameter to limit the results to
  only the query definitions that have names that start with a certain string.
  """
  def describe_query_definitions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeQueryDefinitions", input, options)
  end

  @doc """
  Lists the resource policies in this account.
  """
  def describe_resource_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeResourcePolicies", input, options)
  end

  @doc """
  Lists the subscription filters for the specified log group.

  You can list all the subscription filters or filter the results by prefix. The
  results are ASCII-sorted by filter name.
  """
  def describe_subscription_filters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSubscriptionFilters", input, options)
  end

  @doc """
  Disassociates the associated Key Management Service customer master key (CMK)
  from the specified log group.

  After the KMS CMK is disassociated from the log group, CloudWatch Logs stops
  encrypting newly ingested data for the log group. All previously ingested data
  remains encrypted, and CloudWatch Logs requires permissions for the CMK whenever
  the encrypted data is requested.

  Note that it can take up to 5 minutes for this operation to take effect.
  """
  def disassociate_kms_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateKmsKey", input, options)
  end

  @doc """
  Lists log events from the specified log group.

  You can list all the log events or filter the results using a filter pattern, a
  time range, and the name of the log stream.

  By default, this operation returns as many log events as can fit in 1 MB (up to
  10,000 log events) or all the events found within the time range that you
  specify. If the results include a token, then there are more log events
  available, and you can get additional results by specifying the token in a
  subsequent call. This operation can return empty results while there are more
  log events available through the token.

  The returned log events are sorted by event timestamp, the timestamp when the
  event was ingested by CloudWatch Logs, and the ID of the `PutLogEvents` request.
  """
  def filter_log_events(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "FilterLogEvents", input, options)
  end

  @doc """
  Lists log events from the specified log stream.

  You can list all of the log events or filter using a time range.

  By default, this operation returns as many log events as can fit in a response
  size of 1MB (up to 10,000 log events). You can get additional log events by
  specifying one of the tokens in a subsequent call. This operation can return
  empty results while there are more log events available through the token.
  """
  def get_log_events(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLogEvents", input, options)
  end

  @doc """
  Returns a list of the fields that are included in log events in the specified
  log group, along with the percentage of log events that contain each field.

  The search is limited to a time period that you specify.

  In the results, fields that start with @ are fields generated by CloudWatch
  Logs. For example, `@timestamp` is the timestamp of each log event. For more
  information about the fields that are generated by CloudWatch logs, see
  [Supported Logs and Discovered Fields](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html).

  The response results are sorted by the frequency percentage, starting with the
  highest percentage.
  """
  def get_log_group_fields(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLogGroupFields", input, options)
  end

  @doc """
  Retrieves all of the fields and values of a single log event.

  All fields are retrieved, even if the original query that produced the
  `logRecordPointer` retrieved only a subset of fields. Fields are returned as
  field name/field value pairs.

  The full unparsed log event is returned within `@message`.
  """
  def get_log_record(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLogRecord", input, options)
  end

  @doc """
  Returns the results from the specified query.

  Only the fields requested in the query are returned, along with a `@ptr` field,
  which is the identifier for the log record. You can use the value of `@ptr` in a
  [GetLogRecord](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogRecord.html) operation to get the full log record.

  `GetQueryResults` does not start a query execution. To run a query, use
  [StartQuery](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html).

  If the value of the `Status` field in the output is `Running`, this operation
  returns only partial results. If you see a value of `Scheduled` or `Running` for
  the status, you can retry the operation later to see the final results.
  """
  def get_query_results(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetQueryResults", input, options)
  end

  @doc """
  Lists the tags for the specified log group.
  """
  def list_tags_log_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsLogGroup", input, options)
  end

  @doc """
  Creates or updates a destination.

  This operation is used only to create destinations for cross-account
  subscriptions.

  A destination encapsulates a physical resource (such as an Amazon Kinesis
  stream) and enables you to subscribe to a real-time stream of log events for a
  different account, ingested using
  [PutLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html).  Through an access policy, a destination controls what is written to it. By
  default, `PutDestination` does not set any access policy with the destination,
  which means a cross-account user cannot call
  [PutSubscriptionFilter](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutSubscriptionFilter.html)
  against this destination. To enable this, the destination owner must call
  [PutDestinationPolicy](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html)
  after `PutDestination`.

  To perform a `PutDestination` operation, you must also have the `iam:PassRole`
  permission.
  """
  def put_destination(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutDestination", input, options)
  end

  @doc """
  Creates or updates an access policy associated with an existing destination.

  An access policy is an [IAM policy document](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html)
  that is used to authorize claims to register a subscription filter against a
  given destination.

  If multiple Amazon Web Services accounts are sending logs to this destination,
  each sender account must be listed separately in the policy. The policy does not
  support specifying `*` as the Principal or the use of the `aws:PrincipalOrgId`
  global key.
  """
  def put_destination_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutDestinationPolicy", input, options)
  end

  @doc """
  Uploads a batch of log events to the specified log stream.

  You must include the sequence token obtained from the response of the previous
  call. An upload in a newly created log stream does not require a sequence token.
  You can also get the sequence token in the `expectedSequenceToken` field from
  `InvalidSequenceTokenException`. If you call `PutLogEvents` twice within a
  narrow time period using the same value for `sequenceToken`, both calls might be
  successful or one might be rejected.

  The batch of events must satisfy the following constraints:

    * The maximum batch size is 1,048,576 bytes. This size is calculated
  as the sum of all event messages in UTF-8, plus 26 bytes for each log event.

    * None of the log events in the batch can be more than 2 hours in
  the future.

    * None of the log events in the batch can be older than 14 days or
  older than the retention period of the log group.

    * The log events in the batch must be in chronological order by
  their timestamp. The timestamp is the time the event occurred, expressed as the
  number of milliseconds after Jan 1, 1970 00:00:00 UTC. (In Amazon Web Services
  Tools for PowerShell and the Amazon Web Services SDK for .NET, the timestamp is
  specified in .NET format: yyyy-mm-ddThh:mm:ss. For example,
  2017-09-15T13:45:30.)

    * A batch of log events in a single request cannot span more than 24
  hours. Otherwise, the operation fails.

    * The maximum number of log events in a batch is 10,000.

    * There is a quota of 5 requests per second per log stream.
  Additional requests are throttled. This quota can't be changed.

  If a call to `PutLogEvents` returns "UnrecognizedClientException" the most
  likely cause is an invalid Amazon Web Services access key ID or secret key.
  """
  def put_log_events(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutLogEvents", input, options)
  end

  @doc """
  Creates or updates a metric filter and associates it with the specified log
  group.

  Metric filters allow you to configure rules to extract metric data from log
  events ingested through
  [PutLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html).  The maximum number of metric filters that can be associated with a log group is
  100.

  When you create a metric filter, you can also optionally assign a unit and
  dimensions to the metric that is created.

  Metrics extracted from log events are charged as custom metrics. To prevent
  unexpected high charges, do not specify high-cardinality fields such as
  `IPAddress` or `requestID` as dimensions. Each different value found for a
  dimension is treated as a separate metric and accrues charges as a separate
  custom metric.

  To help prevent accidental high charges, Amazon disables a metric filter if it
  generates 1000 different name/value pairs for the dimensions that you have
  specified within a certain amount of time.

  You can also set up a billing alarm to alert you if your charges are higher than
  expected. For more information, see [ Creating a Billing Alarm to Monitor Your
  Estimated Amazon Web Services
  Charges](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html).
  """
  def put_metric_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutMetricFilter", input, options)
  end

  @doc """
  Creates or updates a query definition for CloudWatch Logs Insights.

  For more information, see [Analyzing Log Data with CloudWatch Logs Insights](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html).

  To update a query definition, specify its `queryDefinitionId` in your request.
  The values of `name`, `queryString`, and `logGroupNames` are changed to the
  values that you specify in your update operation. No current values are retained
  from the current query definition. For example, if you update a current query
  definition that includes log groups, and you don't specify the `logGroupNames`
  parameter in your update operation, the query definition changes to contain no
  log groups.

  You must have the `logs:PutQueryDefinition` permission to be able to perform
  this operation.
  """
  def put_query_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutQueryDefinition", input, options)
  end

  @doc """
  Creates or updates a resource policy allowing other Amazon Web Services services
  to put log events to this account, such as Amazon Route 53.

  An account can have up to 10 resource policies per Amazon Web Services Region.
  """
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutResourcePolicy", input, options)
  end

  @doc """
  Sets the retention of the specified log group.

  A retention policy allows you to configure the number of days for which to
  retain log events in the specified log group.
  """
  def put_retention_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutRetentionPolicy", input, options)
  end

  @doc """
  Creates or updates a subscription filter and associates it with the specified
  log group.

  Subscription filters allow you to subscribe to a real-time stream of log events
  ingested through
  [PutLogEvents](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html)
  and have them delivered to a specific destination. When log events are sent to
  the receiving service, they are Base64 encoded and compressed with the gzip
  format.

  The following destinations are supported for subscription filters:

    * An Amazon Kinesis stream belonging to the same account as the
  subscription filter, for same-account delivery.

    * A logical destination that belongs to a different account, for
  cross-account delivery.

    * An Amazon Kinesis Firehose delivery stream that belongs to the
  same account as the subscription filter, for same-account delivery.

    * An Lambda function that belongs to the same account as the
  subscription filter, for same-account delivery.

  Each log group can have up to two subscription filters associated with it. If
  you are updating an existing filter, you must specify the correct name in
  `filterName`.

  To perform a `PutSubscriptionFilter` operation, you must also have the
  `iam:PassRole` permission.
  """
  def put_subscription_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutSubscriptionFilter", input, options)
  end

  @doc """
  Schedules a query of a log group using CloudWatch Logs Insights.

  You specify the log group and time range to query and the query string to use.

  For more information, see [CloudWatch Logs Insights Query Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).

  Queries time out after 15 minutes of execution. If your queries are timing out,
  reduce the time range being searched or partition your query into a number of
  queries.
  """
  def start_query(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartQuery", input, options)
  end

  @doc """
  Stops a CloudWatch Logs Insights query that is in progress.

  If the query has already ended, the operation returns an error indicating that
  the specified query is not running.
  """
  def stop_query(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopQuery", input, options)
  end

  @doc """
  Adds or updates the specified tags for the specified log group.

  To list the tags for a log group, use
  [ListTagsLogGroup](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsLogGroup.html). To remove tags, use
  [UntagLogGroup](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagLogGroup.html).

  For more information about tags, see [Tag Log Groups in Amazon CloudWatch Logs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html#log-group-tagging)
  in the *Amazon CloudWatch Logs User Guide*.

  CloudWatch Logs doesn’t support IAM policies that prevent users from assigning
  specified tags to log groups using the `aws:Resource/*key-name* ` or
  `aws:TagKeys` condition keys. For more information about using tags to control
  access, see [Controlling access to Amazon Web Services resources using tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).
  """
  def tag_log_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagLogGroup", input, options)
  end

  @doc """
  Tests the filter pattern of a metric filter against a sample of log event
  messages.

  You can use this operation to validate the correctness of a metric filter
  pattern.
  """
  def test_metric_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TestMetricFilter", input, options)
  end

  @doc """
  Removes the specified tags from the specified log group.

  To list the tags for a log group, use
  [ListTagsLogGroup](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsLogGroup.html). To add tags, use
  [TagLogGroup](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagLogGroup.html).

  CloudWatch Logs doesn’t support IAM policies that prevent users from assigning
  specified tags to log groups using the `aws:Resource/*key-name* ` or
  `aws:TagKeys` condition keys.
  """
  def untag_log_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagLogGroup", input, options)
  end
end
