# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3Control do
  @moduledoc """
  AWS S3 Control provides access to Amazon S3 control plane operations.
  """

  @doc """
  Creates an access point and associates it with the specified bucket.
  """
  def create_access_point(client, name, input, options \\ []) do
    path_ = "/v20180820/accesspoint/#{URI.encode(name)}"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  You can use Amazon S3 Batch Operations to perform large-scale Batch
  Operations on Amazon S3 objects. Amazon S3 Batch Operations can execute a
  single operation or action on lists of Amazon S3 objects that you specify.
  For more information, see [Amazon S3 Batch
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
  in the Amazon Simple Storage Service Developer Guide.

  Related actions include:

  <ul> <li> `DescribeJob`

  </li> <li> `ListJobs`

  </li> <li> `UpdateJobPriority`

  </li> <li> `UpdateJobStatus`

  </li> </ul>
  """
  def create_job(client, input, options \\ []) do
    path_ = "/v20180820/jobs"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the specified access point.
  """
  def delete_access_point(client, name, input, options \\ []) do
    path_ = "/v20180820/accesspoint/#{URI.encode(name)}"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the access point policy for the specified access point.
  """
  def delete_access_point_policy(client, name, input, options \\ []) do
    path_ = "/v20180820/accesspoint/#{URI.encode(name)}/policy"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the entire tag set from the specified Amazon S3 Batch Operations
  job. To use this operation, you must have permission to perform the
  `s3:DeleteJobTagging` action. For more information, see [Using Job
  Tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
  in the Amazon Simple Storage Service Developer Guide.

  <p/> Related actions include:

  <ul> <li> `CreateJob`

  </li> <li> `GetJobTagging`

  </li> <li> `PutJobTagging`

  </li> </ul>
  """
  def delete_job_tagging(client, job_id, input, options \\ []) do
    path_ = "/v20180820/jobs/#{URI.encode(job_id)}/tagging"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the `PublicAccessBlock` configuration for an Amazon Web Services
  account.
  """
  def delete_public_access_block(client, input, options \\ []) do
    path_ = "/v20180820/configuration/publicAccessBlock"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves the configuration parameters and status for a Batch Operations
  job. For more information, see [Amazon S3 Batch
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
  in the Amazon Simple Storage Service Developer Guide.

  <p/> Related actions include:

  <ul> <li> `CreateJob`

  </li> <li> `ListJobs`

  </li> <li> `UpdateJobPriority`

  </li> <li> `UpdateJobStatus`

  </li> </ul>
  """
  def describe_job(client, job_id, account_id, options \\ []) do
    path_ = "/v20180820/jobs/#{URI.encode(job_id)}"
    headers = []
    headers = if !is_nil(account_id) do
      [{"x-amz-account-id", account_id} | headers]
    else
      headers
    end
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns configuration information about the specified access point.
  """
  def get_access_point(client, name, account_id, options \\ []) do
    path_ = "/v20180820/accesspoint/#{URI.encode(name)}"
    headers = []
    headers = if !is_nil(account_id) do
      [{"x-amz-account-id", account_id} | headers]
    else
      headers
    end
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the access point policy associated with the specified access point.
  """
  def get_access_point_policy(client, name, account_id, options \\ []) do
    path_ = "/v20180820/accesspoint/#{URI.encode(name)}/policy"
    headers = []
    headers = if !is_nil(account_id) do
      [{"x-amz-account-id", account_id} | headers]
    else
      headers
    end
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Indicates whether the specified access point currently has a policy that
  allows public access. For more information about public access through
  access points, see [Managing Data Access with Amazon S3 Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-points.html)
  in the *Amazon Simple Storage Service Developer Guide*.
  """
  def get_access_point_policy_status(client, name, account_id, options \\ []) do
    path_ = "/v20180820/accesspoint/#{URI.encode(name)}/policyStatus"
    headers = []
    headers = if !is_nil(account_id) do
      [{"x-amz-account-id", account_id} | headers]
    else
      headers
    end
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the tags on an Amazon S3 Batch Operations job. To use this
  operation, you must have permission to perform the `s3:GetJobTagging`
  action. For more information, see [Using Job
  Tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
  in the *Amazon Simple Storage Service Developer Guide*.

  <p/> Related actions include:

  <ul> <li> `CreateJob`

  </li> <li> `PutJobTagging`

  </li> <li> `DeleteJobTagging`

  </li> </ul>
  """
  def get_job_tagging(client, job_id, account_id, options \\ []) do
    path_ = "/v20180820/jobs/#{URI.encode(job_id)}/tagging"
    headers = []
    headers = if !is_nil(account_id) do
      [{"x-amz-account-id", account_id} | headers]
    else
      headers
    end
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves the `PublicAccessBlock` configuration for an Amazon Web Services
  account.
  """
  def get_public_access_block(client, account_id, options \\ []) do
    path_ = "/v20180820/configuration/publicAccessBlock"
    headers = []
    headers = if !is_nil(account_id) do
      [{"x-amz-account-id", account_id} | headers]
    else
      headers
    end
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of the access points currently associated with the specified
  bucket. You can retrieve up to 1000 access points per call. If the
  specified bucket has more than 1,000 access points (or the number specified
  in `maxResults`, whichever is less), the response will include a
  continuation token that you can use to list the additional access points.
  """
  def list_access_points(client, bucket \\ nil, max_results \\ nil, next_token \\ nil, account_id, options \\ []) do
    path_ = "/v20180820/accesspoint"
    headers = []
    headers = if !is_nil(account_id) do
      [{"x-amz-account-id", account_id} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(bucket) do
      [{"bucket", bucket} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists current Amazon S3 Batch Operations jobs and jobs that have ended
  within the last 30 days for the AWS account making the request. For more
  information, see [Amazon S3 Batch
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  Related actions include:

  <p/> <ul> <li> `CreateJob`

  </li> <li> `DescribeJob`

  </li> <li> `UpdateJobPriority`

  </li> <li> `UpdateJobStatus`

  </li> </ul>
  """
  def list_jobs(client, job_statuses \\ nil, max_results \\ nil, next_token \\ nil, account_id, options \\ []) do
    path_ = "/v20180820/jobs"
    headers = []
    headers = if !is_nil(account_id) do
      [{"x-amz-account-id", account_id} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(job_statuses) do
      [{"jobStatuses", job_statuses} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Associates an access policy with the specified access point. Each access
  point can have only one policy, so a request made to this API replaces any
  existing policy associated with the specified access point.
  """
  def put_access_point_policy(client, name, input, options \\ []) do
    path_ = "/v20180820/accesspoint/#{URI.encode(name)}/policy"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Set the supplied tag-set on an Amazon S3 Batch Operations job.

  A tag is a key-value pair. You can associate Amazon S3 Batch Operations
  tags with any job by sending a PUT request against the tagging subresource
  that is associated with the job. To modify the existing tag set, you can
  either replace the existing tag set entirely, or make changes within the
  existing tag set by retrieving the existing tag set using `GetJobTagging`,
  modify that tag set, and use this API action to replace the tag set with
  the one you have modified.. For more information, see [Using Job
  Tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
  in the Amazon Simple Storage Service Developer Guide.

  <p/> <note> <ul> <li> If you send this request with an empty tag set,
  Amazon S3 deletes the existing tag set on the Batch Operations job. If you
  use this method, you will be charged for a Tier 1 Request (PUT). For more
  information, see [Amazon S3 pricing](http://aws.amazon.com/s3/pricing/).

  </li> <li> For deleting existing tags for your batch operations job,
  `DeleteJobTagging` request is preferred because it achieves the same result
  without incurring charges.

  </li> <li> A few things to consider about using tags:

  <ul> <li> Amazon S3 limits the maximum number of tags to 50 tags per job.

  </li> <li> You can associate up to 50 tags with a job as long as they have
  unique tag keys.

  </li> <li> A tag key can be up to 128 Unicode characters in length, and tag
  values can be up to 256 Unicode characters in length.

  </li> <li> The key and values are case sensitive.

  </li> <li> For tagging-related restrictions related to characters and
  encodings, see [User-Defined Tag
  Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html).

  </li> </ul> </li> </ul> </note> <p/> To use this operation, you must have
  permission to perform the `s3:PutJobTagging` action.

  Related actions include:

  <ul> <li> `CreateJob`

  </li> <li> `GetJobTagging`

  </li> <li> `DeleteJobTagging`

  </li> </ul>
  """
  def put_job_tagging(client, job_id, input, options \\ []) do
    path_ = "/v20180820/jobs/#{URI.encode(job_id)}/tagging"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates or modifies the `PublicAccessBlock` configuration for an Amazon Web
  Services account.
  """
  def put_public_access_block(client, input, options \\ []) do
    path_ = "/v20180820/configuration/publicAccessBlock"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an existing Amazon S3 Batch Operations job's priority. For more
  information, see [Amazon S3 Batch
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
  in the Amazon Simple Storage Service Developer Guide.

  <p/> Related actions include:

  <ul> <li> `CreateJob`

  </li> <li> `ListJobs`

  </li> <li> `DescribeJob`

  </li> <li> `UpdateJobStatus`

  </li> </ul>
  """
  def update_job_priority(client, job_id, input, options \\ []) do
    path_ = "/v20180820/jobs/#{URI.encode(job_id)}/priority"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    {query_, input} =
      [
        {"Priority", "priority"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the status for the specified job. Use this operation to confirm
  that you want to run a job or to cancel an existing job. For more
  information, see [Amazon S3 Batch
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
  in the Amazon Simple Storage Service Developer Guide.

  <p/> Related actions include:

  <ul> <li> `CreateJob`

  </li> <li> `ListJobs`

  </li> <li> `DescribeJob`

  </li> <li> `UpdateJobStatus`

  </li> </ul>
  """
  def update_job_status(client, job_id, input, options \\ []) do
    path_ = "/v20180820/jobs/#{URI.encode(job_id)}/status"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    {query_, input} =
      [
        {"RequestedJobStatus", "requestedJobStatus"},
        {"StatusUpdateReason", "statusUpdateReason"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "s3"}
    account_id = :proplists.get_value("x-amz-account-id", headers)
    host = build_host(account_id, "s3-control", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "text/xml"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, AWS.Util.decode_xml(body), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = AWS.Util.decode_xml(body)
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, %{}, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, AWS.Util.decode_xml(body), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = AWS.Util.decode_xml(body)
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp build_host(_account_id, _endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(:undefined, _endpoint_prefix, _client) do
    raise "missing account_id"
  end
  defp build_host(account_id, endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{account_id}.#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.Util.encode_xml(input), else: ""
  end
end
