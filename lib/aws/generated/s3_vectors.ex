# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3Vectors do
  @moduledoc """
  Amazon S3 vector buckets are a bucket type to store and search vectors with
  sub-second search times.

  They are designed to provide dedicated API operations for you to interact with
  vectors to do similarity search. Within a vector bucket, you use a vector index
  to organize and logically group your vector data. When you make a write or read
  request, you direct it to a single vector index. You store your vector data as
  vectors. A vector contains a key (a name that you assign), a multi-dimensional
  vector, and, optionally, metadata that describes a vector. The key uniquely
  identifies the vector in a vector index.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_index_output() :: %{}

  """
  @type create_index_output() :: %{}

  @typedoc """

  ## Example:

      kms_disabled_exception() :: %{
        "message" => String.t()
      }

  """
  @type kms_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vector_bucket_summary() :: %{
        "creationTime" => [non_neg_integer()],
        "vectorBucketArn" => String.t(),
        "vectorBucketName" => String.t()
      }

  """
  @type vector_bucket_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_configuration() :: %{
        "kmsKeyArn" => String.t(),
        "sseType" => list(any())
      }

  """
  @type encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vector_bucket_policy_output() :: %{
        "policy" => String.t()
      }

  """
  @type get_vector_bucket_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vector_bucket_input() :: %{
        optional("encryptionConfiguration") => encryption_configuration(),
        required("vectorBucketName") => String.t()
      }

  """
  @type create_vector_bucket_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vectors_output() :: %{
        "vectors" => list(get_output_vector())
      }

  """
  @type get_vectors_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_output_vector() :: %{
        "data" => list(),
        "key" => String.t(),
        "metadata" => any()
      }

  """
  @type get_output_vector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_vectors_input() :: %{
        optional("filter") => [any()],
        optional("indexArn") => String.t(),
        optional("indexName") => String.t(),
        optional("returnDistance") => [boolean()],
        optional("returnMetadata") => [boolean()],
        optional("vectorBucketName") => String.t(),
        required("queryVector") => list(),
        required("topK") => integer()
      }

  """
  @type query_vectors_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_index_output() :: %{
        "index" => index()
      }

  """
  @type get_index_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vector_bucket_input() :: %{
        optional("vectorBucketArn") => String.t(),
        optional("vectorBucketName") => String.t()
      }

  """
  @type get_vector_bucket_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vector_buckets_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("prefix") => String.t()
      }

  """
  @type list_vector_buckets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vector_bucket_policy_output() :: %{}

  """
  @type delete_vector_bucket_policy_output() :: %{}

  @typedoc """

  ## Example:

      put_vectors_output() :: %{}

  """
  @type put_vectors_output() :: %{}

  @typedoc """

  ## Example:

      put_vectors_input() :: %{
        optional("indexArn") => String.t(),
        optional("indexName") => String.t(),
        optional("vectorBucketName") => String.t(),
        required("vectors") => list(put_input_vector())
      }

  """
  @type put_vectors_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      index() :: %{
        "creationTime" => [non_neg_integer()],
        "dataType" => list(any()),
        "dimension" => integer(),
        "distanceMetric" => list(any()),
        "indexArn" => String.t(),
        "indexName" => String.t(),
        "metadataConfiguration" => metadata_configuration(),
        "vectorBucketName" => String.t()
      }

  """
  @type index() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_vectors_output() :: %{
        "vectors" => list(query_output_vector())
      }

  """
  @type query_vectors_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vector_bucket_output() :: %{}

  """
  @type delete_vector_bucket_output() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      index_summary() :: %{
        "creationTime" => [non_neg_integer()],
        "indexArn" => String.t(),
        "indexName" => String.t(),
        "vectorBucketName" => String.t()
      }

  """
  @type index_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_indexes_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("prefix") => String.t(),
        optional("vectorBucketArn") => String.t(),
        optional("vectorBucketName") => String.t()
      }

  """
  @type list_indexes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vector_bucket_policy_input() :: %{
        optional("vectorBucketArn") => String.t(),
        optional("vectorBucketName") => String.t()
      }

  """
  @type delete_vector_bucket_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_output_vector() :: %{
        "data" => list(),
        "key" => String.t(),
        "metadata" => any()
      }

  """
  @type list_output_vector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_input_vector() :: %{
        "data" => list(),
        "key" => String.t(),
        "metadata" => any()
      }

  """
  @type put_input_vector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_vector_bucket_policy_output() :: %{}

  """
  @type put_vector_bucket_policy_output() :: %{}

  @typedoc """

  ## Example:

      create_vector_bucket_output() :: %{}

  """
  @type create_vector_bucket_output() :: %{}

  @typedoc """

  ## Example:

      delete_vectors_input() :: %{
        optional("indexArn") => String.t(),
        optional("indexName") => String.t(),
        optional("vectorBucketName") => String.t(),
        required("keys") => list(String.t())
      }

  """
  @type delete_vectors_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "path" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vector_bucket_output() :: %{
        "vectorBucket" => vector_bucket()
      }

  """
  @type get_vector_bucket_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vector_bucket() :: %{
        "creationTime" => [non_neg_integer()],
        "encryptionConfiguration" => encryption_configuration(),
        "vectorBucketArn" => String.t(),
        "vectorBucketName" => String.t()
      }

  """
  @type vector_bucket() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_index_output() :: %{}

  """
  @type delete_index_output() :: %{}

  @typedoc """

  ## Example:

      metadata_configuration() :: %{
        "nonFilterableMetadataKeys" => list(String.t())
      }

  """
  @type metadata_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vector_buckets_output() :: %{
        "nextToken" => String.t(),
        "vectorBuckets" => list(vector_bucket_summary())
      }

  """
  @type list_vector_buckets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vectors_input() :: %{
        optional("indexArn") => String.t(),
        optional("indexName") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("returnData") => [boolean()],
        optional("returnMetadata") => [boolean()],
        optional("segmentCount") => integer(),
        optional("segmentIndex") => integer(),
        optional("vectorBucketName") => String.t()
      }

  """
  @type list_vectors_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type kms_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_index_input() :: %{
        optional("indexArn") => String.t(),
        optional("indexName") => String.t(),
        optional("vectorBucketName") => String.t()
      }

  """
  @type get_index_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_index_input() :: %{
        optional("indexArn") => String.t(),
        optional("indexName") => String.t(),
        optional("vectorBucketName") => String.t()
      }

  """
  @type delete_index_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vectors_input() :: %{
        optional("indexArn") => String.t(),
        optional("indexName") => String.t(),
        optional("returnData") => [boolean()],
        optional("returnMetadata") => [boolean()],
        optional("vectorBucketName") => String.t(),
        required("keys") => list(String.t())
      }

  """
  @type get_vectors_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vector_bucket_policy_input() :: %{
        optional("vectorBucketArn") => String.t(),
        optional("vectorBucketName") => String.t()
      }

  """
  @type get_vector_bucket_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_indexes_output() :: %{
        "indexes" => list(index_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_indexes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vector_bucket_input() :: %{
        optional("vectorBucketArn") => String.t(),
        optional("vectorBucketName") => String.t()
      }

  """
  @type delete_vector_bucket_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_index_input() :: %{
        optional("metadataConfiguration") => metadata_configuration(),
        optional("vectorBucketArn") => String.t(),
        optional("vectorBucketName") => String.t(),
        required("dataType") => list(any()),
        required("dimension") => integer(),
        required("distanceMetric") => list(any()),
        required("indexName") => String.t()
      }

  """
  @type create_index_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_invalid_state_exception() :: %{
        "message" => String.t()
      }

  """
  @type kms_invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vectors_output() :: %{}

  """
  @type delete_vectors_output() :: %{}

  @typedoc """

  ## Example:

      list_vectors_output() :: %{
        "nextToken" => String.t(),
        "vectors" => list(list_output_vector())
      }

  """
  @type list_vectors_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_vector_bucket_policy_input() :: %{
        optional("vectorBucketArn") => String.t(),
        optional("vectorBucketName") => String.t(),
        required("policy") => String.t()
      }

  """
  @type put_vector_bucket_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_invalid_key_usage_exception() :: %{
        "message" => String.t()
      }

  """
  @type kms_invalid_key_usage_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_output_vector() :: %{
        "data" => list(),
        "distance" => [float()],
        "key" => String.t(),
        "metadata" => any()
      }

  """
  @type query_output_vector() :: %{String.t() => any()}

  @type create_index_errors() ::
          service_unavailable_exception() | not_found_exception() | conflict_exception()

  @type create_vector_bucket_errors() :: service_unavailable_exception() | conflict_exception()

  @type delete_index_errors() :: service_unavailable_exception()

  @type delete_vector_bucket_errors() :: service_unavailable_exception() | conflict_exception()

  @type delete_vector_bucket_policy_errors() ::
          service_unavailable_exception() | not_found_exception()

  @type delete_vectors_errors() ::
          kms_invalid_key_usage_exception()
          | kms_invalid_state_exception()
          | access_denied_exception()
          | kms_not_found_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | kms_disabled_exception()

  @type get_index_errors() :: service_unavailable_exception() | not_found_exception()

  @type get_vector_bucket_errors() :: service_unavailable_exception() | not_found_exception()

  @type get_vector_bucket_policy_errors() ::
          service_unavailable_exception() | not_found_exception()

  @type get_vectors_errors() ::
          kms_invalid_key_usage_exception()
          | kms_invalid_state_exception()
          | kms_not_found_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | kms_disabled_exception()

  @type list_indexes_errors() :: service_unavailable_exception() | not_found_exception()

  @type list_vector_buckets_errors() :: service_unavailable_exception()

  @type list_vectors_errors() ::
          access_denied_exception() | service_unavailable_exception() | not_found_exception()

  @type put_vector_bucket_policy_errors() ::
          service_unavailable_exception() | not_found_exception()

  @type put_vectors_errors() ::
          kms_invalid_key_usage_exception()
          | kms_invalid_state_exception()
          | access_denied_exception()
          | kms_not_found_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | kms_disabled_exception()

  @type query_vectors_errors() ::
          kms_invalid_key_usage_exception()
          | kms_invalid_state_exception()
          | kms_not_found_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | kms_disabled_exception()

  def metadata do
    %{
      api_version: "2025-07-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "s3vectors",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "S3Vectors",
      signature_version: "v4",
      signing_name: "s3vectors",
      target_prefix: nil
    }
  end

  @doc """
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Creates a vector index within a vector bucket. To specify the vector bucket, you
  must use either the vector bucket name or the vector bucket Amazon Resource Name
  (ARN).

  ## Definitions

  ### Permissions

  You must have the `s3vectors:CreateIndex` permission to use this operation.
  """
  @spec create_index(map(), create_index_input(), list()) ::
          {:ok, create_index_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_index_errors()}
  def create_index(%Client{} = client, input, options \\ []) do
    url_path = "/CreateIndex"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Creates a vector bucket in the Amazon Web Services Region that you want your
  bucket to be in.

  ## Definitions

  ### Permissions

  You must have the `s3vectors:CreateVectorBucket` permission to use this
  operation.
  """
  @spec create_vector_bucket(map(), create_vector_bucket_input(), list()) ::
          {:ok, create_vector_bucket_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_vector_bucket_errors()}
  def create_vector_bucket(%Client{} = client, input, options \\ []) do
    url_path = "/CreateVectorBucket"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Deletes a vector index. To specify the vector index, you can either use both the
  vector bucket name and vector index name, or use the vector index Amazon
  Resource Name (ARN).

  ## Definitions

  ### Permissions

  You must have the `s3vectors:DeleteIndex` permission to use this operation.
  """
  @spec delete_index(map(), delete_index_input(), list()) ::
          {:ok, delete_index_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_index_errors()}
  def delete_index(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteIndex"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Deletes a vector bucket. All vector indexes in the vector bucket must be deleted
  before the vector bucket can be deleted. To perform this operation, you must use
  either the vector bucket name or the vector bucket Amazon Resource Name (ARN).

  ## Definitions

  ### Permissions

  You must have the `s3vectors:DeleteVectorBucket` permission to use this
  operation.
  """
  @spec delete_vector_bucket(map(), delete_vector_bucket_input(), list()) ::
          {:ok, delete_vector_bucket_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vector_bucket_errors()}
  def delete_vector_bucket(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteVectorBucket"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Deletes a vector bucket policy. To specify the bucket, you must use either the
  vector bucket name or the vector bucket Amazon Resource Name (ARN).

  ## Definitions

  ### Permissions

  You must have the `s3vectors:DeleteVectorBucketPolicy` permission to use this
  operation.
  """
  @spec delete_vector_bucket_policy(map(), delete_vector_bucket_policy_input(), list()) ::
          {:ok, delete_vector_bucket_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vector_bucket_policy_errors()}
  def delete_vector_bucket_policy(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteVectorBucketPolicy"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Deletes one or more vectors in a vector index. To specify the vector index, you
  can either use both the vector bucket name and vector index name, or use the
  vector index Amazon Resource Name (ARN).

  ## Definitions

  ### Permissions

  You must have the `s3vectors:DeleteVectors` permission to use this operation.
  """
  @spec delete_vectors(map(), delete_vectors_input(), list()) ::
          {:ok, delete_vectors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vectors_errors()}
  def delete_vectors(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteVectors"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Returns vector index attributes. To specify the vector index, you can either use
  both the vector bucket name and the vector index name, or use the vector index
  Amazon Resource Name (ARN).

  ## Definitions

  ### Permissions

  You must have the `s3vectors:GetIndex` permission to use this operation.
  """
  @spec get_index(map(), get_index_input(), list()) ::
          {:ok, get_index_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_index_errors()}
  def get_index(%Client{} = client, input, options \\ []) do
    url_path = "/GetIndex"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Returns vector bucket attributes. To specify the bucket, you must use either the
  vector bucket name or the vector bucket Amazon Resource Name (ARN).

  ## Definitions

  ### Permissions

  You must have the `s3vectors:GetVectorBucket` permission to use this operation.
  """
  @spec get_vector_bucket(map(), get_vector_bucket_input(), list()) ::
          {:ok, get_vector_bucket_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_vector_bucket_errors()}
  def get_vector_bucket(%Client{} = client, input, options \\ []) do
    url_path = "/GetVectorBucket"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Gets details about a vector bucket policy. To specify the bucket, you must use
  either the vector bucket name or the vector bucket Amazon Resource Name (ARN).

  ## Definitions

  ### Permissions

  You must have the `s3vectors:GetVectorBucketPolicy` permission to use this
  operation.
  """
  @spec get_vector_bucket_policy(map(), get_vector_bucket_policy_input(), list()) ::
          {:ok, get_vector_bucket_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_vector_bucket_policy_errors()}
  def get_vector_bucket_policy(%Client{} = client, input, options \\ []) do
    url_path = "/GetVectorBucketPolicy"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Returns vector attributes. To specify the vector index, you can either use both
  the vector bucket name and the vector index name, or use the vector index Amazon
  Resource Name (ARN).

  ## Definitions

  ### Permissions

  You must have the `s3vectors:GetVectors` permission to use this operation.
  """
  @spec get_vectors(map(), get_vectors_input(), list()) ::
          {:ok, get_vectors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_vectors_errors()}
  def get_vectors(%Client{} = client, input, options \\ []) do
    url_path = "/GetVectors"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Returns a list of all the vector indexes within the specified vector bucket. To
  specify the bucket, you must use either the vector bucket name or the vector
  bucket Amazon Resource Name (ARN).

  ## Definitions

  ### Permissions

  You must have the `s3vectors:ListIndexes` permission to use this operation.
  """
  @spec list_indexes(map(), list_indexes_input(), list()) ::
          {:ok, list_indexes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_indexes_errors()}
  def list_indexes(%Client{} = client, input, options \\ []) do
    url_path = "/ListIndexes"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Returns a list of all the vector buckets that are owned by the authenticated
  sender of the request.

  ## Definitions

  ### Permissions

  You must have the `s3vectors:ListVectorBuckets` permission to use this
  operation.
  """
  @spec list_vector_buckets(map(), list_vector_buckets_input(), list()) ::
          {:ok, list_vector_buckets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_vector_buckets_errors()}
  def list_vector_buckets(%Client{} = client, input, options \\ []) do
    url_path = "/ListVectorBuckets"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  List vectors in the specified vector index. To specify the vector index, you can
  either use both the vector bucket name and the vector index name, or use the
  vector index Amazon Resource Name (ARN).

  `ListVectors` operations proceed sequentially; however, for faster performance
  on a large number of vectors in a vector index, applications can request a
  parallel `ListVectors` operation by providing the `segmentCount` and
  `segmentIndex` parameters.

  ## Definitions

  ### Permissions

  You must have the `s3vectors:ListVectors` permission to use this operation.
  Additional permissions are required based on the request parameters you specify:

     With only `s3vectors:ListVectors` permission, you can list vector
  keys when `returnData` and `returnMetadata` are both set to false or not
  specified..

     If you set `returnData` or `returnMetadata` to true, you must have
  both `s3vectors:ListVectors` and `s3vectors:GetVectors` permissions. The request
  fails with a `403 Forbidden` error if you request vector data or metadata
  without the `s3vectors:GetVectors` permission.
  """
  @spec list_vectors(map(), list_vectors_input(), list()) ::
          {:ok, list_vectors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_vectors_errors()}
  def list_vectors(%Client{} = client, input, options \\ []) do
    url_path = "/ListVectors"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Creates a bucket policy for a vector bucket. To specify the bucket, you must use
  either the vector bucket name or the vector bucket Amazon Resource Name (ARN).

  ## Definitions

  ### Permissions

  You must have the `s3vectors:PutVectorBucketPolicy` permission to use this
  operation.
  """
  @spec put_vector_bucket_policy(map(), put_vector_bucket_policy_input(), list()) ::
          {:ok, put_vector_bucket_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_vector_bucket_policy_errors()}
  def put_vector_bucket_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutVectorBucketPolicy"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Adds one or more vectors to a vector index. To specify the vector index, you can
  either use both the vector bucket name and the vector index name, or use the
  vector index Amazon Resource Name (ARN).

  For more information about limits, see [Limitations and restrictions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-limitations.html)
  in the *Amazon S3 User Guide*.

  When inserting vector data into your vector index, you must provide the vector
  data as `float32` (32-bit floating point) values. If you pass higher-precision
  values to an Amazon Web Services SDK, S3 Vectors converts the values to 32-bit
  floating point before storing them, and `GetVectors`, `ListVectors`, and
  `QueryVectors` operations return the float32 values. Different Amazon Web
  Services SDKs may have different default numeric types, so ensure your vectors
  are properly formatted as `float32` values regardless of which SDK you're using.
  For example, in Python, use `numpy.float32` or explicitly cast your values.

  ## Definitions

  ### Permissions

  You must have the `s3vectors:PutVectors` permission to use this operation.
  """
  @spec put_vectors(map(), put_vectors_input(), list()) ::
          {:ok, put_vectors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_vectors_errors()}
  def put_vectors(%Client{} = client, input, options \\ []) do
    url_path = "/PutVectors"
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
  Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.

  Performs an approximate nearest neighbor search query in a vector index using a
  query vector. By default, it returns the keys of approximate nearest neighbors.
  You can optionally include the computed distance (between the query vector and
  each vector in the response), the vector data, and metadata of each vector in
  the response.

  To specify the vector index, you can either use both the vector bucket name and
  the vector index name, or use the vector index Amazon Resource Name (ARN).

  ## Definitions

  ### Permissions

  You must have the `s3vectors:QueryVectors` permission to use this operation.
  Additional permissions are required based on the request parameters you specify:

     With only `s3vectors:QueryVectors` permission, you can retrieve
  vector keys of approximate nearest neighbors and computed distances between
  these vectors. This permission is sufficient only when you don't set any
  metadata filters and don't request vector data or metadata (by keeping the
  `returnMetadata` parameter set to `false` or not specified).

     If you specify a metadata filter or set `returnMetadata` to true,
  you must have both `s3vectors:QueryVectors` and `s3vectors:GetVectors`
  permissions. The request fails with a `403 Forbidden error` if you request
  metadata filtering, vector data, or metadata without the `s3vectors:GetVectors`
  permission.
  """
  @spec query_vectors(map(), query_vectors_input(), list()) ::
          {:ok, query_vectors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, query_vectors_errors()}
  def query_vectors(%Client{} = client, input, options \\ []) do
    url_path = "/QueryVectors"
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
