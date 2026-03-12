# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SimpleDBv2 do
  @moduledoc """
  Amazon SimpleDB is a web service providing the core database functions of data
  indexing and
  querying in the cloud.

  By offloading the time and effort associated with building and operating a
  web-scale
  database, SimpleDB provides developers the freedom to focus on application
  development.

  A traditional, clustered relational database requires a sizable upfront capital
  outlay, is complex to design,
  and often requires extensive and repetitive database administration. Amazon
  SimpleDB is dramatically simpler,
  requiring no schema, automatically indexing your data and providing a simple API
  for storage and access.
  This approach eliminates the administrative burden of data modeling, index
  maintenance, and performance tuning.
  Developers gain access to this functionality within Amazon's proven computing
  environment, are able to scale
  instantly, and pay only for what they use.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_summary() :: %{
        "domainName" => String.t() | atom(),
        "exportArn" => String.t() | atom(),
        "exportStatus" => list(any()),
        "requestedAt" => non_neg_integer()
      }

  """
  @type export_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_export_request() :: %{
        required("exportArn") => String.t() | atom()
      }

  """
  @type get_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_export_response() :: %{
        "clientToken" => String.t() | atom(),
        "domainName" => String.t() | atom(),
        "exportArn" => String.t() | atom(),
        "exportDataCutoffTime" => non_neg_integer(),
        "exportManifest" => String.t() | atom(),
        "exportStatus" => list(any()),
        "failureCode" => String.t() | atom(),
        "failureMessage" => String.t() | atom(),
        "itemsCount" => float(),
        "requestedAt" => non_neg_integer(),
        "s3Bucket" => String.t() | atom(),
        "s3BucketOwner" => String.t() | atom(),
        "s3KeyPrefix" => String.t() | atom(),
        "s3SseAlgorithm" => list(any()),
        "s3SseKmsKeyId" => String.t() | atom()
      }

  """
  @type get_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_next_token_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type invalid_next_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_combination_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type invalid_parameter_combination_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_value_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type invalid_parameter_value_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_exports_request() :: %{
        optional("domainName") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_exports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_exports_response() :: %{
        "exportSummaries" => list(export_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_exports_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_domain_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type no_such_domain_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_export_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type no_such_export_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      number_exports_limit_exceeded() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type number_exports_limit_exceeded() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_domain_export_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("s3BucketOwner") => String.t() | atom(),
        optional("s3KeyPrefix") => String.t() | atom(),
        optional("s3SseAlgorithm") => list(any()),
        optional("s3SseKmsKeyId") => String.t() | atom(),
        required("domainName") => String.t() | atom(),
        required("s3Bucket") => String.t() | atom()
      }

  """
  @type start_domain_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_domain_export_response() :: %{
        "clientToken" => String.t() | atom(),
        "exportArn" => String.t() | atom(),
        "requestedAt" => non_neg_integer()
      }

  """
  @type start_domain_export_response() :: %{(String.t() | atom()) => any()}

  @type get_export_errors() :: no_such_export_exception() | invalid_parameter_value_exception()

  @type list_exports_errors() ::
          no_such_domain_exception()
          | invalid_parameter_value_exception()
          | invalid_next_token_exception()

  @type start_domain_export_errors() ::
          number_exports_limit_exceeded()
          | no_such_domain_exception()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2025-09-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "sdb",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SimpleDBv2",
      signature_version: "v4",
      signing_name: "sdb",
      target_prefix: nil
    }
  end

  @doc """
  Returns information for an existing domain export.
  """
  @spec get_export(map(), get_export_request(), list()) ::
          {:ok, get_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_export_errors()}
  def get_export(%Client{} = client, input, options \\ []) do
    url_path = "/v2/GetExport"
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
  Lists all exports that were created.

  The results are paginated and can be filtered by domain name.
  """
  @spec list_exports(map(), list_exports_request(), list()) ::
          {:ok, list_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_exports_errors()}
  def list_exports(%Client{} = client, input, options \\ []) do
    url_path = "/v2/ListExports"
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
  Initiates the export of a SimpleDB domain to an S3 bucket.
  """
  @spec start_domain_export(map(), start_domain_export_request(), list()) ::
          {:ok, start_domain_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_domain_export_errors()}
  def start_domain_export(%Client{} = client, input, options \\ []) do
    url_path = "/v2/StartDomainExport"
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
