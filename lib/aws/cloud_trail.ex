# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudTrail do
  @moduledoc """
  AWS CloudTrail

  This is the CloudTrail API Reference. It provides descriptions of actions,
  data types, common parameters, and common errors for CloudTrail.

  CloudTrail is a web service that records AWS API calls for your AWS account
  and delivers log files to an Amazon S3 bucket. The recorded information
  includes the identity of the user, the start time of the AWS API call, the
  source IP address, the request parameters, and the response elements
  returned by the service.

  <note> As an alternative to the API, you can use one of the AWS SDKs, which
  consist of libraries and sample code for various programming languages and
  platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a
  convenient way to create programmatic access to AWSCloudTrail. For example,
  the SDKs take care of cryptographically signing requests, managing errors,
  and retrying requests automatically. For information about the AWS SDKs,
  including how to download and install them, see the [Tools for Amazon Web
  Services page](http://aws.amazon.com/tools/).

  </note> See the [AWS CloudTrail User
  Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)
  for information about the data that is included with each AWS API call
  listed in the log files.
  """

  @doc """
  Adds one or more tags to a trail, up to a limit of 50. Overwrites an
  existing tag's value when a new value is specified for an existing tag key.
  Tag key names must be unique for a trail; you cannot have two keys with the
  same name but different values. If you specify a key without a value, the
  tag will be created with the specified key and a value of null. You can tag
  a trail that applies to all AWS Regions only from the Region in which the
  trail was created (also known as its home region).
  """
  def add_tags(client, input, options \\ []) do
    request(client, "AddTags", input, options)
  end

  @doc """
  Creates a trail that specifies the settings for delivery of log data to an
  Amazon S3 bucket.
  """
  def create_trail(client, input, options \\ []) do
    request(client, "CreateTrail", input, options)
  end

  @doc """
  Deletes a trail. This operation must be called from the region in which the
  trail was created. `DeleteTrail` cannot be called on the shadow trails
  (replicated trails in other regions) of a trail that is enabled in all
  regions.
  """
  def delete_trail(client, input, options \\ []) do
    request(client, "DeleteTrail", input, options)
  end

  @doc """
  Retrieves settings for one or more trails associated with the current
  region for your account.
  """
  def describe_trails(client, input, options \\ []) do
    request(client, "DescribeTrails", input, options)
  end

  @doc """
  Describes the settings for the event selectors that you configured for your
  trail. The information returned for your event selectors includes the
  following:

  <ul> <li> If your event selector includes read-only events, write-only
  events, or all events. This applies to both management events and data
  events.

  </li> <li> If your event selector includes management events.

  </li> <li> If your event selector includes data events, the Amazon S3
  objects or AWS Lambda functions that you are logging for data events.

  </li> </ul> For more information, see [Logging Data and Management Events
  for Trails
  ](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html)
  in the *AWS CloudTrail User Guide*.
  """
  def get_event_selectors(client, input, options \\ []) do
    request(client, "GetEventSelectors", input, options)
  end

  @doc """
  Describes the settings for the Insights event selectors that you configured
  for your trail. `GetInsightSelectors` shows if CloudTrail Insights event
  logging is enabled on the trail, and if it is, which insight types are
  enabled. If you run `GetInsightSelectors` on a trail that does not have
  Insights events enabled, the operation throws the exception
  `InsightNotEnabledException`

  For more information, see [Logging CloudTrail Insights Events for Trails
  ](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html)
  in the *AWS CloudTrail User Guide*.
  """
  def get_insight_selectors(client, input, options \\ []) do
    request(client, "GetInsightSelectors", input, options)
  end

  @doc """
  Returns settings information for a specified trail.
  """
  def get_trail(client, input, options \\ []) do
    request(client, "GetTrail", input, options)
  end

  @doc """
  Returns a JSON-formatted list of information about the specified trail.
  Fields include information on delivery errors, Amazon SNS and Amazon S3
  errors, and start and stop logging times for each trail. This operation
  returns trail status from a single region. To return trail status from all
  regions, you must call the operation on each region.
  """
  def get_trail_status(client, input, options \\ []) do
    request(client, "GetTrailStatus", input, options)
  end

  @doc """
  Returns all public keys whose private keys were used to sign the digest
  files within the specified time range. The public key is needed to validate
  digest files that were signed with its corresponding private key.

  <note> CloudTrail uses different private/public key pairs per region. Each
  digest file is signed with a private key unique to its region. Therefore,
  when you validate a digest file from a particular region, you must look in
  the same region for its corresponding public key.

  </note>
  """
  def list_public_keys(client, input, options \\ []) do
    request(client, "ListPublicKeys", input, options)
  end

  @doc """
  Lists the tags for the trail in the current region.
  """
  def list_tags(client, input, options \\ []) do
    request(client, "ListTags", input, options)
  end

  @doc """
  Lists trails that are in the current account.
  """
  def list_trails(client, input, options \\ []) do
    request(client, "ListTrails", input, options)
  end

  @doc """
  Looks up [management
  events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events)
  or [CloudTrail Insights
  events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events)
  that are captured by CloudTrail. You can look up events that occurred in a
  region within the last 90 days. Lookup supports the following attributes
  for management events:

  <ul> <li> AWS access key

  </li> <li> Event ID

  </li> <li> Event name

  </li> <li> Event source

  </li> <li> Read only

  </li> <li> Resource name

  </li> <li> Resource type

  </li> <li> User name

  </li> </ul> Lookup supports the following attributes for Insights events:

  <ul> <li> Event ID

  </li> <li> Event name

  </li> <li> Event source

  </li> </ul> All attributes are optional. The default number of results
  returned is 50, with a maximum of 50 possible. The response includes a
  token that you can use to get the next page of results.

  <important> The rate of lookup requests is limited to two per second per
  account. If this limit is exceeded, a throttling error occurs.

  </important>
  """
  def lookup_events(client, input, options \\ []) do
    request(client, "LookupEvents", input, options)
  end

  @doc """
  Configures an event selector for your trail. Use event selectors to further
  specify the management and data event settings for your trail. By default,
  trails created without specific event selectors will be configured to log
  all read and write management events, and no data events.

  When an event occurs in your account, CloudTrail evaluates the event
  selectors in all trails. For each trail, if the event matches any event
  selector, the trail processes and logs the event. If the event doesn't
  match any event selector, the trail doesn't log the event.

  Example

  <ol> <li> You create an event selector for a trail and specify that you
  want write-only events.

  </li> <li> The EC2 `GetConsoleOutput` and `RunInstances` API operations
  occur in your account.

  </li> <li> CloudTrail evaluates whether the events match your event
  selectors.

  </li> <li> The `RunInstances` is a write-only event and it matches your
  event selector. The trail logs the event.

  </li> <li> The `GetConsoleOutput` is a read-only event but it doesn't match
  your event selector. The trail doesn't log the event.

  </li> </ol> The `PutEventSelectors` operation must be called from the
  region in which the trail was created; otherwise, an
  `InvalidHomeRegionException` is thrown.

  You can configure up to five event selectors for each trail. For more
  information, see [Logging Data and Management Events for Trails
  ](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html)
  and [Limits in AWS
  CloudTrail](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html)
  in the *AWS CloudTrail User Guide*.
  """
  def put_event_selectors(client, input, options \\ []) do
    request(client, "PutEventSelectors", input, options)
  end

  @doc """
  Lets you enable Insights event logging by specifying the Insights selectors
  that you want to enable on an existing trail. You also use
  `PutInsightSelectors` to turn off Insights event logging, by passing an
  empty list of insight types. In this release, only `ApiCallRateInsight` is
  supported as an Insights selector.
  """
  def put_insight_selectors(client, input, options \\ []) do
    request(client, "PutInsightSelectors", input, options)
  end

  @doc """
  Removes the specified tags from a trail.
  """
  def remove_tags(client, input, options \\ []) do
    request(client, "RemoveTags", input, options)
  end

  @doc """
  Starts the recording of AWS API calls and log file delivery for a trail.
  For a trail that is enabled in all regions, this operation must be called
  from the region in which the trail was created. This operation cannot be
  called on the shadow trails (replicated trails in other regions) of a trail
  that is enabled in all regions.
  """
  def start_logging(client, input, options \\ []) do
    request(client, "StartLogging", input, options)
  end

  @doc """
  Suspends the recording of AWS API calls and log file delivery for the
  specified trail. Under most circumstances, there is no need to use this
  action. You can update a trail without stopping it first. This action is
  the only way to stop recording. For a trail enabled in all regions, this
  operation must be called from the region in which the trail was created, or
  an `InvalidHomeRegionException` will occur. This operation cannot be called
  on the shadow trails (replicated trails in other regions) of a trail
  enabled in all regions.
  """
  def stop_logging(client, input, options \\ []) do
    request(client, "StopLogging", input, options)
  end

  @doc """
  Updates the settings that specify delivery of log files. Changes to a trail
  do not require stopping the CloudTrail service. Use this action to
  designate an existing bucket for log delivery. If the existing bucket has
  previously been a target for CloudTrail log files, an IAM policy exists for
  the bucket. `UpdateTrail` must be called from the region in which the trail
  was created; otherwise, an `InvalidHomeRegionException` is thrown.
  """
  def update_trail(client, input, options \\ []) do
    request(client, "UpdateTrail", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "cloudtrail"}
    host = build_host("cloudtrail", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(url, payload, headers, options)
  end

  defp post(url, payload, headers, options) do
    case AWS.HTTP.request(:post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

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
