# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaTailor do
  @moduledoc """
  Use the AWS Elemental MediaTailor SDK to configure scalable ad insertion for
  your live and VOD content.

  With AWS Elemental MediaTailor, you can serve targeted ads to viewers while
  maintaining broadcast quality in over-the-top (OTT) video applications. For
  information about using the service, including detailed information about the
  settings covered in this guide, see the AWS Elemental MediaTailor User Guide.

  Through the SDK, you manage AWS Elemental MediaTailor configurations the same as
  you do through the console. For example, you specify ad insertion behavior and
  mapping information for the origin server and the ad decision server (ADS).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-04-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.mediatailor",
      global?: false,
      protocol: "rest-json",
      service_id: "MediaTailor",
      signature_version: "v4",
      signing_name: "mediatailor",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the playback configuration for the specified name.
  """
  def delete_playback_configuration(%Client{} = client, name, input, options \\ []) do
    url_path = "/playbackConfiguration/#{URI.encode(name)}"
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
  Returns the playback configuration for the specified name.
  """
  def get_playback_configuration(%Client{} = client, name, options \\ []) do
    url_path = "/playbackConfiguration/#{URI.encode(name)}"
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
  Returns a list of the playback configurations defined in AWS Elemental
  MediaTailor.

  You can specify a maximum number of configurations to return at a time. The
  default maximum is 50. Results are returned in pagefuls. If MediaTailor has more
  configurations than the specified maximum, it provides parameters in the
  response that you can use to retrieve the next pageful.
  """
  def list_playback_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/playbackConfigurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
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
  Returns a list of the tags assigned to the specified playback configuration
  resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Adds a new playback configuration to AWS Elemental MediaTailor.
  """
  def put_playback_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/playbackConfiguration"
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
      200
    )
  end

  @doc """
  Adds tags to the specified playback configuration resource.

  You can specify one or more tags to add.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Removes tags from the specified playback configuration resource.

  You can specify one or more tags to remove.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
      204
    )
  end
end