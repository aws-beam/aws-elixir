# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTAnalytics do
  @moduledoc """
  AWS IoT Analytics allows you to collect large amounts of device data,
  process messages, and store them. You can then query the data and run
  sophisticated analytics on it. AWS IoT Analytics enables advanced data
  exploration through integration with Jupyter Notebooks and data
  visualization through integration with Amazon QuickSight.

  Traditional analytics and business intelligence tools are designed to
  process structured data. IoT data often comes from devices that record
  noisy processes (such as temperature, motion, or sound). As a result the
  data from these devices can have significant gaps, corrupted messages, and
  false readings that must be cleaned up before analysis can occur. Also, IoT
  data is often only meaningful in the context of other data from external
  sources.

  AWS IoT Analytics automates the steps required to analyze data from IoT
  devices. AWS IoT Analytics filters, transforms, and enriches IoT data
  before storing it in a time-series data store for analysis. You can set up
  the service to collect only the data you need from your devices, apply
  mathematical transforms to process the data, and enrich the data with
  device-specific metadata such as device type and location before storing
  it. Then, you can analyze your data by running queries using the built-in
  SQL query engine, or perform more complex analytics and machine learning
  inference. AWS IoT Analytics includes pre-built models for common IoT use
  cases so you can answer questions like which devices are about to fail or
  which customers are at risk of abandoning their wearable devices.
  """

  @doc """
  Sends messages to a channel.
  """
  def batch_put_message(client, input, options \\ []) do
    path_ = "/messages/batch"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Cancels the reprocessing of data through the pipeline.
  """
  def cancel_pipeline_reprocessing(client, pipeline_name, reprocessing_id, input, options \\ []) do
    path_ = "/pipelines/#{URI.encode(pipeline_name)}/reprocessing/#{URI.encode(reprocessing_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a channel. A channel collects data from an MQTT topic and archives
  the raw, unprocessed messages before publishing the data to a pipeline.
  """
  def create_channel(client, input, options \\ []) do
    path_ = "/channels"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a data set. A data set stores data retrieved from a data store by
  applying a "queryAction" (a SQL query) or a "containerAction" (executing a
  containerized application). This operation creates the skeleton of a data
  set. The data set can be populated manually by calling
  "CreateDatasetContent" or automatically according to a "trigger" you
  specify.
  """
  def create_dataset(client, input, options \\ []) do
    path_ = "/datasets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates the content of a data set by applying a "queryAction" (a SQL query)
  or a "containerAction" (executing a containerized application).
  """
  def create_dataset_content(client, dataset_name, input, options \\ []) do
    path_ = "/datasets/#{URI.encode(dataset_name)}/content"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a data store, which is a repository for messages.
  """
  def create_datastore(client, input, options \\ []) do
    path_ = "/datastores"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a pipeline. A pipeline consumes messages from a channel and allows
  you to process the messages before storing them in a data store. You must
  specify both a `channel` and a `datastore` activity and, optionally, as
  many as 23 additional activities in the `pipelineActivities` array.
  """
  def create_pipeline(client, input, options \\ []) do
    path_ = "/pipelines"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deletes the specified channel.
  """
  def delete_channel(client, channel_name, input, options \\ []) do
    path_ = "/channels/#{URI.encode(channel_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the specified data set.

  You do not have to delete the content of the data set before you perform
  this operation.
  """
  def delete_dataset(client, dataset_name, input, options \\ []) do
    path_ = "/datasets/#{URI.encode(dataset_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the content of the specified data set.
  """
  def delete_dataset_content(client, dataset_name, input, options \\ []) do
    path_ = "/datasets/#{URI.encode(dataset_name)}/content"
    headers = []
    {query_, input} =
      [
        {"versionId", "versionId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the specified data store.
  """
  def delete_datastore(client, datastore_name, input, options \\ []) do
    path_ = "/datastores/#{URI.encode(datastore_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the specified pipeline.
  """
  def delete_pipeline(client, pipeline_name, input, options \\ []) do
    path_ = "/pipelines/#{URI.encode(pipeline_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Retrieves information about a channel.
  """
  def describe_channel(client, channel_name, include_statistics \\ nil, options \\ []) do
    path_ = "/channels/#{URI.encode(channel_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(include_statistics) do
      [{"includeStatistics", include_statistics} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a data set.
  """
  def describe_dataset(client, dataset_name, options \\ []) do
    path_ = "/datasets/#{URI.encode(dataset_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a data store.
  """
  def describe_datastore(client, datastore_name, include_statistics \\ nil, options \\ []) do
    path_ = "/datastores/#{URI.encode(datastore_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(include_statistics) do
      [{"includeStatistics", include_statistics} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves the current settings of the AWS IoT Analytics logging options.
  """
  def describe_logging_options(client, options \\ []) do
    path_ = "/logging"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a pipeline.
  """
  def describe_pipeline(client, pipeline_name, options \\ []) do
    path_ = "/pipelines/#{URI.encode(pipeline_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves the contents of a data set as pre-signed URIs.
  """
  def get_dataset_content(client, dataset_name, version_id \\ nil, options \\ []) do
    path_ = "/datasets/#{URI.encode(dataset_name)}/content"
    headers = []
    query_ = []
    query_ = if !is_nil(version_id) do
      [{"versionId", version_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a list of channels.
  """
  def list_channels(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/channels"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists information about data set contents that have been created.
  """
  def list_dataset_contents(client, dataset_name, max_results \\ nil, next_token \\ nil, scheduled_before \\ nil, scheduled_on_or_after \\ nil, options \\ []) do
    path_ = "/datasets/#{URI.encode(dataset_name)}/contents"
    headers = []
    query_ = []
    query_ = if !is_nil(scheduled_on_or_after) do
      [{"scheduledOnOrAfter", scheduled_on_or_after} | query_]
    else
      query_
    end
    query_ = if !is_nil(scheduled_before) do
      [{"scheduledBefore", scheduled_before} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about data sets.
  """
  def list_datasets(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/datasets"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a list of data stores.
  """
  def list_datastores(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/datastores"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a list of pipelines.
  """
  def list_pipelines(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/pipelines"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the tags (metadata) which you have assigned to the resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags"
    headers = []
    query_ = []
    query_ = if !is_nil(resource_arn) do
      [{"resourceArn", resource_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Sets or updates the AWS IoT Analytics logging options.

  Note that if you update the value of any `loggingOptions` field, it takes
  up to one minute for the change to take effect. Also, if you change the
  policy attached to the role you specified in the roleArn field (for
  example, to correct an invalid policy) it takes up to 5 minutes for that
  change to take effect.
  """
  def put_logging_options(client, input, options \\ []) do
    path_ = "/logging"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Simulates the results of running a pipeline activity on a message payload.
  """
  def run_pipeline_activity(client, input, options \\ []) do
    path_ = "/pipelineactivities/run"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves a sample of messages from the specified channel ingested during
  the specified timeframe. Up to 10 messages can be retrieved.
  """
  def sample_channel_data(client, channel_name, end_time \\ nil, max_messages \\ nil, start_time \\ nil, options \\ []) do
    path_ = "/channels/#{URI.encode(channel_name)}/sample"
    headers = []
    query_ = []
    query_ = if !is_nil(start_time) do
      [{"startTime", start_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_messages) do
      [{"maxMessages", max_messages} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_time) do
      [{"endTime", end_time} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Starts the reprocessing of raw message data through the pipeline.
  """
  def start_pipeline_reprocessing(client, pipeline_name, input, options \\ []) do
    path_ = "/pipelines/#{URI.encode(pipeline_name)}/reprocessing"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds to or modifies the tags of the given resource. Tags are metadata which
  can be used to manage a resource.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/tags"
    headers = []
    {query_, input} =
      [
        {"resourceArn", "resourceArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Removes the given tags (metadata) from the resource.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/tags"
    headers = []
    {query_, input} =
      [
        {"resourceArn", "resourceArn"},
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates the settings of a channel.
  """
  def update_channel(client, channel_name, input, options \\ []) do
    path_ = "/channels/#{URI.encode(channel_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the settings of a data set.
  """
  def update_dataset(client, dataset_name, input, options \\ []) do
    path_ = "/datasets/#{URI.encode(dataset_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the settings of a data store.
  """
  def update_datastore(client, datastore_name, input, options \\ []) do
    path_ = "/datastores/#{URI.encode(datastore_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the settings of a pipeline. You must specify both a `channel` and a
  `datastore` activity and, optionally, as many as 23 additional activities
  in the `pipelineActivities` array.
  """
  def update_pipeline(client, pipeline_name, input, options \\ []) do
    path_ = "/pipelines/#{URI.encode(pipeline_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "iotanalytics"}
    host = build_host("iotanalytics", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, nil) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
