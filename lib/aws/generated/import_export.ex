# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ImportExport do
  @moduledoc """
  AWS Import/Export Service

  AWS Import/Export accelerates transferring large amounts of data between the AWS
  cloud and portable storage devices that you mail to us.

  AWS Import/Export transfers data directly onto and off of your storage devices
  using Amazon's high-speed internal network and bypassing the Internet. For large
  data sets, AWS Import/Export is often faster than Internet transfer and more
  cost effective than upgrading your connectivity.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2010-06-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: "us-east-1",
      endpoint_prefix: "importexport",
      global?: true,
      protocol: "query",
      service_id: "Import Export",
      signature_version: "v2",
      signing_name: "importexport",
      target_prefix: nil
    }
  end

  @doc """
  This operation cancels a specified job.

  Only the job owner can cancel it. The operation fails if the job has already
  started or is complete.
  """
  def cancel_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelJob", input, options)
  end

  @doc """
  This operation initiates the process of scheduling an upload or download of your
  data.

  You include in the request a manifest that describes the data transfer
  specifics. The response to the request includes a job ID, which you can use in
  other operations, a signature that you use to identify your storage device, and
  the address where you should ship your storage device.
  """
  def create_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateJob", input, options)
  end

  @doc """
  This operation generates a pre-paid UPS shipping label that you will use to ship
  your device to AWS for processing.
  """
  def get_shipping_label(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetShippingLabel", input, options)
  end

  @doc """
  This operation returns information about a job, including where the job is in
  the processing pipeline, the status of the results, and the signature value
  associated with the job.

  You can only return information about jobs you own.
  """
  def get_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetStatus", input, options)
  end

  @doc """
  This operation returns the jobs associated with the requester.

  AWS Import/Export lists the jobs in reverse chronological order based on the
  date of creation. For example if Job Test1 was created 2009Dec30 and Test2 was
  created 2010Feb05, the ListJobs operation would return Test2 followed by Test1.
  """
  def list_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListJobs", input, options)
  end

  @doc """
  You use this operation to change the parameters specified in the original
  manifest file by supplying a new manifest file.

  The manifest file attached to this request replaces the original manifest file.
  You can only use the operation after a CreateJob request but before the data
  transfer starts and you can only use it on jobs you own.
  """
  def update_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateJob", input, options)
  end
end
