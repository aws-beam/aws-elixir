# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Snowball do
  @moduledoc """
  The Amazon Web Services Snow Family provides a petabyte-scale data transport
  solution that uses secure devices to transfer large amounts of data between your
  on-premises data centers and Amazon Simple Storage Service (Amazon S3).

  The Snow Family commands described here provide access to the same functionality
  that is available in the Amazon Web Services Snow Family Management Console,
  which enables you to create and manage jobs for a Snow Family device. To
  transfer data locally with a Snow Family device, you'll need to use the Snowball
  Edge client or the Amazon S3 API Interface for Snowball or OpsHub for Snow
  Family. For more information, see the [User Guide](https://docs.aws.amazon.com/AWSImportExport/latest/ug/api-reference.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "Amazon Snowball",
      api_version: "2016-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "snowball",
      global?: false,
      protocol: "json",
      service_id: "Snowball",
      signature_version: "v4",
      signing_name: "snowball",
      target_prefix: "AWSIESnowballJobManagementService"
    }
  end

  @doc """
  Cancels a cluster job.

  You can only cancel a cluster job while it's in the `AwaitingQuorum` status.
  You'll have at least an hour after creating a cluster job to cancel it.
  """
  def cancel_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelCluster", input, options)
  end

  @doc """
  Cancels the specified job.

  You can only cancel a job before its `JobState` value changes to
  `PreparingAppliance`. Requesting the `ListJobs` or `DescribeJob` action returns
  a job's `JobState` as part of the response element data returned.
  """
  def cancel_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelJob", input, options)
  end

  @doc """
  Creates an address for a Snow device to be shipped to.

  In most regions, addresses are validated at the time of creation. The address
  you provide must be located within the serviceable area of your region. If the
  address is invalid or unsupported, then an exception is thrown.
  """
  def create_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAddress", input, options)
  end

  @doc """
  Creates an empty cluster.

  Each cluster supports five nodes. You use the `CreateJob` action separately to
  create the jobs for each of these nodes. The cluster does not ship until these
  five node jobs have been created.
  """
  def create_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCluster", input, options)
  end

  @doc """
  Creates a job to import or export data between Amazon S3 and your on-premises
  data center.

  Your Amazon Web Services account must have the right trust policies and
  permissions in place to create a job for a Snow device. If you're creating a job
  for a node in a cluster, you only need to provide the `clusterId` value; the
  other job attributes are inherited from the cluster.

  Only the Snowball; Edge device type is supported when ordering clustered jobs.

  The device capacity is optional.

  Availability of device types differ by Amazon Web Services Region. For more
  information about Region availability, see [Amazon Web Services Regional Services](https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/?p=ngi&loc=4).

  ## Snow Family devices and their capacities.

    * Snow Family device type: ## SNC1_SSD

      * Capacity: T14

      * Description: Snowcone

    * Snow Family device type: ## SNC1_HDD

      * Capacity: T8

      * Description: Snowcone

    * Device type: ## EDGE_S

      * Capacity: T98

      * Description: Snowball Edge Storage Optimized for data
  transfer only

    * Device type: ## EDGE_CG

      * Capacity: T42

      * Description: Snowball Edge Compute Optimized with GPU

    * Device type: ## EDGE_C

      * Capacity: T42

      * Description: Snowball Edge Compute Optimized without
  GPU

    * Device type: ## EDGE

      * Capacity: T100

      * Description: Snowball Edge Storage Optimized with EC2
  Compute

    * Device type: ## V3_5C

      * Capacity: T32

      * Description: Snowball Edge Compute Optimized without
  GPU

    * Device type: ## STANDARD

      * Capacity: T50

      * Description: Original Snowball device

  This device is only available in the Ningxia, Beijing, and Singapore Amazon Web
  Services Region

    * Device type: ## STANDARD

      * Capacity: T80

      * Description: Original Snowball device

  This device is only available in the Ningxia, Beijing, and Singapore Amazon Web
  Services Region.
  """
  def create_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateJob", input, options)
  end

  @doc """
  Creates a job with the long-term usage option for a device.

  The long-term usage is a 1-year or 3-year long-term pricing type for the device.
  You are billed upfront, and Amazon Web Services provides discounts for long-term
  pricing.
  """
  def create_long_term_pricing(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLongTermPricing", input, options)
  end

  @doc """
  Creates a shipping label that will be used to return the Snow device to Amazon
  Web Services.
  """
  def create_return_shipping_label(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReturnShippingLabel", input, options)
  end

  @doc """
  Takes an `AddressId` and returns specific details about that address in the form
  of an `Address` object.
  """
  def describe_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAddress", input, options)
  end

  @doc """
  Returns a specified number of `ADDRESS` objects.

  Calling this API in one of the US regions will return addresses from the list of
  all addresses associated with this account in all US regions.
  """
  def describe_addresses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAddresses", input, options)
  end

  @doc """
  Returns information about a specific cluster including shipping information,
  cluster status, and other important metadata.
  """
  def describe_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCluster", input, options)
  end

  @doc """
  Returns information about a specific job including shipping information, job
  status, and other important metadata.
  """
  def describe_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeJob", input, options)
  end

  @doc """
  Information on the shipping label of a Snow device that is being returned to
  Amazon Web Services.
  """
  def describe_return_shipping_label(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReturnShippingLabel", input, options)
  end

  @doc """
  Returns a link to an Amazon S3 presigned URL for the manifest file associated
  with the specified `JobId` value.

  You can access the manifest file for up to 60 minutes after this request has
  been made. To access the manifest file after 60 minutes have passed, you'll have
  to make another call to the `GetJobManifest` action.

  The manifest is an encrypted file that you can download after your job enters
  the `WithCustomer` status. This is the only valid status for calling this API as
  the manifest and `UnlockCode` code value are used for securing your device and
  should only be used when you have the device. The manifest is decrypted by using
  the `UnlockCode` code value, when you pass both values to the Snow device
  through the Snowball client when the client is started for the first time.

  As a best practice, we recommend that you don't save a copy of an `UnlockCode`
  value in the same location as the manifest file for that job. Saving these
  separately helps prevent unauthorized parties from gaining access to the Snow
  device associated with that job.

  The credentials of a given job, including its manifest file and unlock code,
  expire 360 days after the job is created.
  """
  def get_job_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobManifest", input, options)
  end

  @doc """
  Returns the `UnlockCode` code value for the specified job.

  A particular `UnlockCode` value can be accessed for up to 360 days after the
  associated job has been created.

  The `UnlockCode` value is a 29-character code with 25 alphanumeric characters
  and 4 hyphens. This code is used to decrypt the manifest file when it is passed
  along with the manifest to the Snow device through the Snowball client when the
  client is started for the first time. The only valid status for calling this API
  is `WithCustomer` as the manifest and `Unlock` code values are used for securing
  your device and should only be used when you have the device.

  As a best practice, we recommend that you don't save a copy of the `UnlockCode`
  in the same location as the manifest file for that job. Saving these separately
  helps prevent unauthorized parties from gaining access to the Snow device
  associated with that job.
  """
  def get_job_unlock_code(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobUnlockCode", input, options)
  end

  @doc """
  Returns information about the Snow Family service limit for your account, and
  also the number of Snow devices your account has in use.

  The default service limit for the number of Snow devices that you can have at
  one time is 1. If you want to increase your service limit, contact Amazon Web
  Services Support.
  """
  def get_snowball_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSnowballUsage", input, options)
  end

  @doc """
  Returns an Amazon S3 presigned URL for an update file associated with a
  specified `JobId`.
  """
  def get_software_updates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSoftwareUpdates", input, options)
  end

  @doc """
  Returns an array of `JobListEntry` objects of the specified length.

  Each `JobListEntry` object is for a job in the specified cluster and contains a
  job's state, a job's ID, and other information.
  """
  def list_cluster_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListClusterJobs", input, options)
  end

  @doc """
  Returns an array of `ClusterListEntry` objects of the specified length.

  Each `ClusterListEntry` object contains a cluster's state, a cluster's ID, and
  other important status information.
  """
  def list_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListClusters", input, options)
  end

  @doc """
  This action returns a list of the different Amazon EC2 Amazon Machine Images
  (AMIs) that are owned by your Amazon Web Services accountthat would be supported
  for use on a Snow device.

  Currently, supported AMIs are based on the CentOS 7 (x86_64) - with Updates HVM,
  Ubuntu Server 14.04 LTS (HVM), and Ubuntu 16.04 LTS - Xenial (HVM) images,
  available on the Amazon Web Services Marketplace.
  """
  def list_compatible_images(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCompatibleImages", input, options)
  end

  @doc """
  Returns an array of `JobListEntry` objects of the specified length.

  Each `JobListEntry` object contains a job's state, a job's ID, and a value that
  indicates whether the job is a job part, in the case of export jobs. Calling
  this API action in one of the US regions will return jobs from the list of all
  jobs associated with this account in all US regions.
  """
  def list_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListJobs", input, options)
  end

  @doc """
  Lists all long-term pricing types.
  """
  def list_long_term_pricing(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLongTermPricing", input, options)
  end

  @doc """
  While a cluster's `ClusterState` value is in the `AwaitingQuorum` state, you can
  update some of the information associated with a cluster.

  Once the cluster changes to a different job state, usually 60 minutes after the
  cluster being created, this action is no longer available.
  """
  def update_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCluster", input, options)
  end

  @doc """
  While a job's `JobState` value is `New`, you can update some of the information
  associated with a job.

  Once the job changes to a different job state, usually within 60 minutes of the
  job being created, this action is no longer available.
  """
  def update_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateJob", input, options)
  end

  @doc """
  Updates the state when a shipment state changes to a different state.
  """
  def update_job_shipment_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateJobShipmentState", input, options)
  end

  @doc """
  Updates the long-term pricing type.
  """
  def update_long_term_pricing(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLongTermPricing", input, options)
  end
end
