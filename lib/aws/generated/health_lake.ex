# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.HealthLake do
  @moduledoc """
  Amazon HealthLake is a HIPAA eligibile service that allows customers to store,
  transform, query, and analyze their FHIR-formatted data in a consistent fashion
  in the cloud.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "HealthLake",
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
  Creates a Data Store that can ingest and export FHIR formatted data.
  """
  def create_fhir_datastore(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateFHIRDatastore", input, options)
  end

  @doc """
  Deletes a Data Store.
  """
  def delete_fhir_datastore(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteFHIRDatastore", input, options)
  end

  @doc """
  Gets the properties associated with the FHIR Data Store, including the Data
  Store ID, Data Store ARN, Data Store name, Data Store status, created at, Data
  Store type version, and Data Store endpoint.
  """
  def describe_fhir_datastore(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFHIRDatastore", input, options)
  end

  @doc """
  Displays the properties of a FHIR export job, including the ID, ARN, name, and
  the status of the job.
  """
  def describe_fhir_export_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFHIRExportJob", input, options)
  end

  @doc """
  Displays the properties of a FHIR import job, including the ID, ARN, name, and
  the status of the job.
  """
  def describe_fhir_import_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFHIRImportJob", input, options)
  end

  @doc """
  Lists all FHIR Data Stores that are in the user’s account, regardless of Data
  Store status.
  """
  def list_fhir_datastores(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListFHIRDatastores", input, options)
  end

  @doc """
  Begins a FHIR export job.
  """
  def start_fhir_export_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartFHIRExportJob", input, options)
  end

  @doc """
  Begins a FHIR Import job.
  """
  def start_fhir_import_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartFHIRImportJob", input, options)
  end
end