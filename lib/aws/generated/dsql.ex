# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DSQL do
  @moduledoc """
  This is an interface reference for Amazon Aurora DSQL.

  It contains documentation for one of the programming or
  command line interfaces you can use to manage Amazon Aurora DSQL.

  Amazon Aurora DSQL is a serverless, distributed SQL
  database suitable for workloads of any size. Aurora DSQL
  is available in both single-Region and multi-Region configurations,
  so your clusters and databases are always available even if an
  Availability Zone or an Amazon Web Services Region are unavailable. Aurora DSQL
  lets you focus on using your data to acquire new insights for your
  business and customers.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cluster_summary() :: %{
        "arn" => String.t(),
        "identifier" => String.t()
      }

  """
  @type cluster_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cluster_input() :: %{
        optional("clientToken") => String.t(),
        optional("deletionProtectionEnabled") => boolean(),
        optional("tags") => map()
      }

  """
  @type create_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cluster_output() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "deletionProtectionEnabled" => boolean(),
        "identifier" => String.t(),
        "status" => list(any())
      }

  """
  @type create_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_multi_region_clusters_input() :: %{
        optional("clientToken") => String.t(),
        optional("clusterProperties") => map(),
        required("linkedRegionList") => list(String.t()()),
        required("witnessRegion") => String.t()
      }

  """
  @type create_multi_region_clusters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_multi_region_clusters_output() :: %{
        "linkedClusterArns" => list(String.t()())
      }

  """
  @type create_multi_region_clusters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cluster_input() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cluster_output() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "deletionProtectionEnabled" => boolean(),
        "identifier" => String.t(),
        "status" => list(any())
      }

  """
  @type delete_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_multi_region_clusters_input() :: %{
        optional("clientToken") => String.t(),
        required("linkedClusterArns") => list(String.t()())
      }

  """
  @type delete_multi_region_clusters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cluster_input() :: %{}

  """
  @type get_cluster_input() :: %{}

  @typedoc """

  ## Example:

      get_cluster_output() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "deletionProtectionEnabled" => boolean(),
        "identifier" => String.t(),
        "linkedClusterArns" => list(String.t()()),
        "status" => list(any()),
        "witnessRegion" => String.t()
      }

  """
  @type get_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vpc_endpoint_service_name_input() :: %{}

  """
  @type get_vpc_endpoint_service_name_input() :: %{}

  @typedoc """

  ## Example:

      get_vpc_endpoint_service_name_output() :: %{
        "serviceName" => String.t()
      }

  """
  @type get_vpc_endpoint_service_name_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      linked_cluster_properties() :: %{
        "deletionProtectionEnabled" => boolean(),
        "tags" => map()
      }

  """
  @type linked_cluster_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_clusters_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_clusters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_clusters_output() :: %{
        "clusters" => list(cluster_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_clusters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cluster_input() :: %{
        optional("clientToken") => String.t(),
        optional("deletionProtectionEnabled") => boolean()
      }

  """
  @type update_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cluster_output() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "deletionProtectionEnabled" => boolean(),
        "identifier" => String.t(),
        "linkedClusterArns" => list(String.t()()),
        "status" => list(any()),
        "witnessRegion" => String.t()
      }

  """
  @type update_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @type create_cluster_errors() :: service_quota_exceeded_exception() | conflict_exception()

  @type create_multi_region_clusters_errors() ::
          service_quota_exceeded_exception() | conflict_exception()

  @type delete_cluster_errors() :: resource_not_found_exception() | conflict_exception()

  @type delete_multi_region_clusters_errors() ::
          resource_not_found_exception() | conflict_exception()

  @type get_cluster_errors() :: resource_not_found_exception()

  @type get_vpc_endpoint_service_name_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type list_clusters_errors() :: resource_not_found_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type tag_resource_errors() ::
          service_quota_exceeded_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  @type update_cluster_errors() :: resource_not_found_exception() | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "dsql",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "DSQL",
      signature_version: "v4",
      signing_name: "dsql",
      target_prefix: nil
    }
  end

  @doc """
  Creates a cluster in Amazon Aurora DSQL.
  """
  @spec create_cluster(map(), create_cluster_input(), list()) ::
          {:ok, create_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cluster_errors()}
  def create_cluster(%Client{} = client, input, options \\ []) do
    url_path = "/cluster"
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
  Creates multi-Region clusters in Amazon Aurora DSQL.

  Multi-Region clusters require a linked Region list, which is an array
  of the Regions in which you want to create linked clusters.
  Multi-Region clusters require a witness Region, which participates in quorum in
  failure scenarios.
  """
  @spec create_multi_region_clusters(map(), create_multi_region_clusters_input(), list()) ::
          {:ok, create_multi_region_clusters_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_multi_region_clusters_errors()}
  def create_multi_region_clusters(%Client{} = client, input, options \\ []) do
    url_path = "/multi-region-clusters"
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
  Deletes a cluster in Amazon Aurora DSQL.
  """
  @spec delete_cluster(map(), String.t(), delete_cluster_input(), list()) ::
          {:ok, delete_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cluster_errors()}
  def delete_cluster(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "client-token"}
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
      200
    )
  end

  @doc """
  Deletes a multi-Region cluster in Amazon Aurora DSQL.
  """
  @spec delete_multi_region_clusters(map(), delete_multi_region_clusters_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_multi_region_clusters_errors()}
  def delete_multi_region_clusters(%Client{} = client, input, options \\ []) do
    url_path = "/multi-region-clusters"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "client-token"},
        {"linkedClusterArns", "linked-cluster-arns"}
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
      200
    )
  end

  @doc """
  Retrieves information about a cluster.
  """
  @spec get_cluster(map(), String.t(), list()) ::
          {:ok, get_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cluster_errors()}
  def get_cluster(%Client{} = client, identifier, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the VPC endpoint service name.
  """
  @spec get_vpc_endpoint_service_name(map(), String.t(), list()) ::
          {:ok, get_vpc_endpoint_service_name_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_vpc_endpoint_service_name_errors()}
  def get_vpc_endpoint_service_name(%Client{} = client, identifier, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(identifier)}/vpc-endpoint-service-name"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a list of clusters.
  """
  @spec list_clusters(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_clusters_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_clusters_errors()}
  def list_clusters(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/cluster"
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
  Lists all of the tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Tags a resource with a map of key and value pairs.
  """
  @spec tag_resource(map(), String.t(), tag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes a tag from a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Updates a cluster.
  """
  @spec update_cluster(map(), String.t(), update_cluster_input(), list()) ::
          {:ok, update_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_cluster_errors()}
  def update_cluster(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(identifier)}"
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
end
