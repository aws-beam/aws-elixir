# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DSQL do
  @moduledoc """
  This is an interface reference for Amazon Aurora DSQL.

  It contains documentation for one of the
  programming or command line interfaces you can use to manage Amazon Aurora DSQL.

  Amazon Aurora DSQL is a serverless, distributed SQL database suitable for
  workloads of any size.
  is available in both single-Region and multi-Region configurations, so your
  clusters and databases are always available even if an Availability Zone or an
  Amazon Web Services Region are unavailable. lets you focus on using your data to
  acquire new insights for your business and customers.
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
        optional("kmsEncryptionKey") => String.t(),
        optional("multiRegionProperties") => multi_region_properties(),
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
        "encryptionDetails" => encryption_details(),
        "identifier" => String.t(),
        "multiRegionProperties" => multi_region_properties(),
        "status" => list(any())
      }

  """
  @type create_cluster_output() :: %{String.t() => any()}

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
        "identifier" => String.t(),
        "status" => list(any())
      }

  """
  @type delete_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_details() :: %{
        "encryptionStatus" => list(any()),
        "encryptionType" => list(any()),
        "kmsKeyArn" => String.t()
      }

  """
  @type encryption_details() :: %{String.t() => any()}

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
        "encryptionDetails" => encryption_details(),
        "identifier" => String.t(),
        "multiRegionProperties" => multi_region_properties(),
        "status" => list(any()),
        "tags" => map()
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

      list_clusters_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_clusters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_clusters_output() :: %{
        "clusters" => list(cluster_summary()),
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

      multi_region_properties() :: %{
        "clusters" => list(String.t()),
        "witnessRegion" => String.t()
      }

  """
  @type multi_region_properties() :: %{String.t() => any()}

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
        required("tagKeys") => list(String.t())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cluster_input() :: %{
        optional("clientToken") => String.t(),
        optional("deletionProtectionEnabled") => boolean(),
        optional("kmsEncryptionKey") => String.t(),
        optional("multiRegionProperties") => multi_region_properties()
      }

  """
  @type update_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cluster_output() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "identifier" => String.t(),
        "status" => list(any())
      }

  """
  @type update_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
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

  @type create_cluster_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type delete_cluster_errors() :: resource_not_found_exception() | conflict_exception()

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

  @type update_cluster_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

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
  The CreateCluster API allows you to create both single-region clusters and
  multi-Region
  clusters.

  With the addition of the *multiRegionProperties* parameter,
  you can create a cluster with witness Region support and establish peer
  relationships with
  clusters in other Regions during creation.

  Creating multi-Region clusters requires additional IAM permissions beyond those
  needed for single-Region clusters, as detailed in the ## Required permissions
  section
  below.

  ## Required permissions

  ## Definitions

  ### dsql:CreateCluster

  Required to create a cluster.

  Resources: `arn:aws:dsql:region:account-id:cluster/*`

  ### dsql:TagResource

  Permission to add tags to a resource.

  Resources: `arn:aws:dsql:region:account-id:cluster/*`

  ### dsql:PutMultiRegionProperties

  Permission to configure multi-region properties for a cluster.

  Resources: `arn:aws:dsql:region:account-id:cluster/*`

  ### dsql:AddPeerCluster

  When specifying `multiRegionProperties.clusters`, permission to
  add peer clusters.

  Resources:

    
  Local cluster: `arn:aws:dsql:region:account-id:cluster/*`

    
  Each peer cluster: exact ARN of each specified peer cluster

  ### dsql:PutWitnessRegion

  When specifying `multiRegionProperties.witnessRegion`, permission
  to set a witness Region. This permission is checked both in the cluster Region
  and
  in the witness Region.

  Resources: `arn:aws:dsql:region:account-id:cluster/*`

  Condition Keys: `dsql:WitnessRegion` (matching the specified witness region)

    
  The witness Region specified in
  `multiRegionProperties.witnessRegion` cannot be the same as the
  cluster's Region.
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
  The *UpdateCluster* API allows you to modify both single-Region and multi-Region
  cluster configurations.

  With the *multiRegionProperties* parameter, you can add or modify witness Region
  support and manage peer relationships with clusters in other Regions.

  Note that updating multi-region clusters requires additional IAM permissions
  beyond those needed for standard cluster updates, as detailed in the Permissions
  section.

  ## Required permissions

  ## Definitions

  ### dsql:UpdateCluster

  Permission to update a DSQL cluster.

  Resources:

  ```
  arn:aws:dsql:*region*:*account-id*:cluster/*cluster-id*

  ```

  ## Definitions

  ### dsql:PutMultiRegionProperties

  Permission to configure multi-Region properties for a cluster.

  Resources:

  ```
  arn:aws:dsql:*region*:*account-id*:cluster/*cluster-id*

  ```

  ## Definitions

  ### dsql:GetCluster

  Permission to retrieve cluster information.

  Resources:

  ```
  arn:aws:dsql:*region*:*account-id*:cluster/*cluster-id*

  ```

  ### dsql:AddPeerCluster

  Permission to add peer clusters.

  Resources:

    
  Local cluster:

  ```
  arn:aws:dsql:*region*:*account-id*:cluster/*cluster-id*

  ```

    
  Each peer cluster: exact ARN of each specified peer cluster

  ### dsql:RemovePeerCluster

  Permission to remove peer clusters. The *dsql:RemovePeerCluster* permission
  uses a wildcard ARN pattern to simplify permission management during updates.

  Resources:
  `arn:aws:dsql:*:*account-id*:cluster/*`

  ## Definitions

  ### dsql:PutWitnessRegion

  Permission to set a witness Region.

  Resources:

  ```
  arn:aws:dsql:*region*:*account-id*:cluster/*cluster-id*

  ```

  Condition Keys: dsql:WitnessRegion (matching the specified witness
  Region)

  ## This permission is checked both in the cluster Region and in the witness
  Region.

    
  The witness region specified in
  `multiRegionProperties.witnessRegion` cannot be the same as the
  cluster's Region.

    
  When updating clusters with peer relationships, permissions are checked for both
  adding and removing peers.

    
  The `dsql:RemovePeerCluster` permission uses a wildcard ARN pattern to simplify
  permission management during updates.
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
