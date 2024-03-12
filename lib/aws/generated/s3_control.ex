# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3Control do
  @moduledoc """
  Amazon Web Services S3 Control provides access to Amazon S3 control plane
  actions.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  region_report() :: %{
    "Bucket" => String.t(),
    "BucketAccountId" => String.t(),
    "Region" => String.t()
  }
  """
  @type region_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_bucket_policy_request() :: %{
    optional("ConfirmRemoveSelfBucketAccess") => boolean(),
    required("AccountId") => String.t(),
    required("Policy") => String.t()
  }
  """
  @type put_bucket_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_multi_region_access_point_policy_request() :: %{
    required("AccountId") => String.t(),
    required("ClientToken") => String.t(),
    required("Details") => put_multi_region_access_point_policy_input()
  }
  """
  @type put_multi_region_access_point_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  storage_lens_group_level_selection_criteria() :: %{
    "Exclude" => list(String.t()()),
    "Include" => list(String.t()())
  }
  """
  @type storage_lens_group_level_selection_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_manifest() :: %{
    "Location" => job_manifest_location(),
    "Spec" => job_manifest_spec()
  }
  """
  @type job_manifest() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_storage_lens_configuration_tagging_result() :: %{
    "Tags" => list(storage_lens_tag()())
  }
  """
  @type get_storage_lens_configuration_tagging_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_multi_region_access_point_request() :: %{
    required("AccountId") => String.t(),
    required("ClientToken") => String.t(),
    required("Details") => delete_multi_region_access_point_input()
  }
  """
  @type delete_multi_region_access_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  encryption_configuration() :: %{
    "ReplicaKmsKeyID" => String.t()
  }
  """
  @type encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("AccountId") => String.t(),
    required("Tags") => list(tag()())
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  no_such_public_access_block_configuration() :: %{
    "Message" => String.t()
  }
  """
  @type no_such_public_access_block_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_bucket_versioning_request() :: %{
    optional("MFA") => String.t(),
    required("AccountId") => String.t(),
    required("VersioningConfiguration") => versioning_configuration()
  }
  """
  @type put_bucket_versioning_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  multi_region_access_point_regional_response() :: %{
    "Name" => String.t(),
    "RequestStatus" => String.t()
  }
  """
  @type multi_region_access_point_regional_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_storage_lens_configuration_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_storage_lens_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_configuration_for_object_lambda_result() :: %{
    "Configuration" => object_lambda_configuration()
  }
  """
  @type get_access_point_configuration_for_object_lambda_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  public_access_block_configuration() :: %{
    "BlockPublicAcls" => boolean(),
    "BlockPublicPolicy" => boolean(),
    "IgnorePublicAcls" => boolean(),
    "RestrictPublicBuckets" => boolean()
  }
  """
  @type public_access_block_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  storage_lens_data_export() :: %{
    "CloudWatchMetrics" => cloud_watch_metrics(),
    "S3BucketDestination" => s3_bucket_destination()
  }
  """
  @type storage_lens_data_export() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  storage_lens_group_level() :: %{
    "SelectionCriteria" => storage_lens_group_level_selection_criteria()
  }
  """
  @type storage_lens_group_level() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  prefix_level_storage_metrics() :: %{
    "IsEnabled" => boolean(),
    "SelectionCriteria" => selection_criteria()
  }
  """
  @type prefix_level_storage_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_access_grants_instance_result() :: %{
    "AccessGrantsInstanceArn" => String.t(),
    "AccessGrantsInstanceId" => String.t(),
    "CreatedAt" => non_neg_integer(),
    "IdentityCenterArn" => String.t()
  }
  """
  @type create_access_grants_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  generated_manifest_encryption() :: %{
    "SSEKMS" => sse_kms_encryption(),
    "SSES3" => sse_s3_encryption()
  }
  """
  @type generated_manifest_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_job_result() :: %{
    "Job" => job_descriptor()
  }
  """
  @type describe_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  match_object_age() :: %{
    "DaysGreaterThan" => integer(),
    "DaysLessThan" => integer()
  }
  """
  @type match_object_age() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_jobs_result() :: %{
    "Jobs" => list(job_list_descriptor()()),
    "NextToken" => String.t()
  }
  """
  @type list_jobs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_public_access_block_request() :: %{
    required("AccountId") => String.t(),
    required("PublicAccessBlockConfiguration") => public_access_block_configuration()
  }
  """
  @type put_public_access_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_grant_result() :: %{
    "AccessGrantArn" => String.t(),
    "AccessGrantId" => String.t(),
    "AccessGrantsLocationConfiguration" => access_grants_location_configuration(),
    "AccessGrantsLocationId" => String.t(),
    "ApplicationArn" => String.t(),
    "CreatedAt" => non_neg_integer(),
    "GrantScope" => String.t(),
    "Grantee" => grantee(),
    "Permission" => list(any())
  }
  """
  @type get_access_grant_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  vpc_configuration() :: %{
    "VpcId" => String.t()
  }
  """
  @type vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_access_control_list() :: %{
    "Grants" => list(s3_grant()()),
    "Owner" => s3_object_owner()
  }
  """
  @type s3_access_control_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  abort_incomplete_multipart_upload() :: %{
    "DaysAfterInitiation" => integer()
  }
  """
  @type abort_incomplete_multipart_upload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lifecycle_rule() :: %{
    "AbortIncompleteMultipartUpload" => abort_incomplete_multipart_upload(),
    "Expiration" => lifecycle_expiration(),
    "Filter" => lifecycle_rule_filter(),
    "ID" => String.t(),
    "NoncurrentVersionExpiration" => noncurrent_version_expiration(),
    "NoncurrentVersionTransitions" => list(noncurrent_version_transition()()),
    "Status" => list(any()),
    "Transitions" => list(transition()())
  }
  """
  @type lifecycle_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_result() :: %{

  }
  """
  @type untag_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_public_access_block_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_public_access_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_access_grants_instance_resource_policy_result() :: %{
    "CreatedAt" => non_neg_integer(),
    "Organization" => String.t(),
    "Policy" => String.t()
  }
  """
  @type put_access_grants_instance_resource_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  object_lambda_configuration() :: %{
    "AllowedFeatures" => list(list(any())()),
    "CloudWatchMetricsEnabled" => boolean(),
    "SupportingAccessPoint" => String.t(),
    "TransformationConfigurations" => list(object_lambda_transformation_configuration()())
  }
  """
  @type object_lambda_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_multi_region_access_point_policy_result() :: %{
    "Policy" => multi_region_access_point_policy_document()
  }
  """
  @type get_multi_region_access_point_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  versioning_configuration() :: %{
    "MFADelete" => list(any()),
    "Status" => list(any())
  }
  """
  @type versioning_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_report() :: %{
    "Bucket" => String.t(),
    "Enabled" => boolean(),
    "Format" => list(any()),
    "Prefix" => String.t(),
    "ReportScope" => list(any())
  }
  """
  @type job_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_storage_lens_group_request() :: %{
    optional("Tags") => list(tag()()),
    required("AccountId") => String.t(),
    required("StorageLensGroup") => storage_lens_group()
  }
  """
  @type create_storage_lens_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_grants_result() :: %{
    "AccessGrantsList" => list(list_access_grant_entry()()),
    "NextToken" => String.t()
  }
  """
  @type list_access_grants_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_access_grants_instance_resource_policy_request() :: %{
    optional("Organization") => String.t(),
    required("AccountId") => String.t(),
    required("Policy") => String.t()
  }
  """
  @type put_access_grants_instance_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_job_tagging_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_job_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_jobs_request() :: %{
    optional("JobStatuses") => list(list(any())()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AccountId") => String.t()
  }
  """
  @type list_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_access_grants_instance_request() :: %{
    optional("IdentityCenterArn") => String.t(),
    optional("Tags") => list(tag()()),
    required("AccountId") => String.t()
  }
  """
  @type create_access_grants_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source_selection_criteria() :: %{
    "ReplicaModifications" => replica_modifications(),
    "SseKmsEncryptedObjects" => sse_kms_encrypted_objects()
  }
  """
  @type source_selection_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_job_tagging_request() :: %{
    required("AccountId") => String.t(),
    required("Tags") => list(s3_tag()())
  }
  """
  @type put_job_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lifecycle_configuration() :: %{
    "Rules" => list(lifecycle_rule()())
  }
  """
  @type lifecycle_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_storage_lens_group_entry() :: %{
    "HomeRegion" => String.t(),
    "Name" => String.t(),
    "StorageLensGroupArn" => String.t()
  }
  """
  @type list_storage_lens_group_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_bucket_tagging_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_bucket_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_storage_lens_group_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_storage_lens_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  prefix_level() :: %{
    "StorageMetrics" => prefix_level_storage_metrics()
  }
  """
  @type prefix_level() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_access_grant_result() :: %{
    "AccessGrantArn" => String.t(),
    "AccessGrantId" => String.t(),
    "AccessGrantsLocationConfiguration" => access_grants_location_configuration(),
    "AccessGrantsLocationId" => String.t(),
    "ApplicationArn" => String.t(),
    "CreatedAt" => non_neg_integer(),
    "GrantScope" => String.t(),
    "Grantee" => grantee(),
    "Permission" => list(any())
  }
  """
  @type create_access_grant_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  credentials() :: %{
    "AccessKeyId" => String.t(),
    "Expiration" => non_neg_integer(),
    "SecretAccessKey" => String.t(),
    "SessionToken" => String.t()
  }
  """
  @type credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_bucket_replication_request() :: %{
    required("AccountId") => String.t(),
    required("ReplicationConfiguration") => replication_configuration()
  }
  """
  @type put_bucket_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_access_point_for_object_lambda_result() :: %{
    "Alias" => object_lambda_access_point_alias(),
    "ObjectLambdaAccessPointArn" => String.t()
  }
  """
  @type create_access_point_for_object_lambda_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_status_exception() :: %{
    "Message" => String.t()
  }
  """
  @type job_status_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_grants_instance_for_prefix_result() :: %{
    "AccessGrantsInstanceArn" => String.t(),
    "AccessGrantsInstanceId" => String.t()
  }
  """
  @type get_access_grants_instance_for_prefix_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_access_grants_identity_center_request() :: %{
    required("AccountId") => String.t(),
    required("IdentityCenterArn") => String.t()
  }
  """
  @type associate_access_grants_identity_center_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_storage_lens_configurations_result() :: %{
    "NextToken" => String.t(),
    "StorageLensConfigurationList" => list(list_storage_lens_configuration_entry()())
  }
  """
  @type list_storage_lens_configurations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_multi_region_access_point_input() :: %{
    "Name" => String.t()
  }
  """
  @type delete_multi_region_access_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_multi_region_access_point_operation_result() :: %{
    "AsyncOperation" => async_operation()
  }
  """
  @type describe_multi_region_access_point_operation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_for_object_lambda_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_access_point_for_object_lambda_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_points_for_object_lambda_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AccountId") => String.t()
  }
  """
  @type list_access_points_for_object_lambda_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_job_tagging_result() :: %{
    "Tags" => list(s3_tag()())
  }
  """
  @type get_job_tagging_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_access_grants_location_request() :: %{
    optional("Tags") => list(tag()()),
    required("AccountId") => String.t(),
    required("IAMRoleArn") => String.t(),
    required("LocationScope") => String.t()
  }
  """
  @type create_access_grants_location_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  async_operation() :: %{
    "CreationTime" => non_neg_integer(),
    "Operation" => list(any()),
    "RequestParameters" => async_request_parameters(),
    "RequestStatus" => String.t(),
    "RequestTokenARN" => String.t(),
    "ResponseDetails" => async_response_details()
  }
  """
  @type async_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_access_point_policy_for_object_lambda_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_access_point_policy_for_object_lambda_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_bucket_destination() :: %{
    "AccountId" => String.t(),
    "Arn" => String.t(),
    "Encryption" => storage_lens_data_export_encryption(),
    "Format" => list(any()),
    "OutputSchemaVersion" => list(any()),
    "Prefix" => String.t()
  }
  """
  @type s3_bucket_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_storage_lens_group_result() :: %{
    "StorageLensGroup" => storage_lens_group()
  }
  """
  @type get_storage_lens_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_grants_instance_resource_policy_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_access_grants_instance_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  grantee() :: %{
    "GranteeIdentifier" => String.t(),
    "GranteeType" => list(any())
  }
  """
  @type grantee() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  bucket_level() :: %{
    "ActivityMetrics" => activity_metrics(),
    "AdvancedCostOptimizationMetrics" => advanced_cost_optimization_metrics(),
    "AdvancedDataProtectionMetrics" => advanced_data_protection_metrics(),
    "DetailedStatusCodesMetrics" => detailed_status_codes_metrics(),
    "PrefixLevel" => prefix_level()
  }
  """
  @type bucket_level() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_policy_status_result() :: %{
    "PolicyStatus" => policy_status()
  }
  """
  @type get_access_point_policy_status_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_grantee() :: %{
    "DisplayName" => String.t(),
    "Identifier" => String.t(),
    "TypeIdentifier" => list(any())
  }
  """
  @type s3_grantee() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_job_request() :: %{
    optional("ConfirmationRequired") => boolean(),
    optional("Description") => String.t(),
    optional("Manifest") => job_manifest(),
    optional("ManifestGenerator") => list(),
    optional("Tags") => list(s3_tag()()),
    required("AccountId") => String.t(),
    required("ClientRequestToken") => String.t(),
    required("Operation") => job_operation(),
    required("Priority") => integer(),
    required("Report") => job_report(),
    required("RoleArn") => String.t()
  }
  """
  @type create_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_policy_for_object_lambda_result() :: %{
    "Policy" => String.t()
  }
  """
  @type get_access_point_policy_for_object_lambda_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  storage_lens_tag() :: %{
    "Key" => String.t(),
    "Value" => String.t()
  }
  """
  @type storage_lens_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_grant_entry() :: %{
    "AccessGrantArn" => String.t(),
    "AccessGrantId" => String.t(),
    "AccessGrantsLocationConfiguration" => access_grants_location_configuration(),
    "AccessGrantsLocationId" => String.t(),
    "ApplicationArn" => String.t(),
    "CreatedAt" => non_neg_integer(),
    "GrantScope" => String.t(),
    "Grantee" => grantee(),
    "Permission" => list(any())
  }
  """
  @type list_access_grant_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  storage_lens_group_filter() :: %{
    "And" => storage_lens_group_and_operator(),
    "MatchAnyPrefix" => list(String.t()()),
    "MatchAnySuffix" => list(String.t()()),
    "MatchAnyTag" => list(s3_tag()()),
    "MatchObjectAge" => match_object_age(),
    "MatchObjectSize" => match_object_size(),
    "Or" => storage_lens_group_or_operator()
  }
  """
  @type storage_lens_group_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  storage_lens_group_or_operator() :: %{
    "MatchAnyPrefix" => list(String.t()()),
    "MatchAnySuffix" => list(String.t()()),
    "MatchAnyTag" => list(s3_tag()()),
    "MatchObjectAge" => match_object_age(),
    "MatchObjectSize" => match_object_size()
  }
  """
  @type storage_lens_group_or_operator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  proposed_multi_region_access_point_policy() :: %{
    "Policy" => String.t()
  }
  """
  @type proposed_multi_region_access_point_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  include() :: %{
    "Buckets" => list(String.t()()),
    "Regions" => list(String.t()())
  }
  """
  @type include() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_service_exception() :: %{
    "Message" => String.t()
  }
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_multi_region_access_point_policy_input() :: %{
    "Name" => String.t(),
    "Policy" => String.t()
  }
  """
  @type put_multi_region_access_point_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_grants_instance_result() :: %{
    "AccessGrantsInstanceArn" => String.t(),
    "AccessGrantsInstanceId" => String.t(),
    "CreatedAt" => non_neg_integer(),
    "IdentityCenterArn" => String.t()
  }
  """
  @type get_access_grants_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sse_kms_encryption() :: %{
    "KeyId" => String.t()
  }
  """
  @type sse_kms_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bucket_versioning_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_bucket_versioning_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("AccountId") => String.t(),
    required("TagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  advanced_data_protection_metrics() :: %{
    "IsEnabled" => boolean()
  }
  """
  @type advanced_data_protection_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_access_point_for_object_lambda_request() :: %{
    required("AccountId") => String.t(),
    required("Configuration") => object_lambda_configuration()
  }
  """
  @type create_access_point_for_object_lambda_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  too_many_requests_exception() :: %{
    "Message" => String.t()
  }
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sse_kms_encrypted_objects() :: %{
    "Status" => list(any())
  }
  """
  @type sse_kms_encrypted_objects() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_manifest_location() :: %{
    "ETag" => String.t(),
    "ObjectArn" => String.t(),
    "ObjectVersionId" => String.t()
  }
  """
  @type job_manifest_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_points_for_object_lambda_result() :: %{
    "NextToken" => String.t(),
    "ObjectLambdaAccessPointList" => list(object_lambda_access_point()())
  }
  """
  @type list_access_points_for_object_lambda_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_storage_lens_configuration_request() :: %{
    optional("Tags") => list(storage_lens_tag()()),
    required("AccountId") => String.t(),
    required("StorageLensConfiguration") => storage_lens_configuration()
  }
  """
  @type put_storage_lens_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_storage_lens_configuration_result() :: %{
    "StorageLensConfiguration" => storage_lens_configuration()
  }
  """
  @type get_storage_lens_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_job_manifest_generator() :: %{
    "EnableManifestOutput" => boolean(),
    "ExpectedBucketOwner" => String.t(),
    "Filter" => job_manifest_generator_filter(),
    "ManifestOutputLocation" => s3_manifest_output_location(),
    "SourceBucket" => String.t()
  }
  """
  @type s3_job_manifest_generator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_regional_buckets_result() :: %{
    "NextToken" => String.t(),
    "RegionalBucketList" => list(regional_bucket()())
  }
  """
  @type list_regional_buckets_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_bucket_lifecycle_configuration_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_bucket_lifecycle_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  object_lambda_access_point() :: %{
    "Alias" => object_lambda_access_point_alias(),
    "Name" => String.t(),
    "ObjectLambdaAccessPointArn" => String.t()
  }
  """
  @type object_lambda_access_point() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replication_rule_filter() :: %{
    "And" => replication_rule_and_operator(),
    "Prefix" => String.t(),
    "Tag" => s3_tag()
  }
  """
  @type replication_rule_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_storage_lens_configuration_tagging_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_storage_lens_configuration_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_multi_region_access_point_request() :: %{
    required("AccountId") => String.t(),
    required("ClientToken") => String.t(),
    required("Details") => create_multi_region_access_point_input()
  }
  """
  @type create_multi_region_access_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_operation() :: %{
    "LambdaInvoke" => lambda_invoke_operation(),
    "S3DeleteObjectTagging" => s3_delete_object_tagging_operation(),
    "S3InitiateRestoreObject" => s3_initiate_restore_object_operation(),
    "S3PutObjectAcl" => s3_set_object_acl_operation(),
    "S3PutObjectCopy" => s3_copy_object_operation(),
    "S3PutObjectLegalHold" => s3_set_object_legal_hold_operation(),
    "S3PutObjectRetention" => s3_set_object_retention_operation(),
    "S3PutObjectTagging" => s3_set_object_tagging_operation(),
    "S3ReplicateObject" => s3_replicate_object_operation()
  }
  """
  @type job_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_storage_lens_groups_request() :: %{
    optional("NextToken") => String.t(),
    required("AccountId") => String.t()
  }
  """
  @type list_storage_lens_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  bucket_already_owned_by_you() :: %{

  }
  """
  @type bucket_already_owned_by_you() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_bucket_policy_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_bucket_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_multi_region_access_point_policy_result() :: %{
    "RequestTokenARN" => String.t()
  }
  """
  @type put_multi_region_access_point_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_storage_lens_configuration_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_storage_lens_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  dissociate_access_grants_identity_center_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type dissociate_access_grants_identity_center_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  noncurrent_version_expiration() :: %{
    "NewerNoncurrentVersions" => integer(),
    "NoncurrentDays" => integer()
  }
  """
  @type noncurrent_version_expiration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_storage_lens_configuration_tagging_result() :: %{

  }
  """
  @type delete_storage_lens_configuration_tagging_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  submit_multi_region_access_point_routes_result() :: %{

  }
  """
  @type submit_multi_region_access_point_routes_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_grants_instances_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AccountId") => String.t()
  }
  """
  @type list_access_grants_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  multi_region_access_points_async_response() :: %{
    "Regions" => list(multi_region_access_point_regional_response()())
  }
  """
  @type multi_region_access_points_async_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_multi_region_access_points_result() :: %{
    "AccessPoints" => list(multi_region_access_point_report()()),
    "NextToken" => String.t()
  }
  """
  @type list_multi_region_access_points_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_bucket_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_bucket_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_multi_region_access_point_policy_status_result() :: %{
    "Established" => policy_status()
  }
  """
  @type get_multi_region_access_point_policy_status_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_access_point_request() :: %{
    optional("BucketAccountId") => String.t(),
    optional("PublicAccessBlockConfiguration") => public_access_block_configuration(),
    optional("VpcConfiguration") => vpc_configuration(),
    required("AccountId") => String.t(),
    required("Bucket") => String.t()
  }
  """
  @type create_access_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_access_grants_instance_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_access_grants_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  submit_multi_region_access_point_routes_request() :: %{
    required("AccountId") => String.t(),
    required("RouteUpdates") => list(multi_region_access_point_route()())
  }
  """
  @type submit_multi_region_access_point_routes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  metrics() :: %{
    "EventThreshold" => replication_time_value(),
    "Status" => list(any())
  }
  """
  @type metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_multi_region_access_point_result() :: %{
    "RequestTokenARN" => String.t()
  }
  """
  @type create_multi_region_access_point_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  region() :: %{
    "Bucket" => String.t(),
    "BucketAccountId" => String.t()
  }
  """
  @type region() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_storage_lens_configuration_tagging_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_storage_lens_configuration_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_policy_for_object_lambda_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_access_point_policy_for_object_lambda_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_access_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replica_modifications() :: %{
    "Status" => list(any())
  }
  """
  @type replica_modifications() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replication_time_value() :: %{
    "Minutes" => integer()
  }
  """
  @type replication_time_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_access_grants_location_request() :: %{
    required("AccountId") => String.t(),
    required("IAMRoleArn") => String.t()
  }
  """
  @type update_access_grants_location_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  exclude() :: %{
    "Buckets" => list(String.t()()),
    "Regions" => list(String.t()())
  }
  """
  @type exclude() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  policy_status() :: %{
    "IsPublic" => boolean()
  }
  """
  @type policy_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bucket_replication_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_bucket_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_initiate_restore_object_operation() :: %{
    "ExpirationInDays" => integer(),
    "GlacierJobTier" => list(any())
  }
  """
  @type s3_initiate_restore_object_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replication_configuration() :: %{
    "Role" => String.t(),
    "Rules" => list(replication_rule()())
  }
  """
  @type replication_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_access_control_policy() :: %{
    "AccessControlList" => s3_access_control_list(),
    "CannedAccessControlList" => list(any())
  }
  """
  @type s3_access_control_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_configuration_for_object_lambda_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_access_point_configuration_for_object_lambda_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_grant_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_access_grant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_grant() :: %{
    "Grantee" => s3_grantee(),
    "Permission" => list(any())
  }
  """
  @type s3_grant() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag() :: %{
    "Key" => String.t(),
    "Value" => String.t()
  }
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_data_access_request() :: %{
    optional("DurationSeconds") => integer(),
    optional("Privilege") => list(any()),
    optional("TargetType") => list(any()),
    required("AccountId") => String.t(),
    required("Permission") => list(any()),
    required("Target") => String.t()
  }
  """
  @type get_data_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bucket_policy_result() :: %{
    "Policy" => String.t()
  }
  """
  @type get_bucket_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_request_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  noncurrent_version_transition() :: %{
    "NoncurrentDays" => integer(),
    "StorageClass" => list(any())
  }
  """
  @type noncurrent_version_transition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_grants_location_result() :: %{
    "AccessGrantsLocationArn" => String.t(),
    "AccessGrantsLocationId" => String.t(),
    "CreatedAt" => non_neg_integer(),
    "IAMRoleArn" => String.t(),
    "LocationScope" => String.t()
  }
  """
  @type get_access_grants_location_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lifecycle_rule_filter() :: %{
    "And" => lifecycle_rule_and_operator(),
    "ObjectSizeGreaterThan" => float(),
    "ObjectSizeLessThan" => float(),
    "Prefix" => String.t(),
    "Tag" => s3_tag()
  }
  """
  @type lifecycle_rule_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_storage_lens_group_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_storage_lens_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_next_token_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_job_status_result() :: %{
    "JobId" => String.t(),
    "Status" => list(any()),
    "StatusUpdateReason" => String.t()
  }
  """
  @type update_job_status_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_multi_region_access_points_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AccountId") => String.t()
  }
  """
  @type list_multi_region_access_points_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  multi_region_access_point_policy_document() :: %{
    "Established" => established_multi_region_access_point_policy(),
    "Proposed" => proposed_multi_region_access_point_policy()
  }
  """
  @type multi_region_access_point_policy_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_grants_instance_entry() :: %{
    "AccessGrantsInstanceArn" => String.t(),
    "AccessGrantsInstanceId" => String.t(),
    "CreatedAt" => non_neg_integer(),
    "IdentityCenterArn" => String.t()
  }
  """
  @type list_access_grants_instance_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_grants_instance_resource_policy_result() :: %{
    "CreatedAt" => non_neg_integer(),
    "Organization" => String.t(),
    "Policy" => String.t()
  }
  """
  @type get_access_grants_instance_resource_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_failure() :: %{
    "FailureCode" => String.t(),
    "FailureReason" => String.t()
  }
  """
  @type job_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_bucket_configuration() :: %{
    "LocationConstraint" => list(any())
  }
  """
  @type create_bucket_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  bucket_already_exists() :: %{

  }
  """
  @type bucket_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bucket_replication_result() :: %{
    "ReplicationConfiguration" => replication_configuration()
  }
  """
  @type get_bucket_replication_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  regional_bucket() :: %{
    "Bucket" => String.t(),
    "BucketArn" => String.t(),
    "CreationDate" => non_neg_integer(),
    "OutpostId" => String.t(),
    "PublicAccessBlockEnabled" => boolean()
  }
  """
  @type regional_bucket() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  async_response_details() :: %{
    "ErrorDetails" => async_error_details(),
    "MultiRegionAccessPointDetails" => multi_region_access_points_async_response()
  }
  """
  @type async_response_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_set_object_acl_operation() :: %{
    "AccessControlPolicy" => s3_access_control_policy()
  }
  """
  @type s3_set_object_acl_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  async_request_parameters() :: %{
    "CreateMultiRegionAccessPointRequest" => create_multi_region_access_point_input(),
    "DeleteMultiRegionAccessPointRequest" => delete_multi_region_access_point_input(),
    "PutMultiRegionAccessPointPolicyRequest" => put_multi_region_access_point_policy_input()
  }
  """
  @type async_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tagging() :: %{
    "TagSet" => list(s3_tag()())
  }
  """
  @type tagging() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  activity_metrics() :: %{
    "IsEnabled" => boolean()
  }
  """
  @type activity_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_control_translation() :: %{
    "Owner" => list(any())
  }
  """
  @type access_control_translation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_access_grants_location_result() :: %{
    "AccessGrantsLocationArn" => String.t(),
    "AccessGrantsLocationId" => String.t(),
    "CreatedAt" => non_neg_integer(),
    "IAMRoleArn" => String.t(),
    "LocationScope" => String.t()
  }
  """
  @type create_access_grants_location_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_job_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type describe_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  storage_lens_data_export_encryption() :: %{
    "SSEKMS" => sse_kms(),
    "SSES3" => sse_s3()
  }
  """
  @type storage_lens_data_export_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  storage_lens_group_and_operator() :: %{
    "MatchAnyPrefix" => list(String.t()()),
    "MatchAnySuffix" => list(String.t()()),
    "MatchAnyTag" => list(s3_tag()()),
    "MatchObjectAge" => match_object_age(),
    "MatchObjectSize" => match_object_size()
  }
  """
  @type storage_lens_group_and_operator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  object_lambda_transformation_configuration() :: %{
    "Actions" => list(list(any())()),
    "ContentTransformation" => list()
  }
  """
  @type object_lambda_transformation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_descriptor() :: %{
    "ConfirmationRequired" => boolean(),
    "CreationTime" => non_neg_integer(),
    "Description" => String.t(),
    "FailureReasons" => list(job_failure()()),
    "GeneratedManifestDescriptor" => s3_generated_manifest_descriptor(),
    "JobArn" => String.t(),
    "JobId" => String.t(),
    "Manifest" => job_manifest(),
    "ManifestGenerator" => list(),
    "Operation" => job_operation(),
    "Priority" => integer(),
    "ProgressSummary" => job_progress_summary(),
    "Report" => job_report(),
    "RoleArn" => String.t(),
    "Status" => list(any()),
    "StatusUpdateReason" => String.t(),
    "SuspendedCause" => String.t(),
    "SuspendedDate" => non_neg_integer(),
    "TerminationDate" => non_neg_integer()
  }
  """
  @type job_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detailed_status_codes_metrics() :: %{
    "IsEnabled" => boolean()
  }
  """
  @type detailed_status_codes_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_policy_status_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_access_point_policy_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_manifest_spec() :: %{
    "Fields" => list(list(any())()),
    "Format" => list(any())
  }
  """
  @type job_manifest_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_object_metadata() :: %{
    "CacheControl" => String.t(),
    "ContentDisposition" => String.t(),
    "ContentEncoding" => String.t(),
    "ContentLanguage" => String.t(),
    "ContentLength" => float(),
    "ContentMD5" => String.t(),
    "ContentType" => String.t(),
    "HttpExpiresDate" => non_neg_integer(),
    "RequesterCharged" => boolean(),
    "SSEAlgorithm" => list(any()),
    "UserMetadata" => map()
  }
  """
  @type s3_object_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_grants_instances_result() :: %{
    "AccessGrantsInstancesList" => list(list_access_grants_instance_entry()()),
    "NextToken" => String.t()
  }
  """
  @type list_access_grants_instances_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_multi_region_access_point_result() :: %{
    "RequestTokenARN" => String.t()
  }
  """
  @type delete_multi_region_access_point_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  established_multi_region_access_point_policy() :: %{
    "Policy" => String.t()
  }
  """
  @type established_multi_region_access_point_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_access_grants_location_result() :: %{
    "AccessGrantsLocationArn" => String.t(),
    "AccessGrantsLocationId" => String.t(),
    "CreatedAt" => non_neg_integer(),
    "IAMRoleArn" => String.t(),
    "LocationScope" => String.t()
  }
  """
  @type update_access_grants_location_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_job_tagging_result() :: %{

  }
  """
  @type delete_job_tagging_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_multi_region_access_point_input() :: %{
    "Name" => String.t(),
    "PublicAccessBlock" => public_access_block_configuration(),
    "Regions" => list(region()())
  }
  """
  @type create_multi_region_access_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  storage_lens_group() :: %{
    "Filter" => storage_lens_group_filter(),
    "Name" => String.t(),
    "StorageLensGroupArn" => String.t()
  }
  """
  @type storage_lens_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_for_object_lambda_result() :: %{
    "Alias" => object_lambda_access_point_alias(),
    "CreationDate" => non_neg_integer(),
    "Name" => String.t(),
    "PublicAccessBlockConfiguration" => public_access_block_configuration()
  }
  """
  @type get_access_point_for_object_lambda_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_bucket_result() :: %{
    "BucketArn" => String.t(),
    "Location" => String.t()
  }
  """
  @type create_bucket_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_replicate_object_operation() :: %{

  }
  """
  @type s3_replicate_object_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_regional_buckets_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("OutpostId") => String.t(),
    required("AccountId") => String.t()
  }
  """
  @type list_regional_buckets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_manifest_output_location() :: %{
    "Bucket" => String.t(),
    "ExpectedManifestBucketOwner" => String.t(),
    "ManifestEncryption" => generated_manifest_encryption(),
    "ManifestFormat" => list(any()),
    "ManifestPrefix" => String.t()
  }
  """
  @type s3_manifest_output_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_access_point_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_access_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lambda_invoke_operation() :: %{
    "FunctionArn" => String.t(),
    "InvocationSchemaVersion" => String.t(),
    "UserArguments" => map()
  }
  """
  @type lambda_invoke_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bucket_lifecycle_configuration_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_bucket_lifecycle_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_access_grants_instance_resource_policy_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_access_grants_instance_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  storage_lens_aws_org() :: %{
    "Arn" => String.t()
  }
  """
  @type storage_lens_aws_org() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_result() :: %{
    "Tags" => list(tag()())
  }
  """
  @type list_tags_for_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  async_error_details() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t(),
    "Resource" => String.t()
  }
  """
  @type async_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_list_descriptor() :: %{
    "CreationTime" => non_neg_integer(),
    "Description" => String.t(),
    "JobId" => String.t(),
    "Operation" => list(any()),
    "Priority" => integer(),
    "ProgressSummary" => job_progress_summary(),
    "Status" => list(any()),
    "TerminationDate" => non_neg_integer()
  }
  """
  @type job_list_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_access_point_for_object_lambda_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_access_point_for_object_lambda_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bucket_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_bucket_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_copy_object_operation() :: %{
    "AccessControlGrants" => list(s3_grant()()),
    "BucketKeyEnabled" => boolean(),
    "CannedAccessControlList" => list(any()),
    "ChecksumAlgorithm" => list(any()),
    "MetadataDirective" => list(any()),
    "ModifiedSinceConstraint" => non_neg_integer(),
    "NewObjectMetadata" => s3_object_metadata(),
    "NewObjectTagging" => list(s3_tag()()),
    "ObjectLockLegalHoldStatus" => list(any()),
    "ObjectLockMode" => list(any()),
    "ObjectLockRetainUntilDate" => non_neg_integer(),
    "RedirectLocation" => String.t(),
    "RequesterPays" => boolean(),
    "SSEAwsKmsKeyId" => String.t(),
    "StorageClass" => list(any()),
    "TargetKeyPrefix" => String.t(),
    "TargetResource" => String.t(),
    "UnModifiedSinceConstraint" => non_neg_integer()
  }
  """
  @type s3_copy_object_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bucket_policy_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_bucket_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_public_access_block_output() :: %{
    "PublicAccessBlockConfiguration" => public_access_block_configuration()
  }
  """
  @type get_public_access_block_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_access_point_policy_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_access_point_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  aws_lambda_transformation() :: %{
    "FunctionArn" => String.t(),
    "FunctionPayload" => String.t()
  }
  """
  @type aws_lambda_transformation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bucket_tagging_result() :: %{
    "TagSet" => list(s3_tag()())
  }
  """
  @type get_bucket_tagging_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_marker_replication() :: %{
    "Status" => list(any())
  }
  """
  @type delete_marker_replication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_bucket_request() :: %{
    optional("ACL") => list(any()),
    optional("CreateBucketConfiguration") => create_bucket_configuration(),
    optional("GrantFullControl") => String.t(),
    optional("GrantRead") => String.t(),
    optional("GrantReadACP") => String.t(),
    optional("GrantWrite") => String.t(),
    optional("GrantWriteACP") => String.t(),
    optional("ObjectLockEnabledForBucket") => boolean(),
    optional("OutpostId") => String.t()
  }
  """
  @type create_bucket_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  key_name_constraint() :: %{
    "MatchAnyPrefix" => list(String.t()()),
    "MatchAnySubstring" => list(String.t()()),
    "MatchAnySuffix" => list(String.t()())
  }
  """
  @type key_name_constraint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bucket_result() :: %{
    "Bucket" => String.t(),
    "CreationDate" => non_neg_integer(),
    "PublicAccessBlockEnabled" => boolean()
  }
  """
  @type get_bucket_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_job_tagging_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_job_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_data_access_result() :: %{
    "Credentials" => credentials(),
    "MatchedGrantTarget" => String.t()
  }
  """
  @type get_data_access_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_policy_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_access_point_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_timers() :: %{
    "ElapsedTimeInActiveSeconds" => float()
  }
  """
  @type job_timers() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  existing_object_replication() :: %{
    "Status" => list(any())
  }
  """
  @type existing_object_replication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  transition() :: %{
    "Date" => non_neg_integer(),
    "Days" => integer(),
    "StorageClass" => list(any())
  }
  """
  @type transition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  multi_region_access_point_route() :: %{
    "Bucket" => String.t(),
    "Region" => String.t(),
    "TrafficDialPercentage" => integer()
  }
  """
  @type multi_region_access_point_route() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_delete_object_tagging_operation() :: %{

  }
  """
  @type s3_delete_object_tagging_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_multi_region_access_point_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_multi_region_access_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_manifest_generator_filter() :: %{
    "CreatedAfter" => non_neg_integer(),
    "CreatedBefore" => non_neg_integer(),
    "EligibleForReplication" => boolean(),
    "KeyNameConstraint" => key_name_constraint(),
    "MatchAnyStorageClass" => list(list(any())()),
    "ObjectReplicationStatuses" => list(list(any())()),
    "ObjectSizeGreaterThanBytes" => float(),
    "ObjectSizeLessThanBytes" => float()
  }
  """
  @type job_manifest_generator_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  multi_region_access_point_report() :: %{
    "Alias" => String.t(),
    "CreatedAt" => non_neg_integer(),
    "Name" => String.t(),
    "PublicAccessBlock" => public_access_block_configuration(),
    "Regions" => list(region_report()()),
    "Status" => list(any())
  }
  """
  @type multi_region_access_point_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bucket_tagging_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_bucket_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sse_s3_encryption() :: %{

  }
  """
  @type sse_s3_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_grants_locations_result() :: %{
    "AccessGrantsLocationsList" => list(list_access_grants_locations_entry()()),
    "NextToken" => String.t()
  }
  """
  @type list_access_grants_locations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_policy_status_for_object_lambda_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_access_point_policy_status_for_object_lambda_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_grants_location_configuration() :: %{
    "S3SubPrefix" => String.t()
  }
  """
  @type access_grants_location_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sse_s3() :: %{

  }
  """
  @type sse_s3() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_access_point_policy_for_object_lambda_request() :: %{
    required("AccountId") => String.t(),
    required("Policy") => String.t()
  }
  """
  @type put_access_point_policy_for_object_lambda_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_grants_request() :: %{
    optional("ApplicationArn") => String.t(),
    optional("GrantScope") => String.t(),
    optional("GranteeIdentifier") => String.t(),
    optional("GranteeType") => list(any()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("Permission") => list(any()),
    required("AccountId") => String.t()
  }
  """
  @type list_access_grants_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_access_grants_location_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_access_grants_location_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_multi_region_access_point_routes_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_multi_region_access_point_routes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replication_rule() :: %{
    "Bucket" => String.t(),
    "DeleteMarkerReplication" => delete_marker_replication(),
    "Destination" => destination(),
    "ExistingObjectReplication" => existing_object_replication(),
    "Filter" => replication_rule_filter(),
    "ID" => String.t(),
    "Prefix" => String.t(),
    "Priority" => integer(),
    "SourceSelectionCriteria" => source_selection_criteria(),
    "Status" => list(any())
  }
  """
  @type replication_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_retention() :: %{
    "Mode" => list(any()),
    "RetainUntilDate" => non_neg_integer()
  }
  """
  @type s3_retention() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  match_object_size() :: %{
    "BytesGreaterThan" => float(),
    "BytesLessThan" => float()
  }
  """
  @type match_object_size() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_job_priority_result() :: %{
    "JobId" => String.t(),
    "Priority" => integer()
  }
  """
  @type update_job_priority_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_point() :: %{
    "AccessPointArn" => String.t(),
    "Alias" => String.t(),
    "Bucket" => String.t(),
    "BucketAccountId" => String.t(),
    "Name" => String.t(),
    "NetworkOrigin" => list(any()),
    "VpcConfiguration" => vpc_configuration()
  }
  """
  @type access_point() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cloud_watch_metrics() :: %{
    "IsEnabled" => boolean()
  }
  """
  @type cloud_watch_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bucket_versioning_result() :: %{
    "MFADelete" => list(any()),
    "Status" => list(any())
  }
  """
  @type get_bucket_versioning_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  idempotency_exception() :: %{
    "Message" => String.t()
  }
  """
  @type idempotency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  destination() :: %{
    "AccessControlTranslation" => access_control_translation(),
    "Account" => String.t(),
    "Bucket" => String.t(),
    "EncryptionConfiguration" => encryption_configuration(),
    "Metrics" => metrics(),
    "ReplicationTime" => replication_time(),
    "StorageClass" => list(any())
  }
  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_job_status_request() :: %{
    optional("StatusUpdateReason") => String.t(),
    required("AccountId") => String.t(),
    required("RequestedJobStatus") => list(any())
  }
  """
  @type update_job_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lifecycle_expiration() :: %{
    "Date" => non_neg_integer(),
    "Days" => integer(),
    "ExpiredObjectDeleteMarker" => boolean()
  }
  """
  @type lifecycle_expiration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_set_object_legal_hold_operation() :: %{
    "LegalHold" => s3_object_lock_legal_hold()
  }
  """
  @type s3_set_object_legal_hold_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_job_result() :: %{
    "JobId" => String.t()
  }
  """
  @type create_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_bucket_tagging_request() :: %{
    required("AccountId") => String.t(),
    required("Tagging") => tagging()
  }
  """
  @type put_bucket_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_grants_instance_for_prefix_request() :: %{
    required("AccountId") => String.t(),
    required("S3Prefix") => String.t()
  }
  """
  @type get_access_grants_instance_for_prefix_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sse_kms() :: %{
    "KeyId" => String.t()
  }
  """
  @type sse_kms() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_job_priority_request() :: %{
    required("AccountId") => String.t(),
    required("Priority") => integer()
  }
  """
  @type update_job_priority_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_result() :: %{
    "AccessPointArn" => String.t(),
    "Alias" => String.t(),
    "Bucket" => String.t(),
    "BucketAccountId" => String.t(),
    "CreationDate" => non_neg_integer(),
    "Endpoints" => map(),
    "Name" => String.t(),
    "NetworkOrigin" => list(any()),
    "PublicAccessBlockConfiguration" => public_access_block_configuration(),
    "VpcConfiguration" => vpc_configuration()
  }
  """
  @type get_access_point_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_storage_lens_configuration_tagging_result() :: %{

  }
  """
  @type put_storage_lens_configuration_tagging_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_points_result() :: %{
    "AccessPointList" => list(access_point()()),
    "NextToken" => String.t()
  }
  """
  @type list_access_points_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_result() :: %{

  }
  """
  @type tag_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_multi_region_access_point_policy_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_multi_region_access_point_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replication_rule_and_operator() :: %{
    "Prefix" => String.t(),
    "Tags" => list(s3_tag()())
  }
  """
  @type replication_rule_and_operator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_policy_status_for_object_lambda_result() :: %{
    "PolicyStatus" => policy_status()
  }
  """
  @type get_access_point_policy_status_for_object_lambda_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  bad_request_exception() :: %{
    "Message" => String.t()
  }
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_multi_region_access_point_routes_result() :: %{
    "Mrap" => String.t(),
    "Routes" => list(multi_region_access_point_route()())
  }
  """
  @type get_multi_region_access_point_routes_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  object_lambda_access_point_alias() :: %{
    "Status" => list(any()),
    "Value" => String.t()
  }
  """
  @type object_lambda_access_point_alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_public_access_block_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_public_access_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_access_point_policy_request() :: %{
    required("AccountId") => String.t(),
    required("Policy") => String.t()
  }
  """
  @type put_access_point_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  selection_criteria() :: %{
    "Delimiter" => String.t(),
    "MaxDepth" => integer(),
    "MinStorageBytesPercentage" => float()
  }
  """
  @type selection_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_access_point_result() :: %{
    "AccessPointArn" => String.t(),
    "Alias" => String.t()
  }
  """
  @type create_access_point_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_storage_lens_configuration_entry() :: %{
    "HomeRegion" => String.t(),
    "Id" => String.t(),
    "IsEnabled" => boolean(),
    "StorageLensArn" => String.t()
  }
  """
  @type list_storage_lens_configuration_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replication_time() :: %{
    "Status" => list(any()),
    "Time" => replication_time_value()
  }
  """
  @type replication_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_object_owner() :: %{
    "DisplayName" => String.t(),
    "ID" => String.t()
  }
  """
  @type s3_object_owner() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_points_request() :: %{
    optional("Bucket") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AccountId") => String.t()
  }
  """
  @type list_access_points_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_storage_lens_configuration_tagging_request() :: %{
    required("AccountId") => String.t(),
    required("Tags") => list(storage_lens_tag()())
  }
  """
  @type put_storage_lens_configuration_tagging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_point_policy_result() :: %{
    "Policy" => String.t()
  }
  """
  @type get_access_point_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_multi_region_access_point_policy_status_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_multi_region_access_point_policy_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  storage_lens_configuration() :: %{
    "AccountLevel" => account_level(),
    "AwsOrg" => storage_lens_aws_org(),
    "DataExport" => storage_lens_data_export(),
    "Exclude" => exclude(),
    "Id" => String.t(),
    "Include" => include(),
    "IsEnabled" => boolean(),
    "StorageLensArn" => String.t()
  }
  """
  @type storage_lens_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_set_object_tagging_operation() :: %{
    "TagSet" => list(s3_tag()())
  }
  """
  @type s3_set_object_tagging_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_bucket_lifecycle_configuration_request() :: %{
    optional("LifecycleConfiguration") => lifecycle_configuration(),
    required("AccountId") => String.t()
  }
  """
  @type put_bucket_lifecycle_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_access_grant_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_access_grant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_tag() :: %{
    "Key" => String.t(),
    "Value" => String.t()
  }
  """
  @type s3_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_generated_manifest_descriptor() :: %{
    "Format" => list(any()),
    "Location" => job_manifest_location()
  }
  """
  @type s3_generated_manifest_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  advanced_cost_optimization_metrics() :: %{
    "IsEnabled" => boolean()
  }
  """
  @type advanced_cost_optimization_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_access_grant_request() :: %{
    optional("AccessGrantsLocationConfiguration") => access_grants_location_configuration(),
    optional("ApplicationArn") => String.t(),
    optional("S3PrefixType") => list(any()),
    optional("Tags") => list(tag()()),
    required("AccessGrantsLocationId") => String.t(),
    required("AccountId") => String.t(),
    required("Grantee") => grantee(),
    required("Permission") => list(any())
  }
  """
  @type create_access_grant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_bucket_lifecycle_configuration_result() :: %{
    "Rules" => list(lifecycle_rule()())
  }
  """
  @type get_bucket_lifecycle_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_grants_locations_request() :: %{
    optional("LocationScope") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AccountId") => String.t()
  }
  """
  @type list_access_grants_locations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_multi_region_access_point_operation_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type describe_multi_region_access_point_operation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_set_object_retention_operation() :: %{
    "BypassGovernanceRetention" => boolean(),
    "Retention" => s3_retention()
  }
  """
  @type s3_set_object_retention_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_grants_locations_entry() :: %{
    "AccessGrantsLocationArn" => String.t(),
    "AccessGrantsLocationId" => String.t(),
    "CreatedAt" => non_neg_integer(),
    "IAMRoleArn" => String.t(),
    "LocationScope" => String.t()
  }
  """
  @type list_access_grants_locations_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_storage_lens_group_request() :: %{
    required("AccountId") => String.t(),
    required("StorageLensGroup") => storage_lens_group()
  }
  """
  @type update_storage_lens_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  account_level() :: %{
    "ActivityMetrics" => activity_metrics(),
    "AdvancedCostOptimizationMetrics" => advanced_cost_optimization_metrics(),
    "AdvancedDataProtectionMetrics" => advanced_data_protection_metrics(),
    "BucketLevel" => bucket_level(),
    "DetailedStatusCodesMetrics" => detailed_status_codes_metrics(),
    "StorageLensGroupLevel" => storage_lens_group_level()
  }
  """
  @type account_level() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_storage_lens_groups_result() :: %{
    "NextToken" => String.t(),
    "StorageLensGroupList" => list(list_storage_lens_group_entry()())
  }
  """
  @type list_storage_lens_groups_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_grants_location_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_access_grants_location_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_object_lock_legal_hold() :: %{
    "Status" => list(any())
  }
  """
  @type s3_object_lock_legal_hold() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_bucket_replication_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type delete_bucket_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_job_tagging_result() :: %{

  }
  """
  @type put_job_tagging_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_storage_lens_configurations_request() :: %{
    optional("NextToken") => String.t(),
    required("AccountId") => String.t()
  }
  """
  @type list_storage_lens_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_progress_summary() :: %{
    "NumberOfTasksFailed" => float(),
    "NumberOfTasksSucceeded" => float(),
    "Timers" => job_timers(),
    "TotalNumberOfTasks" => float()
  }
  """
  @type job_progress_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_access_point_configuration_for_object_lambda_request() :: %{
    required("AccountId") => String.t(),
    required("Configuration") => object_lambda_configuration()
  }
  """
  @type put_access_point_configuration_for_object_lambda_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  too_many_tags_exception() :: %{
    "Message" => String.t()
  }
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_multi_region_access_point_result() :: %{
    "AccessPoint" => multi_region_access_point_report()
  }
  """
  @type get_multi_region_access_point_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lifecycle_rule_and_operator() :: %{
    "ObjectSizeGreaterThan" => float(),
    "ObjectSizeLessThan" => float(),
    "Prefix" => String.t(),
    "Tags" => list(s3_tag()())
  }
  """
  @type lifecycle_rule_and_operator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_access_grants_instance_request() :: %{
    required("AccountId") => String.t()
  }
  """
  @type get_access_grants_instance_request() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2018-08-20",
      content_type: "text/xml",
      credential_scope: nil,
      endpoint_prefix: "s3-control",
      global?: false,
      protocol: "rest-xml",
      service_id: "S3 Control",
      signature_version: "v4",
      signing_name: "s3",
      target_prefix: nil
    }
  end

  @doc """
  Associate your S3 Access Grants instance with an Amazon Web Services IAM
  Identity Center instance.

  Use this action if you want to create access grants for users or groups from
  your corporate identity directory. First, you must add your corporate identity
  directory to Amazon Web Services IAM Identity Center. Then, you can associate
  this IAM Identity Center instance with your S3 Access Grants instance.

  ## Definitions

  ### Permissions

  You must have the `s3:AssociateAccessGrantsIdentityCenter` permission to use
  this operation.

  ### Additional Permissions

  You must also have the following permissions: `sso:CreateApplication`,
  `sso:PutApplicationGrant`, and `sso:PutApplicationAuthenticationMethod`.
  """
  @spec associate_access_grants_identity_center(
          map(),
          associate_access_grants_identity_center_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def associate_access_grants_identity_center(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/accessgrantsinstance/identitycenter"

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
      200
    )
  end

  @doc """
  Creates an access grant that gives a grantee access to your S3 data.

  The grantee can be an IAM user or role or a directory user, or group. Before you
  can create a grant, you must have an S3 Access Grants instance in the same
  Region as the S3 data. You can create an S3 Access Grants instance using the
  [CreateAccessGrantsInstance](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessGrantsInstance.html). You must also have registered at least one S3 data location in your S3 Access
  Grants instance using
  [CreateAccessGrantsLocation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessGrantsLocation.html).

  ## Definitions

  ### Permissions

  You must have the `s3:CreateAccessGrant` permission to use this operation.

  ### Additional Permissions

  For any directory identity - `sso:DescribeInstance` and
  `sso:DescribeApplication`

  For directory users - `identitystore:DescribeUser`

  For directory groups - `identitystore:DescribeGroup`
  """
  @spec create_access_grant(map(), create_access_grant_request(), list()) ::
          {:ok, create_access_grant_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_access_grant(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/accessgrantsinstance/grant"

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
      200
    )
  end

  @doc """
  Creates an S3 Access Grants instance, which serves as a logical grouping for
  access grants.

  You can create one S3 Access Grants instance per Region per account.

  ## Definitions

  ### Permissions

  You must have the `s3:CreateAccessGrantsInstance` permission to use this
  operation.

  ### Additional Permissions

  To associate an IAM Identity Center instance with your S3 Access Grants
  instance, you must also have the `sso:DescribeInstance`,
  `sso:CreateApplication`, `sso:PutApplicationGrant`, and
  `sso:PutApplicationAuthenticationMethod` permissions.
  """
  @spec create_access_grants_instance(map(), create_access_grants_instance_request(), list()) ::
          {:ok, create_access_grants_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_access_grants_instance(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/accessgrantsinstance"

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
      200
    )
  end

  @doc """
  The S3 data location that you would like to register in your S3 Access Grants
  instance.

  Your S3 data must be in the same Region as your S3 Access Grants instance. The
  location can be one of the following:

    *
  The default S3 location `s3://`

    *
  A bucket - `S3://`

    *
  A bucket and prefix - `S3:///`

  When you register a location, you must include the IAM role that has permission
  to manage the S3 location that you are registering. Give S3 Access Grants
  permission to assume this role [using a policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-location.html).
  S3 Access Grants assumes this role to manage access to the location and to vend
  temporary credentials to grantees or client applications.

  ## Definitions

  ### Permissions

  You must have the `s3:CreateAccessGrantsLocation` permission to use this
  operation.

  ### Additional Permissions

  You must also have the following permission for the specified IAM role:
  `iam:PassRole`
  """
  @spec create_access_grants_location(map(), create_access_grants_location_request(), list()) ::
          {:ok, create_access_grants_location_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_access_grants_location(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/accessgrantsinstance/location"

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
      200
    )
  end

  @doc """

  This operation is not supported by directory buckets.

  Creates an access point and associates it with the specified bucket. For more
  information, see
  [Managing Data Access with Amazon S3 Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html)
  in the
  *Amazon S3 User Guide*.

  S3 on Outposts only supports VPC-style access points.

  For more information, see [ Accessing Amazon S3 on Outposts using virtual private cloud (VPC) only access
  points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the
  *Amazon S3 User Guide*.

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

  [DeleteAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html) 

    *

  [ListAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)
  """
  @spec create_access_point(map(), String.t(), create_access_point_request(), list()) ::
          {:ok, create_access_point_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_access_point(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/accesspoint/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Creates an Object Lambda Access Point. For more information, see [Transforming objects with
  Object Lambda Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to
  `CreateAccessPointForObjectLambda`:

    *

  [DeleteAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html) 

    *

  [GetAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html)

    *

  [ListAccessPointsForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html)
  """
  @spec create_access_point_for_object_lambda(
          map(),
          String.t(),
          create_access_point_for_object_lambda_request(),
          list()
        ) ::
          {:ok, create_access_point_for_object_lambda_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_access_point_for_object_lambda(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/accesspointforobjectlambda/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This action creates an Amazon S3 on Outposts bucket.

  To create an S3 bucket, see [Create Bucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
  in the *Amazon S3 API Reference*.

  Creates a new Outposts bucket. By creating the bucket, you become the bucket
  owner. To
  create an Outposts bucket, you must have S3 on Outposts. For more information,
  see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in *Amazon S3 User Guide*.

  Not every string is an acceptable bucket name. For information on bucket naming
  restrictions, see [Working with Amazon S3
  Buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/BucketRestrictions.html#bucketnamingrules).

  S3 on Outposts buckets support:

    *
  Tags

    *
  LifecycleConfigurations for deleting expired objects

  For a complete list of restrictions and Amazon S3 feature limitations on S3 on
  Outposts, see
  [
  Amazon S3 on Outposts Restrictions and
  Limitations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OnOutpostsRestrictionsLimitations.html).

  For an example of the request syntax for Amazon S3 on Outposts that uses the S3
  on Outposts
  endpoint hostname prefix and `x-amz-outpost-id` in your API request, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html#API_control_CreateBucket_Examples) section.

  The following actions are related to `CreateBucket` for
  Amazon S3 on Outposts:

    *

  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)

    *

  [GetBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html) 

    *

  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html)

    *

  [CreateAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html) 

    *

  [PutAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html)
  """
  @spec create_bucket(map(), String.t(), create_bucket_request(), list()) ::
          {:ok, create_bucket_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bucket_already_exists()}
          | {:error, bucket_already_owned_by_you()}
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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This operation creates an S3 Batch Operations job.

  You can use S3 Batch Operations to perform large-scale batch actions on Amazon
  S3 objects.
  Batch Operations can run a single action on lists of Amazon S3 objects that you
  specify. For more
  information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
  in the *Amazon S3 User Guide*.

  ## Definitions

  ### Permissions

  For information about permissions required to use the Batch Operations, see
  [Granting permissions for S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html)
  in the *Amazon S3
  User Guide*.

  Related actions include:

    *

  [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html) 

    *

  [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

    *

  [UpdateJobPriority](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html) 

    *

  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)

    *

  [JobOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_JobOperation.html)
  """
  @spec create_job(map(), create_job_request(), list()) ::
          {:ok, create_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, idempotency_exception()}
          | {:error, internal_service_exception()}
          | {:error, too_many_requests_exception()}
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
      200
    )
  end

  @doc """

  This operation is not supported by directory buckets.

  Creates a Multi-Region Access Point and associates it with the specified
  buckets. For more information
  about creating Multi-Region Access Points, see [Creating Multi-Region Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  This action will always be routed to the US West (Oregon) Region. For more
  information
  about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  This request is asynchronous, meaning that you might receive a response before
  the
  command has completed. When this request provides a response, it provides a
  token that you
  can use to monitor the status of the request with
  `DescribeMultiRegionAccessPointOperation`.

  The following actions are related to `CreateMultiRegionAccessPoint`:

    *

  [DeleteMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html) 

    *

  [DescribeMultiRegionAccessPointOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html)

    *

  [GetMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html) 

    *

  [ListMultiRegionAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html)
  """
  @spec create_multi_region_access_point(
          map(),
          create_multi_region_access_point_request(),
          list()
        ) ::
          {:ok, create_multi_region_access_point_result(), any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """
  Creates a new S3 Storage Lens group and associates it with the specified Amazon
  Web Services account ID.

  An
  S3 Storage Lens group is a custom grouping of objects based on prefix, suffix,
  object tags,
  object size, object age, or a combination of these filters. For each Storage
  Lens group
  that you’ve created, you can also optionally add Amazon Web Services resource
  tags. For more information
  about S3 Storage Lens groups, see [Working with S3 Storage Lens groups](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups-overview.html).

  To use this operation, you must have the permission to perform the
  `s3:CreateStorageLensGroup` action. If you’re trying to create a Storage Lens
  group with Amazon Web Services resource tags, you must also have permission to
  perform the
  `s3:TagResource` action. For more information about the required Storage Lens
  Groups permissions, see [Setting account permissions to use S3 Storage Lens groups](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions).

  For information about Storage Lens groups errors, see [List of Amazon S3 Storage Lens error
  codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList).
  """
  @spec create_storage_lens_group(map(), create_storage_lens_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def create_storage_lens_group(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/storagelensgroup"

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
      204
    )
  end

  @doc """
  Deletes the access grant from the S3 Access Grants instance.

  You cannot undo an access grant deletion and the grantee will no longer have
  access to the S3 data.

  ## Definitions

  ### Permissions

  You must have the `s3:DeleteAccessGrant` permission to use this operation.
  """
  @spec delete_access_grant(map(), String.t(), delete_access_grant_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_access_grant(%Client{} = client, access_grant_id, input, options \\ []) do
    url_path = "/v20180820/accessgrantsinstance/grant/#{AWS.Util.encode_uri(access_grant_id)}"

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
      200
    )
  end

  @doc """
  Deletes your S3 Access Grants instance.

  You must first delete the access grants and locations before S3 Access Grants
  can delete the instance. See
  [DeleteAccessGrant](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessGrant.html) and
  [DeleteAccessGrantsLocation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessGrantsLocation.html).
  If you have associated an IAM Identity Center instance with your S3 Access
  Grants instance, you must first dissassociate the Identity Center instance from
  the S3 Access Grants instance before you can delete the S3 Access Grants
  instance. See
  [AssociateAccessGrantsIdentityCenter](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_AssociateAccessGrantsIdentityCenter.html) and
  [DissociateAccessGrantsIdentityCenter](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DissociateAccessGrantsIdentityCenter.html).

  ## Definitions

  ### Permissions

  You must have the `s3:DeleteAccessGrantsInstance` permission to use this
  operation.
  """
  @spec delete_access_grants_instance(map(), delete_access_grants_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_access_grants_instance(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/accessgrantsinstance"

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
      200
    )
  end

  @doc """
  Deletes the resource policy of the S3 Access Grants instance.

  The resource policy is used to manage cross-account access to your S3 Access
  Grants instance. By deleting the resource policy, you delete any cross-account
  permissions to your S3 Access Grants instance.

  ## Definitions

  ### Permissions

  You must have the `s3:DeleteAccessGrantsInstanceResourcePolicy` permission to
  use this operation.
  """
  @spec delete_access_grants_instance_resource_policy(
          map(),
          delete_access_grants_instance_resource_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_access_grants_instance_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/accessgrantsinstance/resourcepolicy"

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
      200
    )
  end

  @doc """
  Deregisters a location from your S3 Access Grants instance.

  You can only delete a location registration from an S3 Access Grants instance if
  there are no grants associated with this location. See [Delete a grant](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessGrant.html)
  for information on how to delete grants. You need to have at least one
  registered location in your S3 Access Grants instance in order to create access
  grants.

  ## Definitions

  ### Permissions

  You must have the `s3:DeleteAccessGrantsLocation` permission to use this
  operation.
  """
  @spec delete_access_grants_location(
          map(),
          String.t(),
          delete_access_grants_location_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_access_grants_location(
        %Client{} = client,
        access_grants_location_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v20180820/accessgrantsinstance/location/#{AWS.Util.encode_uri(access_grants_location_id)}"

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
      200
    )
  end

  @doc """

  This operation is not supported by directory buckets.

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

  [GetAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html) 

    *

  [ListAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)
  """
  @spec delete_access_point(map(), String.t(), delete_access_point_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  This operation is not supported by directory buckets.

  Deletes the specified Object Lambda Access Point.

  The following actions are related to
  `DeleteAccessPointForObjectLambda`:

    *

  [CreateAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html) 

    *

  [GetAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html)

    *

  [ListAccessPointsForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html)
  """
  @spec delete_access_point_for_object_lambda(
          map(),
          String.t(),
          delete_access_point_for_object_lambda_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  This operation is not supported by directory buckets.

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
  @spec delete_access_point_policy(
          map(),
          String.t(),
          delete_access_point_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  This operation is not supported by directory buckets.

  Removes the resource policy for an Object Lambda Access Point.

  The following actions are related to
  `DeleteAccessPointPolicyForObjectLambda`:

    *

  [GetAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html) 

    *

  [PutAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html)
  """
  @spec delete_access_point_policy_for_object_lambda(
          map(),
          String.t(),
          delete_access_point_policy_for_object_lambda_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  This action deletes an Amazon S3 on Outposts bucket.

  To delete an S3 bucket, see
  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html) in the *Amazon S3 API Reference*.

  Deletes the Amazon S3 on Outposts bucket. All objects (including all object
  versions and
  delete markers) in the bucket must be deleted before the bucket itself can be
  deleted. For
  more information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in
  *Amazon S3 User Guide*.

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

  [GetBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html) 

    *

  [DeleteObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html)
  """
  @spec delete_bucket(map(), String.t(), delete_bucket_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  This action deletes an Amazon S3 on Outposts bucket's lifecycle configuration.

  To delete
  an S3 bucket's lifecycle configuration, see
  [DeleteBucketLifecycle](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html) in the *Amazon S3 API Reference*.

  Deletes the lifecycle configuration from the specified Outposts bucket.
  Amazon S3 on Outposts removes all the lifecycle configuration rules in the
  lifecycle subresource
  associated with the bucket. Your objects never expire, and Amazon S3 on Outposts
  no longer
  automatically deletes any objects on the basis of rules contained in the deleted
  lifecycle
  configuration. For more information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in
  *Amazon S3 User Guide*.

  To use this operation, you must have permission to perform the
  `s3-outposts:PutLifecycleConfiguration` action. By default, the bucket owner
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

  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html) 

    *

  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)
  """
  @spec delete_bucket_lifecycle_configuration(
          map(),
          String.t(),
          delete_bucket_lifecycle_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  This action deletes an Amazon S3 on Outposts bucket policy.

  To delete an S3 bucket policy,
  see
  [DeleteBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketPolicy.html) in the *Amazon S3 API Reference*.

  This implementation of the DELETE action uses the policy subresource to delete
  the
  policy of a specified Amazon S3 on Outposts bucket. If you are using an identity
  other than the
  root user of the Amazon Web Services account that owns the bucket, the calling
  identity must have the
  `s3-outposts:DeleteBucketPolicy` permissions on the specified Outposts bucket
  and belong to the bucket owner's account to use this action. For more
  information, see
  [Using
  Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in *Amazon S3 User Guide*.

  If you don't have `DeleteBucketPolicy` permissions, Amazon S3 returns a

  ```
  403
  Access Denied
  ```

  error. If you have the correct permissions, but you're not using an
  identity that belongs to the bucket owner's account, Amazon S3 returns a

  ```
  405 Method Not
  Allowed
  ```

  error.

  As a security precaution, the root user of the Amazon Web Services account that
  owns a bucket can
  always use this action, even if the policy explicitly denies the root user the
  ability
  to perform this action.

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
  @spec delete_bucket_policy(map(), String.t(), delete_bucket_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  This operation deletes an Amazon S3 on Outposts bucket's replication
  configuration.

  To
  delete an S3 bucket's replication configuration, see
  [DeleteBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketReplication.html) in the *Amazon S3 API Reference*.

  Deletes the replication configuration from the specified S3 on Outposts bucket.

  To use this operation, you must have permissions to perform the
  `s3-outposts:PutReplicationConfiguration` action. The Outposts bucket owner
  has this permission by default and can grant it to others. For more information
  about
  permissions, see [Setting up IAM with
  S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html)
  and [Managing access to S3 on Outposts
  buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html)
  in the *Amazon S3 User Guide*.

  It can take a while to propagate `PUT` or `DELETE` requests for
  a replication configuration to all S3 on Outposts systems. Therefore, the
  replication
  configuration that's returned by a `GET` request soon after a
  `PUT` or `DELETE` request might return a more recent result
  than what's on the Outpost. If an Outpost is offline, the delay in updating the
  replication configuration on that Outpost can be significant.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html#API_control_DeleteBucketReplication_Examples) section.

  For information about S3 replication on Outposts configuration, see [Replicating
  objects for S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html)
  in the
  *Amazon S3 User Guide*.

  The following operations are related to `DeleteBucketReplication`:

    *

  [PutBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html) 

    *

  [GetBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html)
  """
  @spec delete_bucket_replication(map(), String.t(), delete_bucket_replication_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  This action deletes an Amazon S3 on Outposts bucket's tags.

  To delete an S3 bucket tags,
  see
  [DeleteBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html) in the *Amazon S3 API Reference*.

  Deletes the tags from the Outposts bucket. For more information, see [Using
  Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `PutBucketTagging` action. By default, the bucket owner has this permission
  and can grant this permission to others.

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
  @spec delete_bucket_tagging(map(), String.t(), delete_bucket_tagging_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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

  ## Definitions

  ### Permissions

  To use the
  `DeleteJobTagging` operation, you must have permission to
  perform the `s3:DeleteJobTagging` action. For more information, see [Controlling access and labeling jobs using
  tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
  in the
  *Amazon S3 User Guide*.

  Related actions include:

    *

  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html) 

    *

  [GetJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html)

    *

  [PutJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html)
  """
  @spec delete_job_tagging(map(), String.t(), delete_job_tagging_request(), list()) ::
          {:ok, delete_job_tagging_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
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
      200
    )
  end

  @doc """

  This operation is not supported by directory buckets.

  Deletes a Multi-Region Access Point. This action does not delete the buckets
  associated with the Multi-Region Access Point,
  only the Multi-Region Access Point itself.

  This action will always be routed to the US West (Oregon) Region. For more
  information
  about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  This request is asynchronous, meaning that you might receive a response before
  the
  command has completed. When this request provides a response, it provides a
  token that you
  can use to monitor the status of the request with
  `DescribeMultiRegionAccessPointOperation`.

  The following actions are related to `DeleteMultiRegionAccessPoint`:

    *

  [CreateMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html) 

    *

  [DescribeMultiRegionAccessPointOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html)

    *

  [GetMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html) 

    *

  [ListMultiRegionAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html)
  """
  @spec delete_multi_region_access_point(
          map(),
          delete_multi_region_access_point_request(),
          list()
        ) ::
          {:ok, delete_multi_region_access_point_result(), any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  This operation is not supported by directory buckets.

  Removes the `PublicAccessBlock` configuration for an Amazon Web Services
  account. For more
  information, see [ Using Amazon S3 block public
  access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

  Related actions include:

    *

  [GetPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html) 

    *

  [PutPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html)
  """
  @spec delete_public_access_block(map(), delete_public_access_block_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  This operation is not supported by directory buckets.

  Deletes the Amazon S3 Storage Lens configuration. For more information about S3
  Storage Lens, see [Assessing your storage activity and usage with Amazon S3 Storage Lens
  ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:DeleteStorageLensConfiguration` action. For more information, see
  [Setting permissions to use Amazon S3 Storage
  Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the *Amazon S3 User Guide*.
  """
  @spec delete_storage_lens_configuration(
          map(),
          String.t(),
          delete_storage_lens_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  This operation is not supported by directory buckets.

  Deletes the Amazon S3 Storage Lens configuration tags. For more information
  about S3 Storage Lens, see
  [Assessing your storage activity and usage with Amazon S3 Storage Lens
  ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:DeleteStorageLensConfigurationTagging` action. For more information,
  see [Setting permissions to use Amazon S3 Storage
  Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the *Amazon S3 User Guide*.
  """
  @spec delete_storage_lens_configuration_tagging(
          map(),
          String.t(),
          delete_storage_lens_configuration_tagging_request(),
          list()
        ) ::
          {:ok, delete_storage_lens_configuration_tagging_result(), any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  Deletes an existing S3 Storage Lens group.

  To use this operation, you must have the permission to perform the
  `s3:DeleteStorageLensGroup` action. For more information about the required
  Storage Lens
  Groups permissions, see [Setting account permissions to use S3 Storage Lens groups](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions).

  For information about Storage Lens groups errors, see [List of Amazon S3 Storage Lens error
  codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList).
  """
  @spec delete_storage_lens_group(map(), String.t(), delete_storage_lens_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def delete_storage_lens_group(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/storagelensgroup/#{AWS.Util.encode_uri(name)}"

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
  Retrieves the configuration parameters and status for a Batch Operations job.

  For more
  information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
  in the *Amazon S3 User Guide*.

  ## Definitions

  ### Permissions

  To use the `DescribeJob` operation, you must have permission to perform the
  `s3:DescribeJob` action.

  Related actions include:

    *

  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html) 

    *

  [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

    *

  [UpdateJobPriority](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html) 

    *

  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)
  """
  @spec describe_job(map(), String.t(), String.t(), list()) ::
          {:ok, describe_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_service_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Retrieves the status of an asynchronous request to manage a Multi-Region Access
  Point. For more information
  about managing Multi-Region Access Points and how asynchronous requests work,
  see [Managing Multi-Region Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to `GetMultiRegionAccessPoint`:

    *

  [CreateMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html) 

    *

  [DeleteMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html)

    *

  [GetMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html) 

    *

  [ListMultiRegionAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html)
  """
  @spec describe_multi_region_access_point_operation(map(), String.t(), String.t(), list()) ::
          {:ok, describe_multi_region_access_point_operation_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Dissociates the Amazon Web Services IAM Identity Center instance from the S3
  Access Grants instance.

  ## Definitions

  ### Permissions

  You must have the `s3:DissociateAccessGrantsIdentityCenter` permission to use
  this operation.

  ### Additional Permissions

  You must have the `sso:DeleteApplication` permission to use this operation.
  """
  @spec dissociate_access_grants_identity_center(
          map(),
          dissociate_access_grants_identity_center_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def dissociate_access_grants_identity_center(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/accessgrantsinstance/identitycenter"

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
      200
    )
  end

  @doc """
  Get the details of an access grant from your S3 Access Grants instance.

  ## Definitions

  ### Permissions

  You must have the `s3:GetAccessGrant` permission to use this operation.
  """
  @spec get_access_grant(map(), String.t(), String.t(), list()) ::
          {:ok, get_access_grant_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_access_grant(%Client{} = client, access_grant_id, account_id, options \\ []) do
    url_path = "/v20180820/accessgrantsinstance/grant/#{AWS.Util.encode_uri(access_grant_id)}"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the S3 Access Grants instance for a Region in your account.

  ## Definitions

  ### Permissions

  You must have the `s3:GetAccessGrantsInstance` permission to use this operation.
  """
  @spec get_access_grants_instance(map(), String.t(), list()) ::
          {:ok, get_access_grants_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_access_grants_instance(%Client{} = client, account_id, options \\ []) do
    url_path = "/v20180820/accessgrantsinstance"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve the S3 Access Grants instance that contains a particular prefix.

  ## Definitions

  ### Permissions

  You must have the `s3:GetAccessGrantsInstanceForPrefix` permission for the
  caller account to use this operation.

  ### Additional Permissions

  The prefix owner account must grant you the following permissions to their S3
  Access Grants instance: `s3:GetAccessGrantsInstanceForPrefix`.
  """
  @spec get_access_grants_instance_for_prefix(map(), String.t(), String.t(), list()) ::
          {:ok, get_access_grants_instance_for_prefix_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_access_grants_instance_for_prefix(
        %Client{} = client,
        s3_prefix,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/accessgrantsinstance/prefix"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(s3_prefix) do
        [{"s3prefix", s3_prefix} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the resource policy of the S3 Access Grants instance.

  ## Definitions

  ### Permissions

  You must have the `s3:GetAccessGrantsInstanceResourcePolicy` permission to use
  this operation.
  """
  @spec get_access_grants_instance_resource_policy(map(), String.t(), list()) ::
          {:ok, get_access_grants_instance_resource_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_access_grants_instance_resource_policy(%Client{} = client, account_id, options \\ []) do
    url_path = "/v20180820/accessgrantsinstance/resourcepolicy"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of a particular location registered in your S3 Access
  Grants instance.

  ## Definitions

  ### Permissions

  You must have the `s3:GetAccessGrantsLocation` permission to use this operation.
  """
  @spec get_access_grants_location(map(), String.t(), String.t(), list()) ::
          {:ok, get_access_grants_location_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_access_grants_location(
        %Client{} = client,
        access_grants_location_id,
        account_id,
        options \\ []
      ) do
    url_path =
      "/v20180820/accessgrantsinstance/location/#{AWS.Util.encode_uri(access_grants_location_id)}"

    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

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

  [DeleteAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html) 

    *

  [ListAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html)
  """
  @spec get_access_point(map(), String.t(), String.t(), list()) ::
          {:ok, get_access_point_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Returns configuration for an Object Lambda Access Point.

  The following actions are related to
  `GetAccessPointConfigurationForObjectLambda`:

    *

  [PutAccessPointConfigurationForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointConfigurationForObjectLambda.html)
  """
  @spec get_access_point_configuration_for_object_lambda(map(), String.t(), String.t(), list()) ::
          {:ok, get_access_point_configuration_for_object_lambda_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Returns configuration information about the specified Object Lambda Access Point

  The following actions are related to `GetAccessPointForObjectLambda`:

    *

  [CreateAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html) 

    *

  [DeleteAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html)

    *

  [ListAccessPointsForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html)
  """
  @spec get_access_point_for_object_lambda(map(), String.t(), String.t(), list()) ::
          {:ok, get_access_point_for_object_lambda_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Returns the access point policy associated with the specified access point.

  The following actions are related to `GetAccessPointPolicy`:

    *

  [PutAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html) 

    *

  [DeleteAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html)
  """
  @spec get_access_point_policy(map(), String.t(), String.t(), list()) ::
          {:ok, get_access_point_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Returns the resource policy for an Object Lambda Access Point.

  The following actions are related to
  `GetAccessPointPolicyForObjectLambda`:

    *

  [DeleteAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html) 

    *

  [PutAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html)
  """
  @spec get_access_point_policy_for_object_lambda(map(), String.t(), String.t(), list()) ::
          {:ok, get_access_point_policy_for_object_lambda_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Indicates whether the specified access point currently has a policy that allows
  public access.
  For more information about public access through access points, see [Managing Data Access with Amazon S3
  access
  points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html)
  in the *Amazon S3 User Guide*.
  """
  @spec get_access_point_policy_status(map(), String.t(), String.t(), list()) ::
          {:ok, get_access_point_policy_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Returns the status of the resource policy associated with an Object Lambda
  Access Point.
  """
  @spec get_access_point_policy_status_for_object_lambda(map(), String.t(), String.t(), list()) ::
          {:ok, get_access_point_policy_status_for_object_lambda_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets an Amazon S3 on Outposts bucket.

  For more information, see [ Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the
  *Amazon S3 User Guide*.

  If you are using an identity other than the root user of the Amazon Web Services
  account that owns the
  Outposts bucket, the calling identity must have the `s3-outposts:GetBucket`
  permissions on the specified Outposts bucket and belong to the Outposts bucket
  owner's
  account in order to use this action. Only users from Outposts bucket owner
  account with
  the right permissions can perform actions on an Outposts bucket.

  If you don't have `s3-outposts:GetBucket` permissions or you're not using an
  identity that belongs to the bucket owner's account, Amazon S3 returns a

  ```
  403 Access
  Denied
  ```

  error.

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

  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html) 

    *

  [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html)
  """
  @spec get_bucket(map(), String.t(), String.t(), list()) ::
          {:ok, get_bucket_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This action gets an Amazon S3 on Outposts bucket's lifecycle configuration.

  To get an S3
  bucket's lifecycle configuration, see
  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html) in the *Amazon S3 API Reference*.

  Returns the lifecycle configuration information set on the Outposts bucket. For
  more
  information, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  and for
  information about lifecycle configuration, see [ Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
  in *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3-outposts:GetLifecycleConfiguration` action. The Outposts bucket owner
  has this permission, by default. The bucket owner can grant this permission to
  others. For
  more information about permissions, see [Permissions Related to Bucket Subresource
  Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing Access Permissions to Your Amazon S3
  Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html#API_control_GetBucketLifecycleConfiguration_Examples) section.

  `GetBucketLifecycleConfiguration` has the following special error:

    *
  Error code: `NoSuchLifecycleConfiguration`

      *
  Description: The lifecycle configuration does not exist.

      *
  HTTP Status Code: 404 Not Found

      *
  SOAP Fault Code Prefix: Client

  The following actions are related to
  `GetBucketLifecycleConfiguration`:

    *

  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html)

    *

  [DeleteBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html)
  """
  @spec get_bucket_lifecycle_configuration(map(), String.t(), String.t(), list()) ::
          {:ok, get_bucket_lifecycle_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This action gets a bucket policy for an Amazon S3 on Outposts bucket.

  To get a policy for
  an S3 bucket, see
  [GetBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicy.html) in the
  *Amazon S3 API Reference*.

  Returns the policy of a specified Outposts bucket. For more information, see
  [Using
  Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the *Amazon S3 User Guide*.

  If you are using an identity other than the root user of the Amazon Web Services
  account that owns the
  bucket, the calling identity must have the `GetBucketPolicy` permissions on the
  specified bucket and belong to the bucket owner's account in order to use this
  action.

  Only users from Outposts bucket owner account with the right permissions can
  perform
  actions on an Outposts bucket. If you don't have `s3-outposts:GetBucketPolicy`
  permissions or you're not using an identity that belongs to the bucket owner's
  account,
  Amazon S3 returns a `403 Access Denied` error.

  As a security precaution, the root user of the Amazon Web Services account that
  owns a bucket can
  always use this action, even if the policy explicitly denies the root user the
  ability
  to perform this action.

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

  [PutBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html) 

    *

  [DeleteBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html)
  """
  @spec get_bucket_policy(map(), String.t(), String.t(), list()) ::
          {:ok, get_bucket_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation gets an Amazon S3 on Outposts bucket's replication configuration.

  To get an
  S3 bucket's replication configuration, see
  [GetBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketReplication.html) in the *Amazon S3 API Reference*.

  Returns the replication configuration of an S3 on Outposts bucket. For more
  information
  about S3 on Outposts, see [Using Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the
  *Amazon S3 User Guide*. For information about S3 replication on Outposts
  configuration, see [Replicating objects for S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html)
  in the *Amazon S3 User Guide*.

  It can take a while to propagate `PUT` or `DELETE` requests for
  a replication configuration to all S3 on Outposts systems. Therefore, the
  replication
  configuration that's returned by a `GET` request soon after a
  `PUT` or `DELETE` request might return a more recent result
  than what's on the Outpost. If an Outpost is offline, the delay in updating the
  replication configuration on that Outpost can be significant.

  This action requires permissions for the
  `s3-outposts:GetReplicationConfiguration` action. The Outposts bucket owner
  has this permission by default and can grant it to others. For more information
  about
  permissions, see [Setting up IAM with S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html)
  and [Managing access to S3 on Outposts
  bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html)
  in the *Amazon S3 User Guide*.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html#API_control_GetBucketReplication_Examples) section.

  If you include the `Filter` element in a replication configuration, you must
  also include the `DeleteMarkerReplication`, `Status`, and
  `Priority` elements. The response also returns those elements.

  For information about S3 on Outposts replication failure reasons, see
  [Replication failure
  reasons](https://docs.aws.amazon.com/AmazonS3/latest/userguide/outposts-replication-eventbridge.html#outposts-replication-failure-codes)
  in the *Amazon S3 User Guide*.

  The following operations are related to `GetBucketReplication`:

    *

  [PutBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html) 

    *

  [DeleteBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html)
  """
  @spec get_bucket_replication(map(), String.t(), String.t(), list()) ::
          {:ok, get_bucket_replication_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This action gets an Amazon S3 on Outposts bucket's tags.

  To get an S3 bucket tags, see
  [GetBucketTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html) in the *Amazon S3 API Reference*.

  Returns the tag set associated with the Outposts bucket. For more information,
  see
  [Using
  Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `GetBucketTagging` action. By default, the bucket owner has this permission
  and can grant this permission to others.

  `GetBucketTagging` has the following special error:

    *
  Error code: `NoSuchTagSetError`

      *
  Description: There is no tag set associated with the bucket.

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
  @spec get_bucket_tagging(map(), String.t(), String.t(), list()) ::
          {:ok, get_bucket_tagging_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation returns the versioning state
  for
  S3 on Outposts
  buckets
  only.

  To return the versioning state for an S3 bucket, see
  [GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html) in the *Amazon S3 API Reference*.

  Returns the versioning state for an S3 on Outposts bucket. With
  S3
  Versioning,
  you can save multiple distinct copies of your
  objects
  and recover from unintended user actions and application failures.

  If you've never set versioning on your bucket, it has no versioning state. In
  that case,
  the `GetBucketVersioning` request does not return a versioning state
  value.

  For more information about versioning, see
  [Versioning](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html)
  in the *Amazon S3
  User Guide*.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html#API_control_GetBucketVersioning_Examples) section.

  The following operations are related to `GetBucketVersioning` for
  S3 on Outposts.

    *

  [PutBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html)

    *

  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html) 

    *

  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)
  """
  @spec get_bucket_versioning(map(), String.t(), String.t(), list()) ::
          {:ok, get_bucket_versioning_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a temporary access credential from S3 Access Grants to the grantee or
  client application.

  The [temporary credential](https://docs.aws.amazon.com/STS/latest/APIReference/API_Credentials.html)
  is an Amazon Web Services STS token that grants them access to the S3 data.

  ## Definitions

  ### Permissions

  You must have the `s3:GetDataAccess` permission to use this operation.

  ### Additional Permissions

  The IAM role that S3 Access Grants assumes must have the following permissions
  specified in the trust policy when registering the location: `sts:AssumeRole`,
  for directory users or groups `sts:SetContext`, and for IAM users or roles
  `sts:SourceIdentity`.
  """
  @spec get_data_access(
          map(),
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, get_data_access_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_data_access(
        %Client{} = client,
        duration_seconds \\ nil,
        permission,
        privilege \\ nil,
        target,
        target_type \\ nil,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/accessgrantsinstance/dataaccess"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(target_type) do
        [{"targetType", target_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(target) do
        [{"target", target} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(privilege) do
        [{"privilege", privilege} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(permission) do
        [{"permission", permission} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(duration_seconds) do
        [{"durationSeconds", duration_seconds} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the tags on an S3 Batch Operations job.

  ## Definitions

  ### Permissions

  To use the
  `GetJobTagging` operation, you must have permission to
  perform the `s3:GetJobTagging` action. For more information, see [Controlling access and labeling jobs using
  tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
  in the
  *Amazon S3 User Guide*.

  Related actions include:

    *

  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html) 

    *

  [PutJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html)

    *

  [DeleteJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html)
  """
  @spec get_job_tagging(map(), String.t(), String.t(), list()) ::
          {:ok, get_job_tagging_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Returns configuration information about the specified Multi-Region Access Point.

  This action will always be routed to the US West (Oregon) Region. For more
  information
  about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to `GetMultiRegionAccessPoint`:

    *

  [CreateMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html) 

    *

  [DeleteMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html)

    *

  [DescribeMultiRegionAccessPointOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html) 

    *

  [ListMultiRegionAccessPoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html)
  """
  @spec get_multi_region_access_point(map(), String.t(), String.t(), list()) ::
          {:ok, get_multi_region_access_point_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Returns the access control policy of the specified Multi-Region Access Point.

  This action will always be routed to the US West (Oregon) Region. For more
  information
  about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to
  `GetMultiRegionAccessPointPolicy`:

    *

  [GetMultiRegionAccessPointPolicyStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html) 

    *

  [PutMultiRegionAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html)
  """
  @spec get_multi_region_access_point_policy(map(), String.t(), String.t(), list()) ::
          {:ok, get_multi_region_access_point_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Indicates whether the specified Multi-Region Access Point has an access control
  policy that allows public
  access.

  This action will always be routed to the US West (Oregon) Region. For more
  information
  about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to
  `GetMultiRegionAccessPointPolicyStatus`:

    *

  [GetMultiRegionAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html) 

    *

  [PutMultiRegionAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html)
  """
  @spec get_multi_region_access_point_policy_status(map(), String.t(), String.t(), list()) ::
          {:ok, get_multi_region_access_point_policy_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Returns the routing configuration for a Multi-Region Access Point, indicating
  which Regions are active or
  passive.

  To obtain routing control changes and failover requests, use the Amazon S3
  failover control
  infrastructure endpoints in these five Amazon Web Services Regions:

    *

  `us-east-1`

    *

  `us-west-2`

    *

  `ap-southeast-2`

    *

  `ap-northeast-1`

    *

  `eu-west-1`

  Your Amazon S3 bucket does not need to be in these five Regions.
  """
  @spec get_multi_region_access_point_routes(map(), String.t(), String.t(), list()) ::
          {:ok, get_multi_region_access_point_routes_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Retrieves the `PublicAccessBlock` configuration for an Amazon Web Services
  account. For
  more information, see [ Using Amazon S3 block public
  access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

  Related actions include:

    *

  [DeletePublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html) 

    *

  [PutPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html)
  """
  @spec get_public_access_block(map(), String.t(), list()) ::
          {:ok, get_public_access_block_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, no_such_public_access_block_configuration()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Gets the Amazon S3 Storage Lens configuration. For more information, see
  [Assessing your storage activity and usage with Amazon S3 Storage Lens
  ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*. For a complete list of S3 Storage Lens metrics, see [S3 Storage Lens metrics
  glossary](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html)
  in the *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:GetStorageLensConfiguration` action. For more information, see [Setting permissions to use Amazon S3 Storage
  Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the
  *Amazon S3 User Guide*.
  """
  @spec get_storage_lens_configuration(map(), String.t(), String.t(), list()) ::
          {:ok, get_storage_lens_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Gets the tags of Amazon S3 Storage Lens configuration. For more information
  about S3 Storage Lens, see
  [Assessing your storage activity and usage with Amazon S3 Storage Lens
  ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:GetStorageLensConfigurationTagging` action. For more information, see
  [Setting permissions to use Amazon S3 Storage
  Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the *Amazon S3 User Guide*.
  """
  @spec get_storage_lens_configuration_tagging(map(), String.t(), String.t(), list()) ::
          {:ok, get_storage_lens_configuration_tagging_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Retrieves the Storage Lens group configuration details.

  To use this operation, you must have the permission to perform the
  `s3:GetStorageLensGroup` action. For more information about the required Storage
  Lens
  Groups permissions, see [Setting account permissions to use S3 Storage Lens groups](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions).

  For information about Storage Lens groups errors, see [List of Amazon S3 Storage Lens error
  codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList).
  """
  @spec get_storage_lens_group(map(), String.t(), String.t(), list()) ::
          {:ok, get_storage_lens_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_storage_lens_group(%Client{} = client, name, account_id, options \\ []) do
    url_path = "/v20180820/storagelensgroup/#{AWS.Util.encode_uri(name)}"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the list of access grants in your S3 Access Grants instance.

  ## Definitions

  ### Permissions

  You must have the `s3:ListAccessGrants` permission to use this operation.
  """
  @spec list_access_grants(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_access_grants_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_access_grants(
        %Client{} = client,
        application_arn \\ nil,
        grant_scope \\ nil,
        grantee_identifier \\ nil,
        grantee_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        permission \\ nil,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/accessgrantsinstance/grants"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(permission) do
        [{"permission", permission} | query_params]
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
      if !is_nil(grantee_type) do
        [{"granteetype", grantee_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(grantee_identifier) do
        [{"granteeidentifier", grantee_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(grant_scope) do
        [{"grantscope", grant_scope} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(application_arn) do
        [{"application_arn", application_arn} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of S3 Access Grants instances.

  An S3 Access Grants instance serves as a logical grouping for your individual
  access grants. You can only have one S3 Access Grants instance per Region per
  account.

  ## Definitions

  ### Permissions

  You must have the `s3:ListAccessGrantsInstances` permission to use this
  operation.
  """
  @spec list_access_grants_instances(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_access_grants_instances_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_access_grants_instances(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/accessgrantsinstances"
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the locations registered in your S3 Access Grants instance.

  ## Definitions

  ### Permissions

  You must have the `s3:ListAccessGrantsLocations` permission to use this
  operation.
  """
  @spec list_access_grants_locations(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_access_grants_locations_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_access_grants_locations(
        %Client{} = client,
        location_scope \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        account_id,
        options \\ []
      ) do
    url_path = "/v20180820/accessgrantsinstance/locations"
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
      if !is_nil(location_scope) do
        [{"locationscope", location_scope} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Returns a list of the access points
  that are
  owned by the current account
  that's
  associated with the specified bucket. You can retrieve up to 1000 access points
  per call. If the specified bucket has more than 1,000 access points (or the
  number specified in
  `maxResults`, whichever is less), the response will include a continuation
  token that you can use to list the additional access points.

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

  [DeleteAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html) 

    *

  [GetAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html)
  """
  @spec list_access_points(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_access_points_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Returns some or all (up to 1,000) access points associated with the Object
  Lambda Access Point per call. If there
  are more access points than what can be returned in one call, the response will
  include a
  continuation token that you can use to list the additional access points.

  The following actions are related to
  `ListAccessPointsForObjectLambda`:

    *

  [CreateAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html) 

    *

  [DeleteAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html)

    *

  [GetAccessPointForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html)
  """
  @spec list_access_points_for_object_lambda(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_access_points_for_object_lambda_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists current S3 Batch Operations jobs as well as the jobs that have ended
  within the last 30 days for
  the Amazon Web Services account making the request.

  For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
  in the
  *Amazon S3 User Guide*.

  ## Definitions

  ### Permissions

  To use the
  `ListJobs` operation, you must have permission to
  perform the `s3:ListJobs` action.

  Related actions include:

    *

  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html) 

    *

  [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html)

    *

  [UpdateJobPriority](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html) 

    *

  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)
  """
  @spec list_jobs(map(), String.t() | nil, String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_jobs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, invalid_request_exception()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Returns a list of the Multi-Region Access Points currently associated with the
  specified Amazon Web Services account.
  Each call can return up to 100 Multi-Region Access Points, the maximum number of
  Multi-Region Access Points that can be
  associated with a single account.

  This action will always be routed to the US West (Oregon) Region. For more
  information
  about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to `ListMultiRegionAccessPoint`:

    *

  [CreateMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html) 

    *

  [DeleteMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html)

    *

  [DescribeMultiRegionAccessPointOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html) 

    *

  [GetMultiRegionAccessPoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html)
  """
  @spec list_multi_region_access_points(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_multi_region_access_points_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Returns a list of all Outposts buckets in an Outpost that are owned by the
  authenticated
  sender of the request. For more information, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the
  *Amazon S3 User Guide*.

  For an example of the request syntax for Amazon S3 on Outposts that uses the S3
  on Outposts
  endpoint hostname prefix and `x-amz-outpost-id` in your request, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListRegionalBuckets.html#API_control_ListRegionalBuckets_Examples)
  section.
  """
  @spec list_regional_buckets(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, list_regional_buckets_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Gets a list of Amazon S3 Storage Lens configurations. For more information about
  S3 Storage Lens, see
  [Assessing your storage activity and usage with Amazon S3 Storage Lens
  ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:ListStorageLensConfigurations` action. For more information, see
  [Setting permissions to use Amazon S3 Storage
  Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the *Amazon S3 User Guide*.
  """
  @spec list_storage_lens_configurations(map(), String.t() | nil, String.t(), list()) ::
          {:ok, list_storage_lens_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Lists all the Storage Lens groups in the specified home Region.

  To use this operation, you must have the permission to perform the
  `s3:ListStorageLensGroups` action. For more information about the required
  Storage Lens
  Groups permissions, see [Setting account permissions to use S3 Storage Lens groups](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions).

  For information about Storage Lens groups errors, see [List of Amazon S3 Storage Lens error
  codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList).
  """
  @spec list_storage_lens_groups(map(), String.t() | nil, String.t(), list()) ::
          {:ok, list_storage_lens_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_storage_lens_groups(%Client{} = client, next_token \\ nil, account_id, options \\ []) do
    url_path = "/v20180820/storagelensgroup"
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation allows you to list all the Amazon Web Services resource tags for
  a specified resource.

  Each tag is a label consisting of a user-defined key and value. Tags can help
  you manage, identify, organize, search for, and filter resources.

  ## Definitions

  ### Permissions

  You must have the `s3:ListTagsForResource` permission to use this operation.

  This operation is only supported for [S3 Storage Lens groups](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups.html)
  and for [S3 Access Grants](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-tagging.html).
  The tagged resource can be an S3 Storage Lens group or S3 Access Grants
  instance, registered location, or grant.

  For more information about the required Storage Lens
  Groups permissions, see [Setting account permissions to use S3 Storage Lens groups](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions).

  For information about S3 Tagging errors, see [List of Amazon S3 Tagging error codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3TaggingErrorCodeList).
  """
  @spec list_tags_for_resource(map(), String.t(), String.t(), list()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_tags_for_resource(%Client{} = client, resource_arn, account_id, options \\ []) do
    url_path = "/v20180820/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"
    headers = []

    headers =
      if !is_nil(account_id) do
        [{"x-amz-account-id", account_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Updates the resource policy of the S3 Access Grants instance.

  ## Definitions

  ### Permissions

  You must have the `s3:PutAccessGrantsInstanceResourcePolicy` permission to use
  this operation.
  """
  @spec put_access_grants_instance_resource_policy(
          map(),
          put_access_grants_instance_resource_policy_request(),
          list()
        ) ::
          {:ok, put_access_grants_instance_resource_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def put_access_grants_instance_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/accessgrantsinstance/resourcepolicy"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Replaces configuration for an Object Lambda Access Point.

  The following actions are related to
  `PutAccessPointConfigurationForObjectLambda`:

    *

  [GetAccessPointConfigurationForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointConfigurationForObjectLambda.html)
  """
  @spec put_access_point_configuration_for_object_lambda(
          map(),
          String.t(),
          put_access_point_configuration_for_object_lambda_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Associates an access policy with the specified access point. Each access point
  can have only one policy,
  so a request made to this API replaces any existing policy associated with the
  specified
  access point.

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
  @spec put_access_point_policy(map(), String.t(), put_access_point_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def put_access_point_policy(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/accesspoint/#{AWS.Util.encode_uri(name)}/policy"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Creates or replaces resource policy for an Object Lambda Access Point. For an
  example policy, see [Creating Object Lambda Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-create.html#olap-create-cli)
  in the *Amazon S3 User Guide*.

  The following actions are related to
  `PutAccessPointPolicyForObjectLambda`:

    *

  [DeleteAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html) 

    *

  [GetAccessPointPolicyForObjectLambda](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html)
  """
  @spec put_access_point_policy_for_object_lambda(
          map(),
          String.t(),
          put_access_point_policy_for_object_lambda_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def put_access_point_policy_for_object_lambda(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/accesspointforobjectlambda/#{AWS.Util.encode_uri(name)}/policy"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This action puts a lifecycle configuration to an Amazon S3 on Outposts bucket.

  To put a
  lifecycle configuration to an S3 bucket, see
  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html) in the *Amazon S3 API Reference*.

  Creates a new lifecycle configuration for the S3 on Outposts bucket or replaces
  an
  existing lifecycle configuration. Outposts buckets only support lifecycle
  configurations
  that delete/expire objects after a certain period of time and abort incomplete
  multipart
  uploads.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html#API_control_PutBucketLifecycleConfiguration_Examples)
  section.

  The following actions are related to
  `PutBucketLifecycleConfiguration`:

    *

  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html) 

    *

  [DeleteBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html)
  """
  @spec put_bucket_lifecycle_configuration(
          map(),
          String.t(),
          put_bucket_lifecycle_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def put_bucket_lifecycle_configuration(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/lifecycleconfiguration"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This action puts a bucket policy to an Amazon S3 on Outposts bucket.

  To put a policy on an
  S3 bucket, see
  [PutBucketPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketPolicy.html) in the
  *Amazon S3 API Reference*.

  Applies an Amazon S3 bucket policy to an Outposts bucket. For more information,
  see [Using
  Amazon S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
  in the *Amazon S3 User Guide*.

  If you are using an identity other than the root user of the Amazon Web Services
  account that owns the
  Outposts bucket, the calling identity must have the `PutBucketPolicy`
  permissions on the specified Outposts bucket and belong to the bucket owner's
  account in
  order to use this action.

  If you don't have `PutBucketPolicy` permissions, Amazon S3 returns a

  ```
  403
  Access Denied
  ```

  error. If you have the correct permissions, but you're not using an
  identity that belongs to the bucket owner's account, Amazon S3 returns a

  ```
  405 Method Not
  Allowed
  ```

  error.

  As a security precaution, the root user of the Amazon Web Services account that
  owns a bucket can
  always use this action, even if the policy explicitly denies the root user the
  ability
  to perform this action.

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
  @spec put_bucket_policy(map(), String.t(), put_bucket_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This action creates an Amazon S3 on Outposts bucket's replication configuration.

  To create
  an S3 bucket's replication configuration, see
  [PutBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html) in the *Amazon S3 API Reference*.

  Creates a replication configuration or replaces an existing one. For information
  about
  S3 replication on Outposts configuration, see [Replicating objects for
  S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html)
  in the *Amazon S3 User Guide*.

  It can take a while to propagate `PUT` or `DELETE` requests for
  a replication configuration to all S3 on Outposts systems. Therefore, the
  replication
  configuration that's returned by a `GET` request soon after a
  `PUT` or `DELETE` request might return a more recent result
  than what's on the Outpost. If an Outpost is offline, the delay in updating the
  replication configuration on that Outpost can be significant.

  Specify the replication configuration in the request body. In the replication
  configuration, you provide the following information:

    *
  The name of the destination bucket or buckets where you want S3 on Outposts to
  replicate objects

    *
  The Identity and Access Management (IAM) role that S3 on Outposts can assume to
  replicate objects on
  your behalf

    *
  Other relevant information, such as replication rules

  A replication configuration must include at least one rule and can contain a
  maximum of
  100. Each rule identifies a subset of objects to replicate by filtering the
  objects in the
  source Outposts bucket. To choose additional subsets of objects to replicate,
  add a rule
  for each subset.

  To specify a subset of the objects in the source Outposts bucket to apply a
  replication
  rule to, add the `Filter` element as a child of the `Rule` element.
  You can filter objects based on an object key prefix, one or more object tags,
  or both.
  When you add the `Filter` element in the configuration, you must also add the
  following elements: `DeleteMarkerReplication`, `Status`, and
  `Priority`.

  Using `PutBucketReplication` on Outposts requires that both the source and
  destination buckets must have versioning enabled. For information about enabling
  versioning
  on a bucket, see [Managing S3 Versioning for your S3 on Outposts
  bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsManagingVersioning.html).

  For information about S3 on Outposts replication failure reasons, see
  [Replication failure reasons](https://docs.aws.amazon.com/AmazonS3/latest/userguide/outposts-replication-eventbridge.html#outposts-replication-failure-codes)
  in the *Amazon S3 User Guide*.

  ## Handling Replication of Encrypted Objects

  Outposts buckets are encrypted at all times. All the objects in the source
  Outposts
  bucket are encrypted and can be replicated. Also, all the replicas in the
  destination
  Outposts bucket are encrypted with the same encryption key as the objects in the
  source
  Outposts bucket.

  ## Permissions

  To create a `PutBucketReplication` request, you must have
  `s3-outposts:PutReplicationConfiguration` permissions for the bucket. The
  Outposts bucket owner has this permission by default and can grant it to others.
  For more
  information about permissions, see [Setting up IAM with S3 on
  Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html)
  and [Managing access to S3 on Outposts
  buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html).

  To perform this operation, the user or role must also have the
  `iam:CreateRole` and `iam:PassRole` permissions. For more
  information, see [Granting a user permissions to pass a role to an Amazon Web Services
  service](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html).

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html#API_control_PutBucketReplication_Examples) section.

  The following operations are related to `PutBucketReplication`:

    *

  [GetBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html)

    *

  [DeleteBucketReplication](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html)
  """
  @spec put_bucket_replication(map(), String.t(), put_bucket_replication_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def put_bucket_replication(%Client{} = client, bucket, input, options \\ []) do
    url_path = "/v20180820/bucket/#{AWS.Util.encode_uri(bucket)}/replication"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
  structure. To do this,
  sign up to get your Amazon Web Services account bill with tag key values
  included. Then, to see the cost
  of combined resources, organize your billing information according to resources
  with the
  same tag key values. For example, you can tag several resources with a specific
  application
  name, and then organize your billing information to see the total cost of that
  application
  across several services. For more information, see [Cost allocation and tagging](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html).

  Within a bucket, if you add a tag that has the same key as an existing tag, the
  new
  value overwrites the old value. For more information, see [ Using cost allocation in Amazon S3
  bucket
  tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html).

  To use this action, you must have permissions to perform the
  `s3-outposts:PutBucketTagging` action. The Outposts bucket owner has this
  permission by default and can grant this permission to others. For more
  information about
  permissions, see [ Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
  and [Managing access permissions to your Amazon S3
  resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

  `PutBucketTagging` has the following special errors:

    *
  Error code: `InvalidTagError`

      *
  Description: The tag provided was not a valid tag. This error can occur if
  the tag did not pass input validation. For information about tag restrictions,
  see [
  User-Defined Tag
  Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
  and [
  Amazon Web Services-Generated Cost Allocation Tag
  Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/aws-tag-restrictions.html).

    *
  Error code: `MalformedXMLError`

      *
  Description: The XML provided does not match the schema.

    *
  Error code: `OperationAbortedError `

      *
  Description: A conflicting conditional action is currently in progress
  against this resource. Try again.

    *
  Error code: `InternalError`

      *
  Description: The service was unable to apply the provided tag to the
  bucket.

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
  @spec put_bucket_tagging(map(), String.t(), put_bucket_tagging_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This operation sets the versioning state
  for
  S3 on Outposts
  buckets
  only.

  To set the versioning state for an S3 bucket, see
  [PutBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html) in the *Amazon S3 API Reference*.

  Sets the versioning state for an S3 on Outposts bucket. With
  S3
  Versioning,
  you can save multiple distinct copies of your
  objects
  and recover from unintended user actions and application failures.

  You can set the versioning state to one of the following:

    *

  **Enabled** - Enables versioning for the objects in
  the bucket. All objects added to the bucket receive a unique version ID.

    *

  **Suspended** - Suspends versioning for the objects
  in the bucket. All objects added to the bucket receive the version ID
  `null`.

  If you've never set versioning on your bucket, it has no versioning state. In
  that case,
  a [
  GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html)
  request does not return a versioning state value.

  When you enable S3 Versioning, for each object in your bucket, you have a
  current
  version and zero or more noncurrent versions. You can configure your bucket S3
  Lifecycle
  rules to expire noncurrent versions after a specified time period. For more
  information,
  see [ Creating and managing a lifecycle configuration for your S3 on Outposts
  bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsLifecycleManaging.html)
  in the *Amazon S3
  User Guide*.

  If you have an object expiration lifecycle configuration in your non-versioned
  bucket
  and you want to maintain the same permanent delete behavior when you enable
  versioning, you
  must add a noncurrent expiration policy. The noncurrent expiration lifecycle
  configuration
  will manage the deletes of the noncurrent object versions in the version-enabled
  bucket.
  For more information, see
  [Versioning](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html) in the *Amazon S3
  User Guide*.

  All Amazon S3 on Outposts REST API requests for this action require an
  additional parameter of `x-amz-outpost-id` to be passed with the request. In
  addition, you must use an S3 on Outposts endpoint hostname prefix instead of
  `s3-control`. For an example of the request syntax for Amazon S3 on Outposts
  that uses the S3 on Outposts endpoint hostname prefix and the `x-amz-outpost-id`
  derived by using the access point ARN, see the
  [Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html#API_control_PutBucketVersioning_Examples)
  section.

  The following operations are related to `PutBucketVersioning` for
  S3 on Outposts.

    *

  [GetBucketVersioning](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html) 

    *

  [PutBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html)

    *

  [GetBucketLifecycleConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html)
  """
  @spec put_bucket_versioning(map(), String.t(), put_bucket_versioning_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Sets the supplied tag-set on an S3 Batch Operations job.

  A tag is a key-value pair. You can associate S3 Batch Operations tags with any
  job by sending
  a PUT request against the tagging subresource that is associated with the job.
  To modify
  the existing tag set, you can either replace the existing tag set entirely, or
  make changes
  within the existing tag set by retrieving the existing tag set using
  [GetJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html), modify that tag set, and use this operation to replace the tag set
  with the one you modified. For more information, see [Controlling
  access and labeling jobs using
  tags](https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags)
  in the *Amazon S3 User Guide*.

    
  If you send this request with an empty tag set, Amazon S3 deletes the existing
  tag set on the Batch Operations job. If you use this method, you are charged for
  a Tier
  1 Request (PUT). For more information, see [Amazon S3 pricing](http://aws.amazon.com/s3/pricing/).

    
  For deleting existing tags for your Batch Operations job, a
  [DeleteJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html) request is preferred because it achieves the same
  result without incurring charges.

    
  A few things to consider about using tags:

      
  Amazon S3 limits the maximum number of tags to 50 tags per job.

      
  You can associate up to 50 tags with a job as long as they have unique
  tag keys.

      
  A tag key can be up to 128 Unicode characters in length, and tag values
  can be up to 256 Unicode characters in length.

      
  The key and values are case sensitive.

      
  For tagging-related restrictions related to characters and encodings, see
  [User-Defined Tag
  Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
  in the *Billing and Cost Management User Guide*.

  ## Definitions

  ### Permissions

  To use the
  `PutJobTagging` operation, you must have permission to
  perform the `s3:PutJobTagging` action.

  Related actions include:

    *

  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html) 

    *

  [GetJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html)

    *

  [DeleteJobTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html)
  """
  @spec put_job_tagging(map(), String.t(), put_job_tagging_request(), list()) ::
          {:ok, put_job_tagging_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, too_many_tags_exception()}
  def put_job_tagging(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/v20180820/jobs/#{AWS.Util.encode_uri(job_id)}/tagging"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Associates an access control policy with the specified Multi-Region Access
  Point. Each Multi-Region Access Point can have only
  one policy, so a request made to this action replaces any existing policy that
  is
  associated with the specified Multi-Region Access Point.

  This action will always be routed to the US West (Oregon) Region. For more
  information
  about the restrictions around managing Multi-Region Access Points, see [Managing Multi-Region Access
  Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html)
  in the *Amazon S3 User Guide*.

  The following actions are related to
  `PutMultiRegionAccessPointPolicy`:

    *

  [GetMultiRegionAccessPointPolicy](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html) 

    *

  [GetMultiRegionAccessPointPolicyStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html)
  """
  @spec put_multi_region_access_point_policy(
          map(),
          put_multi_region_access_point_policy_request(),
          list()
        ) ::
          {:ok, put_multi_region_access_point_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  This operation is not supported by directory buckets.

  Creates or modifies the `PublicAccessBlock` configuration for an
  Amazon Web Services account. For this operation, users must have the
  `s3:PutAccountPublicAccessBlock` permission. For more information, see [
  Using Amazon S3 block public
  access](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).

  Related actions include:

    *

  [GetPublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html) 

    *

  [DeletePublicAccessBlock](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html)
  """
  @spec put_public_access_block(map(), put_public_access_block_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def put_public_access_block(%Client{} = client, input, options \\ []) do
    url_path = "/v20180820/configuration/publicAccessBlock"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Puts an Amazon S3 Storage Lens configuration. For more information about S3
  Storage Lens, see [Working with Amazon S3 Storage
  Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*. For a complete list of S3 Storage Lens metrics, see [S3 Storage Lens metrics
  glossary](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html)
  in the *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:PutStorageLensConfiguration` action. For more information, see [Setting permissions to use Amazon S3 Storage
  Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the
  *Amazon S3 User Guide*.
  """
  @spec put_storage_lens_configuration(
          map(),
          String.t(),
          put_storage_lens_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def put_storage_lens_configuration(%Client{} = client, config_id, input, options \\ []) do
    url_path = "/v20180820/storagelens/#{AWS.Util.encode_uri(config_id)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Put or replace tags on an existing Amazon S3 Storage Lens configuration. For
  more information
  about S3 Storage Lens, see [Assessing your storage activity and usage with Amazon S3 Storage Lens
  ](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html) in the
  *Amazon S3 User Guide*.

  To use this action, you must have permission to perform the
  `s3:PutStorageLensConfigurationTagging` action. For more information, see
  [Setting permissions to use Amazon S3 Storage
  Lens](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html)
  in the *Amazon S3 User Guide*.
  """
  @spec put_storage_lens_configuration_tagging(
          map(),
          String.t(),
          put_storage_lens_configuration_tagging_request(),
          list()
        ) ::
          {:ok, put_storage_lens_configuration_tagging_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def put_storage_lens_configuration_tagging(%Client{} = client, config_id, input, options \\ []) do
    url_path = "/v20180820/storagelens/#{AWS.Util.encode_uri(config_id)}/tagging"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  This operation is not supported by directory buckets.

  Submits an updated route configuration for a Multi-Region Access Point. This API
  operation updates the
  routing status for the specified Regions from active to passive, or from passive
  to active.
  A value of `0` indicates a passive status, which means that traffic won't be
  routed to the specified Region. A value of `100` indicates an active status,
  which means that traffic will be routed to the specified Region. At least one
  Region must
  be active at all times.

  When the routing configuration is changed, any in-progress operations (uploads,
  copies,
  deletes, and so on) to formerly active Regions will continue to run to their
  final
  completion state (success or failure). The routing configurations of any Regions
  that
  aren’t specified remain unchanged.

  Updated routing configurations might not be immediately applied. It can take up
  to 2
  minutes for your changes to take effect.

  To submit routing control changes and failover requests, use the Amazon S3
  failover control
  infrastructure endpoints in these five Amazon Web Services Regions:

    *

  `us-east-1`

    *

  `us-west-2`

    *

  `ap-southeast-2`

    *

  `ap-northeast-1`

    *

  `eu-west-1`

  Your Amazon S3 bucket does not need to be in these five Regions.
  """
  @spec submit_multi_region_access_point_routes(
          map(),
          String.t(),
          submit_multi_region_access_point_routes_request(),
          list()
        ) ::
          {:ok, submit_multi_region_access_point_routes_result(), any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """
  Creates a new Amazon Web Services resource tag or updates an existing resource
  tag.

  Each tag is a label consisting of a user-defined key and value. Tags can help
  you manage, identify, organize, search for, and filter resources. You can add up
  to 50 Amazon Web Services resource tags for each S3 resource.

  This operation is only supported for [S3 Storage Lens groups](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups.html)
  and for [S3 Access Grants](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-tagging.html).
  The tagged resource can be an S3 Storage Lens group or S3 Access Grants
  instance, registered location, or grant.

  ## Definitions

  ### Permissions

  You must have the `s3:TagResource` permission to use this operation.

  For more information about the required Storage Lens
  Groups permissions, see [Setting account permissions to use S3 Storage Lens groups](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions).

  For information about S3 Tagging errors, see [List of Amazon S3 Tagging error codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3TaggingErrorCodeList).
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v20180820/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"

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
      204
    )
  end

  @doc """
  This operation removes the specified Amazon Web Services resource tags from an
  S3 resource.

  Each tag is a label consisting of a user-defined key and value. Tags can help
  you manage, identify, organize, search for, and filter resources.

  This operation is only supported for [S3 Storage Lens groups](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups.html)
  and for [S3 Access Grants](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-tagging.html).
  The tagged resource can be an S3 Storage Lens group or S3 Access Grants
  instance, registered location, or grant.

  ## Definitions

  ### Permissions

  You must have the `s3:UntagResource` permission to use this operation.

  For more information about the required Storage
  Lens Groups permissions, see [Setting account permissions to use S3 Storage Lens groups](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions).

  For information about S3 Tagging errors, see [List of Amazon S3 Tagging error
  codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3TaggingErrorCodeList).
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v20180820/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
  Updates the IAM role of a registered location in your S3 Access Grants instance.

  ## Definitions

  ### Permissions

  You must have the `s3:UpdateAccessGrantsLocation` permission to use this
  operation.

  ### Additional Permissions

  You must also have the following permission: `iam:PassRole`
  """
  @spec update_access_grants_location(
          map(),
          String.t(),
          update_access_grants_location_request(),
          list()
        ) ::
          {:ok, update_access_grants_location_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def update_access_grants_location(
        %Client{} = client,
        access_grants_location_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v20180820/accessgrantsinstance/location/#{AWS.Util.encode_uri(access_grants_location_id)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing S3 Batch Operations job's priority.

  For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
  in the *Amazon S3 User Guide*.

  ## Definitions

  ### Permissions

  To use the
  `UpdateJobPriority` operation, you must have permission to
  perform the `s3:UpdateJobPriority` action.

  Related actions include:

    *

  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html) 

    *

  [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

    *

  [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html) 

    *

  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)
  """
  @spec update_job_priority(map(), String.t(), update_job_priority_request(), list()) ::
          {:ok, update_job_priority_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_service_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
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
      200
    )
  end

  @doc """
  Updates the status for the specified job.

  Use this operation to confirm that you want to
  run a job or to cancel an existing job. For more information, see [S3 Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
  in the *Amazon S3 User Guide*.

  ## Definitions

  ### Permissions

  To use the
  `UpdateJobStatus` operation, you must have permission to
  perform the `s3:UpdateJobStatus` action.

  Related actions include:

    *

  [CreateJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html) 

    *

  [ListJobs](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html)

    *

  [DescribeJob](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html) 

    *

  [UpdateJobStatus](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html)
  """
  @spec update_job_status(map(), String.t(), update_job_status_request(), list()) ::
          {:ok, update_job_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_service_exception()}
          | {:error, job_status_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
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
      200
    )
  end

  @doc """

  Updates the existing Storage Lens group.

  To use this operation, you must have the permission to perform the
  `s3:UpdateStorageLensGroup` action. For more information about the required
  Storage Lens
  Groups permissions, see [Setting account permissions to use S3 Storage Lens groups](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions).

  For information about Storage Lens groups errors, see [List of Amazon S3 Storage Lens error
  codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList).
  """
  @spec update_storage_lens_group(map(), String.t(), update_storage_lens_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def update_storage_lens_group(%Client{} = client, name, input, options \\ []) do
    url_path = "/v20180820/storagelensgroup/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"AccountId", "x-amz-account-id"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "{AccountId}.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 204)
  end
end
