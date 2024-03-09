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

  def metadata do
    %{
      api_version: "2017-07-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "healthlake",
      global?: false,
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
  def create_fhir_datastore(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFHIRDatastore", input, options)
  end

  @doc """
  Deletes a data store.
  """
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
  def describe_fhir_datastore(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFHIRDatastore", input, options)
  end

  @doc """
  Displays the properties of a FHIR export job, including the ID, ARN, name, and
  the status of the job.
  """
  def describe_fhir_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFHIRExportJob", input, options)
  end

  @doc """
  Displays the properties of a FHIR import job, including the ID, ARN, name, and
  the status of the job.
  """
  def describe_fhir_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFHIRImportJob", input, options)
  end

  @doc """
  Lists all FHIR data stores that are in the user’s account, regardless of data
  store status.
  """
  def list_fhir_datastores(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFHIRDatastores", input, options)
  end

  @doc """

  Lists all FHIR export jobs associated with an account and their statuses.
  """
  def list_fhir_export_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFHIRExportJobs", input, options)
  end

  @doc """

  Lists all FHIR import jobs associated with an account and their statuses.
  """
  def list_fhir_import_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFHIRImportJobs", input, options)
  end

  @doc """

  Returns a list of all existing tags associated with a data store.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Begins a FHIR export job.
  """
  def start_fhir_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFHIRExportJob", input, options)
  end

  @doc """
  Begins a FHIR Import job.
  """
  def start_fhir_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFHIRImportJob", input, options)
  end

  @doc """

  Adds a user specified key and value tag to a data store.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """

  Removes tags from a data store.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
