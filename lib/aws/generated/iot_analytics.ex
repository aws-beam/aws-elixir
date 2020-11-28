# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTAnalytics do
  @moduledoc """
  AWS IoT Analytics allows you to collect large amounts of device data, process
  messages, and store them.

  You can then query the data and run sophisticated analytics on it. AWS IoT
  Analytics enables advanced data exploration through integration with Jupyter
  Notebooks and data visualization through integration with Amazon QuickSight.

  Traditional analytics and business intelligence tools are designed to process
  structured data. IoT data often comes from devices that record noisy processes
  (such as temperature, motion, or sound). As a result the data from these devices
  can have significant gaps, corrupted messages, and false readings that must be
  cleaned up before analysis can occur. Also, IoT data is often only meaningful in
  the context of other data from external sources.

  AWS IoT Analytics automates the steps required to analyze data from IoT devices.
  AWS IoT Analytics filters, transforms, and enriches IoT data before storing it
  in a time-series data store for analysis. You can set up the service to collect
  only the data you need from your devices, apply mathematical transforms to
  process the data, and enrich the data with device-specific metadata such as
  device type and location before storing it. Then, you can analyze your data by
  running queries using the built-in SQL query engine, or perform more complex
  analytics and machine learning inference. AWS IoT Analytics includes pre-built
  models for common IoT use cases so you can answer questions like which devices
  are about to fail or which customers are at risk of abandoning their wearable
  devices.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iotanalytics",
      global?: false,
      protocol: "rest-json",
      service_id: "IoTAnalytics",
      signature_version: "v4",
      signing_name: "iotanalytics",
      target_prefix: nil
    }
  end

  @doc """
  Sends messages to a channel.
  """
  def batch_put_message(%Client{} = client, input, options \\ []) do
    url_path = "/messages/batch"
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
  Cancels the reprocessing of data through the pipeline.
  """
  def cancel_pipeline_reprocessing(
        %Client{} = client,
        pipeline_name,
        reprocessing_id,
        input,
        options \\ []
      ) do
    url_path =
      "/pipelines/#{URI.encode(pipeline_name)}/reprocessing/#{URI.encode(reprocessing_id)}"

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
  Creates a channel.

  A channel collects data from an MQTT topic and archives the raw, unprocessed
  messages before publishing the data to a pipeline.
  """
  def create_channel(%Client{} = client, input, options \\ []) do
    url_path = "/channels"
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
      201
    )
  end

  @doc """
  Creates a dataset.

  A dataset stores data retrieved from a data store by applying a `queryAction` (a
  SQL query) or a `containerAction` (executing a containerized application). This
  operation creates the skeleton of a dataset. The dataset can be populated
  manually by calling `CreateDatasetContent` or automatically according to a
  trigger you specify.
  """
  def create_dataset(%Client{} = client, input, options \\ []) do
    url_path = "/datasets"
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
      201
    )
  end

  @doc """
  Creates the content of a data set by applying a `queryAction` (a SQL query) or a
  `containerAction` (executing a containerized application).
  """
  def create_dataset_content(%Client{} = client, dataset_name, input, options \\ []) do
    url_path = "/datasets/#{URI.encode(dataset_name)}/content"
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
  Creates a data store, which is a repository for messages.
  """
  def create_datastore(%Client{} = client, input, options \\ []) do
    url_path = "/datastores"
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
      201
    )
  end

  @doc """
  Creates a pipeline.

  A pipeline consumes messages from a channel and allows you to process the
  messages before storing them in a data store. You must specify both a `channel`
  and a `datastore` activity and, optionally, as many as 23 additional activities
  in the `pipelineActivities` array.
  """
  def create_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/pipelines"
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
      201
    )
  end

  @doc """
  Deletes the specified channel.
  """
  def delete_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channels/#{URI.encode(channel_name)}"
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
      204
    )
  end

  @doc """
  Deletes the specified dataset.

  You do not have to delete the content of the dataset before you perform this
  operation.
  """
  def delete_dataset(%Client{} = client, dataset_name, input, options \\ []) do
    url_path = "/datasets/#{URI.encode(dataset_name)}"
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
      204
    )
  end

  @doc """
  Deletes the content of the specified dataset.
  """
  def delete_dataset_content(%Client{} = client, dataset_name, input, options \\ []) do
    url_path = "/datasets/#{URI.encode(dataset_name)}/content"
    headers = []

    {query_params, input} =
      [
        {"versionId", "versionId"}
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
      204
    )
  end

  @doc """
  Deletes the specified data store.
  """
  def delete_datastore(%Client{} = client, datastore_name, input, options \\ []) do
    url_path = "/datastores/#{URI.encode(datastore_name)}"
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
      204
    )
  end

  @doc """
  Deletes the specified pipeline.
  """
  def delete_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/pipelines/#{URI.encode(pipeline_name)}"
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
      204
    )
  end

  @doc """
  Retrieves information about a channel.
  """
  def describe_channel(%Client{} = client, channel_name, include_statistics \\ nil, options \\ []) do
    url_path = "/channels/#{URI.encode(channel_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_statistics) do
        [{"includeStatistics", include_statistics} | query_params]
      else
        query_params
      end

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
  Retrieves information about a dataset.
  """
  def describe_dataset(%Client{} = client, dataset_name, options \\ []) do
    url_path = "/datasets/#{URI.encode(dataset_name)}"
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
  Retrieves information about a data store.
  """
  def describe_datastore(
        %Client{} = client,
        datastore_name,
        include_statistics \\ nil,
        options \\ []
      ) do
    url_path = "/datastores/#{URI.encode(datastore_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_statistics) do
        [{"includeStatistics", include_statistics} | query_params]
      else
        query_params
      end

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
  Retrieves the current settings of the AWS IoT Analytics logging options.
  """
  def describe_logging_options(%Client{} = client, options \\ []) do
    url_path = "/logging"
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
  Retrieves information about a pipeline.
  """
  def describe_pipeline(%Client{} = client, pipeline_name, options \\ []) do
    url_path = "/pipelines/#{URI.encode(pipeline_name)}"
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
  Retrieves the contents of a data set as presigned URIs.
  """
  def get_dataset_content(%Client{} = client, dataset_name, version_id \\ nil, options \\ []) do
    url_path = "/datasets/#{URI.encode(dataset_name)}/content"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version_id) do
        [{"versionId", version_id} | query_params]
      else
        query_params
      end

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
  Retrieves a list of channels.
  """
  def list_channels(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/channels"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

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
  Lists information about data set contents that have been created.
  """
  def list_dataset_contents(
        %Client{} = client,
        dataset_name,
        max_results \\ nil,
        next_token \\ nil,
        scheduled_before \\ nil,
        scheduled_on_or_after \\ nil,
        options \\ []
      ) do
    url_path = "/datasets/#{URI.encode(dataset_name)}/contents"
    headers = []
    query_params = []

    query_params =
      if !is_nil(scheduled_on_or_after) do
        [{"scheduledOnOrAfter", scheduled_on_or_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(scheduled_before) do
        [{"scheduledBefore", scheduled_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

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
  Retrieves information about data sets.
  """
  def list_datasets(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/datasets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

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
  Retrieves a list of data stores.
  """
  def list_datastores(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/datastores"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

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
  Retrieves a list of pipelines.
  """
  def list_pipelines(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/pipelines"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

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
  Lists the tags (metadata) that you have assigned to the resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

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
  Sets or updates the AWS IoT Analytics logging options.

  If you update the value of any `loggingOptions` field, it takes up to one minute
  for the change to take effect. Also, if you change the policy attached to the
  role you specified in the `roleArn` field (for example, to correct an invalid
  policy), it takes up to five minutes for that change to take effect.
  """
  def put_logging_options(%Client{} = client, input, options \\ []) do
    url_path = "/logging"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Simulates the results of running a pipeline activity on a message payload.
  """
  def run_pipeline_activity(%Client{} = client, input, options \\ []) do
    url_path = "/pipelineactivities/run"
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
  Retrieves a sample of messages from the specified channel ingested during the
  specified timeframe.

  Up to 10 messages can be retrieved.
  """
  def sample_channel_data(
        %Client{} = client,
        channel_name,
        end_time \\ nil,
        max_messages \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path = "/channels/#{URI.encode(channel_name)}/sample"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_messages) do
        [{"maxMessages", max_messages} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

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
  Starts the reprocessing of raw message data through the pipeline.
  """
  def start_pipeline_reprocessing(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/pipelines/#{URI.encode(pipeline_name)}/reprocessing"
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
  Adds to or modifies the tags of the given resource.

  Tags are metadata that can be used to manage a resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
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
      204
    )
  end

  @doc """
  Removes the given tags (metadata) from the resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"},
        {"tagKeys", "tagKeys"}
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
      204
    )
  end

  @doc """
  Updates the settings of a channel.
  """
  def update_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channels/#{URI.encode(channel_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the settings of a data set.
  """
  def update_dataset(%Client{} = client, dataset_name, input, options \\ []) do
    url_path = "/datasets/#{URI.encode(dataset_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the settings of a data store.
  """
  def update_datastore(%Client{} = client, datastore_name, input, options \\ []) do
    url_path = "/datastores/#{URI.encode(datastore_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the settings of a pipeline.

  You must specify both a `channel` and a `datastore` activity and, optionally, as
  many as 23 additional activities in the `pipelineActivities` array.
  """
  def update_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/pipelines/#{URI.encode(pipeline_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end