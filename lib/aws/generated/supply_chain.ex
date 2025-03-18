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

      data_integration_flow_source() :: %{
        "datasetSource" => data_integration_flow_dataset_source_configuration(),
        "s3Source" => data_integration_flow_s3_source_configuration(),
        "sourceName" => String.t(),
        "sourceType" => list(any())
      }

  """
  @type data_integration_flow_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_lake_dataset_request() :: %{}

  """
  @type delete_data_lake_dataset_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      data_integration_flow_s3_target_configuration() :: %{
        "bucketName" => String.t(),
        "options" => data_integration_flow_s3_options(),
        "prefix" => String.t()
      }

  """
  @type data_integration_flow_s3_target_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_integration_flow_s3_options() :: %{
        "fileType" => list(any())
      }

  """
  @type data_integration_flow_s3_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_lake_dataset_response() :: %{
        "dataset" => data_lake_dataset()
      }

  """
  @type get_data_lake_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_lake_datasets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_data_lake_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_integration_flow_request() :: %{}

  """
  @type delete_data_integration_flow_request() :: %{}

  @typedoc """

  ## Example:

      update_data_lake_dataset_request() :: %{
        optional("description") => String.t()
      }

  """
  @type update_data_lake_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_lake_dataset_request() :: %{
        optional("description") => String.t(),
        optional("schema") => data_lake_dataset_schema(),
        optional("tags") => map()
      }

  """
  @type create_data_lake_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_instance_response() :: %{
        "instance" => instance()
      }

  """
  @type create_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_integration_flow_response() :: %{
        "instanceId" => String.t(),
        "name" => String.t()
      }

  """
  @type delete_data_integration_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_integration_flow_request() :: %{
        optional("tags") => map(),
        required("sources") => list(data_integration_flow_source()()),
        required("target") => data_integration_flow_target(),
        required("transformation") => data_integration_flow_transformation()
      }

  """
  @type create_data_integration_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_integration_flow() :: %{
        "createdTime" => [non_neg_integer()],
        "instanceId" => String.t(),
        "lastModifiedTime" => [non_neg_integer()],
        "name" => String.t(),
        "sources" => list(data_integration_flow_source()()),
        "target" => data_integration_flow_target(),
        "transformation" => data_integration_flow_transformation()
      }

  """
  @type data_integration_flow() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_integration_flow_response() :: %{
        "flow" => data_integration_flow()
      }

  """
  @type update_data_integration_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_instance_request() :: %{}

  """
  @type get_instance_request() :: %{}

  @typedoc """

  ## Example:

      create_bill_of_materials_import_job_response() :: %{
        "jobId" => String.t()
      }

  """
  @type create_bill_of_materials_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_lake_dataset_schema_field() :: %{
        "isRequired" => [boolean()],
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type data_lake_dataset_schema_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_bill_of_materials_import_job_response() :: %{
        "job" => bill_of_materials_import_job()
      }

  """
  @type get_bill_of_materials_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_integration_flow_s_q_l_transformation_configuration() :: %{
        "query" => String.t()
      }

  """
  @type data_integration_flow_s_q_l_transformation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_integration_flow_response() :: %{
        "instanceId" => String.t(),
        "name" => String.t()
      }

  """
  @type create_data_integration_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_lake_datasets_response() :: %{
        "datasets" => list(data_lake_dataset()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_lake_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_bill_of_materials_import_job_request() :: %{}

  """
  @type get_bill_of_materials_import_job_request() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_integration_flow_dataset_options() :: %{
        "dedupeRecords" => [boolean()],
        "loadType" => list(any())
      }

  """
  @type data_integration_flow_dataset_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_integration_flow_request() :: %{}

  """
  @type get_data_integration_flow_request() :: %{}

  @typedoc """

  ## Example:

      update_instance_request() :: %{
        optional("instanceDescription") => String.t(),
        optional("instanceName") => String.t()
      }

  """
  @type update_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_instance_response() :: %{
        "instance" => instance()
      }

  """
  @type get_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_lake_dataset_schema() :: %{
        "fields" => list(data_lake_dataset_schema_field()()),
        "name" => String.t()
      }

  """
  @type data_lake_dataset_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_integration_flow_dataset_target_configuration() :: %{
        "datasetIdentifier" => String.t(),
        "options" => data_integration_flow_dataset_options()
      }

  """
  @type data_integration_flow_dataset_target_configuration() :: %{String.t() => any()}

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

      list_instances_request() :: %{
        optional("instanceNameFilter") => list(String.t()()),
        optional("instanceStateFilter") => list(list(any())()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_lake_dataset_response() :: %{
        "dataset" => data_lake_dataset()
      }

  """
  @type create_data_lake_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_instances_response() :: %{
        "instances" => list(instance()()),
        "nextToken" => String.t()
      }

  """
  @type list_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_integration_flow_transformation() :: %{
        "sqlTransformation" => data_integration_flow_s_q_l_transformation_configuration(),
        "transformationType" => list(any())
      }

  """
  @type data_integration_flow_transformation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_integration_flow_response() :: %{
        "flow" => data_integration_flow()
      }

  """
  @type get_data_integration_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_instance_request() :: %{
        optional("clientToken") => String.t(),
        optional("instanceDescription") => String.t(),
        optional("instanceName") => String.t(),
        optional("kmsKeyArn") => String.t(),
        optional("tags") => map(),
        optional("webAppDnsDomain") => String.t()
      }

  """
  @type create_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance() :: %{
        "awsAccountId" => String.t(),
        "createdTime" => [non_neg_integer()],
        "errorMessage" => [String.t()],
        "instanceDescription" => String.t(),
        "instanceId" => String.t(),
        "instanceName" => String.t(),
        "kmsKeyArn" => String.t(),
        "lastModifiedTime" => [non_neg_integer()],
        "state" => list(any()),
        "versionNumber" => [float()],
        "webAppDnsDomain" => String.t()
      }

  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_instance_response() :: %{
        "instance" => instance()
      }

  """
  @type delete_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_data_integration_event_response() :: %{
        "eventId" => String.t()
      }

  """
  @type send_data_integration_event_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_instance_request() :: %{}

  """
  @type delete_instance_request() :: %{}

  @typedoc """

  ## Example:

      list_data_integration_flows_response() :: %{
        "flows" => list(data_integration_flow()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_integration_flows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_data_integration_event_request() :: %{
        optional("clientToken") => String.t(),
        optional("eventTimestamp") => [non_neg_integer()],
        required("data") => String.t(),
        required("eventGroupId") => String.t(),
        required("eventType") => list(any())
      }

  """
  @type send_data_integration_event_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_integration_flow_s3_source_configuration() :: %{
        "bucketName" => String.t(),
        "options" => data_integration_flow_s3_options(),
        "prefix" => String.t()
      }

  """
  @type data_integration_flow_s3_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_lake_dataset_request() :: %{}

  """
  @type get_data_lake_dataset_request() :: %{}

  @typedoc """

  ## Example:

      data_integration_flow_target() :: %{
        "datasetTarget" => data_integration_flow_dataset_target_configuration(),
        "s3Target" => data_integration_flow_s3_target_configuration(),
        "targetType" => list(any())
      }

  """
  @type data_integration_flow_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_integration_flows_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_data_integration_flows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_instance_response() :: %{
        "instance" => instance()
      }

  """
  @type update_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_integration_flow_request() :: %{
        optional("sources") => list(data_integration_flow_source()()),
        optional("target") => data_integration_flow_target(),
        optional("transformation") => data_integration_flow_transformation()
      }

  """
  @type update_data_integration_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_integration_flow_dataset_source_configuration() :: %{
        "datasetIdentifier" => String.t(),
        "options" => data_integration_flow_dataset_options()
      }

  """
  @type data_integration_flow_dataset_source_configuration() :: %{String.t() => any()}

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

      data_lake_dataset() :: %{
        "arn" => String.t(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t(),
        "instanceId" => String.t(),
        "lastModifiedTime" => [non_neg_integer()],
        "name" => String.t(),
        "namespace" => String.t(),
        "schema" => data_lake_dataset_schema()
      }

  """
  @type data_lake_dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_lake_dataset_response() :: %{
        "instanceId" => String.t(),
        "name" => String.t(),
        "namespace" => String.t()
      }

  """
  @type delete_data_lake_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_lake_dataset_response() :: %{
        "dataset" => data_lake_dataset()
      }

  """
  @type update_data_lake_dataset_response() :: %{String.t() => any()}

  @type create_bill_of_materials_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_data_integration_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_data_lake_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_data_integration_flow_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_data_lake_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_bill_of_materials_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_integration_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_lake_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_integration_flows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_data_lake_datasets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type send_data_integration_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_data_integration_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_data_lake_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2024-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "scn",
      global?: false,
      hostname: nil,
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
          | {:error, term()}
          | {:error, create_bill_of_materials_import_job_errors()}
  def create_bill_of_materials_import_job(%Client{} = client, instance_id, input, options \\ []) do
    url_path =
      "/api/configuration/instances/#{AWS.Util.encode_uri(instance_id)}/bill-of-materials-import-jobs"

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
  Enables you to programmatically create a data pipeline to ingest data from
  source systems such as Amazon S3 buckets, to a predefined Amazon Web Services
  Supply Chain dataset (product, inbound_order) or a temporary dataset along with
  the data transformation query provided with the API.
  """
  @spec create_data_integration_flow(
          map(),
          String.t(),
          String.t(),
          create_data_integration_flow_request(),
          list()
        ) ::
          {:ok, create_data_integration_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_integration_flow_errors()}
  def create_data_integration_flow(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/api/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-flows/#{AWS.Util.encode_uri(name)}"

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

  @doc """
  Enables you to programmatically create an Amazon Web Services Supply Chain data
  lake dataset.

  Developers can create the datasets using their pre-defined or custom schema for
  a given instance ID, namespace, and dataset name.
  """
  @spec create_data_lake_dataset(
          map(),
          String.t(),
          String.t(),
          String.t(),
          create_data_lake_dataset_request(),
          list()
        ) ::
          {:ok, create_data_lake_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_lake_dataset_errors()}
  def create_data_lake_dataset(
        %Client{} = client,
        instance_id,
        name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/datasets/#{AWS.Util.encode_uri(name)}"

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

  @doc """
  Enables you to programmatically create an Amazon Web Services Supply Chain
  instance by applying KMS keys and relevant information associated with the API
  without using the Amazon Web Services console.

  This is an asynchronous operation. Upon receiving a CreateInstance request,
  Amazon Web Services Supply Chain immediately returns the instance resource,
  instance ID, and the initializing state while simultaneously creating all
  required Amazon Web Services resources for an instance creation. You can use
  GetInstance to check the status of the instance. If the instance results in an
  unhealthy state, you need to check the error message, delete the current
  instance, and recreate a new one based on the mitigation from the error message.
  """
  @spec create_instance(map(), create_instance_request(), list()) ::
          {:ok, create_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_instance_errors()}
  def create_instance(%Client{} = client, input, options \\ []) do
    url_path = "/api/instance"
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
  Enable you to programmatically delete an existing data pipeline for the provided
  Amazon Web Services Supply Chain instance and DataIntegrationFlow name.
  """
  @spec delete_data_integration_flow(
          map(),
          String.t(),
          String.t(),
          delete_data_integration_flow_request(),
          list()
        ) ::
          {:ok, delete_data_integration_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_integration_flow_errors()}
  def delete_data_integration_flow(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/api/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-flows/#{AWS.Util.encode_uri(name)}"

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
      200
    )
  end

  @doc """
  Enables you to programmatically delete an Amazon Web Services Supply Chain data
  lake dataset.

  Developers can delete the existing datasets for a given instance ID, namespace,
  and instance name.
  """
  @spec delete_data_lake_dataset(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_data_lake_dataset_request(),
          list()
        ) ::
          {:ok, delete_data_lake_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_lake_dataset_errors()}
  def delete_data_lake_dataset(
        %Client{} = client,
        instance_id,
        name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/datasets/#{AWS.Util.encode_uri(name)}"

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
      200
    )
  end

  @doc """
  Enables you to programmatically delete an Amazon Web Services Supply Chain
  instance by deleting the KMS keys and relevant information associated with the
  API without using the Amazon Web Services console.

  This is an asynchronous operation. Upon receiving a DeleteInstance request,
  Amazon Web Services Supply Chain immediately returns a response with the
  instance resource, delete state while cleaning up all Amazon Web Services
  resources created during the instance creation process. You can use the
  GetInstance action to check the instance status.
  """
  @spec delete_instance(map(), String.t(), delete_instance_request(), list()) ::
          {:ok, delete_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_instance_errors()}
  def delete_instance(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/api/instance/#{AWS.Util.encode_uri(instance_id)}"
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
      200
    )
  end

  @doc """
  Get status and details of a BillOfMaterialsImportJob.
  """
  @spec get_bill_of_materials_import_job(map(), String.t(), String.t(), list()) ::
          {:ok, get_bill_of_materials_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bill_of_materials_import_job_errors()}
  def get_bill_of_materials_import_job(%Client{} = client, instance_id, job_id, options \\ []) do
    url_path =
      "/api/configuration/instances/#{AWS.Util.encode_uri(instance_id)}/bill-of-materials-import-jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables you to programmatically view a specific data pipeline for the provided
  Amazon Web Services Supply Chain instance and DataIntegrationFlow name.
  """
  @spec get_data_integration_flow(map(), String.t(), String.t(), list()) ::
          {:ok, get_data_integration_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_integration_flow_errors()}
  def get_data_integration_flow(%Client{} = client, instance_id, name, options \\ []) do
    url_path =
      "/api/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-flows/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables you to programmatically view an Amazon Web Services Supply Chain data
  lake dataset.

  Developers can view the data lake dataset information such as namespace, schema,
  and so on for a given instance ID, namespace, and dataset name.
  """
  @spec get_data_lake_dataset(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_data_lake_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_lake_dataset_errors()}
  def get_data_lake_dataset(%Client{} = client, instance_id, name, namespace, options \\ []) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/datasets/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables you to programmatically retrieve the information related to an Amazon
  Web Services Supply Chain instance ID.
  """
  @spec get_instance(map(), String.t(), list()) ::
          {:ok, get_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_errors()}
  def get_instance(%Client{} = client, instance_id, options \\ []) do
    url_path = "/api/instance/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables you to programmatically list all data pipelines for the provided Amazon
  Web Services Supply Chain instance.
  """
  @spec list_data_integration_flows(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_data_integration_flows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_integration_flows_errors()}
  def list_data_integration_flows(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/api/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-flows"

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
  Enables you to programmatically view the list of Amazon Web Services Supply
  Chain data lake datasets.

  Developers can view the datasets and the corresponding information such as
  namespace, schema, and so on for a given instance ID and namespace.
  """
  @spec list_data_lake_datasets(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_data_lake_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_lake_datasets_errors()}
  def list_data_lake_datasets(
        %Client{} = client,
        instance_id,
        namespace,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/datasets"

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
  List all Amazon Web Services Supply Chain instances for a specific account.

  Enables you to programmatically list all Amazon Web Services Supply Chain
  instances based on their account ID, instance name, and state of the instance
  (active or delete).
  """
  @spec list_instances(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_instances_errors()}
  def list_instances(
        %Client{} = client,
        instance_name_filter \\ nil,
        instance_state_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/instance"
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

    query_params =
      if !is_nil(instance_state_filter) do
        [{"instanceStateFilter", instance_state_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(instance_name_filter) do
        [{"instanceNameFilter", instance_name_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all the tags for an Amazon Web ServicesSupply Chain resource.

  You can list all the tags added to a resource. By listing the tags, developers
  can view the tag level information on a resource and perform actions such as,
  deleting a resource associated with a particular tag.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/api/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Send the transactional data payload for the event with real-time data for
  analysis or monitoring.

  The real-time data events are stored in an Amazon Web Services service before
  being processed and stored in data lake. New data events are synced with data
  lake at 5 PM GMT everyday. The updated transactional data is available in data
  lake after ingestion.
  """
  @spec send_data_integration_event(
          map(),
          String.t(),
          send_data_integration_event_request(),
          list()
        ) ::
          {:ok, send_data_integration_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_data_integration_event_errors()}
  def send_data_integration_event(%Client{} = client, instance_id, input, options \\ []) do
    url_path =
      "/api-data/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-events"

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
  You can create tags during or after creating a resource such as instance, data
  flow, or dataset in AWS Supply chain.

  During the data ingestion process, you can add tags such as dev, test, or prod
  to data flows created during the data ingestion process in the AWS Supply Chain
  datasets. You can use these tags to identify a group of resources or a single
  resource used by the developer.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/api/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  You can delete tags for an Amazon Web Services Supply chain resource such as
  instance, data flow, or dataset in AWS Supply Chain.

  During the data ingestion process, you can delete tags such as dev, test, or
  prod to data flows created during the data ingestion process in the AWS Supply
  Chain datasets.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/api/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Enables you to programmatically update an existing data pipeline to ingest data
  from the source systems such as, Amazon S3 buckets, to a predefined Amazon Web
  Services Supply Chain dataset (product, inbound_order) or a temporary dataset
  along with the data transformation query provided with the API.
  """
  @spec update_data_integration_flow(
          map(),
          String.t(),
          String.t(),
          update_data_integration_flow_request(),
          list()
        ) ::
          {:ok, update_data_integration_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_integration_flow_errors()}
  def update_data_integration_flow(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/api/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-flows/#{AWS.Util.encode_uri(name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Enables you to programmatically update an Amazon Web Services Supply Chain data
  lake dataset.

  Developers can update the description of a data lake dataset for a given
  instance ID, namespace, and dataset name.
  """
  @spec update_data_lake_dataset(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_data_lake_dataset_request(),
          list()
        ) ::
          {:ok, update_data_lake_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_lake_dataset_errors()}
  def update_data_lake_dataset(
        %Client{} = client,
        instance_id,
        name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/datasets/#{AWS.Util.encode_uri(name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Enables you to programmatically update an Amazon Web Services Supply Chain
  instance description by providing all the relevant information such as account
  ID, instance ID and so on without using the AWS console.
  """
  @spec update_instance(map(), String.t(), update_instance_request(), list()) ::
          {:ok, update_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_instance_errors()}
  def update_instance(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/api/instance/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
