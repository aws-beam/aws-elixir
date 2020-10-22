# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3Control do
  @moduledoc """
  AWS S3 Control provides access to Amazon S3 control plane operations.
  """

  @doc """
  Creates an access point and associates it with the specified bucket. For
  more information, see [Managing Data Access with Amazon S3 Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-points.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  <p/> **Using this action with Amazon S3 on Outposts**

  This action:

  <ul> <li> Requires a virtual private cloud (VPC) configuration as S3 on
  Outposts only supports VPC style access points.

  </li> <li> Does not support ACL on S3 on Outposts buckets.

  </li> <li> Does not support Public Access on S3 on Outposts buckets.

  </li> <li> Does not support object lock for S3 on Outposts buckets.

  </li> </ul> For more information, see [Using Amazon S3 on
  Outposts](AmazonS3/latest/dev/S3onOutposts.html) in the *Amazon Simple
  Storage Service Developer Guide *.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_CreateAccessPoint.html#API_control_CreateAccessPoint_Examples)
  section below.

  <p/> The following actions are related to `CreateAccessPoint`:

  <ul> <li>
  [GetAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)

  </li> <li>
  [DeleteAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_DeleteAccessPoint.html)

  </li> <li>
  [ListAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_ListAccessPoints.html)

  </li> </ul>
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
  <note> This API operation creates an Amazon S3 on Outposts bucket. To
  create an S3 bucket, see [Create
  Bucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
  in the *Amazon Simple Storage Service API*.

  </note> Creates a new Outposts bucket. By creating the bucket, you become
  the bucket owner. To create an Outposts bucket, you must have S3 on
  Outposts. For more information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html)
  in *Amazon Simple Storage Service Developer Guide*.

  Not every string is an acceptable bucket name. For information on bucket
  naming restrictions, see [Working with Amazon S3
  Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html#bucketnamingrules).

  S3 on Outposts buckets do not support

  <ul> <li> ACLs. Instead, configure access point policies to manage access
  to buckets.

  </li> <li> Public access.

  </li> <li> Object Lock

  </li> <li> Bucket Location constraint

  </li> </ul> For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and outpost-id in
  your API request, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_CreateBucket.html#API_control_CreateBucket_Examples)
  section below.

  The following actions are related to `CreateBucket` for Amazon S3 on
  Outposts:

  <ul> <li>
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

  </li> <li>
  [GetBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_GetBucket.html)

  </li> <li>
  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_DeleteBucket.html)

  </li> <li>
  [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_CreateAccessPoint.html)

  </li> <li>
  [PutAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_PutAccessPointPolicy.html)

  </li> </ul>
  """
  def create_bucket(client, bucket, input, options \\ []) do
    path_ = "/v20180820/bucket/#{URI.encode(bucket)}"
    {headers, input} =
      [
        {"ACL", "x-amz-acl"},
        {"GrantFullControl", "x-amz-grant-full-control"},
        {"GrantRead", "x-amz-grant-read"},
        {"GrantReadACP", "x-amz-grant-read-acp"},
        {"GrantWrite", "x-amz-grant-write"},
        {"GrantWriteACP", "x-amz-grant-write-acp"},
        {"ObjectLockEnabledForBucket", "x-amz-bucket-object-lock-enabled"},
        {"OutpostId", "x-amz-outpost-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    case request(client, :put, path_, query_, headers, input, options, nil) do
      {:ok, body, response} when is_nil(body) == false ->
        body =
          [
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  S3 Batch Operations performs large-scale Batch Operations on Amazon S3
  objects. Batch Operations can run a single operation or action on lists of
  Amazon S3 objects that you specify. For more information, see [S3 Batch
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  This operation creates a S3 Batch Operations job.

  <p/> Related actions include:

  <ul> <li>
  [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

  </li> <li>
  [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

  </li> <li>
  [UpdateJobPriority](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html)

  </li> <li>
  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

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

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_DeleteAccessPoint.html#API_control_DeleteAccessPoint_Examples)
  section below.

  The following actions are related to `DeleteAccessPoint`:

  <ul> <li>
  [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

  </li> <li>
  [GetAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)

  </li> <li>
  [ListAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)

  </li> </ul>
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

  <p/> All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_DeleteAccessPointPolicy.html#API_control_DeleteAccessPointPolicy_Examples)
  section below.

  The following actions are related to `DeleteAccessPointPolicy`:

  <ul> <li>
  [PutAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html)

  </li> <li>
  [GetAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html)

  </li> </ul>
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
  <note> This API operation deletes an Amazon S3 on Outposts bucket. To
  delete an S3 bucket, see
  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)
  in the *Amazon Simple Storage Service API*.

  </note> Deletes the Amazon S3 on Outposts bucket. All objects (including
  all object versions and delete markers) in the bucket must be deleted
  before the bucket itself can be deleted. For more information, see [Using
  Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html)
  in *Amazon Simple Storage Service Developer Guide*.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_DeleteBucket.html#API_control_DeleteBucket_Examples)
  section below.

  <p class="title"> **Related Resources**

  <ul> <li>
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html)

  </li> <li>
  [GetBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_GetBucket.html)

  </li> <li>
  [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)

  </li> </ul>
  """
  def delete_bucket(client, bucket, input, options \\ []) do
    path_ = "/v20180820/bucket/#{URI.encode(bucket)}"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  <note> This API action deletes an Amazon S3 on Outposts bucket's lifecycle
  configuration. To delete an S3 bucket's lifecycle configuration, see
  [DeleteBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html)
  in the *Amazon Simple Storage Service API*.

  </note> Deletes the lifecycle configuration from the specified Outposts
  bucket. Amazon S3 on Outposts removes all the lifecycle configuration rules
  in the lifecycle subresource associated with the bucket. Your objects never
  expire, and Amazon S3 on Outposts no longer automatically deletes any
  objects on the basis of rules contained in the deleted lifecycle
  configuration. For more information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html)
  in *Amazon Simple Storage Service Developer Guide*.

  To use this operation, you must have permission to perform the
  `s3outposts:DeleteLifecycleConfiguration` action. By default, the bucket
  owner has this permission and the Outposts bucket owner can grant this
  permission to others.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_DeleteBucketLifecycleConfiguration.html#API_control_DeleteBucketLifecycleConfiguration_Examples)
  section below.

  For more information about object expiration, see [ Elements to Describe
  Lifecycle
  Actions](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions).

  Related actions include:

  <ul> <li>
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html)

  </li> <li>
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)

  </li> </ul>
  """
  def delete_bucket_lifecycle_configuration(client, bucket, input, options \\ []) do
    path_ = "/v20180820/bucket/#{URI.encode(bucket)}/lifecycleconfiguration"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  <note> This API operation deletes an Amazon S3 on Outposts bucket policy.
  To delete an S3 bucket policy, see
  [DeleteBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketPolicy.html)
  in the *Amazon Simple Storage Service API*.

  </note> This implementation of the DELETE operation uses the policy
  subresource to delete the policy of a specified Amazon S3 on Outposts
  bucket. If you are using an identity other than the root user of the AWS
  account that owns the bucket, the calling identity must have the
  `s3outposts:DeleteBucketPolicy` permissions on the specified Outposts
  bucket and belong to the bucket owner's account to use this operation. For
  more information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html)
  in *Amazon Simple Storage Service Developer Guide*.

  If you don't have `DeleteBucketPolicy` permissions, Amazon S3 returns a
  `403 Access Denied` error. If you have the correct permissions, but you're
  not using an identity that belongs to the bucket owner's account, Amazon S3
  returns a `405 Method Not Allowed` error.

  <important> As a security precaution, the root user of the AWS account that
  owns a bucket can always use this operation, even if the policy explicitly
  denies the root user the ability to perform this action.

  </important> For more information about bucket policies, see [Using Bucket
  Policies and User Policies](
  https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_DeleteBucketPolicy.html#API_control_DeleteBucketPolicy_Examples)
  section below.

  The following actions are related to `DeleteBucketPolicy`:

  <ul> <li>
  [GetBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html)

  </li> <li>
  [PutBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_PutBucketPolicy.html)

  </li> </ul>
  """
  def delete_bucket_policy(client, bucket, input, options \\ []) do
    path_ = "/v20180820/bucket/#{URI.encode(bucket)}/policy"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  <note> This API operation deletes an Amazon S3 on Outposts bucket's tags.
  To delete an S3 bucket tags, see
  [DeleteBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html)
  in the *Amazon Simple Storage Service API*.

  </note> Deletes the tags from the Outposts bucket. For more information,
  see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html)
  in *Amazon Simple Storage Service Developer Guide*.

  To use this operation, you must have permission to perform the
  `PutBucketTagging` action. By default, the bucket owner has this permission
  and can grant this permission to others.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_DeleteBucketTagging.html#API_control_DeleteBucketTagging_Examples)
  section below.

  The following actions are related to `DeleteBucketTagging`:

  <ul> <li>
  [GetBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html)

  </li> <li>
  [PutBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html)

  </li> </ul>
  """
  def delete_bucket_tagging(client, bucket, input, options \\ []) do
    path_ = "/v20180820/bucket/#{URI.encode(bucket)}/tagging"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Removes the entire tag set from the specified S3 Batch Operations job. To
  use this operation, you must have permission to perform the
  `s3:DeleteJobTagging` action. For more information, see [Controlling access
  and labeling jobs using
  tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
  in the *Amazon Simple Storage Service Developer Guide*.

  <p/> Related actions include:

  <ul> <li>
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  </li> <li>
  [GetJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html)

  </li> <li>
  [PutJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html)

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
  Removes the `PublicAccessBlock` configuration for an AWS account. For more
  information, see [ Using Amazon S3 block public
  access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

  Related actions include:

  <ul> <li>
  [GetPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html)

  </li> <li>
  [PutPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html)

  </li> </ul>
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
  job. For more information, see [S3 Batch
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  <p/> Related actions include:

  <ul> <li>
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  </li> <li>
  [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

  </li> <li>
  [UpdateJobPriority](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html)

  </li> <li>
  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

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

  <p/> All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_GetAccessPoint.html#API_control_GetAccessPoint_Examples)
  section below.

  The following actions are related to `GetAccessPoint`:

  <ul> <li>
  [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

  </li> <li>
  [DeleteAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html)

  </li> <li>
  [ListAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)

  </li> </ul>
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

  The following actions are related to `GetAccessPointPolicy`:

  <ul> <li>
  [PutAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html)

  </li> <li>
  [DeleteAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html)

  </li> </ul>
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
  Gets an Amazon S3 on Outposts bucket. For more information, see [ Using
  Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  The following actions are related to `GetBucket` for Amazon S3 on Outposts:

  <ul> <li>
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

  </li> <li>
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_CreateBucket.html)

  </li> <li>
  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_DeleteBucket.html)

  </li> </ul>
  """
  def get_bucket(client, bucket, account_id, options \\ []) do
    path_ = "/v20180820/bucket/#{URI.encode(bucket)}"
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
  <note> This API operation gets an Amazon S3 on Outposts bucket's lifecycle
  configuration. To get an S3 bucket's lifecycle configuration, see
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html)
  in the *Amazon Simple Storage Service API*.

  </note> Returns the lifecycle configuration information set on the Outposts
  bucket. For more information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html)
  and for information about lifecycle configuration, see [ Object Lifecycle
  Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
  in *Amazon Simple Storage Service Developer Guide*.

  To use this operation, you must have permission to perform the
  `s3outposts:GetLifecycleConfiguration` action. The Outposts bucket owner
  has this permission, by default. The bucket owner can grant this permission
  to others. For more information about permissions, see [Permissions Related
  to Bucket Subresource
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3
  Resources](https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_GetBucketLifecycleConfiguration.html#API_control_GetBucketLifecycleConfiguration_Examples)
  section below.

  `GetBucketLifecycleConfiguration` has the following special error:

  <ul> <li> Error code: `NoSuchLifecycleConfiguration`

  <ul> <li> Description: The lifecycle configuration does not exist.

  </li> <li> HTTP Status Code: 404 Not Found

  </li> <li> SOAP Fault Code Prefix: Client

  </li> </ul> </li> </ul> The following actions are related to
  `GetBucketLifecycleConfiguration`:

  <ul> <li>
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html)

  </li> <li>
  [DeleteBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html)

  </li> </ul>
  """
  def get_bucket_lifecycle_configuration(client, bucket, account_id, options \\ []) do
    path_ = "/v20180820/bucket/#{URI.encode(bucket)}/lifecycleconfiguration"
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
  <note> This API action gets a bucket policy for an Amazon S3 on Outposts
  bucket. To get a policy for an S3 bucket, see
  [GetBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicy.html)
  in the *Amazon Simple Storage Service API*.

  </note> Returns the policy of a specified Outposts bucket. For more
  information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  If you are using an identity other than the root user of the AWS account
  that owns the bucket, the calling identity must have the `GetBucketPolicy`
  permissions on the specified bucket and belong to the bucket owner's
  account in order to use this operation.

  If you don't have `s3outposts:GetBucketPolicy` permissions, Amazon S3
  returns a `403 Access Denied` error. If you have the correct permissions,
  but you're not using an identity that belongs to the bucket owner's
  account, Amazon S3 returns a `405 Method Not Allowed` error.

  <important> As a security precaution, the root user of the AWS account that
  owns a bucket can always use this operation, even if the policy explicitly
  denies the root user the ability to perform this action.

  </important> For more information about bucket policies, see [Using Bucket
  Policies and User
  Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_GetBucketPolicy.html#API_control_GetBucketPolicy_Examples)
  section below.

  The following actions are related to `GetBucketPolicy`:

  <ul> <li>
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

  </li> <li>
  [PutBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html)

  </li> <li>
  [DeleteBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html)

  </li> </ul>
  """
  def get_bucket_policy(client, bucket, account_id, options \\ []) do
    path_ = "/v20180820/bucket/#{URI.encode(bucket)}/policy"
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
  <note> This API operation gets an Amazon S3 on Outposts bucket's tags. To
  get an S3 bucket tags, see
  [GetBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html)
  in the *Amazon Simple Storage Service API*.

  </note> Returns the tag set associated with the Outposts bucket. For more
  information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  To use this operation, you must have permission to perform the
  `GetBucketTagging` action. By default, the bucket owner has this permission
  and can grant this permission to others.

  `GetBucketTagging` has the following special error:

  <ul> <li> Error code: `NoSuchTagSetError`

  <ul> <li> Description: There is no tag set associated with the bucket.

  </li> </ul> </li> </ul> All Amazon S3 on Outposts REST API requests for
  this action require an additional parameter of outpost-id to be passed with
  the request and an S3 on Outposts endpoint hostname prefix instead of
  s3-control. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the outpost-id
  derived using the access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_GetBucketTagging.html#API_control_GetBucketTagging_Examples)
  section below.

  The following actions are related to `GetBucketTagging`:

  <ul> <li>
  [PutBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html)

  </li> <li>
  [DeleteBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html)

  </li> </ul>
  """
  def get_bucket_tagging(client, bucket, account_id, options \\ []) do
    path_ = "/v20180820/bucket/#{URI.encode(bucket)}/tagging"
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
  Returns the tags on an S3 Batch Operations job. To use this operation, you
  must have permission to perform the `s3:GetJobTagging` action. For more
  information, see [Controlling access and labeling jobs using
  tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
  in the *Amazon Simple Storage Service Developer Guide*.

  <p/> Related actions include:

  <ul> <li>
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  </li> <li>
  [PutJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html)

  </li> <li>
  [DeleteJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html)

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
  Retrieves the `PublicAccessBlock` configuration for an AWS account. For
  more information, see [ Using Amazon S3 block public
  access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

  Related actions include:

  <ul> <li>
  [DeletePublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html)

  </li> <li>
  [PutPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html)

  </li> </ul>
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

  <p/> All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_GetAccessPoint.html#API_control_GetAccessPoint_Examples)
  section below.

  The following actions are related to `ListAccessPoints`:

  <ul> <li>
  [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

  </li> <li>
  [DeleteAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html)

  </li> <li>
  [GetAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)

  </li> </ul>
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
  Lists current S3 Batch Operations jobs and jobs that have ended within the
  last 30 days for the AWS account making the request. For more information,
  see [S3 Batch
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  Related actions include:

  <p/> <ul> <li>
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  </li> <li>
  [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

  </li> <li>
  [UpdateJobPriority](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html)

  </li> <li>
  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

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
  Returns a list of all Outposts buckets in an Outposts that are owned by the
  authenticated sender of the request. For more information, see [Using
  Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  For an example of the request syntax for Amazon S3 on Outposts that uses
  the S3 on Outposts endpoint hostname prefix and outpost-id in your API
  request, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_ListRegionalBuckets.html#API_control_ListRegionalBuckets_Examples)
  section below.
  """
  def list_regional_buckets(client, max_results \\ nil, next_token \\ nil, account_id, outpost_id \\ nil, options \\ []) do
    path_ = "/v20180820/bucket"
    headers = []
    headers = if !is_nil(account_id) do
      [{"x-amz-account-id", account_id} | headers]
    else
      headers
    end
    headers = if !is_nil(outpost_id) do
      [{"x-amz-outpost-id", outpost_id} | headers]
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
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Associates an access policy with the specified access point. Each access
  point can have only one policy, so a request made to this API replaces any
  existing policy associated with the specified access point.

  <p/> All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_PutAccessPointPolicy.html#API_control_PutAccessPointPolicy_Examples)
  section below.

  The following actions are related to `PutAccessPointPolicy`:

  <ul> <li>
  [GetAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html)

  </li> <li>
  [DeleteAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html)

  </li> </ul>
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
  <note> This API action puts a lifecycle configuration to an Amazon S3 on
  Outposts bucket. To put a lifecycle configuration to an S3 bucket, see
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)
  in the *Amazon Simple Storage Service API*.

  </note> Creates a new lifecycle configuration for the Outposts bucket or
  replaces an existing lifecycle configuration. Outposts buckets can only
  support a lifecycle that deletes objects after a certain period of time.
  For more information, see [Managing Lifecycle Permissions for Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html).

  <p/> All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_PutBucketLifecycleConfiguration.html#API_control_PutBucketLifecycleConfiguration_Examples)
  section below.

  The following actions are related to `PutBucketLifecycleConfiguration`:

  <ul> <li>
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)

  </li> <li>
  [DeleteBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html)

  </li> </ul>
  """
  def put_bucket_lifecycle_configuration(client, bucket, input, options \\ []) do
    path_ = "/v20180820/bucket/#{URI.encode(bucket)}/lifecycleconfiguration"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  <note> This API action puts a bucket policy to an Amazon S3 on Outposts
  bucket. To put a policy on an S3 bucket, see
  [PutBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketPolicy.html)
  in the *Amazon Simple Storage Service API*.

  </note> Applies an Amazon S3 bucket policy to an Outposts bucket. For more
  information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  If you are using an identity other than the root user of the AWS account
  that owns the Outposts bucket, the calling identity must have the
  `PutBucketPolicy` permissions on the specified Outposts bucket and belong
  to the bucket owner's account in order to use this operation.

  If you don't have `PutBucketPolicy` permissions, Amazon S3 returns a `403
  Access Denied` error. If you have the correct permissions, but you're not
  using an identity that belongs to the bucket owner's account, Amazon S3
  returns a `405 Method Not Allowed` error.

  <important> As a security precaution, the root user of the AWS account that
  owns a bucket can always use this operation, even if the policy explicitly
  denies the root user the ability to perform this action.

  </important> For more information about bucket policies, see [Using Bucket
  Policies and User
  Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of outpost-id to be passed with the request and an S3
  on Outposts endpoint hostname prefix instead of s3-control. For an example
  of the request syntax for Amazon S3 on Outposts that uses the S3 on
  Outposts endpoint hostname prefix and the outpost-id derived using the
  access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_PutBucketPolicy.html#API_control_PutBucketPolicy_Examples)
  section below.

  The following actions are related to `PutBucketPolicy`:

  <ul> <li>
  [GetBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html)

  </li> <li>
  [DeleteBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html)

  </li> </ul>
  """
  def put_bucket_policy(client, bucket, input, options \\ []) do
    path_ = "/v20180820/bucket/#{URI.encode(bucket)}/policy"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
        {"ConfirmRemoveSelfBucketAccess", "x-amz-confirm-remove-self-bucket-access"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  <note> This API action puts tags on an Amazon S3 on Outposts bucket. To put
  tags on an S3 bucket, see
  [PutBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html)
  in the *Amazon Simple Storage Service API*.

  </note> Sets the tags for an Outposts bucket. For more information, see
  [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  Use tags to organize your AWS bill to reflect your own cost structure. To
  do this, sign up to get your AWS account bill with tag key values included.
  Then, to see the cost of combined resources, organize your billing
  information according to resources with the same tag key values. For
  example, you can tag several resources with a specific application name,
  and then organize your billing information to see the total cost of that
  application across several services. For more information, see [Cost
  Allocation and
  Tagging](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html).

  <note> Within a bucket, if you add a tag that has the same key as an
  existing tag, the new value overwrites the old value. For more information,
  see [Using Cost Allocation in Amazon S3 Bucket
  Tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/CostAllocTagging.html).

  </note> To use this operation, you must have permissions to perform the
  `s3outposts:PutBucketTagging` action. The Outposts bucket owner has this
  permission by default and can grant this permission to others. For more
  information about permissions, see [ Permissions Related to Bucket
  Subresource
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3
  Resources](https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html).

  `PutBucketTagging` has the following special errors:

  <ul> <li> Error code: `InvalidTagError`

  <ul> <li> Description: The tag provided was not a valid tag. This error can
  occur if the tag did not pass input validation. For information about tag
  restrictions, see [ User-Defined Tag
  Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
  and [ AWS-Generated Cost Allocation Tag
  Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/aws-tag-restrictions.html).

  </li> </ul> </li> <li> Error code: `MalformedXMLError`

  <ul> <li> Description: The XML provided does not match the schema.

  </li> </ul> </li> <li> Error code: `OperationAbortedError `

  <ul> <li> Description: A conflicting conditional operation is currently in
  progress against this resource. Try again.

  </li> </ul> </li> <li> Error code: `InternalError`

  <ul> <li> Description: The service was unable to apply the provided tag to
  the bucket.

  </li> </ul> </li> </ul> All Amazon S3 on Outposts REST API requests for
  this action require an additional parameter of outpost-id to be passed with
  the request and an S3 on Outposts endpoint hostname prefix instead of
  s3-control. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the outpost-id
  derived using the access point ARN, see the [
  Example](https://docs.aws.amazon.com/AmazonS3/latest/API/API__control_PutBucketTagging.html#API_control_PutBucketTagging_Examples)
  section below.

  The following actions are related to `PutBucketTagging`:

  <ul> <li>
  [GetBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html)

  </li> <li>
  [DeleteBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html)

  </li> </ul>
  """
  def put_bucket_tagging(client, bucket, input, options \\ []) do
    path_ = "/v20180820/bucket/#{URI.encode(bucket)}/tagging"
    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sets the supplied tag-set on an S3 Batch Operations job.

  A tag is a key-value pair. You can associate S3 Batch Operations tags with
  any job by sending a PUT request against the tagging subresource that is
  associated with the job. To modify the existing tag set, you can either
  replace the existing tag set entirely, or make changes within the existing
  tag set by retrieving the existing tag set using
  [GetJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html),
  modify that tag set, and use this API action to replace the tag set with
  the one you modified. For more information, see [Controlling access and
  labeling jobs using
  tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
  in the *Amazon Simple Storage Service Developer Guide*.

  <p/> <note> <ul> <li> If you send this request with an empty tag set,
  Amazon S3 deletes the existing tag set on the Batch Operations job. If you
  use this method, you are charged for a Tier 1 Request (PUT). For more
  information, see [Amazon S3 pricing](http://aws.amazon.com/s3/pricing/).

  </li> <li> For deleting existing tags for your Batch Operations job, a
  [DeleteJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html)
  request is preferred because it achieves the same result without incurring
  charges.

  </li> <li> A few things to consider about using tags:

  <ul> <li> Amazon S3 limits the maximum number of tags to 50 tags per job.

  </li> <li> You can associate up to 50 tags with a job as long as they have
  unique tag keys.

  </li> <li> A tag key can be up to 128 Unicode characters in length, and tag
  values can be up to 256 Unicode characters in length.

  </li> <li> The key and values are case sensitive.

  </li> <li> For tagging-related restrictions related to characters and
  encodings, see [User-Defined Tag
  Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
  in the *AWS Billing and Cost Management User Guide*.

  </li> </ul> </li> </ul> </note> <p/> To use this operation, you must have
  permission to perform the `s3:PutJobTagging` action.

  Related actions include:

  <ul> <li>
  [CreatJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  </li> <li>
  [GetJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html)

  </li> <li>
  [DeleteJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html)

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
  Creates or modifies the `PublicAccessBlock` configuration for an AWS
  account. For more information, see [ Using Amazon S3 block public
  access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

  Related actions include:

  <ul> <li>
  [GetPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html)

  </li> <li>
  [DeletePublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html)

  </li> </ul>
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
  Updates an existing S3 Batch Operations job's priority. For more
  information, see [S3 Batch
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  <p/> Related actions include:

  <ul> <li>
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  </li> <li>
  [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

  </li> <li>
  [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

  </li> <li>
  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

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
  information, see [S3 Batch
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html)
  in the *Amazon Simple Storage Service Developer Guide*.

  <p/> Related actions include:

  <ul> <li>
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)

  </li> <li>
  [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

  </li> <li>
  [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

  </li> <li>
  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

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
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "s3"}
    account_id = :proplists.get_value("x-amz-account-id", headers)
    host = build_host(account_id, "s3-control", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "text/xml"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
  end



  defp build_host(_account_id, _endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
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
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
