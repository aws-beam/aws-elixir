# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKMediaPipelines do
  @moduledoc """
  The Amazon Chime SDK media pipeline APIs in this section allow software
  developers to create Amazon Chime SDK media pipelines and capture audio, video,
  events, and data messages from Amazon Chime SDK meetings.

  For more information about media pipleines, see [Amzon Chime SDK media pipelines](https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Media_Pipelines.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  Creates a media capture pipeline.
  """
  def create_media_capture_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/sdk-media-capture-pipelines"
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
  Deletes the media capture pipeline.
  """
  def delete_media_capture_pipeline(%Client{} = client, media_pipeline_id, input, options \\ []) do
    url_path = "/sdk-media-capture-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
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
  Gets an existing media capture pipeline.
  """
  def get_media_capture_pipeline(%Client{} = client, media_pipeline_id, options \\ []) do
    url_path = "/sdk-media-capture-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
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
  Returns a list of media capture pipelines.
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
  Lists the tags applied to an Amazon Chime SDK media capture pipeline.
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
  Applies the specified tags to the specified Amazon Chime SDK media capture
  pipeline.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=tag-resource"
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
      204
    )
  end

  @doc """
  Removes the specified tags from the specified Amazon Chime SDK media capture
  pipeline.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=untag-resource"
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
      204
    )
  end
end
