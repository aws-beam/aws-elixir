# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SupplyChain do
  @moduledoc """

  AWS Supply Chain is a cloud-based application that works with your enterprise
  resource planning (ERP) and supply chain management systems.

  Using AWS Supply Chain, you can connect and extract your inventory, supply, and
  demand related data from existing ERP or supply chain systems into a single data
  model.

  The AWS Supply Chain API supports configuration data import for Supply Planning.

  All AWS Supply chain API operations are Amazon-authenticated and
  certificate-signed. They not only require the use of the AWS SDK, but also allow
  for the exclusive use of AWS Identity and Access Management users and roles to
  help facilitate access, trust, and permission policies.
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
  bill_of_materials_import_job() :: %{
    "instanceId" => String.t(),
    "jobId" => String.t(),
    "message" => [String.t()],
    "s3uri" => String.t(),
    "status" => list(any())
  }
  """
  @type bill_of_materials_import_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_bill_of_materials_import_job_request() :: %{
    optional("clientToken") => String.t(),
    required("s3uri") => String.t()
  }
  """
  @type create_bill_of_materials_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_bill_of_materials_import_job_response() :: %{
    "jobId" => String.t()
  }
  """
  @type create_bill_of_materials_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bill_of_materials_import_job_request() :: %{

  }
  """
  @type get_bill_of_materials_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bill_of_materials_import_job_response() :: %{
    "job" => bill_of_materials_import_job()
  }
  """
  @type get_bill_of_materials_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_quota_exceeded_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2024-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "scn",
      global?: false,
      protocol: "rest-json",
      service_id: "SupplyChain",
      signature_version: "v4",
      signing_name: "scn",
      target_prefix: nil
    }
  end

  @doc """
  CreateBillOfMaterialsImportJob creates an import job for the Product Bill Of
  Materials (BOM) entity.

  For information on the product_bom entity, see the AWS Supply Chain User Guide.

  The CSV file must be located in an Amazon S3 location accessible to AWS Supply
  Chain. It is recommended to use the same Amazon S3 bucket created during your
  AWS Supply Chain instance creation.
  """
  @spec create_bill_of_materials_import_job(
          map(),
          String.t(),
          create_bill_of_materials_import_job_request(),
          list()
        ) ::
          {:ok, create_bill_of_materials_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_bill_of_materials_import_job(%Client{} = client, instance_id, input, options \\ []) do
    url_path =
      "/api/configuration/instances/#{AWS.Util.encode_uri(instance_id)}/bill-of-materials-import-jobs"

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
  Get status and details of a BillOfMaterialsImportJob.
  """
  @spec get_bill_of_materials_import_job(map(), String.t(), String.t(), list()) ::
          {:ok, get_bill_of_materials_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_bill_of_materials_import_job(%Client{} = client, instance_id, job_id, options \\ []) do
    url_path =
      "/api/configuration/instances/#{AWS.Util.encode_uri(instance_id)}/bill-of-materials-import-jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
