# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RUM do
  @moduledoc """
  With Amazon CloudWatch RUM, you can perform real-user monitoring to collect
  client-side data about your web application performance from actual user
  sessions in real time.

  The data collected includes page load times, client-side errors, and user
  behavior. When you view this data, you can see it all aggregated together and
  also see breakdowns by the browsers and devices that your customers use.

  ` You can use the collected data to quickly identify and debug client-side
  performance issues. CloudWatch RUM helps you visualize anomalies in your
  application performance and find relevant debugging data such as error messages,
  stack traces, and user sessions. You can also use RUM to understand the range of
  end-user impact including the number of users, geolocations, and browsers used.

  `
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "rum",
      global?: false,
      protocol: "rest-json",
      service_id: "RUM",
      signature_version: "v4",
      signing_name: "rum",
      target_prefix: nil
    }
  end

  @doc """
  Creates a Amazon CloudWatch RUM app monitor, which collects telemetry data from
  your application and sends that data to RUM.

  The data includes performance and reliability information such as page load
  time, client-side errors, and user behavior.

  You use this operation only to create a new app monitor. To update an existing
  app monitor, use
  [UpdateAppMonitor](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_UpdateAppMonitor.html) instead.

  After you create an app monitor, sign in to the CloudWatch RUM console to get
  the JavaScript code snippet to add to your web application. For more
  information, see [How do I find a code snippet that I've already
  generated?](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html)
  """
  def create_app_monitor(%Client{} = client, input, options \\ []) do
    url_path = "/appmonitor"
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
      200
    )
  end

  @doc """
  Deletes an existing app monitor.

  This immediately stops the collection of data.
  """
  def delete_app_monitor(%Client{} = client, name, input, options \\ []) do
    url_path = "/appmonitor/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Retrieves the complete configuration information for one app monitor.
  """
  def get_app_monitor(%Client{} = client, name, options \\ []) do
    url_path = "/appmonitor/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Retrieves the raw performance events that RUM has collected from your web
  application, so that you can do your own processing or analysis of this data.
  """
  def get_app_monitor_data(%Client{} = client, name, input, options \\ []) do
    url_path = "/appmonitor/#{AWS.Util.encode_uri(name)}/data"
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
      200
    )
  end

  @doc """
  Returns a list of the Amazon CloudWatch RUM app monitors in the account.
  """
  def list_app_monitors(%Client{} = client, input, options \\ []) do
    url_path = "/appmonitors"
    headers = []

    {query_params, input} =
      [
        {"MaxResults", "maxResults"},
        {"NextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Displays the tags associated with a CloudWatch RUM resource.
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
      200
    )
  end

  @doc """
  Sends telemetry events about your application performance and user behavior to
  CloudWatch RUM.

  The code snippet that RUM generates for you to add to your application includes
  `PutRumEvents` operations to send this data to RUM.

  Each `PutRumEvents` operation can send a batch of events from one user session.
  """
  def put_rum_events(%Client{} = client, id, input, options \\ []) do
    url_path = "/appmonitors/#{AWS.Util.encode_uri(id)}/"
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
      200
    )
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified CloudWatch RUM
  resource.

  Currently, the only resources that can be tagged app monitors.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions by granting a user permission to access or change only
  resources with certain tag values.

  Tags don't have any semantic meaning to Amazon Web Services and are interpreted
  strictly as strings of characters.

  You can use the `TagResource` action with a resource that already has tags. If
  you specify a new tag key for the resource, this tag is appended to the list of
  tags associated with the alarm. If you specify a tag key that is already
  associated with the resource, the new tag value that you specify replaces the
  previous value for that tag.

  You can associate as many as 50 tags with a resource.

  For more information, see [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).
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
      200
    )
  end

  @doc """
  Removes one or more tags from the specified resource.
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
      200
    )
  end

  @doc """
  Updates the configuration of an existing app monitor.

  When you use this operation, only the parts of the app monitor configuration
  that you specify in this operation are changed. For any parameters that you
  omit, the existing values are kept.

  You can't use this operation to change the tags of an existing app monitor. To
  change the tags of an existing app monitor, use
  [TagResource](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_TagResource.html).  To create a new app monitor, use
  [CreateAppMonitor](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_CreateAppMonitor.html).

  After you update an app monitor, sign in to the CloudWatch RUM console to get
  the updated JavaScript code snippet to add to your web application. For more
  information, see [How do I find a code snippet that I've already generated?](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html)
  """
  def update_app_monitor(%Client{} = client, name, input, options \\ []) do
    url_path = "/appmonitor/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end
end
