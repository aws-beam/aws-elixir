# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.HealthLake do
  @moduledoc """
  This is the *AWS HealthLake API Reference*.

  For an introduction to
  the service, see [What is AWS HealthLake?](https://docs.aws.amazon.com/healthlake/latest/devguide/what-is.html)
  in the *AWS HealthLake Developer
  Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      identity_provider_configuration() :: %{
        "AuthorizationStrategy" => list(any()),
        "FineGrainedAuthorizationEnabled" => boolean(),
        "IdpLambdaArn" => String.t() | atom(),
        "Metadata" => String.t() | atom()
      }
      
  """
  @type identity_provider_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_import_job_request() :: %{
        required("DatastoreId") => String.t() | atom(),
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_fhir_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_fhir_datastore_response() :: %{
        "DatastoreArn" => String.t() | atom(),
        "DatastoreEndpoint" => String.t() | atom(),
        "DatastoreId" => String.t() | atom(),
        "DatastoreStatus" => list(any())
      }
      
  """
  @type create_fhir_datastore_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_export_job_request() :: %{
        required("DatastoreId") => String.t() | atom(),
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_fhir_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      start_fhir_import_job_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("ValidationLevel") => list(any()),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("DatastoreId") => String.t() | atom(),
        required("InputDataConfig") => list(),
        required("JobOutputDataConfig") => list()
      }
      
  """
  @type start_fhir_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      export_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "DatastoreId" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "Message" => String.t() | atom(),
        "OutputDataConfig" => list(),
        "SubmitTime" => non_neg_integer()
      }
      
  """
  @type export_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "DatastoreId" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => list(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobOutputDataConfig" => list(),
        "JobProgressReport" => job_progress_report(),
        "JobStatus" => list(any()),
        "Message" => String.t() | atom(),
        "SubmitTime" => non_neg_integer(),
        "ValidationLevel" => list(any())
      }
      
  """
  @type import_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      preload_data_config() :: %{
        "PreloadDataType" => list(any())
      }
      
  """
  @type preload_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      datastore_filter() :: %{
        "CreatedAfter" => non_neg_integer(),
        "CreatedBefore" => non_neg_integer(),
        "DatastoreName" => String.t() | atom(),
        "DatastoreStatus" => list(any())
      }
      
  """
  @type datastore_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fhir_datastores_response() :: %{
        "DatastorePropertiesList" => list(datastore_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_fhir_datastores_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_export_job_response() :: %{
        "ExportJobProperties" => export_job_properties()
      }
      
  """
  @type describe_fhir_export_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_fhir_import_job_response() :: %{
        "DatastoreId" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_fhir_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fhir_export_jobs_response() :: %{
        "ExportJobPropertiesList" => list(export_job_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_fhir_export_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      error_cause() :: %{
        "ErrorCategory" => list(any()),
        "ErrorMessage" => String.t() | atom()
      }
      
  """
  @type error_cause() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fhir_export_jobs_request() :: %{
        optional("JobName") => String.t() | atom(),
        optional("JobStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SubmittedAfter") => non_neg_integer(),
        optional("SubmittedBefore") => non_neg_integer(),
        required("DatastoreId") => String.t() | atom()
      }
      
  """
  @type list_fhir_export_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_fhir_datastore_request() :: %{
        required("DatastoreId") => String.t() | atom()
      }
      
  """
  @type delete_fhir_datastore_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_fhir_datastore_response() :: %{
        "DatastoreArn" => String.t() | atom(),
        "DatastoreEndpoint" => String.t() | atom(),
        "DatastoreId" => String.t() | atom(),
        "DatastoreStatus" => list(any())
      }
      
  """
  @type delete_fhir_datastore_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      datastore_properties() :: %{
        "CreatedAt" => non_neg_integer(),
        "DatastoreArn" => String.t() | atom(),
        "DatastoreEndpoint" => String.t() | atom(),
        "DatastoreId" => String.t() | atom(),
        "DatastoreName" => String.t() | atom(),
        "DatastoreStatus" => list(any()),
        "DatastoreTypeVersion" => list(any()),
        "ErrorCause" => error_cause(),
        "IdentityProviderConfiguration" => identity_provider_configuration(),
        "PreloadDataConfig" => preload_data_config(),
        "SseConfiguration" => sse_configuration()
      }
      
  """
  @type datastore_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sse_configuration() :: %{
        "KmsEncryptionConfig" => kms_encryption_config()
      }
      
  """
  @type sse_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fhir_datastores_request() :: %{
        optional("Filter") => datastore_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_fhir_datastores_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kms_encryption_config() :: %{
        "CmkType" => list(any()),
        "KmsKeyId" => String.t() | atom()
      }
      
  """
  @type kms_encryption_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_datastore_request() :: %{
        required("DatastoreId") => String.t() | atom()
      }
      
  """
  @type describe_fhir_datastore_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_fhir_import_jobs_response() :: %{
        "ImportJobPropertiesList" => list(import_job_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_fhir_import_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      job_progress_report() :: %{
        "Throughput" => float(),
        "TotalNumberOfFilesReadWithCustomerError" => float(),
        "TotalNumberOfImportedFiles" => float(),
        "TotalNumberOfResourcesImported" => float(),
        "TotalNumberOfResourcesScanned" => float(),
        "TotalNumberOfResourcesWithCustomerError" => float(),
        "TotalNumberOfScannedFiles" => float(),
        "TotalSizeOfScannedFilesInMB" => float()
      }
      
  """
  @type job_progress_report() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_configuration() :: %{
        "KmsKeyId" => String.t() | atom(),
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_import_job_response() :: %{
        "ImportJobProperties" => import_job_properties()
      }
      
  """
  @type describe_fhir_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fhir_import_jobs_request() :: %{
        optional("JobName") => String.t() | atom(),
        optional("JobStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SubmittedAfter") => non_neg_integer(),
        optional("SubmittedBefore") => non_neg_integer(),
        required("DatastoreId") => String.t() | atom()
      }
      
  """
  @type list_fhir_import_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_fhir_datastore_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("DatastoreName") => String.t() | atom(),
        optional("IdentityProviderConfiguration") => identity_provider_configuration(),
        optional("PreloadDataConfig") => preload_data_config(),
        optional("SseConfiguration") => sse_configuration(),
        optional("Tags") => list(tag()),
        required("DatastoreTypeVersion") => list(any())
      }
      
  """
  @type create_fhir_datastore_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_fhir_export_job_response() :: %{
        "DatastoreId" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_fhir_export_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_fhir_export_job_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("DatastoreId") => String.t() | atom(),
        required("OutputDataConfig") => list()
      }
      
  """
  @type start_fhir_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_datastore_response() :: %{
        "DatastoreProperties" => datastore_properties()
      }
      
  """
  @type describe_fhir_datastore_response() :: %{(String.t() | atom()) => any()}

  @type create_fhir_datastore_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_fhir_datastore_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_fhir_datastore_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_fhir_export_job_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_fhir_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_fhir_datastores_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_fhir_export_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_fhir_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type start_fhir_export_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_fhir_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2017-07-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "healthlake",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "HealthLake",
      signature_version: "v4",
      signing_name: "healthlake",
      target_prefix: "HealthLake"
    }
  end

  @doc """
  Create a FHIR-enabled data store.
  """
  @spec create_fhir_datastore(map(), create_fhir_datastore_request(), list()) ::
          {:ok, create_fhir_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_fhir_datastore_errors()}
  def create_fhir_datastore(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFHIRDatastore", input, options)
  end

  @doc """
  Delete a FHIR-enabled data store.
  """
  @spec delete_fhir_datastore(map(), delete_fhir_datastore_request(), list()) ::
          {:ok, delete_fhir_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_fhir_datastore_errors()}
  def delete_fhir_datastore(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFHIRDatastore", input, options)
  end

  @doc """
  Get properties for a FHIR-enabled data store.
  """
  @spec describe_fhir_datastore(map(), describe_fhir_datastore_request(), list()) ::
          {:ok, describe_fhir_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fhir_datastore_errors()}
  def describe_fhir_datastore(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFHIRDatastore", input, options)
  end

  @doc """
  Get FHIR export job properties.
  """
  @spec describe_fhir_export_job(map(), describe_fhir_export_job_request(), list()) ::
          {:ok, describe_fhir_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fhir_export_job_errors()}
  def describe_fhir_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFHIRExportJob", input, options)
  end

  @doc """
  Get the import job properties to learn more about the job or job progress.
  """
  @spec describe_fhir_import_job(map(), describe_fhir_import_job_request(), list()) ::
          {:ok, describe_fhir_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fhir_import_job_errors()}
  def describe_fhir_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFHIRImportJob", input, options)
  end

  @doc """
  List all FHIR-enabled data stores in a user’s account, regardless of data store
  status.
  """
  @spec list_fhir_datastores(map(), list_fhir_datastores_request(), list()) ::
          {:ok, list_fhir_datastores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fhir_datastores_errors()}
  def list_fhir_datastores(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFHIRDatastores", input, options)
  end

  @doc """
  Lists all FHIR export jobs associated with an account and their statuses.
  """
  @spec list_fhir_export_jobs(map(), list_fhir_export_jobs_request(), list()) ::
          {:ok, list_fhir_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fhir_export_jobs_errors()}
  def list_fhir_export_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFHIRExportJobs", input, options)
  end

  @doc """
  List all FHIR import jobs associated with an account and their statuses.
  """
  @spec list_fhir_import_jobs(map(), list_fhir_import_jobs_request(), list()) ::
          {:ok, list_fhir_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fhir_import_jobs_errors()}
  def list_fhir_import_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFHIRImportJobs", input, options)
  end

  @doc """
  Returns a list of all existing tags associated with a data store.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Start a FHIR export job.
  """
  @spec start_fhir_export_job(map(), start_fhir_export_job_request(), list()) ::
          {:ok, start_fhir_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_fhir_export_job_errors()}
  def start_fhir_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFHIRExportJob", input, options)
  end

  @doc """
  Start importing bulk FHIR data into an ACTIVE data store.

  The import job imports FHIR
  data found in the `InputDataConfig` object and stores processing results in the
  `JobOutputDataConfig` object.
  """
  @spec start_fhir_import_job(map(), start_fhir_import_job_request(), list()) ::
          {:ok, start_fhir_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_fhir_import_job_errors()}
  def start_fhir_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFHIRImportJob", input, options)
  end

  @doc """
  Add a user-specifed key and value tag to a data store.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Remove a user-specifed key and value tag from a data store.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
