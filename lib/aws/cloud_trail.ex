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
  Adds one or more tags to a trail, up to a limit of 10. Tags must be unique
  per trail. Overwrites an existing tag's value when a new value is specified
  for an existing tag key. If you specify a key without a value, the tag will
  be created with the specified key and a value of null. You can tag a trail
  that applies to all regions only from the region in which the trail was
  created (that is, from its home region).
  """
  def add_tags(client, input, options \\ []) do
    request(client, "AddTags", input, options)
  end

  @doc """
  Creates a trail that specifies the settings for delivery of log data to an
  Amazon S3 bucket. A maximum of five trails can exist in a region,
  irrespective of the region in which they were created.
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
  Retrieves settings for the trail associated with the current region for
  your account.
  """
  def describe_trails(client, input, options \\ []) do
    request(client, "DescribeTrails", input, options)
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

  <note>CloudTrail uses different private/public key pairs per region. Each
  digest file is signed with a private key unique to its region. Therefore,
  when you validate a digest file from a particular region, you must look in
  the same region for its corresponding public key.</note>
  """
  def list_public_keys(client, input, options \\ []) do
    request(client, "ListPublicKeys", input, options)
  end

  @doc """
  Lists the tags for the specified trail or trails in the current region.

  Lists the tags for the trail in the current region.
  """
  def list_tags(client, input, options \\ []) do
    request(client, "ListTags", input, options)
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
  get the next page of results.

  <important>The rate of lookup requests is limited to one per second per
  account. If this limit is exceeded, a throttling error occurs. </important>
  <important>Events that occurred during the selected time range will not be
  available for lookup if CloudTrail logging was not enabled when the events
  occurred.</important>
  """
  def lookup_events(client, input, options \\ []) do
    request(client, "LookupEvents", input, options)
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

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "cloudtrail"}
    host = get_host("cloudtrail", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
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
    "#{proto}://#{host}:#{port}"
  end

end
