# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudTrail do
  @moduledoc """
  CloudTrail

  This is the CloudTrail API Reference.

  It provides descriptions of actions, data types, common parameters, and common
  errors for CloudTrail.

  CloudTrail is a web service that records Amazon Web Services API calls for your
  Amazon Web Services account and delivers log files to an Amazon S3 bucket. The
  recorded information includes the identity of the user, the start time of the
  Amazon Web Services API call, the source IP address, the request parameters, and
  the response elements returned by the service.

  As an alternative to the API, you can use one of the Amazon Web Services SDKs,
  which consist of libraries and sample code for various programming languages and
  platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide programmatic
  access to CloudTrail. For example, the SDKs handle cryptographically signing
  requests, managing errors, and retrying requests automatically. For more
  information about the Amazon Web Services SDKs, including how to download and
  install them, see [Tools to Build on Amazon Web Services](http://aws.amazon.com/tools/).

  See the [CloudTrail User Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)
  for information about the data that is included with each Amazon Web Services
  API call listed in the log files.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "CloudTrail",
      api_version: "2013-11-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudtrail",
      global?: false,
      protocol: "json",
      service_id: "CloudTrail",
      signature_version: "v4",
      signing_name: "cloudtrail",
      target_prefix: "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101"
    }
  end

  @doc """
  Adds one or more tags to a trail or event data store, up to a limit of 50.

  Overwrites an existing tag's value when a new value is specified for an existing
  tag key. Tag key names must be unique for a trail; you cannot have two keys with
  the same name but different values. If you specify a key without a value, the
  tag will be created with the specified key and a value of null. You can tag a
  trail or event data store that applies to all Amazon Web Services Regions only
  from the Region in which the trail or event data store was created (also known
  as its home region).
  """
  def add_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTags", input, options)
  end

  @doc """
  Cancels a query if the query is not in a terminated state, such as `CANCELLED`,
  `FAILED`, `TIMED_OUT`, or `FINISHED`.

  You must specify an ARN value for `EventDataStore`. The ID of the query that you
  want to cancel is also required. When you run `CancelQuery`, the query status
  might show as `CANCELLED` even if the operation is not yet finished.
  """
  def cancel_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelQuery", input, options)
  end

  @doc """
  Creates a new event data store.
  """
  def create_event_data_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEventDataStore", input, options)
  end

  @doc """
  Creates a trail that specifies the settings for delivery of log data to an
  Amazon S3 bucket.
  """
  def create_trail(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTrail", input, options)
  end

  @doc """
  Disables the event data store specified by `EventDataStore`, which accepts an
  event data store ARN.

  After you run `DeleteEventDataStore`, the event data store enters a
  `PENDING_DELETION` state, and is automatically deleted after a wait period of
  seven days. `TerminationProtectionEnabled` must be set to `False` on the event
  data store; this operation cannot work if `TerminationProtectionEnabled` is
  `True`.

  After you run `DeleteEventDataStore` on an event data store, you cannot run
  `ListQueries`, `DescribeQuery`, or `GetQueryResults` on queries that are using
  an event data store in a `PENDING_DELETION` state. An event data store in the
  `PENDING_DELETION` state does not incur costs.
  """
  def delete_event_data_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEventDataStore", input, options)
  end

  @doc """
  Deletes a trail.

  This operation must be called from the region in which the trail was created.
  `DeleteTrail` cannot be called on the shadow trails (replicated trails in other
  regions) of a trail that is enabled in all regions.
  """
  def delete_trail(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTrail", input, options)
  end

  @doc """
  Returns metadata about a query, including query run time in milliseconds, number
  of events scanned and matched, and query status.

  You must specify an ARN for `EventDataStore`, and a value for `QueryID`.
  """
  def describe_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeQuery", input, options)
  end

  @doc """
  Retrieves settings for one or more trails associated with the current region for
  your account.
  """
  def describe_trails(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTrails", input, options)
  end

  @doc """
  Returns information about a specific channel.

  Amazon Web Services services create service-linked channels to get information
  about CloudTrail events on your behalf. For more information about
  service-linked channels, see [Viewing service-linked channels for CloudTrail by using the
  CLI.](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/viewing-service-linked-channels.html).
  """
  def get_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetChannel", input, options)
  end

  @doc """
  Returns information about an event data store specified as either an ARN or the
  ID portion of the ARN.
  """
  def get_event_data_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEventDataStore", input, options)
  end

  @doc """
  Describes the settings for the event selectors that you configured for your
  trail.

  The information returned for your event selectors includes the following:

    * If your event selector includes read-only events, write-only
  events, or all events. This applies to both management events and data events.

    * If your event selector includes management events.

    * If your event selector includes data events, the resources on
  which you are logging data events.

  For more information about logging management and data events, see the following
  topics in the *CloudTrail User Guide*:

    * [Logging management events for trails
  ](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html)

    * [Logging data events for trails
  ](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html)
  """
  def get_event_selectors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEventSelectors", input, options)
  end

  @doc """
  Returns information about a specific import.
  """
  def get_import(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetImport", input, options)
  end

  @doc """
  Describes the settings for the Insights event selectors that you configured for
  your trail.

  `GetInsightSelectors` shows if CloudTrail Insights event logging is enabled on
  the trail, and if it is, which insight types are enabled. If you run
  `GetInsightSelectors` on a trail that does not have Insights events enabled, the
  operation throws the exception `InsightNotEnabledException`

  For more information, see [Logging CloudTrail Insights Events for Trails
  ](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html)
  in the *CloudTrail User Guide*.
  """
  def get_insight_selectors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInsightSelectors", input, options)
  end

  @doc """
  Gets event data results of a query.

  You must specify the `QueryID` value returned by the `StartQuery` operation, and
  an ARN for `EventDataStore`.
  """
  def get_query_results(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetQueryResults", input, options)
  end

  @doc """
  Returns settings information for a specified trail.
  """
  def get_trail(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTrail", input, options)
  end

  @doc """
  Returns a JSON-formatted list of information about the specified trail.

  Fields include information on delivery errors, Amazon SNS and Amazon S3 errors,
  and start and stop logging times for each trail. This operation returns trail
  status from a single region. To return trail status from all regions, you must
  call the operation on each region.
  """
  def get_trail_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTrailStatus", input, options)
  end

  @doc """
  Lists the channels in the current account, and their source names.

  Amazon Web Services services create service-linked channels get information
  about CloudTrail events on your behalf. For more information about
  service-linked channels, see [Viewing service-linked channels for CloudTrail by using the
  CLI](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/viewing-service-linked-channels.html).
  """
  def list_channels(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListChannels", input, options)
  end

  @doc """
  Returns information about all event data stores in the account, in the current
  region.
  """
  def list_event_data_stores(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEventDataStores", input, options)
  end

  @doc """
  Returns a list of failures for the specified import.
  """
  def list_import_failures(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListImportFailures", input, options)
  end

  @doc """
  Returns information on all imports, or a select set of imports by `ImportStatus`
  or `Destination`.
  """
  def list_imports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListImports", input, options)
  end

  @doc """
  Returns all public keys whose private keys were used to sign the digest files
  within the specified time range.

  The public key is needed to validate digest files that were signed with its
  corresponding private key.

  CloudTrail uses different private and public key pairs per region. Each digest
  file is signed with a private key unique to its region. When you validate a
  digest file from a specific region, you must look in the same region for its
  corresponding public key.
  """
  def list_public_keys(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPublicKeys", input, options)
  end

  @doc """
  Returns a list of queries and query statuses for the past seven days.

  You must specify an ARN value for `EventDataStore`. Optionally, to shorten the
  list of results, you can specify a time range, formatted as timestamps, by
  adding `StartTime` and `EndTime` parameters, and a `QueryStatus` value. Valid
  values for `QueryStatus` include `QUEUED`, `RUNNING`, `FINISHED`, `FAILED`,
  `TIMED_OUT`, or `CANCELLED`.
  """
  def list_queries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListQueries", input, options)
  end

  @doc """
  Lists the tags for the trail or event data store in the current region.
  """
  def list_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTags", input, options)
  end

  @doc """
  Lists trails that are in the current account.
  """
  def list_trails(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTrails", input, options)
  end

  @doc """
  Looks up [management events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events)
  or [CloudTrail Insights events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events)
  that are captured by CloudTrail.

  You can look up events that occurred in a region within the last 90 days. Lookup
  supports the following attributes for management events:

    * Amazon Web Services access key

    * Event ID

    * Event name

    * Event source

    * Read only

    * Resource name

    * Resource type

    * User name

  Lookup supports the following attributes for Insights events:

    * Event ID

    * Event name

    * Event source

  All attributes are optional. The default number of results returned is 50, with
  a maximum of 50 possible. The response includes a token that you can use to get
  the next page of results.

  The rate of lookup requests is limited to two per second, per account, per
  region. If this limit is exceeded, a throttling error occurs.
  """
  def lookup_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "LookupEvents", input, options)
  end

  @doc """
  Configures an event selector or advanced event selectors for your trail.

  Use event selectors or advanced event selectors to specify management and data
  event settings for your trail. By default, trails created without specific event
  selectors are configured to log all read and write management events, and no
  data events.

  When an event occurs in your account, CloudTrail evaluates the event selectors
  or advanced event selectors in all trails. For each trail, if the event matches
  any event selector, the trail processes and logs the event. If the event doesn't
  match any event selector, the trail doesn't log the event.

  Example

    1. You create an event selector for a trail and specify that you
  want write-only events.

    2. The EC2 `GetConsoleOutput` and `RunInstances` API operations
  occur in your account.

    3. CloudTrail evaluates whether the events match your event
  selectors.

    4. The `RunInstances` is a write-only event and it matches your
  event selector. The trail logs the event.

    5. The `GetConsoleOutput` is a read-only event that doesn't match
  your event selector. The trail doesn't log the event.

  The `PutEventSelectors` operation must be called from the region in which the
  trail was created; otherwise, an `InvalidHomeRegionException` exception is
  thrown.

  You can configure up to five event selectors for each trail. For more
  information, see [Logging management events for trails
  ](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html),
  [Logging data events for trails
  ](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html),
  and [Quotas in CloudTrail](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html)
  in the *CloudTrail User Guide*.

  You can add advanced event selectors, and conditions for your advanced event
  selectors, up to a maximum of 500 values for all conditions and selectors on a
  trail. You can use either `AdvancedEventSelectors` or `EventSelectors`, but not
  both. If you apply `AdvancedEventSelectors` to a trail, any existing
  `EventSelectors` are overwritten. For more information about advanced event
  selectors, see [Logging data events for trails](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html)
  in the *CloudTrail User Guide*.
  """
  def put_event_selectors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutEventSelectors", input, options)
  end

  @doc """
  Lets you enable Insights event logging by specifying the Insights selectors that
  you want to enable on an existing trail.

  You also use `PutInsightSelectors` to turn off Insights event logging, by
  passing an empty list of insight types. The valid Insights event types in this
  release are `ApiErrorRateInsight` and `ApiCallRateInsight`.
  """
  def put_insight_selectors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutInsightSelectors", input, options)
  end

  @doc """
  Removes the specified tags from a trail or event data store.
  """
  def remove_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTags", input, options)
  end

  @doc """
  Restores a deleted event data store specified by `EventDataStore`, which accepts
  an event data store ARN.

  You can only restore a deleted event data store within the seven-day wait period
  after deletion. Restoring an event data store can take several minutes,
  depending on the size of the event data store.
  """
  def restore_event_data_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreEventDataStore", input, options)
  end

  @doc """
  Starts an import of logged trail events from a source S3 bucket to a destination
  event data store.

  By default, CloudTrail only imports events contained in the S3 bucket's
  `CloudTrail` prefix and the prefixes inside the `CloudTrail` prefix, and does
  not check prefixes for other Amazon Web Services services. If you want to import
  CloudTrail events contained in another prefix, you must include the prefix in
  the `S3LocationUri`. For more considerations about importing trail events, see
  [Considerations](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-copy-trail-to-lake.html#cloudtrail-trail-copy-considerations).  When you start a new import, the `Destinations` and `ImportSource` parameters
  are required. Before starting a new import, disable any access control lists
  (ACLs) attached to the source S3 bucket. For more information about disabling
  ACLs, see [Controlling ownership of objects and disabling ACLs for your
  bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html).

  When you retry an import, the `ImportID` parameter is required.
  """
  def start_import(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartImport", input, options)
  end

  @doc """
  Starts the recording of Amazon Web Services API calls and log file delivery for
  a trail.

  For a trail that is enabled in all regions, this operation must be called from
  the region in which the trail was created. This operation cannot be called on
  the shadow trails (replicated trails in other regions) of a trail that is
  enabled in all regions.
  """
  def start_logging(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartLogging", input, options)
  end

  @doc """
  Starts a CloudTrail Lake query.

  The required `QueryStatement` parameter provides your SQL query, enclosed in
  single quotation marks. Use the optional `DeliveryS3Uri` parameter to deliver
  the query results to an S3 bucket.
  """
  def start_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartQuery", input, options)
  end

  @doc """
  Stops a specified import.
  """
  def stop_import(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopImport", input, options)
  end

  @doc """
  Suspends the recording of Amazon Web Services API calls and log file delivery
  for the specified trail.

  Under most circumstances, there is no need to use this action. You can update a
  trail without stopping it first. This action is the only way to stop recording.
  For a trail enabled in all regions, this operation must be called from the
  region in which the trail was created, or an `InvalidHomeRegionException` will
  occur. This operation cannot be called on the shadow trails (replicated trails
  in other regions) of a trail enabled in all regions.
  """
  def stop_logging(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopLogging", input, options)
  end

  @doc """
  Updates an event data store.

  The required `EventDataStore` value is an ARN or the ID portion of the ARN.
  Other parameters are optional, but at least one optional parameter must be
  specified, or CloudTrail throws an error. `RetentionPeriod` is in days, and
  valid values are integers between 90 and 2557. By default,
  `TerminationProtection` is enabled. `AdvancedEventSelectors` includes or
  excludes management and data events in your event data store; for more
  information about `AdvancedEventSelectors`, see
  `PutEventSelectorsRequest$AdvancedEventSelectors`.
  """
  def update_event_data_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEventDataStore", input, options)
  end

  @doc """
  Updates trail settings that control what events you are logging, and how to
  handle log files.

  Changes to a trail do not require stopping the CloudTrail service. Use this
  action to designate an existing bucket for log delivery. If the existing bucket
  has previously been a target for CloudTrail log files, an IAM policy exists for
  the bucket. `UpdateTrail` must be called from the region in which the trail was
  created; otherwise, an `InvalidHomeRegionException` is thrown.
  """
  def update_trail(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTrail", input, options)
  end
end
