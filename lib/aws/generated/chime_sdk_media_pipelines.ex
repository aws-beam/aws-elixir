# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKMediaPipelines do
  @moduledoc """
  The Amazon Chime SDK media pipeline APIs in this section allow software
  developers to create Amazon Chime SDK media pipelines that capture, concatenate,
  or stream your Amazon Chime SDK meetings.

  For more information about media pipelines, see [Amazon Chime SDK media pipelines](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_Operations_Amazon_Chime_SDK_Media_Pipelines.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-07-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "media-pipelines-chime",
      global?: false,
      protocol: "rest-json",
      service_id: "Chime SDK Media Pipelines",
      signature_version: "v4",
      signing_name: "chime",
      target_prefix: nil
    }
  end

  @doc """
  Creates a media pipeline.
  """
  def create_media_capture_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/sdk-media-capture-pipelines"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateMediaCapturePipeline",
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
  Creates a media concatenation pipeline.
  """
  def create_media_concatenation_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/sdk-media-concatenation-pipelines"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateMediaConcatenationPipeline",
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
  Creates a media insights pipeline.
  """
  def create_media_insights_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/media-insights-pipelines"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  A structure that contains the static configurations for a media insights
  pipeline.
  """
  def create_media_insights_pipeline_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/media-insights-pipeline-configurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates a media live connector pipeline in an Amazon Chime SDK meeting.
  """
  def create_media_live_connector_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/sdk-media-live-connector-pipelines"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateMediaLiveConnectorPipeline",
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
  Deletes the media pipeline.
  """
  def delete_media_capture_pipeline(%Client{} = client, media_pipeline_id, input, options \\ []) do
    url_path = "/sdk-media-capture-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteMediaCapturePipeline",
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
  Deletes the specified configuration settings.
  """
  def delete_media_insights_pipeline_configuration(
        %Client{} = client,
        identifier,
        input,
        options \\ []
      ) do
    url_path = "/media-insights-pipeline-configurations/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes the media pipeline.
  """
  def delete_media_pipeline(%Client{} = client, media_pipeline_id, input, options \\ []) do
    url_path = "/sdk-media-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteMediaPipeline",
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
  Gets an existing media pipeline.
  """
  def get_media_capture_pipeline(%Client{} = client, media_pipeline_id, options \\ []) do
    url_path = "/sdk-media-capture-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetMediaCapturePipeline",
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
  Gets the configuration settings for a media insights pipeline.
  """
  def get_media_insights_pipeline_configuration(%Client{} = client, identifier, options \\ []) do
    url_path = "/media-insights-pipeline-configurations/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an existing media pipeline.
  """
  def get_media_pipeline(%Client{} = client, media_pipeline_id, options \\ []) do
    url_path = "/sdk-media-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetMediaPipeline",
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
  Returns a list of media pipelines.
  """
  def list_media_capture_pipelines(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sdk-media-capture-pipelines"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListMediaCapturePipelines",
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
  Lists the available media insights pipeline configurations.
  """
  def list_media_insights_pipeline_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/media-insights-pipeline-configurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of media pipelines.
  """
  def list_media_pipelines(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sdk-media-pipelines"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListMediaPipelines",
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
  Lists the tags available for a media pipeline.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"arn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
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
  The ARN of the media pipeline that you want to tag.

  Consists of the pipeline's endpoint region, resource ID, and pipeline ID.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=tag-resource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
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
  Removes any tags from a media pipeline.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=untag-resource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UntagResource",
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
  Updates the media insights pipeline's configuration settings.
  """
  def update_media_insights_pipeline_configuration(
        %Client{} = client,
        identifier,
        input,
        options \\ []
      ) do
    url_path = "/media-insights-pipeline-configurations/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the status of a media insights pipeline.
  """
  def update_media_insights_pipeline_status(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/media-insights-pipeline-status/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
