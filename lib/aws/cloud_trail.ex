# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

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

  <note> As an alternative to using the API, you can use one of the AWS SDKs,
  which consist of libraries and sample code for various programming
  languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs
  provide a convenient way to create programmatic access to AWSCloudTrail.
  For example, the SDKs take care of cryptographically signing requests,
  managing errors, and retrying requests automatically. For information about
  the AWS SDKs, including how to download and install them, see the [Tools
  for Amazon Web Services page](http://aws.amazon.com/tools/). </note> See
  the CloudTrail User Guide for information about the data that is included
  with each AWS API call listed in the log files.
  """

  @doc """
  From the command line, use `create-subscription`.

  Creates a trail that specifies the settings for delivery of log data to an
  Amazon S3 bucket.
  """
  def create_trail(client, input, options \\ []) do
    request(client, "CreateTrail", input, options)
  end

  @doc """
  Deletes a trail.
  """
  def delete_trail(client, input, options \\ []) do
    request(client, "DeleteTrail", input, options)
  end

  @doc """
  Retrieves settings for the trail associated with the current region for
  your account.
  """
  def describe_trails(client, input, options \\ []) do
    request(client, "DescribeTrails", input, options)
  end

  @doc """
  Returns a JSON-formatted list of information about the specified trail.
  Fields include information on delivery errors, Amazon SNS and Amazon S3
  errors, and start and stop logging times for each trail.
  """
  def get_trail_status(client, input, options \\ []) do
    request(client, "GetTrailStatus", input, options)
  end

  @doc """
  Looks up API activity events captured by CloudTrail that create, update, or
  delete resources in your account. Events for a region can be looked up for
  the times in which you had CloudTrail turned on in that region during the
  last seven days. Lookup supports five different attributes: time range
  (defined by a start time and end time), user name, event name, resource
  type, and resource name. All attributes are optional. The maximum number of
  attributes that can be specified in any one lookup request are time range
  and one other attribute. The default number of results returned is 10, with
  a maximum of 50 possible. The response includes a token that you can use to
  get the next page of results. The rate of lookup requests is limited to one
  per second per account.

  <important>Events that occurred during the selected time range will not be
  available for lookup if CloudTrail logging was not enabled when the events
  occurred.</important>
  """
  def lookup_events(client, input, options \\ []) do
    request(client, "LookupEvents", input, options)
  end

  @doc """
  Starts the recording of AWS API calls and log file delivery for a trail.
  """
  def start_logging(client, input, options \\ []) do
    request(client, "StartLogging", input, options)
  end

  @doc """
  Suspends the recording of AWS API calls and log file delivery for the
  specified trail. Under most circumstances, there is no need to use this
  action. You can update a trail without stopping it first. This action is
  the only way to stop recording.
  """
  def stop_logging(client, input, options \\ []) do
    request(client, "StopLogging", input, options)
  end

  @doc """
  From the command line, use `update-subscription`.

  Updates the settings that specify delivery of log files. Changes to a trail
  do not require stopping the CloudTrail service. Use this action to
  designate an existing bucket for log delivery. If the existing bucket has
  previously been a target for CloudTrail log files, an IAM policy exists for
  the bucket.
  """
  def update_trail(client, input, options \\ []) do
    request(client, "UpdateTrail", input, options)
  end

  defp request(client, action, input, options) do
    client = %{client | service: "cloudtrail"}
    host = "cloudtrail.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end
end
