# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Synthetics do
  @moduledoc """
  Amazon CloudWatch Synthetics

  You can use Amazon CloudWatch Synthetics to continually monitor your services.

  You can create and manage *canaries*, which are modular, lightweight scripts
  that monitor your endpoints and APIs from the outside-in. You can set up your
  canaries to run 24 hours a day, once per minute. The canaries help you check the
  availability and latency of your web services and troubleshoot anomalies by
  investigating load time data, screenshots of the UI, logs, and metrics. The
  canaries seamlessly integrate with CloudWatch ServiceLens to help you trace the
  causes of impacted nodes in your applications. For more information, see [Using ServiceLens to Monitor the Health of Your
  Applications](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ServiceLens.html)
  in the *Amazon CloudWatch User Guide*.

  Before you create and manage canaries, be aware of the security considerations.
  For more information, see [Security Considerations for Synthetics Canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-10-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "synthetics",
      global?: false,
      protocol: "rest-json",
      service_id: "synthetics",
      signature_version: "v4",
      signing_name: "synthetics",
      target_prefix: nil
    }
  end

  @doc """
  Creates a canary.

  Canaries are scripts that monitor your endpoints and APIs from the outside-in.
  Canaries help you check the availability and latency of your web services and
  troubleshoot anomalies by investigating load time data, screenshots of the UI,
  logs, and metrics. You can set up a canary to run continuously or just once.

  Do not use `CreateCanary` to modify an existing canary. Use
  [UpdateCanary](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_UpdateCanary.html) instead.

  To create canaries, you must have the `CloudWatchSyntheticsFullAccess` policy.
  If you are creating a new IAM role for the canary, you also need the the
  `iam:CreateRole`, `iam:CreatePolicy` and `iam:AttachRolePolicy` permissions. For
  more information, see [Necessary Roles and
  Permissions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Roles).

  Do not include secrets or proprietary information in your canary names. The
  canary name makes up part of the Amazon Resource Name (ARN) for the canary, and
  the ARN is included in outbound calls over the internet. For more information,
  see [Security Considerations for Synthetics Canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).
  """
  def create_canary(%Client{} = client, input, options \\ []) do
    url_path = "/canary"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Permanently deletes the specified canary.

  When you delete a canary, resources used and created by the canary are not
  automatically deleted. After you delete a canary that you do not intend to use
  again, you should also delete the following:

    * The Lambda functions and layers used by this canary. These have
  the prefix `cwsyn-*MyCanaryName* `.

    * The CloudWatch alarms created for this canary. These alarms have a
  name of `Synthetics-SharpDrop-Alarm-*MyCanaryName* `.

    * Amazon S3 objects and buckets, such as the canary's artifact
  location.

    * IAM roles created for the canary. If they were created in the
  console, these roles have the name `
  role/service-role/CloudWatchSyntheticsRole-*MyCanaryName* `.

    * CloudWatch Logs log groups created for the canary. These logs
  groups have the name `/aws/lambda/cwsyn-*MyCanaryName* `.

  Before you delete a canary, you might want to use `GetCanary` to display the
  information about this canary. Make note of the information returned by this
  operation so that you can delete these resources after you delete the canary.
  """
  def delete_canary(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  This operation returns a list of the canaries in your account, along with full
  details about each canary.

  This operation does not have resource-level authorization, so if a user is able
  to use `DescribeCanaries`, the user can see all of the canaries in the account.
  A deny policy can only be used to restrict access to all canaries. It cannot be
  used on specific resources.
  """
  def describe_canaries(%Client{} = client, input, options \\ []) do
    url_path = "/canaries"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Use this operation to see information from the most recent run of each canary
  that you have created.
  """
  def describe_canaries_last_run(%Client{} = client, input, options \\ []) do
    url_path = "/canaries/last-run"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns a list of Synthetics canary runtime versions.

  For more information, see [ Canary Runtime Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
  """
  def describe_runtime_versions(%Client{} = client, input, options \\ []) do
    url_path = "/runtime-versions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves complete information about one canary.

  You must specify the name of the canary that you want. To get a list of canaries
  and their names, use
  [DescribeCanaries](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html).
  """
  def get_canary(%Client{} = client, name, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves a list of runs for a specified canary.
  """
  def get_canary_runs(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}/runs"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Displays the tags associated with a canary.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Use this operation to run a canary that has already been created.

  The frequency of the canary runs is determined by the value of the canary's
  `Schedule`. To see a canary's schedule, use
  [GetCanary](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanary.html).
  """
  def start_canary(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}/start"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Stops the canary to prevent all future runs.

  If the canary is currently running, Synthetics stops waiting for the current run
  of the specified canary to complete. The run that is in progress completes on
  its own, publishes metrics, and uploads artifacts, but it is not recorded in
  Synthetics as a completed run.

  You can use `StartCanary` to start it running again with the canary’s current
  schedule at any point in the future.
  """
  def stop_canary(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}/stop"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified canary.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions, by granting a user permission to access or change
  only resources with certain tag values.

  Tags don't have any semantic meaning to AWS and are interpreted strictly as
  strings of characters.

  You can use the `TagResource` action with a canary that already has tags. If you
  specify a new tag key for the alarm, this tag is appended to the list of tags
  associated with the alarm. If you specify a tag key that is already associated
  with the alarm, the new tag value that you specify replaces the previous value
  for that tag.

  You can associate as many as 50 tags with a canary.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes one or more tags from the specified canary.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Use this operation to change the settings of a canary that has already been
  created.

  You can't use this operation to update the tags of an existing canary. To change
  the tags of an existing canary, use
  [TagResource](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_TagResource.html).
  """
  def update_canary(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
