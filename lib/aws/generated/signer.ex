# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Signer do
  @moduledoc """
  AWS Signer is a fully managed code signing service to help you ensure the trust
  and integrity of your code.

  AWS Signer supports the following applications:

  With *code signing for AWS Lambda*, you can sign AWS Lambda deployment packages.
  Integrated support is provided for Amazon S3, Amazon CloudWatch, and AWS
  CloudTrail. In order to sign code, you create a signing profile and then use
  Signer to sign Lambda zip files in S3.

  With *code signing for IoT*, you can sign code for any IoT device that is
  supported by AWS. IoT code signing is available for [Amazon FreeRTOS](http://docs.aws.amazon.com/freertos/latest/userguide/) and [AWS IoT Device Management](http://docs.aws.amazon.com/iot/latest/developerguide/), and
  is integrated with [AWS Certificate Manager (ACM)](http://docs.aws.amazon.com/acm/latest/userguide/). In order to sign code,
  you import a third-party code signing certificate using ACM, and use that to
  sign updates in Amazon FreeRTOS and AWS IoT Device Management.

  For more information about AWS Signer, see the [AWS Signer Developer Guide](http://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-08-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "signer",
      global?: false,
      protocol: "rest-json",
      service_id: "signer",
      signature_version: "v4",
      signing_name: "signer",
      target_prefix: nil
    }
  end

  @doc """
  Adds cross-account permissions to a signing profile.
  """
  def add_profile_permission(%Client{} = client, profile_name, input, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}/permissions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Changes the state of an `ACTIVE` signing profile to `CANCELED`.

  A canceled profile is still viewable with the `ListSigningProfiles` operation,
  but it cannot perform new signing jobs, and is deleted two years after
  cancelation.
  """
  def cancel_signing_profile(%Client{} = client, profile_name, input, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Returns information about a specific code signing job.

  You specify the job by using the `jobId` value that is returned by the
  `StartSigningJob` operation.
  """
  def describe_signing_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/signing-jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns information on a specific signing platform.
  """
  def get_signing_platform(%Client{} = client, platform_id, options \\ []) do
    url_path = "/signing-platforms/#{AWS.Util.encode_uri(platform_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns information on a specific signing profile.
  """
  def get_signing_profile(%Client{} = client, profile_name, profile_owner \\ nil, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(profile_owner) do
        [{"profileOwner", profile_owner} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the cross-account permissions associated with a signing profile.
  """
  def list_profile_permissions(%Client{} = client, profile_name, next_token \\ nil, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}/permissions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all your signing jobs.

  You can use the `maxResults` parameter to limit the number of signing jobs that
  are returned in the response. If additional jobs remain to be listed, code
  signing returns a `nextToken` value. Use this value in subsequent calls to
  `ListSigningJobs` to fetch the remaining values. You can continue calling
  `ListSigningJobs` with your `maxResults` parameter and with new values that code
  signing returns in the `nextToken` parameter until all of your signing jobs have
  been returned.
  """
  def list_signing_jobs(
        %Client{} = client,
        is_revoked \\ nil,
        job_invoker \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        platform_id \\ nil,
        requested_by \\ nil,
        signature_expires_after \\ nil,
        signature_expires_before \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/signing-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(signature_expires_before) do
        [{"signatureExpiresBefore", signature_expires_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(signature_expires_after) do
        [{"signatureExpiresAfter", signature_expires_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(requested_by) do
        [{"requestedBy", requested_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(platform_id) do
        [{"platformId", platform_id} | query_params]
      else
        query_params
      end

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
      if !is_nil(job_invoker) do
        [{"jobInvoker", job_invoker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(is_revoked) do
        [{"isRevoked", is_revoked} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all signing platforms available in code signing that match the request
  parameters.

  If additional jobs remain to be listed, code signing returns a `nextToken`
  value. Use this value in subsequent calls to `ListSigningJobs` to fetch the
  remaining values. You can continue calling `ListSigningJobs` with your
  `maxResults` parameter and with new values that code signing returns in the
  `nextToken` parameter until all of your signing jobs have been returned.
  """
  def list_signing_platforms(
        %Client{} = client,
        category \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        partner \\ nil,
        target \\ nil,
        options \\ []
      ) do
    url_path = "/signing-platforms"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target) do
        [{"target", target} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(partner) do
        [{"partner", partner} | query_params]
      else
        query_params
      end

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
      if !is_nil(category) do
        [{"category", category} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all available signing profiles in your AWS account.

  Returns only profiles with an `ACTIVE` status unless the `includeCanceled`
  request field is set to `true`. If additional jobs remain to be listed, code
  signing returns a `nextToken` value. Use this value in subsequent calls to
  `ListSigningJobs` to fetch the remaining values. You can continue calling
  `ListSigningJobs` with your `maxResults` parameter and with new values that code
  signing returns in the `nextToken` parameter until all of your signing jobs have
  been returned.
  """
  def list_signing_profiles(
        %Client{} = client,
        include_canceled \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        platform_id \\ nil,
        statuses \\ nil,
        options \\ []
      ) do
    url_path = "/signing-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(statuses) do
        [{"statuses", statuses} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(platform_id) do
        [{"platformId", platform_id} | query_params]
      else
        query_params
      end

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
      if !is_nil(include_canceled) do
        [{"includeCanceled", include_canceled} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns a list of the tags associated with a signing profile resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Creates a signing profile.

  A signing profile is a code signing template that can be used to carry out a
  pre-defined signing job. For more information, see
  [http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html](http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html)
  """
  def put_signing_profile(%Client{} = client, profile_name, input, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes cross-account permissions from a signing profile.
  """
  def remove_profile_permission(
        %Client{} = client,
        profile_name,
        statement_id,
        input,
        options \\ []
      ) do
    url_path =
      "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}/permissions/#{AWS.Util.encode_uri(statement_id)}"

    headers = []

    {query_params, input} =
      [
        {"revisionId", "revisionId"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  Changes the state of a signing job to REVOKED.

  This indicates that the signature is no longer valid.
  """
  def revoke_signature(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/signing-jobs/#{AWS.Util.encode_uri(job_id)}/revoke"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Changes the state of a signing profile to REVOKED.

  This indicates that signatures generated using the signing profile after an
  effective start date are no longer valid.
  """
  def revoke_signing_profile(%Client{} = client, profile_name, input, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}/revoke"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Initiates a signing job to be performed on the code provided.

  Signing jobs are viewable by the `ListSigningJobs` operation for two years after
  they are performed. Note the following requirements:

    * You must create an Amazon S3 source bucket. For more information,
  see [Create a Bucket](http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html) in
  the *Amazon S3 Getting Started Guide*.

    * Your S3 source bucket must be version enabled.

    * You must create an S3 destination bucket. Code signing uses your
  S3 destination bucket to write your signed code.

    * You specify the name of the source and destination buckets when
  calling the `StartSigningJob` operation.

    * You must also specify a request token that identifies your request
  to code signing.

  You can call the `DescribeSigningJob` and the `ListSigningJobs` actions after
  you call `StartSigningJob`.

  For a Java example that shows how to use this action, see
  [http://docs.aws.amazon.com/acm/latest/userguide/](http://docs.aws.amazon.com/acm/latest/userguide/)
  """
  def start_signing_job(%Client{} = client, input, options \\ []) do
    url_path = "/signing-jobs"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Adds one or more tags to a signing profile.

  Tags are labels that you can use to identify and organize your AWS resources.
  Each tag consists of a key and an optional value. To specify the signing
  profile, use its Amazon Resource Name (ARN). To specify the tag, use a key-value
  pair.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Removes one or more tags from a signing profile.

  To remove the tags, specify a list of tag keys.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
