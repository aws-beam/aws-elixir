# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Snowball do
  @moduledoc """
  AWS Snowball is a petabyte-scale data transport solution that uses secure
  devices to transfer large amounts of data between your on-premises data
  centers and Amazon Simple Storage Service (Amazon S3). The Snowball
  commands described here provide access to the same functionality that is
  available in the AWS Snowball Management Console, which enables you to
  create and manage jobs for Snowball. To transfer data locally with a
  Snowball device, you'll need to use the Snowball client or the Amazon S3
  API adapter for Snowball. For more information, see the [User
  Guide](https://docs.aws.amazon.com/AWSImportExport/latest/ug/api-reference.html).
  """

  @doc """
  Cancels a cluster job. You can only cancel a cluster job while it's in the
  `AwaitingQuorum` status. You'll have at least an hour after creating a
  cluster job to cancel it.
  """
  def cancel_cluster(client, input, options \\ []) do
    request(client, "CancelCluster", input, options)
  end

  @doc """
  Cancels the specified job. You can only cancel a job before its `JobState`
  value changes to `PreparingAppliance`. Requesting the `ListJobs` or
  `DescribeJob` action returns a job's `JobState` as part of the response
  element data returned.
  """
  def cancel_job(client, input, options \\ []) do
    request(client, "CancelJob", input, options)
  end

  @doc """
  Creates an address for a Snowball to be shipped to. In most regions,
  addresses are validated at the time of creation. The address you provide
  must be located within the serviceable area of your region. If the address
  is invalid or unsupported, then an exception is thrown.
  """
  def create_address(client, input, options \\ []) do
    request(client, "CreateAddress", input, options)
  end

  @doc """
  Creates an empty cluster. Each cluster supports five nodes. You use the
  `CreateJob` action separately to create the jobs for each of these nodes.
  The cluster does not ship until these five node jobs have been created.
  """
  def create_cluster(client, input, options \\ []) do
    request(client, "CreateCluster", input, options)
  end

  @doc """
  Creates a job to import or export data between Amazon S3 and your
  on-premises data center. Your AWS account must have the right trust
  policies and permissions in place to create a job for Snowball. If you're
  creating a job for a node in a cluster, you only need to provide the
  `clusterId` value; the other job attributes are inherited from the cluster.
  """
  def create_job(client, input, options \\ []) do
    request(client, "CreateJob", input, options)
  end

  @doc """
  Takes an `AddressId` and returns specific details about that address in the
  form of an `Address` object.
  """
  def describe_address(client, input, options \\ []) do
    request(client, "DescribeAddress", input, options)
  end

  @doc """
  Returns a specified number of `ADDRESS` objects. Calling this API in one of
  the US regions will return addresses from the list of all addresses
  associated with this account in all US regions.
  """
  def describe_addresses(client, input, options \\ []) do
    request(client, "DescribeAddresses", input, options)
  end

  @doc """
  Returns information about a specific cluster including shipping
  information, cluster status, and other important metadata.
  """
  def describe_cluster(client, input, options \\ []) do
    request(client, "DescribeCluster", input, options)
  end

  @doc """
  Returns information about a specific job including shipping information,
  job status, and other important metadata.
  """
  def describe_job(client, input, options \\ []) do
    request(client, "DescribeJob", input, options)
  end

  @doc """
  Returns a link to an Amazon S3 presigned URL for the manifest file
  associated with the specified `JobId` value. You can access the manifest
  file for up to 60 minutes after this request has been made. To access the
  manifest file after 60 minutes have passed, you'll have to make another
  call to the `GetJobManifest` action.

  The manifest is an encrypted file that you can download after your job
  enters the `WithCustomer` status. The manifest is decrypted by using the
  `UnlockCode` code value, when you pass both values to the Snowball through
  the Snowball client when the client is started for the first time.

  As a best practice, we recommend that you don't save a copy of an
  `UnlockCode` value in the same location as the manifest file for that job.
  Saving these separately helps prevent unauthorized parties from gaining
  access to the Snowball associated with that job.

  The credentials of a given job, including its manifest file and unlock
  code, expire 90 days after the job is created.
  """
  def get_job_manifest(client, input, options \\ []) do
    request(client, "GetJobManifest", input, options)
  end

  @doc """
  Returns the `UnlockCode` code value for the specified job. A particular
  `UnlockCode` value can be accessed for up to 90 days after the associated
  job has been created.

  The `UnlockCode` value is a 29-character code with 25 alphanumeric
  characters and 4 hyphens. This code is used to decrypt the manifest file
  when it is passed along with the manifest to the Snowball through the
  Snowball client when the client is started for the first time.

  As a best practice, we recommend that you don't save a copy of the
  `UnlockCode` in the same location as the manifest file for that job. Saving
  these separately helps prevent unauthorized parties from gaining access to
  the Snowball associated with that job.
  """
  def get_job_unlock_code(client, input, options \\ []) do
    request(client, "GetJobUnlockCode", input, options)
  end

  @doc """
  Returns information about the Snowball service limit for your account, and
  also the number of Snowballs your account has in use.

  The default service limit for the number of Snowballs that you can have at
  one time is 1. If you want to increase your service limit, contact AWS
  Support.
  """
  def get_snowball_usage(client, input, options \\ []) do
    request(client, "GetSnowballUsage", input, options)
  end

  @doc """
  Returns an Amazon S3 presigned URL for an update file associated with a
  specified `JobId`.
  """
  def get_software_updates(client, input, options \\ []) do
    request(client, "GetSoftwareUpdates", input, options)
  end

  @doc """
  Returns an array of `JobListEntry` objects of the specified length. Each
  `JobListEntry` object is for a job in the specified cluster and contains a
  job's state, a job's ID, and other information.
  """
  def list_cluster_jobs(client, input, options \\ []) do
    request(client, "ListClusterJobs", input, options)
  end

  @doc """
  Returns an array of `ClusterListEntry` objects of the specified length.
  Each `ClusterListEntry` object contains a cluster's state, a cluster's ID,
  and other important status information.
  """
  def list_clusters(client, input, options \\ []) do
    request(client, "ListClusters", input, options)
  end

  @doc """
  This action returns a list of the different Amazon EC2 Amazon Machine
  Images (AMIs) that are owned by your AWS account that would be supported
  for use on a Snowball Edge device. Currently, supported AMIs are based on
  the CentOS 7 (x86_64) - with Updates HVM, Ubuntu Server 14.04 LTS (HVM),
  and Ubuntu 16.04 LTS - Xenial (HVM) images, available on the AWS
  Marketplace.
  """
  def list_compatible_images(client, input, options \\ []) do
    request(client, "ListCompatibleImages", input, options)
  end

  @doc """
  Returns an array of `JobListEntry` objects of the specified length. Each
  `JobListEntry` object contains a job's state, a job's ID, and a value that
  indicates whether the job is a job part, in the case of export jobs.
  Calling this API action in one of the US regions will return jobs from the
  list of all jobs associated with this account in all US regions.
  """
  def list_jobs(client, input, options \\ []) do
    request(client, "ListJobs", input, options)
  end

  @doc """
  While a cluster's `ClusterState` value is in the `AwaitingQuorum` state,
  you can update some of the information associated with a cluster. Once the
  cluster changes to a different job state, usually 60 minutes after the
  cluster being created, this action is no longer available.
  """
  def update_cluster(client, input, options \\ []) do
    request(client, "UpdateCluster", input, options)
  end

  @doc """
  While a job's `JobState` value is `New`, you can update some of the
  information associated with a job. Once the job changes to a different job
  state, usually within 60 minutes of the job being created, this action is
  no longer available.
  """
  def update_job(client, input, options \\ []) do
    request(client, "UpdateJob", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "snowball"}
    host = build_host("snowball", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSIESnowballJobManagementService.#{action}"}
    ]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
