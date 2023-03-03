# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Pipes do
  @moduledoc """
  Amazon EventBridge Pipes connects event sources to targets.

  Pipes reduces the need for specialized knowledge and integration code when
  developing event driven architectures. This helps ensures consistency across
  your company’s applications. With Pipes, the target can be any available
  EventBridge target. To set up a pipe, you select the event source, add optional
  event filtering, define optional enrichment, and select the target for the event
  data.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2015-10-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "pipes",
      global?: false,
      protocol: "rest-json",
      service_id: "Pipes",
      signature_version: "v4",
      signing_name: "pipes",
      target_prefix: nil
    }
  end

  @doc """
  Create a pipe.

  Amazon EventBridge Pipes connect event sources to targets and reduces the need
  for specialized knowledge and integration code.
  """
  def create_pipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/pipes/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Delete an existing pipe.

  For more information about pipes, see [Amazon EventBridge Pipes](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html)
  in the Amazon EventBridge User Guide.
  """
  def delete_pipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/pipes/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Get the information about an existing pipe.

  For more information about pipes, see [Amazon EventBridge Pipes](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html)
  in the Amazon EventBridge User Guide.
  """
  def describe_pipe(%Client{} = client, name, options \\ []) do
    url_path = "/v1/pipes/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the pipes associated with this account.

  For more information about pipes, see [Amazon EventBridge Pipes](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html)
  in the Amazon EventBridge User Guide.
  """
  def list_pipes(
        %Client{} = client,
        current_state \\ nil,
        desired_state \\ nil,
        limit \\ nil,
        name_prefix \\ nil,
        next_token \\ nil,
        source_prefix \\ nil,
        target_prefix \\ nil,
        options \\ []
      ) do
    url_path = "/v1/pipes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_prefix) do
        [{"TargetPrefix", target_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(source_prefix) do
        [{"SourcePrefix", source_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_prefix) do
        [{"NamePrefix", name_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"Limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(desired_state) do
        [{"DesiredState", desired_state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(current_state) do
        [{"CurrentState", current_state} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays the tags associated with a pipe.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Start an existing pipe.
  """
  def start_pipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/pipes/#{AWS.Util.encode_uri(name)}/start"
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
      200
    )
  end

  @doc """
  Stop an existing pipe.
  """
  def stop_pipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/pipes/#{AWS.Util.encode_uri(name)}/stop"
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
      200
    )
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified pipe.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions by granting a user permission to access or change only
  resources with certain tag values.

  Tags don't have any semantic meaning to Amazon Web Services and are interpreted
  strictly as strings of characters.

  You can use the `TagResource` action with a pipe that already has tags. If you
  specify a new tag key, this tag is appended to the list of tags associated with
  the pipe. If you specify a tag key that is already associated with the pipe, the
  new tag value that you specify replaces the previous value for that tag.

  You can associate as many as 50 tags with a pipe.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Removes one or more tags from the specified pipes.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Update an existing pipe.

  When you call `UpdatePipe`, only the fields that are included in the request are
  changed, the rest are unchanged. The exception to this is if you modify any
  Amazon Web Services-service specific fields in the `SourceParameters`,
  `EnrichmentParameters`, or `TargetParameters` objects. The fields in these
  objects are updated atomically as one and override existing values. This is by
  design and means that if you don't specify an optional field in one of these
  Parameters objects, that field will be set to its system-default value after the
  update.

  For more information about pipes, see [ Amazon EventBridge Pipes](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html)
  in the Amazon EventBridge User Guide.
  """
  def update_pipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/pipes/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
