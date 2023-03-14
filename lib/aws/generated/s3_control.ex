# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3Control do
  @moduledoc """
  Amazon Web Services S3 Control provides access to Amazon S3 control plane
  actions.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-08-20",
      content_type: "text/xml",
      credential_scope: nil,
      endpoint_prefix: "s3-control",
      global?: false,
      protocol: "rest-xml",
      service_id: "S3 Control",
      signature_version: "s3v4",
      signing_name: "s3",
      target_prefix: nil
    }
  end

  @doc """
  Creates an access point and associates it with the specified bucket.

  For more information, see [Managing Data Access with Amazon S3 Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html)
  in the *Amazon S3 User Guide*.

  S3 on Outposts only supports VPC-style access points.

  For more information, see [ Accessing Amazon S3 on Outposts using virtual private cloud (VPC) only access
  points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the *Amazon S3 User Guide*.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html#API_control_CreateAccessPoint_Examples) section.

  The following actions are related to `CreateAccessPoint`:

    *
  [GetAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)

    *
  [DeleteAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html)     *
  [ListAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)
  """
  def create_access_point(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/accesspoint/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates an Object Lambda Access Point.

  For more information, see [Transforming objects with Object Lambda Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to `CreateAccessPointForObjectLambda`:

    *
  [DeleteAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html)     *
  [GetAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html)

    *
  [ListAccessPointsForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html)
  """
  def create_access_point_for_object_lambda(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/accesspointforobjectlambda/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  This action creates an Amazon S3 on Outposts bucket.

  To create an S3 bucket, see [Create Bucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
  in the *Amazon S3 API Reference*.

  Creates a new Outposts bucket. By creating the bucket, you become the bucket
  owner. To create an Outposts bucket, you must have S3 on Outposts. For more
  information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in *Amazon S3 User Guide*.

  Not every string is an acceptable bucket name. For information on bucket naming
  restrictions, see [Working with Amazon S3 Buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/BucketRestrictions.html#bucketnamingrules).

  S3 on Outposts buckets support:

    * Tags

    * LifecycleConfigurations for deleting expired objects

  For a complete list of restrictions and Amazon S3 feature limitations on S3 on
  Outposts, see [ Amazon S3 on Outposts Restrictions and Limitations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OnOutpostsRestrictionsLimitations.html).

  For an example of the request syntax for Amazon S3 on Outposts that uses the S3
  on Outposts endpoint hostname prefix and `x-amz-outpost-id` in your API request,
  see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html#API_control_CreateBucket_Examples) section.

  The following actions are related to `CreateBucket` for Amazon S3 on Outposts:

    *
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

    *
  [GetBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html)     *
  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html)

    *
  [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)     *
  [PutAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html)
  """
  def create_bucket(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}"

    {headers, input} =
      [
        {"ACL", "x-amz-acl"},
        {"GrantFullControl", "x-amz-grant-full-control"},
        {"GrantRead", "x-amz-grant-read"},
        {"GrantReadACP", "x-amz-grant-read-acp"},
        {"GrantWrite", "x-amz-grant-write"},
        {"GrantWriteACP", "x-amz-grant-write-acp"},
        {"ObjectLockEnabledForBucket", "x-amz-bucket-object-lock-enabled"},
        {"OutpostId", "x-amz-outpost-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  You can use S3 Batch Operations to perform large-scale batch actions on Amazon
  S3 objects.

  Batch Operations can run a single action on lists of Amazon S3 objects that you
  specify. For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
  in the *Amazon S3 User Guide*.

  This action creates a S3 Batch Operations job.

  Related actions include:

    *
  [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)     *
  [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

    *
  [UpdateJobPriority](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html)     *
  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

    *
  [JobOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_JobOperation.html)
  """
  def create_job(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/jobs"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a Multi-Region Access Point and associates it with the specified
  buckets.

  For more information about creating Multi-Region Access Points, see [Creating Multi-Region Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  This action will always be routed to the US West (Oregon) Region. For more
  information about the restrictions around managing Multi-Region Access Points,
  see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  This request is asynchronous, meaning that you might receive a response before
  the command has completed. When this request provides a response, it provides a
  token that you can use to monitor the status of the request with
  `DescribeMultiRegionAccessPointOperation`.

  The following actions are related to `CreateMultiRegionAccessPoint`:

    *
  [DeleteMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html)     *
  [DescribeMultiRegionAccessPointOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html)

    *
  [GetMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html)     *
  [ListMultiRegionAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html)
  """
  def create_multi_region_access_point(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/async-requests/mrap/create"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified access point.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html#API_control_DeleteAccessPoint_Examples) section.

  The following actions are related to `DeleteAccessPoint`:

    *
  [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

    *
  [GetAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)     *
  [ListAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)
  """
  def delete_access_point(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/accesspoint/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified Object Lambda Access Point.

  The following actions are related to `DeleteAccessPointForObjectLambda`:

    *
  [CreateAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html)     *
  [GetAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html)

    *
  [ListAccessPointsForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html)
  """
  def delete_access_point_for_object_lambda(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/accesspointforobjectlambda/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the access point policy for the specified access point.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html#API_control_DeleteAccessPointPolicy_Examples) section.

  The following actions are related to `DeleteAccessPointPolicy`:

    *
  [PutAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html)

    *
  [GetAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html)
  """
  def delete_access_point_policy(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/accesspoint/#{AWS.Util.encode_uri(name)}/policy"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the resource policy for an Object Lambda Access Point.

  The following actions are related to `DeleteAccessPointPolicyForObjectLambda`:

    *
  [GetAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html)     *
  [PutAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html)
  """
  def delete_access_point_policy_for_object_lambda(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/accesspointforobjectlambda/#{AWS.Util.encode_uri(name)}/policy"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  This action deletes an Amazon S3 on Outposts bucket.

  To delete an S3 bucket, see
  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html) in the *Amazon S3 API Reference*.

  Deletes the Amazon S3 on Outposts bucket. All objects (including all object
  versions and delete markers) in the bucket must be deleted before the bucket
  itself can be deleted. For more information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in *Amazon S3 User Guide*.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html#API_control_DeleteBucket_Examples) section.

  ## Related Resources

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html)

    *
  [GetBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html)     *
  [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
  """
  def delete_bucket(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  This action deletes an Amazon S3 on Outposts bucket's lifecycle configuration.

  To delete an S3 bucket's lifecycle configuration, see
  [DeleteBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html) in the *Amazon S3 API Reference*.

  Deletes the lifecycle configuration from the specified Outposts bucket. Amazon
  S3 on Outposts removes all the lifecycle configuration rules in the lifecycle
  subresource associated with the bucket. Your objects never expire, and Amazon S3
  on Outposts no longer automatically deletes any objects on the basis of rules
  contained in the deleted lifecycle configuration. For more information, see
  [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3-outposts:DeleteLifecycleConfiguration` action. By default, the bucket owner
  has this permission and the Outposts bucket owner can grant this permission to
  others.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html#API_control_DeleteBucketLifecycleConfiguration_Examples) section.

  For more information about object expiration, see [Elements to Describe
  Lifecycle
  Actions](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions).

  Related actions include:

    *
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html)     *
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)
  """
  def delete_bucket_lifecycle_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/lifecycleconfiguration"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  This action deletes an Amazon S3 on Outposts bucket policy.

  To delete an S3 bucket policy, see
  [DeleteBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketPolicy.html) in the *Amazon S3 API Reference*.

  This implementation of the DELETE action uses the policy subresource to delete
  the policy of a specified Amazon S3 on Outposts bucket. If you are using an
  identity other than the root user of the Amazon Web Services account that owns
  the bucket, the calling identity must have the `s3-outposts:DeleteBucketPolicy`
  permissions on the specified Outposts bucket and belong to the bucket owner's
  account to use this action. For more information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in *Amazon S3 User Guide*.

  If you don't have `DeleteBucketPolicy` permissions, Amazon S3 returns a `403
  Access Denied` error. If you have the correct permissions, but you're not using
  an identity that belongs to the bucket owner's account, Amazon S3 returns a `405
  Method Not Allowed` error.

  As a security precaution, the root user of the Amazon Web Services account that
  owns a bucket can always use this action, even if the policy explicitly denies
  the root user the ability to perform this action.

  For more information about bucket policies, see [Using Bucket Policies and User Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html#API_control_DeleteBucketPolicy_Examples) section.

  The following actions are related to `DeleteBucketPolicy`:

    *
  [GetBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html)

    *
  [PutBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html)
  """
  def delete_bucket_policy(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/policy"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  This operation deletes an Amazon S3 on Outposts bucket's replication
  configuration.

  To delete an S3 bucket's replication configuration, see
  [DeleteBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketReplication.html) in the *Amazon S3 API Reference*.

  Deletes the replication configuration from the specified S3 on Outposts bucket.

  To use this operation, you must have permissions to perform the
  `s3-outposts:PutReplicationConfiguration` action. The Outposts bucket owner has
  this permission by default and can grant it to others. For more information
  about permissions, see [Setting up IAM with S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html)
  and [Managing access to S3 on Outposts buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html)
  in the *Amazon S3 User Guide*.

  It can take a while to propagate `PUT` or `DELETE` requests for a replication
  configuration to all S3 on Outposts systems. Therefore, the replication
  configuration that's returned by a `GET` request soon after a `PUT` or `DELETE`
  request might return a more recent result than what's on the Outpost. If an
  Outpost is offline, the delay in updating the replication configuration on that
  Outpost can be significant.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html#API_control_DeleteBucketReplication_Examples) section.

  For information about S3 replication on Outposts configuration, see [Replicating
  objects for Amazon Web Services
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html)
  in the *Amazon S3 User Guide*.

  The following operations are related to `DeleteBucketReplication`:

    *
  [PutBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html)     *
  [GetBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html)
  """
  def delete_bucket_replication(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/replication"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  This action deletes an Amazon S3 on Outposts bucket's tags.

  To delete an S3 bucket tags, see
  [DeleteBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html) in the *Amazon S3 API Reference*.

  Deletes the tags from the Outposts bucket. For more information, see [Using
  Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the `PutBucketTagging`
  action. By default, the bucket owner has this permission and can grant this
  permission to others.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html#API_control_DeleteBucketTagging_Examples) section.

  The following actions are related to `DeleteBucketTagging`:

    *
  [GetBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html)

    *
  [PutBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html)
  """
  def delete_bucket_tagging(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/tagging"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes the entire tag set from the specified S3 Batch Operations job.

  To use the `DeleteJobTagging` operation, you must have permission to perform the
  `s3:DeleteJobTagging` action. For more information, see [Controlling access and labeling jobs using
  tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
  in the *Amazon S3 User Guide*.

  Related actions include:

    *
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)     *
  [GetJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html)

    *
  [PutJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html)
  """
  def delete_job_tagging(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/v20180820/jobs/#{AWS.Util.encode_uri(job_id)}/tagging"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a Multi-Region Access Point.

  This action does not delete the buckets associated with the Multi-Region Access
  Point, only the Multi-Region Access Point itself.

  This action will always be routed to the US West (Oregon) Region. For more
  information about the restrictions around managing Multi-Region Access Points,
  see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  This request is asynchronous, meaning that you might receive a response before
  the command has completed. When this request provides a response, it provides a
  token that you can use to monitor the status of the request with
  `DescribeMultiRegionAccessPointOperation`.

  The following actions are related to `DeleteMultiRegionAccessPoint`:

    *
  [CreateMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html)     *
  [DescribeMultiRegionAccessPointOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html)

    *
  [GetMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html)     *
  [ListMultiRegionAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html)
  """
  def delete_multi_region_access_point(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/async-requests/mrap/delete"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the `PublicAccessBlock` configuration for an Amazon Web Services
  account.

  For more information, see [ Using Amazon S3 block public access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

  Related actions include:

    *
  [GetPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html)     *
  [PutPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html)
  """
  def delete_public_access_block(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/configuration/publicAccessBlock"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the Amazon S3 Storage Lens configuration.

  For more information about S3 Storage Lens, see [Assessing your storage activity and usage with Amazon S3 Storage Lens
  ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:DeleteStorageLensConfiguration` action. For more information, see [Setting permissions to use Amazon S3 Storage
  Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the *Amazon S3 User Guide*.
  """
  def delete_storage_lens_configuration(%Client{} = client, config_id, input, options \\ []) do
    url_path = "/v20180820/storagelens/#{AWS.Util.encode_uri(config_id)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the Amazon S3 Storage Lens configuration tags.

  For more information about S3 Storage Lens, see [Assessing your storage activity and usage with Amazon S3 Storage Lens
  ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:DeleteStorageLensConfigurationTagging` action. For more information, see
  [Setting permissions to use Amazon S3 Storage Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the *Amazon S3 User Guide*.
  """
  def delete_storage_lens_configuration_tagging(
        %Client{} = client,
        config_id,
        input,
        options \\ []
      ) do
    url_path = "/v20180820/storagelens/#{AWS.Util.encode_uri(config_id)}/tagging"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves the configuration parameters and status for a Batch Operations job.

  For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
  in the *Amazon S3 User Guide*.

  Related actions include:

    *
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)     *
  [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

    *
  [UpdateJobPriority](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html)     *
  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)
  """
  def describe_job(%Client{} = client, job_id, account_id, options \\ []) do
    url_path = "/v20180820/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves the status of an asynchronous request to manage a Multi-Region Access
  Point.

  For more information about managing Multi-Region Access Points and how
  asynchronous requests work, see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to `GetMultiRegionAccessPoint`:

    *
  [CreateMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html)     *
  [DeleteMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html)

    *
  [GetMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html)     *
  [ListMultiRegionAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html)
  """
  def describe_multi_region_access_point_operation(
        %Client{} = client,
        request_token_arn,
        account_id,
        options \\ []
      ) do
    url_path =
      "/v20180820/async-requests/mrap/#{AWS.Util.encode_multi_segment_uri(request_token_arn)}"

    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns configuration information about the specified access point.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples) section.

  The following actions are related to `GetAccessPoint`:

    *
  [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

    *
  [DeleteAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html)     *
  [ListAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)
  """
  def get_access_point(%Client{} = client, name, account_id, options \\ []) do
    url_path = "/v20180820/accesspoint/#{AWS.Util.encode_uri(name)}"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns configuration for an Object Lambda Access Point.

  The following actions are related to
  `GetAccessPointConfigurationForObjectLambda`:

    *
  [PutAccessPointConfigurationForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointConfigurationForObjectLambda.html)
  """
  def get_access_point_configuration_for_object_lambda(
        %Client{} = client,
        name,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/accesspointforobjectlambda/#{AWS.Util.encode_uri(name)}/configuration"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns configuration information about the specified Object Lambda Access Point

  The following actions are related to `GetAccessPointForObjectLambda`:

    *
  [CreateAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html)     *
  [DeleteAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html)

    *
  [ListAccessPointsForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html)
  """
  def get_access_point_for_object_lambda(%Client{} = client, name, account_id, options \\ []) do
    url_path = "/v20180820/accesspointforobjectlambda/#{AWS.Util.encode_uri(name)}"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the access point policy associated with the specified access point.

  The following actions are related to `GetAccessPointPolicy`:

    *
  [PutAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html)     *
  [DeleteAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html)
  """
  def get_access_point_policy(%Client{} = client, name, account_id, options \\ []) do
    url_path = "/v20180820/accesspoint/#{AWS.Util.encode_uri(name)}/policy"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the resource policy for an Object Lambda Access Point.

  The following actions are related to `GetAccessPointPolicyForObjectLambda`:

    *
  [DeleteAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html)     *
  [PutAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html)
  """
  def get_access_point_policy_for_object_lambda(
        %Client{} = client,
        name,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/accesspointforobjectlambda/#{AWS.Util.encode_uri(name)}/policy"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Indicates whether the specified access point currently has a policy that allows
  public access.

  For more information about public access through access points, see [Managing Data Access with Amazon S3 access
  points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html)
  in the *Amazon S3 User Guide*.
  """
  def get_access_point_policy_status(%Client{} = client, name, account_id, options \\ []) do
    url_path = "/v20180820/accesspoint/#{AWS.Util.encode_uri(name)}/policyStatus"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the status of the resource policy associated with an Object Lambda
  Access Point.
  """
  def get_access_point_policy_status_for_object_lambda(
        %Client{} = client,
        name,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/accesspointforobjectlambda/#{AWS.Util.encode_uri(name)}/policyStatus"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets an Amazon S3 on Outposts bucket.

  For more information, see [ Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the *Amazon S3 User Guide*.

  If you are using an identity other than the root user of the Amazon Web Services
  account that owns the Outposts bucket, the calling identity must have the
  `s3-outposts:GetBucket` permissions on the specified Outposts bucket and belong
  to the Outposts bucket owner's account in order to use this action. Only users
  from Outposts bucket owner account with the right permissions can perform
  actions on an Outposts bucket.

  If you don't have `s3-outposts:GetBucket` permissions or you're not using an
  identity that belongs to the bucket owner's account, Amazon S3 returns a `403
  Access Denied` error.

  The following actions are related to `GetBucket` for Amazon S3 on Outposts:

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html#API_control_GetBucket_Examples) section.

    *
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

    *
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html)     *
  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html)
  """
  def get_bucket(%Client{} = client, bucket, account_id, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  This action gets an Amazon S3 on Outposts bucket's lifecycle configuration.

  To get an S3 bucket's lifecycle configuration, see
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html) in the *Amazon S3 API Reference*.

  Returns the lifecycle configuration information set on the Outposts bucket. For
  more information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  and for information about lifecycle configuration, see [ Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
  in *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3-outposts:GetLifecycleConfiguration` action. The Outposts bucket owner has
  this permission, by default. The bucket owner can grant this permission to
  others. For more information about permissions, see [Permissions Related to Bucket Subresource
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html#API_control_GetBucketLifecycleConfiguration_Examples) section.

  `GetBucketLifecycleConfiguration` has the following special error:

    * Error code: `NoSuchLifecycleConfiguration`

      * Description: The lifecycle configuration does not
  exist.

      * HTTP Status Code: 404 Not Found

      * SOAP Fault Code Prefix: Client

  The following actions are related to `GetBucketLifecycleConfiguration`:

    *
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html)

    *
  [DeleteBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html)
  """
  def get_bucket_lifecycle_configuration(%Client{} = client, bucket, account_id, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/lifecycleconfiguration"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  This action gets a bucket policy for an Amazon S3 on Outposts bucket.

  To get a policy for an S3 bucket, see
  [GetBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicy.html) in the *Amazon S3 API Reference*.

  Returns the policy of a specified Outposts bucket. For more information, see
  [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the *Amazon S3 User Guide*.

  If you are using an identity other than the root user of the Amazon Web Services
  account that owns the bucket, the calling identity must have the
  `GetBucketPolicy` permissions on the specified bucket and belong to the bucket
  owner's account in order to use this action.

  Only users from Outposts bucket owner account with the right permissions can
  perform actions on an Outposts bucket. If you don't have
  `s3-outposts:GetBucketPolicy` permissions or you're not using an identity that
  belongs to the bucket owner's account, Amazon S3 returns a `403 Access Denied`
  error.

  As a security precaution, the root user of the Amazon Web Services account that
  owns a bucket can always use this action, even if the policy explicitly denies
  the root user the ability to perform this action.

  For more information about bucket policies, see [Using Bucket Policies and User Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html#API_control_GetBucketPolicy_Examples) section.

  The following actions are related to `GetBucketPolicy`:

    *
  [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)

    *
  [PutBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html)     *
  [DeleteBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html)
  """
  def get_bucket_policy(%Client{} = client, bucket, account_id, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/policy"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  This operation gets an Amazon S3 on Outposts bucket's replication configuration.

  To get an S3 bucket's replication configuration, see
  [GetBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketReplication.html) in the *Amazon S3 API Reference*.

  Returns the replication configuration of an S3 on Outposts bucket. For more
  information about S3 on Outposts, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the *Amazon S3 User Guide*. For information about S3 replication on Outposts
  configuration, see [Replicating objects for Amazon Web Services Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html)
  in the *Amazon S3 User Guide*.

  It can take a while to propagate `PUT` or `DELETE` requests for a replication
  configuration to all S3 on Outposts systems. Therefore, the replication
  configuration that's returned by a `GET` request soon after a `PUT` or `DELETE`
  request might return a more recent result than what's on the Outpost. If an
  Outpost is offline, the delay in updating the replication configuration on that
  Outpost can be significant.

  This action requires permissions for the
  `s3-outposts:GetReplicationConfiguration` action. The Outposts bucket owner has
  this permission by default and can grant it to others. For more information
  about permissions, see [Setting up IAM with S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html)
  and [Managing access to S3 on Outposts bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html)
  in the *Amazon S3 User Guide*.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html#API_control_GetBucketReplication_Examples) section.

  If you include the `Filter` element in a replication configuration, you must
  also include the `DeleteMarkerReplication`, `Status`, and `Priority` elements.
  The response also returns those elements.

  For information about S3 on Outposts replication failure reasons, see
  [Replication failure
  reasons](https://docs.aws.amazon.com/AmazonS3/latest/userguide/outposts-replication-eventbridge.html#outposts-replication-failure-codes)
  in the *Amazon S3 User Guide*.

  The following operations are related to `GetBucketReplication`:

    *
  [PutBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html)     *
  [DeleteBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html)
  """
  def get_bucket_replication(%Client{} = client, bucket, account_id, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/replication"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  This action gets an Amazon S3 on Outposts bucket's tags.

  To get an S3 bucket tags, see
  [GetBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html) in the *Amazon S3 API Reference*.

  Returns the tag set associated with the Outposts bucket. For more information,
  see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the `GetBucketTagging`
  action. By default, the bucket owner has this permission and can grant this
  permission to others.

  `GetBucketTagging` has the following special error:

    * Error code: `NoSuchTagSetError`

      * Description: There is no tag set associated with the
  bucket.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html#API_control_GetBucketTagging_Examples) section.

  The following actions are related to `GetBucketTagging`:

    *
  [PutBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html)

    *
  [DeleteBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html)
  """
  def get_bucket_tagging(%Client{} = client, bucket, account_id, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/tagging"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  This operation returns the versioning state for S3 on Outposts buckets only.

  To return the versioning state for an S3 bucket, see
  [GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html) in the *Amazon S3 API Reference*.

  Returns the versioning state for an S3 on Outposts bucket. With S3 Versioning,
  you can save multiple distinct copies of your objects and recover from
  unintended user actions and application failures.

  If you've never set versioning on your bucket, it has no versioning state. In
  that case, the `GetBucketVersioning` request does not return a versioning state
  value.

  For more information about versioning, see
  [Versioning](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html)
  in the *Amazon S3 User Guide*.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html#API_control_GetBucketVersioning_Examples) section.

  The following operations are related to `GetBucketVersioning` for S3 on
  Outposts.

    *
  [PutBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html)

    *
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html)     *
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)
  """
  def get_bucket_versioning(%Client{} = client, bucket, account_id, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/versioning"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the tags on an S3 Batch Operations job.

  To use the `GetJobTagging` operation, you must have permission to perform the
  `s3:GetJobTagging` action. For more information, see [Controlling access and labeling jobs using
  tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
  in the *Amazon S3 User Guide*.

  Related actions include:

    *
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)     *
  [PutJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html)

    *
  [DeleteJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html)
  """
  def get_job_tagging(%Client{} = client, job_id, account_id, options \\ []) do
    url_path = "/v20180820/jobs/#{AWS.Util.encode_uri(job_id)}/tagging"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns configuration information about the specified Multi-Region Access Point.

  This action will always be routed to the US West (Oregon) Region. For more
  information about the restrictions around managing Multi-Region Access Points,
  see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to `GetMultiRegionAccessPoint`:

    *
  [CreateMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html)     *
  [DeleteMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html)

    *
  [DescribeMultiRegionAccessPointOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html)     *
  [ListMultiRegionAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html)
  """
  def get_multi_region_access_point(%Client{} = client, name, account_id, options \\ []) do
    url_path = "/v20180820/mrap/instances/#{AWS.Util.encode_multi_segment_uri(name)}"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the access control policy of the specified Multi-Region Access Point.

  This action will always be routed to the US West (Oregon) Region. For more
  information about the restrictions around managing Multi-Region Access Points,
  see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to `GetMultiRegionAccessPointPolicy`:

    *
  [GetMultiRegionAccessPointPolicyStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html)     *
  [PutMultiRegionAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html)
  """
  def get_multi_region_access_point_policy(%Client{} = client, name, account_id, options \\ []) do
    url_path = "/v20180820/mrap/instances/#{AWS.Util.encode_multi_segment_uri(name)}/policy"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Indicates whether the specified Multi-Region Access Point has an access control
  policy that allows public access.

  This action will always be routed to the US West (Oregon) Region. For more
  information about the restrictions around managing Multi-Region Access Points,
  see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to `GetMultiRegionAccessPointPolicyStatus`:

    *
  [GetMultiRegionAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html)     *
  [PutMultiRegionAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html)
  """
  def get_multi_region_access_point_policy_status(
        %Client{} = client,
        name,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/mrap/instances/#{AWS.Util.encode_multi_segment_uri(name)}/policystatus"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the routing configuration for a Multi-Region Access Point, indicating
  which Regions are active or passive.

  To obtain routing control changes and failover requests, use the Amazon S3
  failover control infrastructure endpoints in these five Amazon Web Services
  Regions:

    * `us-east-1`

    * `us-west-2`

    * `ap-southeast-2`

    * `ap-northeast-1`

    * `eu-west-1`

  Your Amazon S3 bucket does not need to be in these five Regions.
  """
  def get_multi_region_access_point_routes(%Client{} = client, mrap, account_id, options \\ []) do
    url_path = "/v20180820/mrap/instances/#{AWS.Util.encode_multi_segment_uri(mrap)}/routes"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves the `PublicAccessBlock` configuration for an Amazon Web Services
  account.

  For more information, see [ Using Amazon S3 block public access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

  Related actions include:

    *
  [DeletePublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html)     *
  [PutPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html)
  """
  def get_public_access_block(%Client{} = client, account_id, options \\ []) do
    url_path = "/v20180820/configuration/publicAccessBlock"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets the Amazon S3 Storage Lens configuration.

  For more information, see [Assessing your storage activity and usage with Amazon S3 Storage Lens
  ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*. For a complete list of S3 Storage Lens metrics, see [S3 Storage Lens metrics
  glossary](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html)
  in the *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:GetStorageLensConfiguration` action. For more information, see [Setting permissions to use Amazon S3 Storage
  Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the *Amazon S3 User Guide*.
  """
  def get_storage_lens_configuration(%Client{} = client, config_id, account_id, options \\ []) do
    url_path = "/v20180820/storagelens/#{AWS.Util.encode_uri(config_id)}"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets the tags of Amazon S3 Storage Lens configuration.

  For more information about S3 Storage Lens, see [Assessing your storage activity and usage with Amazon S3 Storage Lens
  ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:GetStorageLensConfigurationTagging` action. For more information, see
  [Setting permissions to use Amazon S3 Storage Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the *Amazon S3 User Guide*.
  """
  def get_storage_lens_configuration_tagging(
        %Client{} = client,
        config_id,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/storagelens/#{AWS.Util.encode_uri(config_id)}/tagging"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of the access points that are owned by the current account that's
  associated with the specified bucket.

  You can retrieve up to 1000 access points per call. If the specified bucket has
  more than 1,000 access points (or the number specified in `maxResults`,
  whichever is less), the response will include a continuation token that you can
  use to list the additional access points.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples) section.

  The following actions are related to `ListAccessPoints`:

    *
  [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html)

    *
  [DeleteAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html)     *
  [GetAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)
  """
  def list_access_points(
        %Client{} = client,
        bucket \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/accesspoint"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

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
      if !is_nil(bucket) do
        [{"bucket", bucket} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns some or all (up to 1,000) access points associated with the Object
  Lambda Access Point per call.

  If there are more access points than what can be returned in one call, the
  response will include a continuation token that you can use to list the
  additional access points.

  The following actions are related to `ListAccessPointsForObjectLambda`:

    *
  [CreateAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html)     *
  [DeleteAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html)

    *
  [GetAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html)
  """
  def list_access_points_for_object_lambda(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/accesspointforobjectlambda"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

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

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists current S3 Batch Operations jobs and jobs that have ended within the last
  30 days for the Amazon Web Services account making the request.

  For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
  in the *Amazon S3 User Guide*.

  Related actions include:

    *
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)     *
  [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

    *
  [UpdateJobPriority](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html)     *
  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)
  """
  def list_jobs(
        %Client{} = client,
        job_statuses \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/jobs"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

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
      if !is_nil(job_statuses) do
        [{"jobStatuses", job_statuses} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of the Multi-Region Access Points currently associated with the
  specified Amazon Web Services account.

  Each call can return up to 100 Multi-Region Access Points, the maximum number of
  Multi-Region Access Points that can be associated with a single account.

  This action will always be routed to the US West (Oregon) Region. For more
  information about the restrictions around managing Multi-Region Access Points,
  see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to `ListMultiRegionAccessPoint`:

    *
  [CreateMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html)     *
  [DeleteMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html)

    *
  [DescribeMultiRegionAccessPointOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html)     *
  [GetMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html)
  """
  def list_multi_region_access_points(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/mrap/instances"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

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

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of all Outposts buckets in an Outpost that are owned by the
  authenticated sender of the request.

  For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the *Amazon S3 User Guide*.

  For an example of the request syntax for Amazon S3 on Outposts that uses the S3
  on Outposts endpoint hostname prefix and `x-amz-outpost-id` in your request, see
  the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListRegionalBuckets.html#API_control_ListRegionalBuckets_Examples)
  section.
  """
  def list_regional_buckets(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        account_id,
        outpost_id \\ nil,
        options \\ []
      ) do
    url_path = "/v20180820/bucket"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    headers =
      if !is_nil(outpost_id) do
        [{"x-amz-outpost-id", outpost_id} | headers]
      else
        headers
      end

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

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets a list of Amazon S3 Storage Lens configurations.

  For more information about S3 Storage Lens, see [Assessing your storage activity and usage with Amazon S3 Storage Lens
  ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:ListStorageLensConfigurations` action. For more information, see [Setting permissions to use Amazon S3 Storage
  Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the *Amazon S3 User Guide*.
  """
  def list_storage_lens_configurations(
        %Client{} = client,
        next_token \\ nil,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/storagelens"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Replaces configuration for an Object Lambda Access Point.

  The following actions are related to
  `PutAccessPointConfigurationForObjectLambda`:

    *
  [GetAccessPointConfigurationForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointConfigurationForObjectLambda.html)
  """
  def put_access_point_configuration_for_object_lambda(
        %Client{} = client,
        name,
        input,
        options \\ []
      ) do
    url_path = "/v20180820/accesspointforobjectlambda/#{AWS.Util.encode_uri(name)}/configuration"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Associates an access policy with the specified access point.

  Each access point can have only one policy, so a request made to this API
  replaces any existing policy associated with the specified access point.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html#API_control_PutAccessPointPolicy_Examples) section.

  The following actions are related to `PutAccessPointPolicy`:

    *
  [GetAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html)

    *
  [DeleteAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html)
  """
  def put_access_point_policy(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/accesspoint/#{AWS.Util.encode_uri(name)}/policy"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates or replaces resource policy for an Object Lambda Access Point.

  For an example policy, see [Creating Object Lambda Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-create.html#olap-create-cli)
  in the *Amazon S3 User Guide*.

  The following actions are related to `PutAccessPointPolicyForObjectLambda`:

    *
  [DeleteAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html)     *
  [GetAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html)
  """
  def put_access_point_policy_for_object_lambda(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/accesspointforobjectlambda/#{AWS.Util.encode_uri(name)}/policy"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  This action puts a lifecycle configuration to an Amazon S3 on Outposts bucket.

  To put a lifecycle configuration to an S3 bucket, see
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html) in the *Amazon S3 API Reference*.

  Creates a new lifecycle configuration for the S3 on Outposts bucket or replaces
  an existing lifecycle configuration. Outposts buckets only support lifecycle
  configurations that delete/expire objects after a certain period of time and
  abort incomplete multipart uploads.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html#API_control_PutBucketLifecycleConfiguration_Examples)
  section.

  The following actions are related to `PutBucketLifecycleConfiguration`:

    *
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)     *
  [DeleteBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html)
  """
  def put_bucket_lifecycle_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/lifecycleconfiguration"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  This action puts a bucket policy to an Amazon S3 on Outposts bucket.

  To put a policy on an S3 bucket, see
  [PutBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketPolicy.html) in the *Amazon S3 API Reference*.

  Applies an Amazon S3 bucket policy to an Outposts bucket. For more information,
  see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the *Amazon S3 User Guide*.

  If you are using an identity other than the root user of the Amazon Web Services
  account that owns the Outposts bucket, the calling identity must have the
  `PutBucketPolicy` permissions on the specified Outposts bucket and belong to the
  bucket owner's account in order to use this action.

  If you don't have `PutBucketPolicy` permissions, Amazon S3 returns a `403 Access
  Denied` error. If you have the correct permissions, but you're not using an
  identity that belongs to the bucket owner's account, Amazon S3 returns a `405
  Method Not Allowed` error.

  As a security precaution, the root user of the Amazon Web Services account that
  owns a bucket can always use this action, even if the policy explicitly denies
  the root user the ability to perform this action.

  For more information about bucket policies, see [Using Bucket Policies and User Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html#API_control_PutBucketPolicy_Examples) section.

  The following actions are related to `PutBucketPolicy`:

    *
  [GetBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html)

    *
  [DeleteBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html)
  """
  def put_bucket_policy(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/policy"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
        {"ConfirmRemoveSelfBucketAccess", "x-amz-confirm-remove-self-bucket-access"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  This action creates an Amazon S3 on Outposts bucket's replication configuration.

  To create an S3 bucket's replication configuration, see
  [PutBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html) in the *Amazon S3 API Reference*.

  Creates a replication configuration or replaces an existing one. For information
  about S3 replication on Outposts configuration, see [Replicating objects for
  Amazon Web Services
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/AmazonS3/latest/userguide/S3OutpostsReplication.html)
  in the *Amazon S3 User Guide*.

  It can take a while to propagate `PUT` or `DELETE` requests for a replication
  configuration to all S3 on Outposts systems. Therefore, the replication
  configuration that's returned by a `GET` request soon after a `PUT` or `DELETE`
  request might return a more recent result than what's on the Outpost. If an
  Outpost is offline, the delay in updating the replication configuration on that
  Outpost can be significant.

  Specify the replication configuration in the request body. In the replication
  configuration, you provide the following information:

    * The name of the destination bucket or buckets where you want S3 on
  Outposts to replicate objects

    * The Identity and Access Management (IAM) role that S3 on Outposts
  can assume to replicate objects on your behalf

    * Other relevant information, such as replication rules

  A replication configuration must include at least one rule and can contain a
  maximum of 100. Each rule identifies a subset of objects to replicate by
  filtering the objects in the source Outposts bucket. To choose additional
  subsets of objects to replicate, add a rule for each subset.

  To specify a subset of the objects in the source Outposts bucket to apply a
  replication rule to, add the `Filter` element as a child of the `Rule` element.
  You can filter objects based on an object key prefix, one or more object tags,
  or both. When you add the `Filter` element in the configuration, you must also
  add the following elements: `DeleteMarkerReplication`, `Status`, and `Priority`.

  Using `PutBucketReplication` on Outposts requires that both the source and
  destination buckets must have versioning enabled. For information about enabling
  versioning on a bucket, see [Managing S3 Versioning for your S3 on Outposts bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsManagingVersioning.html).

  For information about S3 on Outposts replication failure reasons, see
  [Replication failure reasons](https://docs.aws.amazon.com/AmazonS3/latest/userguide/outposts-replication-eventbridge.html#outposts-replication-failure-codes)
  in the *Amazon S3 User Guide*.

  ## Handling Replication of Encrypted Objects

  Outposts buckets are encrypted at all times. All the objects in the source
  Outposts bucket are encrypted and can be replicated. Also, all the replicas in
  the destination Outposts bucket are encrypted with the same encryption key as
  the objects in the source Outposts bucket.

  ## Permissions

  To create a `PutBucketReplication` request, you must have
  `s3-outposts:PutReplicationConfiguration` permissions for the bucket. The
  Outposts bucket owner has this permission by default and can grant it to others.
  For more information about permissions, see [Setting up IAM with S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html)
  and [Managing access to S3 on Outposts buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html).

  To perform this operation, the user or role must also have the
  [iam:PassRole](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html) permission.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html#API_control_GetBucketLifecycleConfiguration_Examples)
  section.

  The following operations are related to `PutBucketReplication`:

    *
  [GetBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html)     *
  [DeleteBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html)
  """
  def put_bucket_replication(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/replication"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  This action puts tags on an Amazon S3 on Outposts bucket.

  To put tags on an S3 bucket, see
  [PutBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html) in the *Amazon S3 API Reference*.

  Sets the tags for an S3 on Outposts bucket. For more information, see [Using
  Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the *Amazon S3 User Guide*.

  Use tags to organize your Amazon Web Services bill to reflect your own cost
  structure. To do this, sign up to get your Amazon Web Services account bill with
  tag key values included. Then, to see the cost of combined resources, organize
  your billing information according to resources with the same tag key values.
  For example, you can tag several resources with a specific application name, and
  then organize your billing information to see the total cost of that application
  across several services. For more information, see [Cost allocation and tagging](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html).

  Within a bucket, if you add a tag that has the same key as an existing tag, the
  new value overwrites the old value. For more information, see [ Using cost allocation in Amazon S3 bucket
  tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html).

  To use this action, you must have permissions to perform the
  `s3-outposts:PutBucketTagging` action. The Outposts bucket owner has this
  permission by default and can grant this permission to others. For more
  information about permissions, see [ Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing access permissions to your Amazon S3 resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  `PutBucketTagging` has the following special errors:

    * Error code: `InvalidTagError`

      * Description: The tag provided was not a valid tag.
  This error can occur if the tag did not pass input validation. For information
  about tag restrictions, see [ User-Defined Tag Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
  and [ Amazon Web Services-Generated Cost Allocation Tag Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/aws-tag-restrictions.html).

    * Error code: `MalformedXMLError`

      * Description: The XML provided does not match the
  schema.

    * Error code: `OperationAbortedError `

      * Description: A conflicting conditional action is
  currently in progress against this resource. Try again.

    * Error code: `InternalError`

      * Description: The service was unable to apply the
  provided tag to the bucket.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html#API_control_PutBucketTagging_Examples) section.

  The following actions are related to `PutBucketTagging`:

    *
  [GetBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html)

    *
  [DeleteBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html)
  """
  def put_bucket_tagging(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/tagging"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :append_sha256_content_hash,
        true
      )

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  This operation sets the versioning state for S3 on Outposts buckets only.

  To set the versioning state for an S3 bucket, see
  [PutBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html) in the *Amazon S3 API Reference*.

  Sets the versioning state for an S3 on Outposts bucket. With S3 Versioning, you
  can save multiple distinct copies of your objects and recover from unintended
  user actions and application failures.

  You can set the versioning state to one of the following:

    * **Enabled** - Enables versioning for the objects in the bucket.
  All objects added to the bucket receive a unique version ID.

    * **Suspended** - Suspends versioning for the objects in the bucket.
  All objects added to the bucket receive the version ID `null`.

  If you've never set versioning on your bucket, it has no versioning state. In
  that case, a [
  GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html)
  request does not return a versioning state value.

  When you enable S3 Versioning, for each object in your bucket, you have a
  current version and zero or more noncurrent versions. You can configure your
  bucket S3 Lifecycle rules to expire noncurrent versions after a specified time
  period. For more information, see [ Creating and managing a lifecycle configuration for your S3 on Outposts
  bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsLifecycleManaging.html)
  in the *Amazon S3 User Guide*.

  If you have an object expiration lifecycle policy in your non-versioned bucket
  and you want to maintain the same permanent delete behavior when you enable
  versioning, you must add a noncurrent expiration policy. The noncurrent
  expiration lifecycle policy will manage the deletions of the noncurrent object
  versions in the version-enabled bucket. For more information, see
  [Versioning](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html) in the *Amazon S3 User Guide*.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html#API_control_PutBucketVersioning_Examples)
  section.

  The following operations are related to `PutBucketVersioning` for S3 on
  Outposts.

    *
  [GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html)     *
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html)

    *
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)
  """
  def put_bucket_versioning(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/versioning"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"},
        {"MFA", "x-amz-mfa"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Sets the supplied tag-set on an S3 Batch Operations job.

  A tag is a key-value pair. You can associate S3 Batch Operations tags with any
  job by sending a PUT request against the tagging subresource that is associated
  with the job. To modify the existing tag set, you can either replace the
  existing tag set entirely, or make changes within the existing tag set by
  retrieving the existing tag set using
  [GetJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html), modify that tag set, and use this action to replace the tag set with the one you
  modified. For more information, see [Controlling access and labeling jobs using
  tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
  in the *Amazon S3 User Guide*.

    * If you send this request with an empty tag set, Amazon S3 deletes
  the existing tag set on the Batch Operations job. If you use this method, you
  are charged for a Tier 1 Request (PUT). For more information, see [Amazon S3 pricing](http://aws.amazon.com/s3/pricing/).

    * For deleting existing tags for your Batch Operations job, a
  [DeleteJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html) request is preferred because it achieves the same result without incurring
  charges.

    * A few things to consider about using tags:

      * Amazon S3 limits the maximum number of tags to 50 tags
  per job.

      * You can associate up to 50 tags with a job as long as
  they have unique tag keys.

      * A tag key can be up to 128 Unicode characters in
  length, and tag values can be up to 256 Unicode characters in length.

      * The key and values are case sensitive.

      * For tagging-related restrictions related to characters
  and encodings, see [User-Defined Tag
  Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
  in the *Billing and Cost Management User Guide*.

  To use the `PutJobTagging` operation, you must have permission to perform the
  `s3:PutJobTagging` action.

  Related actions include:

    *
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)     *
  [GetJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html)

    *
  [DeleteJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html)
  """
  def put_job_tagging(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/v20180820/jobs/#{AWS.Util.encode_uri(job_id)}/tagging"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Associates an access control policy with the specified Multi-Region Access
  Point.

  Each Multi-Region Access Point can have only one policy, so a request made to
  this action replaces any existing policy that is associated with the specified
  Multi-Region Access Point.

  This action will always be routed to the US West (Oregon) Region. For more
  information about the restrictions around managing Multi-Region Access Points,
  see [Managing Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to `PutMultiRegionAccessPointPolicy`:

    *
  [GetMultiRegionAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html)     *
  [GetMultiRegionAccessPointPolicyStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html)
  """
  def put_multi_region_access_point_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/async-requests/mrap/put-policy"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates or modifies the `PublicAccessBlock` configuration for an Amazon Web
  Services account.

  For this operation, users must have the `s3:PutAccountPublicAccessBlock`
  permission. For more information, see [ Using Amazon S3 block public access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

  Related actions include:

    *
  [GetPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html)     *
  [DeletePublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html)
  """
  def put_public_access_block(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/configuration/publicAccessBlock"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Puts an Amazon S3 Storage Lens configuration.

  For more information about S3 Storage Lens, see [Working with Amazon S3 Storage Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*. For a complete list of S3 Storage Lens metrics, see [S3 Storage Lens metrics
  glossary](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html)
  in the *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:PutStorageLensConfiguration` action. For more information, see [Setting permissions to use Amazon S3 Storage
  Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the *Amazon S3 User Guide*.
  """
  def put_storage_lens_configuration(%Client{} = client, config_id, input, options \\ []) do
    url_path = "/v20180820/storagelens/#{AWS.Util.encode_uri(config_id)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Put or replace tags on an existing Amazon S3 Storage Lens configuration.

  For more information about S3 Storage Lens, see [Assessing your storage activity and usage with Amazon S3 Storage Lens
  ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:PutStorageLensConfigurationTagging` action. For more information, see
  [Setting permissions to use Amazon S3 Storage Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the *Amazon S3 User Guide*.
  """
  def put_storage_lens_configuration_tagging(%Client{} = client, config_id, input, options \\ []) do
    url_path = "/v20180820/storagelens/#{AWS.Util.encode_uri(config_id)}/tagging"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Submits an updated route configuration for a Multi-Region Access Point.

  This API operation updates the routing status for the specified Regions from
  active to passive, or from passive to active. A value of `0` indicates a passive
  status, which means that traffic won't be routed to the specified Region. A
  value of `100` indicates an active status, which means that traffic will be
  routed to the specified Region. At least one Region must be active at all times.

  When the routing configuration is changed, any in-progress operations (uploads,
  copies, deletes, and so on) to formerly active Regions will continue to run to
  their final completion state (success or failure). The routing configurations of
  any Regions that aren’t specified remain unchanged.

  Updated routing configurations might not be immediately applied. It can take up
  to 2 minutes for your changes to take effect.

  To submit routing control changes and failover requests, use the Amazon S3
  failover control infrastructure endpoints in these five Amazon Web Services
  Regions:

    * `us-east-1`

    * `us-west-2`

    * `ap-southeast-2`

    * `ap-northeast-1`

    * `eu-west-1`

  Your Amazon S3 bucket does not need to be in these five Regions.
  """
  def submit_multi_region_access_point_routes(%Client{} = client, mrap, input, options \\ []) do
    url_path = "/v20180820/mrap/instances/#{AWS.Util.encode_multi_segment_uri(mrap)}/routes"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an existing S3 Batch Operations job's priority.

  For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
  in the *Amazon S3 User Guide*.

  Related actions include:

    *
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)     *
  [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

    *
  [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)     *
  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)
  """
  def update_job_priority(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/v20180820/jobs/#{AWS.Util.encode_uri(job_id)}/priority"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"Priority", "priority"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the status for the specified job.

  Use this action to confirm that you want to run a job or to cancel an existing
  job. For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
  in the *Amazon S3 User Guide*.

  Related actions include:

    *
  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html)     *
  [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

    *
  [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)     *
  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)
  """
  def update_job_status(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/v20180820/jobs/#{AWS.Util.encode_uri(job_id)}/status"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"RequestedJobStatus", "requestedJobStatus"},
        {"StatusUpdateReason", "statusUpdateReason"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
