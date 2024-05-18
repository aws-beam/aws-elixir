# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.HealthLake do
  @moduledoc """
  AWS HealthLake is a HIPAA eligibile service that allows customers to store,
  transform, query, and analyze their FHIR-formatted data in a consistent fashion
  in the cloud.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      identity_provider_configuration() :: %{
        "AuthorizationStrategy" => list(any()),
        "FineGrainedAuthorizationEnabled" => boolean(),
        "IdpLambdaArn" => String.t(),
        "Metadata" => String.t()
      }
      
  """
  @type identity_provider_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_import_job_request() :: %{
        required("DatastoreId") => String.t(),
        required("JobId") => String.t()
      }
      
  """
  @type describe_fhir_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fhir_datastore_response() :: %{
        "DatastoreArn" => String.t(),
        "DatastoreEndpoint" => String.t(),
        "DatastoreId" => String.t(),
        "DatastoreStatus" => list(any())
      }
      
  """
  @type create_fhir_datastore_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_export_job_request() :: %{
        required("DatastoreId") => String.t(),
        required("JobId") => String.t()
      }
      
  """
  @type describe_fhir_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      start_fhir_import_job_request() :: %{
        optional("JobName") => String.t(),
        required("ClientToken") => String.t(),
        required("DataAccessRoleArn") => String.t(),
        required("DatastoreId") => String.t(),
        required("InputDataConfig") => list(),
        required("JobOutputDataConfig") => list()
      }
      
  """
  @type start_fhir_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "DatastoreId" => String.t(),
        "EndTime" => non_neg_integer(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "Message" => String.t(),
        "OutputDataConfig" => list(),
        "SubmitTime" => non_neg_integer()
      }
      
  """
  @type export_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "DatastoreId" => String.t(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => list(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobOutputDataConfig" => list(),
        "JobProgressReport" => job_progress_report(),
        "JobStatus" => list(any()),
        "Message" => String.t(),
        "SubmitTime" => non_neg_integer()
      }
      
  """
  @type import_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      preload_data_config() :: %{
        "PreloadDataType" => list(any())
      }
      
  """
  @type preload_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      datastore_filter() :: %{
        "CreatedAfter" => non_neg_integer(),
        "CreatedBefore" => non_neg_integer(),
        "DatastoreName" => String.t(),
        "DatastoreStatus" => list(any())
      }
      
  """
  @type datastore_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fhir_datastores_response() :: %{
        "DatastorePropertiesList" => list(datastore_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_fhir_datastores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_export_job_response() :: %{
        "ExportJobProperties" => export_job_properties()
      }
      
  """
  @type describe_fhir_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_fhir_import_job_response() :: %{
        "DatastoreId" => String.t(),
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_fhir_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fhir_export_jobs_response() :: %{
        "ExportJobPropertiesList" => list(export_job_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_fhir_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_cause() :: %{
        "ErrorCategory" => list(any()),
        "ErrorMessage" => String.t()
      }
      
  """
  @type error_cause() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fhir_export_jobs_request() :: %{
        optional("JobName") => String.t(),
        optional("JobStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SubmittedAfter") => non_neg_integer(),
        optional("SubmittedBefore") => non_neg_integer(),
        required("DatastoreId") => String.t()
      }
      
  """
  @type list_fhir_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fhir_datastore_request() :: %{
        required("DatastoreId") => String.t()
      }
      
  """
  @type delete_fhir_datastore_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fhir_datastore_response() :: %{
        "DatastoreArn" => String.t(),
        "DatastoreEndpoint" => String.t(),
        "DatastoreId" => String.t(),
        "DatastoreStatus" => list(any())
      }
      
  """
  @type delete_fhir_datastore_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      datastore_properties() :: %{
        "CreatedAt" => non_neg_integer(),
        "DatastoreArn" => String.t(),
        "DatastoreEndpoint" => String.t(),
        "DatastoreId" => String.t(),
        "DatastoreName" => String.t(),
        "DatastoreStatus" => list(any()),
        "DatastoreTypeVersion" => list(any()),
        "ErrorCause" => error_cause(),
        "IdentityProviderConfiguration" => identity_provider_configuration(),
        "PreloadDataConfig" => preload_data_config(),
        "SseConfiguration" => sse_configuration()
      }
      
  """
  @type datastore_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sse_configuration() :: %{
        "KmsEncryptionConfig" => kms_encryption_config()
      }
      
  """
  @type sse_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fhir_datastores_request() :: %{
        optional("Filter") => datastore_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_fhir_datastores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_encryption_config() :: %{
        "CmkType" => list(any()),
        "KmsKeyId" => String.t()
      }
      
  """
  @type kms_encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_datastore_request() :: %{
        required("DatastoreId") => String.t()
      }
      
  """
  @type describe_fhir_datastore_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
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
      
      list_fhir_import_jobs_response() :: %{
        "ImportJobPropertiesList" => list(import_job_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_fhir_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

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
  @type job_progress_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_configuration() :: %{
        "KmsKeyId" => String.t(),
        "S3Uri" => String.t()
      }
      
  """
  @type s3_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_import_job_response() :: %{
        "ImportJobProperties" => import_job_properties()
      }
      
  """
  @type describe_fhir_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fhir_import_jobs_request() :: %{
        optional("JobName") => String.t(),
        optional("JobStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SubmittedAfter") => non_neg_integer(),
        optional("SubmittedBefore") => non_neg_integer(),
        required("DatastoreId") => String.t()
      }
      
  """
  @type list_fhir_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fhir_datastore_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DatastoreName") => String.t(),
        optional("IdentityProviderConfiguration") => identity_provider_configuration(),
        optional("PreloadDataConfig") => preload_data_config(),
        optional("SseConfiguration") => sse_configuration(),
        optional("Tags") => list(tag()()),
        required("DatastoreTypeVersion") => list(any())
      }
      
  """
  @type create_fhir_datastore_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_fhir_export_job_response() :: %{
        "DatastoreId" => String.t(),
        "JobId" => String.t(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_fhir_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_fhir_export_job_request() :: %{
        optional("JobName") => String.t(),
        required("ClientToken") => String.t(),
        required("DataAccessRoleArn") => String.t(),
        required("DatastoreId") => String.t(),
        required("OutputDataConfig") => list()
      }
      
  """
  @type start_fhir_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_datastore_response() :: %{
        "DatastoreProperties" => datastore_properties()
      }
      
  """
  @type describe_fhir_datastore_response() :: %{String.t() => any()}

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
  Creates a data store that can ingest and export FHIR formatted data.
  """
  @spec create_fhir_datastore(map(), create_fhir_datastore_request(), list()) ::
          {:ok, create_fhir_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fhir_datastore_errors()}
  def create_fhir_datastore(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFHIRDatastore", input, options)
  end

  @doc """
  Deletes a data store.
  """
  @spec delete_fhir_datastore(map(), delete_fhir_datastore_request(), list()) ::
          {:ok, delete_fhir_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fhir_datastore_errors()}
  def delete_fhir_datastore(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFHIRDatastore", input, options)
  end

  @doc """
  Gets the properties associated with the FHIR data store, including the data
  store ID,
  data store ARN, data store name, data store status, when the data store was
  created, data store type version, and the data store's endpoint.
  """
  @spec describe_fhir_datastore(map(), describe_fhir_datastore_request(), list()) ::
          {:ok, describe_fhir_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fhir_datastore_errors()}
  def describe_fhir_datastore(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFHIRDatastore", input, options)
  end

  @doc """
  Displays the properties of a FHIR export job, including the ID, ARN, name, and
  the status of the job.
  """
  @spec describe_fhir_export_job(map(), describe_fhir_export_job_request(), list()) ::
          {:ok, describe_fhir_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fhir_export_job_errors()}
  def describe_fhir_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFHIRExportJob", input, options)
  end

  @doc """
  Displays the properties of a FHIR import job, including the ID, ARN, name, and
  the status of the job.
  """
  @spec describe_fhir_import_job(map(), describe_fhir_import_job_request(), list()) ::
          {:ok, describe_fhir_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fhir_import_job_errors()}
  def describe_fhir_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFHIRImportJob", input, options)
  end

  @doc """
  Lists all FHIR data stores that are in the user’s account, regardless of data
  store status.
  """
  @spec list_fhir_datastores(map(), list_fhir_datastores_request(), list()) ::
          {:ok, list_fhir_datastores_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          | {:error, list_fhir_export_jobs_errors()}
  def list_fhir_export_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFHIRExportJobs", input, options)
  end

  @doc """

  Lists all FHIR import jobs associated with an account and their statuses.
  """
  @spec list_fhir_import_jobs(map(), list_fhir_import_jobs_request(), list()) ::
          {:ok, list_fhir_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Begins a FHIR export job.
  """
  @spec start_fhir_export_job(map(), start_fhir_export_job_request(), list()) ::
          {:ok, start_fhir_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_fhir_export_job_errors()}
  def start_fhir_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFHIRExportJob", input, options)
  end

  @doc """
  Begins a FHIR Import job.
  """
  @spec start_fhir_import_job(map(), start_fhir_import_job_request(), list()) ::
          {:ok, start_fhir_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_fhir_import_job_errors()}
  def start_fhir_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFHIRImportJob", input, options)
  end

  @doc """

  Adds a user specified key and value tag to a data store.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """

  Removes tags from a data store.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
