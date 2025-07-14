# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Signer do
  @moduledoc """
  AWS Signer is a fully managed code-signing service to help you ensure the trust
  and
  integrity of your code.

  Signer supports the following applications:

  With code signing for AWS Lambda, you can sign [AWS Lambda](http://docs.aws.amazon.com/lambda/latest/dg/) deployment packages.
  Integrated support is provided for [Amazon S3](http://docs.aws.amazon.com/AmazonS3/latest/gsg/), [Amazon CloudWatch](http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/), and
  [AWS CloudTrail](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/). In order
  to sign code, you create a signing profile and then use Signer to sign Lambda
  zip
  files in S3.

  With code signing for IoT, you can sign code for any IoT device that is
  supported by AWS.
  IoT code signing is available for [Amazon
  FreeRTOS](http://docs.aws.amazon.com/freertos/latest/userguide/) and [AWS IoT Device Management](http://docs.aws.amazon.com/iot/latest/developerguide/), and
  is integrated with [AWS Certificate Manager (ACM)](http://docs.aws.amazon.com/acm/latest/userguide/). In order to sign code,
  you import a third-party code-signing
  certificate using ACM, and use that to sign updates in Amazon FreeRTOS and AWS
  IoT Device Management.

  With Signer and the Notation CLI from the [Notary Project](https://notaryproject.dev/), you can sign container images stored in a
  container registry such
  as Amazon Elastic Container Registry (ECR). The signatures are stored in the
  registry
  alongside the images, where they are available for verifying image authenticity
  and
  integrity.

  For more information about Signer, see the [AWS Signer Developer Guide](https://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      cancel_signing_profile_request() :: %{}

  """
  @type cancel_signing_profile_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_profile_permission_response() :: %{
        "revisionId" => String.t()
      }

  """
  @type remove_profile_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_source() :: %{
        "bucketName" => String.t(),
        "key" => String.t(),
        "version" => String.t()
      }

  """
  @type s3_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signing_platform_overrides() :: %{
        "signingConfiguration" => signing_configuration_overrides(),
        "signingImageFormat" => list(any())
      }

  """
  @type signing_platform_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signing_configuration_overrides() :: %{
        "encryptionAlgorithm" => list(any()),
        "hashAlgorithm" => list(any())
      }

  """
  @type signing_configuration_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_signing_job_request() :: %{
        optional("profileOwner") => String.t(),
        required("clientRequestToken") => String.t(),
        required("destination") => destination(),
        required("profileName") => String.t(),
        required("source") => source()
      }

  """
  @type start_signing_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signing_platform() :: %{
        "category" => list(any()),
        "displayName" => String.t(),
        "maxSizeInMB" => integer(),
        "partner" => String.t(),
        "platformId" => String.t(),
        "revocationSupported" => boolean(),
        "signingConfiguration" => signing_configuration(),
        "signingImageFormat" => signing_image_format(),
        "target" => String.t()
      }

  """
  @type signing_platform() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      signing_image_format() :: %{
        "defaultFormat" => list(any()),
        "supportedFormats" => list(list(any())())
      }

  """
  @type signing_image_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_profile_permission_request() :: %{
        required("revisionId") => String.t()
      }

  """
  @type remove_profile_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signing_profile() :: %{
        "arn" => String.t(),
        "platformDisplayName" => String.t(),
        "platformId" => String.t(),
        "profileName" => String.t(),
        "profileVersion" => String.t(),
        "profileVersionArn" => String.t(),
        "signatureValidityPeriod" => signature_validity_period(),
        "signingMaterial" => signing_material(),
        "signingParameters" => map(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type signing_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_signing_jobs_response() :: %{
        "jobs" => list(signing_job()),
        "nextToken" => String.t()
      }

  """
  @type list_signing_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_profile_permission_request() :: %{
        optional("profileVersion") => String.t(),
        optional("revisionId") => String.t(),
        required("action") => String.t(),
        required("principal") => String.t(),
        required("statementId") => String.t()
      }

  """
  @type add_profile_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_service_error_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type internal_service_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_signing_profile_request() :: %{
        optional("overrides") => signing_platform_overrides(),
        optional("signatureValidityPeriod") => signature_validity_period(),
        optional("signingMaterial") => signing_material(),
        optional("signingParameters") => map(),
        optional("tags") => map(),
        required("platformId") => String.t()
      }

  """
  @type put_signing_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_signing_platform_request() :: %{}

  """
  @type get_signing_platform_request() :: %{}

  @typedoc """

  ## Example:

      signing_configuration() :: %{
        "encryptionAlgorithmOptions" => encryption_algorithm_options(),
        "hashAlgorithmOptions" => hash_algorithm_options()
      }

  """
  @type signing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_signing_profile_request() :: %{
        optional("profileOwner") => String.t()
      }

  """
  @type get_signing_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signature_validity_period() :: %{
        "type" => list(any()),
        "value" => integer()
      }

  """
  @type signature_validity_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signing_job_revocation_record() :: %{
        "reason" => String.t(),
        "revokedAt" => non_neg_integer(),
        "revokedBy" => String.t()
      }

  """
  @type signing_job_revocation_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_signing_job_request() :: %{}

  """
  @type describe_signing_job_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_signing_profile_response() :: %{
        "arn" => String.t(),
        "profileVersion" => String.t(),
        "profileVersionArn" => String.t()
      }

  """
  @type put_signing_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_signing_platform_response() :: %{
        "category" => list(any()),
        "displayName" => String.t(),
        "maxSizeInMB" => integer(),
        "partner" => String.t(),
        "platformId" => String.t(),
        "revocationSupported" => boolean(),
        "signingConfiguration" => signing_configuration(),
        "signingImageFormat" => signing_image_format(),
        "target" => String.t()
      }

  """
  @type get_signing_platform_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_revocation_status_response() :: %{
        "revokedEntities" => list(String.t())
      }

  """
  @type get_revocation_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_signing_job_response() :: %{
        "completedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "jobId" => String.t(),
        "jobInvoker" => String.t(),
        "jobOwner" => String.t(),
        "overrides" => signing_platform_overrides(),
        "platformDisplayName" => String.t(),
        "platformId" => String.t(),
        "profileName" => String.t(),
        "profileVersion" => String.t(),
        "requestedBy" => String.t(),
        "revocationRecord" => signing_job_revocation_record(),
        "signatureExpiresAt" => non_neg_integer(),
        "signedObject" => signed_object(),
        "signingMaterial" => signing_material(),
        "signingParameters" => map(),
        "source" => source(),
        "status" => list(any()),
        "statusReason" => String.t()
      }

  """
  @type describe_signing_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_revocation_status_request() :: %{
        required("certificateHashes") => list(String.t()),
        required("jobArn") => String.t(),
        required("platformId") => String.t(),
        required("profileVersionArn") => String.t(),
        required("signatureTimestamp") => non_neg_integer()
      }

  """
  @type get_revocation_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_permissions_response() :: %{
        "nextToken" => String.t(),
        "permissions" => list(permission()),
        "policySizeBytes" => integer(),
        "revisionId" => String.t()
      }

  """
  @type list_profile_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_destination() :: %{
        "bucketName" => String.t(),
        "prefix" => String.t()
      }

  """
  @type s3_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_signing_jobs_request() :: %{
        optional("isRevoked") => boolean(),
        optional("jobInvoker") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("platformId") => String.t(),
        optional("requestedBy") => String.t(),
        optional("signatureExpiresAfter") => non_neg_integer(),
        optional("signatureExpiresBefore") => non_neg_integer(),
        optional("status") => list(any())
      }

  """
  @type list_signing_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source() :: %{
        "s3" => s3_source()
      }

  """
  @type source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signed_object() :: %{
        "s3" => s3_signed_object()
      }

  """
  @type signed_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signing_material() :: %{
        "certificateArn" => String.t()
      }

  """
  @type signing_material() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_signing_job_response() :: %{
        "jobId" => String.t(),
        "jobOwner" => String.t()
      }

  """
  @type start_signing_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_signing_profiles_request() :: %{
        optional("includeCanceled") => boolean(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("platformId") => String.t(),
        optional("statuses") => list(list(any())())
      }

  """
  @type list_signing_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signing_profile_revocation_record() :: %{
        "revocationEffectiveFrom" => non_neg_integer(),
        "revokedAt" => non_neg_integer(),
        "revokedBy" => String.t()
      }

  """
  @type signing_profile_revocation_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      destination() :: %{
        "s3" => s3_destination()
      }

  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_limit_exceeded_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type service_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      signing_job() :: %{
        "createdAt" => non_neg_integer(),
        "isRevoked" => boolean(),
        "jobId" => String.t(),
        "jobInvoker" => String.t(),
        "jobOwner" => String.t(),
        "platformDisplayName" => String.t(),
        "platformId" => String.t(),
        "profileName" => String.t(),
        "profileVersion" => String.t(),
        "signatureExpiresAt" => non_neg_integer(),
        "signedObject" => signed_object(),
        "signingMaterial" => signing_material(),
        "source" => source(),
        "status" => list(any())
      }

  """
  @type signing_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hash_algorithm_options() :: %{
        "allowedValues" => list(list(any())()),
        "defaultValue" => list(any())
      }

  """
  @type hash_algorithm_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      revoke_signing_profile_request() :: %{
        required("effectiveTime") => non_neg_integer(),
        required("profileVersion") => String.t(),
        required("reason") => String.t()
      }

  """
  @type revoke_signing_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_signed_object() :: %{
        "bucketName" => String.t(),
        "key" => String.t()
      }

  """
  @type s3_signed_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sign_payload_request() :: %{
        optional("profileOwner") => String.t(),
        required("payload") => binary(),
        required("payloadFormat") => String.t(),
        required("profileName") => String.t()
      }

  """
  @type sign_payload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_signing_profile_response() :: %{
        "arn" => String.t(),
        "overrides" => signing_platform_overrides(),
        "platformDisplayName" => String.t(),
        "platformId" => String.t(),
        "profileName" => String.t(),
        "profileVersion" => String.t(),
        "profileVersionArn" => String.t(),
        "revocationRecord" => signing_profile_revocation_record(),
        "signatureValidityPeriod" => signature_validity_period(),
        "signingMaterial" => signing_material(),
        "signingParameters" => map(),
        "status" => list(any()),
        "statusReason" => String.t(),
        "tags" => map()
      }

  """
  @type get_signing_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_signing_profiles_response() :: %{
        "nextToken" => String.t(),
        "profiles" => list(signing_profile())
      }

  """
  @type list_signing_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sign_payload_response() :: %{
        "jobId" => String.t(),
        "jobOwner" => String.t(),
        "metadata" => map(),
        "signature" => binary()
      }

  """
  @type sign_payload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_signing_platforms_request() :: %{
        optional("category") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("partner") => String.t(),
        optional("target") => String.t()
      }

  """
  @type list_signing_platforms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      revoke_signature_request() :: %{
        optional("jobOwner") => String.t(),
        required("reason") => String.t()
      }

  """
  @type revoke_signature_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_profile_permission_response() :: %{
        "revisionId" => String.t()
      }

  """
  @type add_profile_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_signing_platforms_response() :: %{
        "nextToken" => String.t(),
        "platforms" => list(signing_platform())
      }

  """
  @type list_signing_platforms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      permission() :: %{
        "action" => String.t(),
        "principal" => String.t(),
        "profileVersion" => String.t(),
        "statementId" => String.t()
      }

  """
  @type permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_algorithm_options() :: %{
        "allowedValues" => list(list(any())()),
        "defaultValue" => list(any())
      }

  """
  @type encryption_algorithm_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_permissions_request() :: %{
        optional("nextToken") => String.t()
      }

  """
  @type list_profile_permissions_request() :: %{String.t() => any()}

  @type add_profile_permission_errors() ::
          service_limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type cancel_signing_profile_errors() ::
          access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type describe_signing_job_errors() ::
          access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type get_revocation_status_errors() ::
          validation_exception()
          | access_denied_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type get_signing_platform_errors() ::
          access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type get_signing_profile_errors() ::
          access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type list_profile_permissions_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type list_signing_jobs_errors() ::
          validation_exception()
          | access_denied_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type list_signing_platforms_errors() ::
          validation_exception()
          | access_denied_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type list_signing_profiles_errors() ::
          access_denied_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type put_signing_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type remove_profile_permission_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type revoke_signature_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type revoke_signing_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type sign_payload_errors() ::
          validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type start_signing_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()

  def metadata do
    %{
      api_version: "2017-08-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "signer",
      global?: false,
      hostname: nil,
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
  @spec add_profile_permission(map(), String.t(), add_profile_permission_request(), list()) ::
          {:ok, add_profile_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_profile_permission_errors()}
  def add_profile_permission(%Client{} = client, profile_name, input, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}/permissions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Changes the state of an `ACTIVE` signing profile to `CANCELED`.

  A canceled profile is still viewable with the `ListSigningProfiles`
  operation, but it cannot perform new signing jobs, and is deleted two years
  after
  cancelation.
  """
  @spec cancel_signing_profile(map(), String.t(), cancel_signing_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_signing_profile_errors()}
  def cancel_signing_profile(%Client{} = client, profile_name, input, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns information about a specific code signing job.

  You specify the job by using the
  `jobId` value that is returned by the `StartSigningJob`
  operation.
  """
  @spec describe_signing_job(map(), String.t(), list()) ::
          {:ok, describe_signing_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_signing_job_errors()}
  def describe_signing_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/signing-jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the revocation status of one or more of the signing profile, signing
  job,
  and signing certificate.
  """
  @spec get_revocation_status(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          list()
        ) ::
          {:ok, get_revocation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_revocation_status_errors()}
  def get_revocation_status(
        %Client{} = client,
        certificate_hashes,
        job_arn,
        platform_id,
        profile_version_arn,
        signature_timestamp,
        options \\ []
      ) do
    url_path = "/revocations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(signature_timestamp) do
        [{"signatureTimestamp", signature_timestamp} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(profile_version_arn) do
        [{"profileVersionArn", profile_version_arn} | query_params]
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
      if !is_nil(job_arn) do
        [{"jobArn", job_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(certificate_hashes) do
        [{"certificateHashes", certificate_hashes} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "verification.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information on a specific signing platform.
  """
  @spec get_signing_platform(map(), String.t(), list()) ::
          {:ok, get_signing_platform_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_signing_platform_errors()}
  def get_signing_platform(%Client{} = client, platform_id, options \\ []) do
    url_path = "/signing-platforms/#{AWS.Util.encode_uri(platform_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information on a specific signing profile.
  """
  @spec get_signing_profile(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_signing_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_signing_profile_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the cross-account permissions associated with a signing profile.
  """
  @spec list_profile_permissions(map(), String.t(), String.t() | nil, list()) ::
          {:ok, list_profile_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profile_permissions_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all your signing jobs.

  You can use the `maxResults` parameter to limit the
  number of signing jobs that are returned in the response. If additional jobs
  remain to
  be listed, AWS Signer returns a `nextToken` value. Use this value in
  subsequent calls to `ListSigningJobs` to fetch the remaining values. You can
  continue calling `ListSigningJobs` with your `maxResults`
  parameter and with new values that Signer returns in the `nextToken`
  parameter until all of your signing jobs have been returned.
  """
  @spec list_signing_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_signing_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_signing_jobs_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all signing platforms available in AWS Signer that match the request
  parameters.

  If
  additional jobs remain to be listed, Signer returns a `nextToken` value.
  Use this value in subsequent calls to `ListSigningJobs` to fetch the
  remaining values. You can continue calling `ListSigningJobs` with your
  `maxResults` parameter and with new values that Signer returns in the
  `nextToken` parameter until all of your signing jobs have been
  returned.
  """
  @spec list_signing_platforms(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_signing_platforms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_signing_platforms_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all available signing profiles in your AWS account.

  Returns only profiles with an
  `ACTIVE` status unless the `includeCanceled` request field is
  set to `true`. If additional jobs remain to be listed, AWS Signer returns a
  `nextToken` value. Use this value in subsequent calls to
  `ListSigningJobs` to fetch the remaining values. You can continue calling
  `ListSigningJobs` with your `maxResults` parameter and with
  new values that Signer returns in the `nextToken` parameter until all of
  your signing jobs have been returned.
  """
  @spec list_signing_profiles(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_signing_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_signing_profiles_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the tags associated with a signing profile resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a signing profile.

  A signing profile is a code-signing template that can be used to
  carry out a pre-defined signing job.
  """
  @spec put_signing_profile(map(), String.t(), put_signing_profile_request(), list()) ::
          {:ok, put_signing_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_signing_profile_errors()}
  def put_signing_profile(%Client{} = client, profile_name, input, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes cross-account permissions from a signing profile.
  """
  @spec remove_profile_permission(
          map(),
          String.t(),
          String.t(),
          remove_profile_permission_request(),
          list()
        ) ::
          {:ok, remove_profile_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_profile_permission_errors()}
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
    custom_headers = []

    {query_params, input} =
      [
        {"revisionId", "revisionId"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Changes the state of a signing job to REVOKED.

  This indicates that the signature is no
  longer valid.
  """
  @spec revoke_signature(map(), String.t(), revoke_signature_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_signature_errors()}
  def revoke_signature(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/signing-jobs/#{AWS.Util.encode_uri(job_id)}/revoke"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Changes the state of a signing profile to REVOKED.

  This indicates that signatures
  generated using the signing profile after an effective start date are no longer
  valid.
  """
  @spec revoke_signing_profile(map(), String.t(), revoke_signing_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_signing_profile_errors()}
  def revoke_signing_profile(%Client{} = client, profile_name, input, options \\ []) do
    url_path = "/signing-profiles/#{AWS.Util.encode_uri(profile_name)}/revoke"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Signs a binary payload and returns a signature envelope.
  """
  @spec sign_payload(map(), sign_payload_request(), list()) ::
          {:ok, sign_payload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, sign_payload_errors()}
  def sign_payload(%Client{} = client, input, options \\ []) do
    url_path = "/signing-jobs/with-payload"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Initiates a signing job to be performed on the code provided.

  Signing jobs are
  viewable by the `ListSigningJobs` operation for two years after they are
  performed. Note the following requirements:

    *
  You must create an Amazon S3 source bucket. For more information, see [Creating a Bucket](http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html)
  in the
  *Amazon S3 Getting Started Guide*.

    *
  Your S3 source bucket must be version enabled.

    *
  You must create an S3 destination bucket. AWS Signer uses your S3 destination
  bucket to
  write your signed code.

    *
  You specify the name of the source and destination buckets when calling the
  `StartSigningJob` operation.

    *
  You must ensure the S3 buckets are from the same Region as the signing profile.
  Cross-Region signing isn't supported.

    *
  You must also specify a request token that identifies your request to Signer.

  You can call the `DescribeSigningJob` and the `ListSigningJobs` actions after
  you call
  `StartSigningJob`.

  For a Java example that shows how to use this action, see
  [StartSigningJob](https://docs.aws.amazon.com/signer/latest/developerguide/api-startsigningjob.html).
  """
  @spec start_signing_job(map(), start_signing_job_request(), list()) ::
          {:ok, start_signing_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_signing_job_errors()}
  def start_signing_job(%Client{} = client, input, options \\ []) do
    url_path = "/signing-jobs"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds one or more tags to a signing profile.

  Tags are labels that you can use to
  identify and organize your AWS resources. Each tag consists of a key and an
  optional
  value. To specify the signing profile, use its Amazon Resource Name (ARN). To
  specify
  the tag, use a key-value pair.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes one or more tags from a signing profile.

  To remove the tags, specify a list of
  tag keys.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
