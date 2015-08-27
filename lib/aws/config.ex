# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Config do
  @moduledoc """
  AWS Config

  AWS Config provides a way to keep track of the configurations of all the
  AWS resources associated with your AWS account. You can use AWS Config to
  get the current and historical configurations of each AWS resource and also
  to get information about the relationship between the resources. An AWS
  resource can be an Amazon Compute Cloud (Amazon EC2) instance, an Elastic
  Block Store (EBS) volume, an Elastic network Interface (ENI), or a security
  group. For a complete list of resources currently supported by AWS Config,
  see [Supported AWS
  Resources](http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).

  You can access and manage AWS Config through the AWS Management Console,
  the AWS Command Line Interface (AWS CLI), the AWS Config API, or the AWS
  SDKs for AWS Config

  This reference guide contains documentation for the AWS Config API and the
  AWS CLI commands that you can use to manage AWS Config.

  The AWS Config API uses the Signature Version 4 protocol for signing
  requests. For more information about how to sign a request with this
  protocol, see [Signature Version 4 Signing
  Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  For detailed information about AWS Config features and their associated
  actions or commands, as well as how to work with AWS Management Console,
  see [What Is AWS
  Config?](http://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html)
  in the *AWS Config Developer Guide*.
  """

  @doc """
  Deletes the specified delivery channel.

  The delivery channel cannot be deleted if it is the only delivery channel
  and the configuration recorder is still running. To delete the delivery
  channel, stop the running configuration recorder using the
  `StopConfigurationRecorder` action.
  """
  def delete_delivery_channel(client, input, http_options \\ []) do
    request(client, "DeleteDeliveryChannel", input, http_options)
  end

  @doc """
  Schedules delivery of a configuration snapshot to the Amazon S3 bucket in
  the specified delivery channel. After the delivery has started, AWS Config
  sends following notifications using an Amazon SNS topic that you have
  specified.

  <ul> <li>Notification of starting the delivery.</li> <li>Notification of
  delivery completed, if the delivery was successfully completed.</li>
  <li>Notification of delivery failure, if the delivery failed to
  complete.</li> </ul>
  """
  def deliver_config_snapshot(client, input, http_options \\ []) do
    request(client, "DeliverConfigSnapshot", input, http_options)
  end

  @doc """
  Returns the current status of the specified configuration recorder. If a
  configuration recorder is not specified, this action returns the status of
  all configuration recorder associated with the account.

  <note>Currently, you can specify only one configuration recorder per
  account.</note>
  """
  def describe_configuration_recorder_status(client, input, http_options \\ []) do
    request(client, "DescribeConfigurationRecorderStatus", input, http_options)
  end

  @doc """
  Returns the name of one or more specified configuration recorders. If the
  recorder name is not specified, this action returns the names of all the
  configuration recorders associated with the account.

  <note> Currently, you can specify only one configuration recorder per
  account.

  </note>
  """
  def describe_configuration_recorders(client, input, http_options \\ []) do
    request(client, "DescribeConfigurationRecorders", input, http_options)
  end

  @doc """
  Returns the current status of the specified delivery channel. If a delivery
  channel is not specified, this action returns the current status of all
  delivery channels associated with the account.

  <note>Currently, you can specify only one delivery channel per
  account.</note>
  """
  def describe_delivery_channel_status(client, input, http_options \\ []) do
    request(client, "DescribeDeliveryChannelStatus", input, http_options)
  end

  @doc """
  Returns details about the specified delivery channel. If a delivery channel
  is not specified, this action returns the details of all delivery channels
  associated with the account.

  <note> Currently, you can specify only one delivery channel per account.

  </note>
  """
  def describe_delivery_channels(client, input, http_options \\ []) do
    request(client, "DescribeDeliveryChannels", input, http_options)
  end

  @doc """
  Returns a list of configuration items for the specified resource. The list
  contains details about each state of the resource during the specified time
  interval. You can specify a `limit` on the number of results returned on
  the page. If a limit is specified, a `nextToken` is returned as part of the
  result that you can use to continue this request.

  <note> Each call to the API is limited to span a duration of seven days. It
  is likely that the number of records returned is smaller than the specified
  `limit`. In such cases, you can make another call, using the `nextToken` .

  </note>
  """
  def get_resource_config_history(client, input, http_options \\ []) do
    request(client, "GetResourceConfigHistory", input, http_options)
  end

  @doc """
  Creates a new configuration recorder to record the selected resource
  configurations.

  You can use this action to change the role `roleARN` and/or the
  `recordingGroup` of an existing recorder. To change the role, call the
  action on the existing configuration recorder and specify a role.

  <note> Currently, you can specify only one configuration recorder per
  account.

  If `ConfigurationRecorder` does not have the **recordingGroup** parameter
  specified, the default is to record all supported resource types.

  </note>
  """
  def put_configuration_recorder(client, input, http_options \\ []) do
    request(client, "PutConfigurationRecorder", input, http_options)
  end

  @doc """
  Creates a new delivery channel object to deliver the configuration
  information to an Amazon S3 bucket, and to an Amazon SNS topic.

  You can use this action to change the Amazon S3 bucket or an Amazon SNS
  topic of the existing delivery channel. To change the Amazon S3 bucket or
  an Amazon SNS topic, call this action and specify the changed values for
  the S3 bucket and the SNS topic. If you specify a different value for
  either the S3 bucket or the SNS topic, this action will keep the existing
  value for the parameter that is not changed.

  <note> Currently, you can specify only one delivery channel per account.

  </note>
  """
  def put_delivery_channel(client, input, http_options \\ []) do
    request(client, "PutDeliveryChannel", input, http_options)
  end

  @doc """
  Starts recording configurations of the AWS resources you have selected to
  record in your AWS account.

  You must have created at least one delivery channel to successfully start
  the configuration recorder.
  """
  def start_configuration_recorder(client, input, http_options \\ []) do
    request(client, "StartConfigurationRecorder", input, http_options)
  end

  @doc """
  Stops recording configurations of the AWS resources you have selected to
  record in your AWS account.
  """
  def stop_configuration_recorder(client, input, http_options \\ []) do
    request(client, "StopConfigurationRecorder", input, http_options)
  end

  defp request(client, action, input, http_options) do
    client = %{client | service: "config"}
    host = "config.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "StarlingDoveService.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, http_options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason, response}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end
end
