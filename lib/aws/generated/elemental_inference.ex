# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElementalInference do
  @moduledoc """
  This is the AWS Elemental Inference REST API Reference.

  It provides information on the URL, request contents, and response contents of
  each AWS Elemental Inference REST operation.

  We assume that you have the IAM permissions that you need to use AWS Elemental
  Inference via the REST API. We also assume that you are familiar with the
  features and operations of AWS Elemental Inference as described in *AWS
  Elemental Inference User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_feed_request() :: %{
        optional("dryRun") => [boolean()],
        required("associatedResourceName") => String.t() | atom(),
        required("outputs") => list(create_output())
      }

  """
  @type associate_feed_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_feed_response() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom()
      }

  """
  @type associate_feed_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      clipping_config() :: %{
        "callbackMetadata" => String.t() | atom()
      }

  """
  @type clipping_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_feed_request() :: %{
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("outputs") => list(create_output())
      }

  """
  @type create_feed_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_feed_response() :: %{
        "arn" => String.t() | atom(),
        "association" => feed_association(),
        "dataEndpoints" => list([String.t() | atom()]()),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "outputs" => list(get_output()),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type create_feed_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_output() :: %{
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "outputConfig" => list(),
        "status" => list(any())
      }

  """
  @type create_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cropping_config() :: %{}

  """
  @type cropping_config() :: %{}

  @typedoc """

  ## Example:

      delete_feed_request() :: %{}

  """
  @type delete_feed_request() :: %{}

  @typedoc """

  ## Example:

      delete_feed_response() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_feed_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_feed_request() :: %{
        optional("dryRun") => [boolean()],
        required("associatedResourceName") => String.t() | atom()
      }

  """
  @type disassociate_feed_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_feed_response() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom()
      }

  """
  @type disassociate_feed_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      feed_association() :: %{
        "associatedResourceName" => String.t() | atom()
      }

  """
  @type feed_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      feed_summary() :: %{
        "arn" => String.t() | atom(),
        "association" => feed_association(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type feed_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_feed_request() :: %{}

  """
  @type get_feed_request() :: %{}

  @typedoc """

  ## Example:

      get_feed_response() :: %{
        "arn" => String.t() | atom(),
        "association" => feed_association(),
        "dataEndpoints" => list([String.t() | atom()]()),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "outputs" => list(get_output()),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type get_feed_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_output() :: %{
        "description" => String.t() | atom(),
        "fromAssociation" => [boolean()],
        "name" => String.t() | atom(),
        "outputConfig" => list(),
        "status" => list(any())
      }

  """
  @type get_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_feeds_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_feeds_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_feeds_response() :: %{
        "feeds" => list(feed_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_feeds_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_request_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type too_many_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_feed_request() :: %{
        required("name") => String.t() | atom(),
        required("outputs") => list(update_output())
      }

  """
  @type update_feed_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_feed_response() :: %{
        "arn" => String.t() | atom(),
        "association" => feed_association(),
        "dataEndpoints" => list([String.t() | atom()]()),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "outputs" => list(get_output()),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type update_feed_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_output() :: %{
        "description" => String.t() | atom(),
        "fromAssociation" => [boolean()],
        "name" => String.t() | atom(),
        "outputConfig" => list(),
        "status" => list(any())
      }

  """
  @type update_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type associate_feed_errors() ::
          validation_exception()
          | too_many_request_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_feed_errors() ::
          validation_exception()
          | too_many_request_exception()
          | service_quota_exceeded_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_feed_errors() ::
          validation_exception()
          | too_many_request_exception()
          | resource_not_found_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | access_denied_exception()

  @type disassociate_feed_errors() ::
          validation_exception()
          | too_many_request_exception()
          | resource_not_found_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_feed_errors() ::
          too_many_request_exception()
          | resource_not_found_exception()
          | internal_server_error_exception()
          | access_denied_exception()

  @type list_feeds_errors() ::
          validation_exception()
          | too_many_request_exception()
          | resource_not_found_exception()
          | internal_server_error_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | too_many_request_exception()
          | resource_not_found_exception()
          | internal_server_error_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | too_many_request_exception()
          | resource_not_found_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | too_many_request_exception()
          | resource_not_found_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_feed_errors() ::
          validation_exception()
          | too_many_request_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-11-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "elemental-inference",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ElementalInference",
      signature_version: "v4",
      signing_name: "elemental-inference",
      target_prefix: nil
    }
  end

  @doc """
  Associates a resource with the feed.

  The resource provides the input that Elemental Inference needs needs in order to
  perform an Elemental Inference feature, such as cropping video. You always
  provide the resource by associating it with a feed. You can associate only one
  resource with each feed.
  """
  @spec associate_feed(map(), String.t() | atom(), associate_feed_request(), list()) ::
          {:ok, associate_feed_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_feed_errors()}
  def associate_feed(%Client{} = client, id, input, options \\ []) do
    url_path = "/v1/feed/#{AWS.Util.encode_uri(id)}/associate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a feed.

  The feed is the target for live streams being sent by the calling application.
  An example of a calling application is AWS Elemental MediaLive. After you create
  the feed, you can associate a resource with the feed.
  """
  @spec create_feed(map(), create_feed_request(), list()) ::
          {:ok, create_feed_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_feed_errors()}
  def create_feed(%Client{} = client, input, options \\ []) do
    url_path = "/v1/feed"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes the specified feed.

  The feed can be deleted at any time.
  """
  @spec delete_feed(map(), String.t() | atom(), delete_feed_request(), list()) ::
          {:ok, delete_feed_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_feed_errors()}
  def delete_feed(%Client{} = client, id, input, options \\ []) do
    url_path = "/v1/feed/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Releases the resource (for example, an MediaLive channel) that is associated
  with this feed.

  The outputs in the feed become disabled.
  """
  @spec disassociate_feed(map(), String.t() | atom(), disassociate_feed_request(), list()) ::
          {:ok, disassociate_feed_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_feed_errors()}
  def disassociate_feed(%Client{} = client, id, input, options \\ []) do
    url_path = "/v1/feed/#{AWS.Util.encode_uri(id)}/disassociate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves information about the specified feed.
  """
  @spec get_feed(map(), String.t() | atom(), list()) ::
          {:ok, get_feed_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_feed_errors()}
  def get_feed(%Client{} = client, id, options \\ []) do
    url_path = "/v1/feed/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays a list of feeds that belong to this AWS account.
  """
  @spec list_feeds(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_feeds_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_feeds_errors()}
  def list_feeds(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/feeds"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all tags that are on an Elemental Inference resource in the current region.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Associates the specified tags to the resource identified by the specified
  resourceArn in the current region.

  If existing tags on a resource are not specified in the request parameters, they
  are not changed. When a resource is deleted, the tags associated with that
  resource are also deleted.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes specified tags from the specified resource in the current region.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates the name and/or outputs in a feed.
  """
  @spec update_feed(map(), String.t() | atom(), update_feed_request(), list()) ::
          {:ok, update_feed_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_feed_errors()}
  def update_feed(%Client{} = client, id, input, options \\ []) do
    url_path = "/v1/feed/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
