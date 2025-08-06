# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Macie2 do
  @moduledoc """
  Amazon Macie
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_resource_profile_artifacts_response() :: %{
        "artifacts" => list(resource_profile_artifact()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_resource_profile_artifacts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_from_master_account_request() :: %{}

  """
  @type disassociate_from_master_account_request() :: %{}

  @typedoc """

  ## Example:

      tag_value_pair() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type tag_value_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resources_request() :: %{
        optional("bucketCriteria") => search_resources_bucket_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortCriteria") => search_resources_sort_criteria()
      }

  """
  @type search_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_filter_response() :: %{
        "action" => list(any()),
        "arn" => String.t() | atom(),
        "description" => String.t() | atom(),
        "findingCriteria" => finding_criteria(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "position" => integer(),
        "tags" => map()
      }

  """
  @type get_findings_filter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_buckets_request() :: %{
        optional("criteria") => map(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortCriteria") => bucket_sort_criteria()
      }

  """
  @type describe_buckets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      object_count_by_encryption_type() :: %{
        "customerManaged" => float(),
        "kmsManaged" => float(),
        "s3Managed" => float(),
        "unencrypted" => float(),
        "unknown" => float()
      }

  """
  @type object_count_by_encryption_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_context() :: %{
        "attributes" => session_context_attributes(),
        "sessionIssuer" => session_issuer()
      }

  """
  @type session_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket_statistics_by_sensitivity() :: %{
        "classificationError" => sensitivity_aggregations(),
        "notClassified" => sensitivity_aggregations(),
        "notSensitive" => sensitivity_aggregations(),
        "sensitive" => sensitivity_aggregations()
      }

  """
  @type bucket_statistics_by_sensitivity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ip_country() :: %{
        "code" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type ip_country() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_member_response() :: %{
        "arn" => String.t() | atom()
      }

  """
  @type create_member_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_resource_profile_response() :: %{}

  """
  @type update_resource_profile_response() :: %{}

  @typedoc """

  ## Example:

      get_usage_statistics_request() :: %{
        optional("filterBy") => list(usage_statistics_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => usage_statistics_sort_by(),
        optional("timeRange") => list(any())
      }

  """
  @type get_usage_statistics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      record() :: %{
        "jsonPath" => String.t() | atom(),
        "recordIndex" => float()
      }

  """
  @type record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_classification_job_response() :: %{
        "allowListIds" => list(String.t() | atom()),
        "clientToken" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "customDataIdentifierIds" => list(String.t() | atom()),
        "description" => String.t() | atom(),
        "initialRun" => boolean(),
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "jobStatus" => list(any()),
        "jobType" => list(any()),
        "lastRunErrorStatus" => last_run_error_status(),
        "lastRunTime" => non_neg_integer(),
        "managedDataIdentifierIds" => list(String.t() | atom()),
        "managedDataIdentifierSelector" => list(any()),
        "name" => String.t() | atom(),
        "s3JobDefinition" => s3_job_definition(),
        "samplingPercentage" => integer(),
        "scheduleFrequency" => job_schedule_frequency(),
        "statistics" => statistics(),
        "tags" => map(),
        "userPausedDetails" => user_paused_details()
      }

  """
  @type describe_classification_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_statistics_filter() :: %{
        "comparator" => list(any()),
        "key" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type usage_statistics_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_findings_filter_response() :: %{}

  """
  @type delete_findings_filter_response() :: %{}

  @typedoc """

  ## Example:

      ip_city() :: %{
        "name" => String.t() | atom()
      }

  """
  @type ip_city() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_member_request() :: %{
        optional("tags") => map(),
        required("account") => account_detail()
      }

  """
  @type create_member_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      range() :: %{
        "end" => float(),
        "start" => float(),
        "startColumn" => float()
      }

  """
  @type range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket_count_policy_allows_unencrypted_object_uploads() :: %{
        "allowsUnencryptedObjectUploads" => float(),
        "deniesUnencryptedObjectUploads" => float(),
        "unknown" => float()
      }

  """
  @type bucket_count_policy_allows_unencrypted_object_uploads() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      decline_invitations_response() :: %{
        "unprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type decline_invitations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retrieval_configuration() :: %{
        "externalId" => String.t() | atom(),
        "retrievalMode" => list(any()),
        "roleName" => String.t() | atom()
      }

  """
  @type retrieval_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_bucket_definition_for_job() :: %{
        "accountId" => String.t() | atom(),
        "buckets" => list(String.t() | atom())
      }

  """
  @type s3_bucket_definition_for_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_classification_scope_response() :: %{}

  """
  @type update_classification_scope_response() :: %{}

  @typedoc """

  ## Example:

      disable_organization_admin_account_response() :: %{}

  """
  @type disable_organization_admin_account_response() :: %{}

  @typedoc """

  ## Example:

      list_jobs_filter_term() :: %{
        "comparator" => list(any()),
        "key" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type list_jobs_filter_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_request() :: %{}

  """
  @type describe_organization_configuration_request() :: %{}

  @typedoc """

  ## Example:

      aws_account() :: %{
        "accountId" => String.t() | atom(),
        "principalId" => String.t() | atom()
      }

  """
  @type aws_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_reveal_configuration_response() :: %{
        "configuration" => reveal_configuration(),
        "retrievalConfiguration" => retrieval_configuration()
      }

  """
  @type get_reveal_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_allow_list_request() :: %{
        optional("ignoreJobChecks") => String.t() | atom()
      }

  """
  @type delete_allow_list_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resources_affected() :: %{
        "s3Bucket" => s3_bucket(),
        "s3Object" => s3_object()
      }

  """
  @type resources_affected() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_total() :: %{
        "currency" => list(any()),
        "estimatedCost" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type usage_total() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sensitivity_inspection_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_sensitivity_inspection_templates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      admin_account() :: %{
        "accountId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type admin_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_classification_scope_exclusion() :: %{
        "bucketNames" => list(String.t() | atom())
      }

  """
  @type s3_classification_scope_exclusion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sensitivity_inspection_template_response() :: %{
        "description" => String.t() | atom(),
        "excludes" => sensitivity_inspection_template_excludes(),
        "includes" => sensitivity_inspection_template_includes(),
        "name" => String.t() | atom(),
        "sensitivityInspectionTemplateId" => String.t() | atom()
      }

  """
  @type get_sensitivity_inspection_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sensitivity_aggregations() :: %{
        "classifiableSizeInBytes" => float(),
        "publiclyAccessibleCount" => float(),
        "totalCount" => float(),
        "totalSizeInBytes" => float()
      }

  """
  @type sensitivity_aggregations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      classification_result() :: %{
        "additionalOccurrences" => boolean(),
        "customDataIdentifiers" => custom_data_identifiers(),
        "mimeType" => String.t() | atom(),
        "sensitiveData" => list(sensitive_data_item()),
        "sizeClassified" => float(),
        "status" => classification_result_status()
      }

  """
  @type classification_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      classification_result_status() :: %{
        "code" => String.t() | atom(),
        "reason" => String.t() | atom()
      }

  """
  @type classification_result_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_custom_data_identifier_request() :: %{}

  """
  @type delete_custom_data_identifier_request() :: %{}

  @typedoc """

  ## Example:

      bucket_count_by_shared_access_type() :: %{
        "external" => float(),
        "internal" => float(),
        "notShared" => float(),
        "unknown" => float()
      }

  """
  @type bucket_count_by_shared_access_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_administrator_account_request() :: %{}

  """
  @type get_administrator_account_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      managed_data_identifier_summary() :: %{
        "category" => list(any()),
        "id" => String.t() | atom()
      }

  """
  @type managed_data_identifier_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket_sort_criteria() :: %{
        "attributeName" => String.t() | atom(),
        "orderBy" => list(any())
      }

  """
  @type bucket_sort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_member_session_request() :: %{
        required("status") => list(any())
      }

  """
  @type update_member_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket_criteria_additional_properties() :: %{
        "eq" => list(String.t() | atom()),
        "gt" => float(),
        "gte" => float(),
        "lt" => float(),
        "lte" => float(),
        "neq" => list(String.t() | atom()),
        "prefix" => String.t() | atom()
      }

  """
  @type bucket_criteria_additional_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_level_permissions() :: %{
        "blockPublicAccess" => block_public_access()
      }

  """
  @type account_level_permissions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_macie_session_response() :: %{}

  """
  @type update_macie_session_response() :: %{}

  @typedoc """

  ## Example:

      get_findings_publication_configuration_request() :: %{}

  """
  @type get_findings_publication_configuration_request() :: %{}

  @typedoc """

  ## Example:

      bucket_metadata() :: %{
        "accountId" => String.t() | atom(),
        "allowsUnencryptedObjectUploads" => list(any()),
        "automatedDiscoveryMonitoringStatus" => list(any()),
        "bucketArn" => String.t() | atom(),
        "bucketCreatedAt" => non_neg_integer(),
        "bucketName" => String.t() | atom(),
        "classifiableObjectCount" => float(),
        "classifiableSizeInBytes" => float(),
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom(),
        "jobDetails" => job_details(),
        "lastAutomatedDiscoveryTime" => non_neg_integer(),
        "lastUpdated" => non_neg_integer(),
        "objectCount" => float(),
        "objectCountByEncryptionType" => object_count_by_encryption_type(),
        "publicAccess" => bucket_public_access(),
        "region" => String.t() | atom(),
        "replicationDetails" => replication_details(),
        "sensitivityScore" => integer(),
        "serverSideEncryption" => bucket_server_side_encryption(),
        "sharedAccess" => list(any()),
        "sizeInBytes" => float(),
        "sizeInBytesCompressed" => float(),
        "tags" => list(key_value_pair()),
        "unclassifiableObjectCount" => object_level_statistics(),
        "unclassifiableObjectSizeInBytes" => object_level_statistics(),
        "versioning" => boolean()
      }

  """
  @type bucket_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_custom_data_identifiers_request() :: %{
        optional("ids") => list(String.t() | atom())
      }

  """
  @type batch_get_custom_data_identifiers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_scope_term() :: %{
        "comparator" => list(any()),
        "key" => String.t() | atom(),
        "tagValues" => list(tag_value_pair()),
        "target" => list(any())
      }

  """
  @type tag_scope_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sensitivity_inspection_template_request() :: %{}

  """
  @type get_sensitivity_inspection_template_request() :: %{}

  @typedoc """

  ## Example:

      suppress_data_identifier() :: %{
        "id" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type suppress_data_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bucket_statistics_request() :: %{
        optional("accountId") => String.t() | atom()
      }

  """
  @type get_bucket_statistics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invitation() :: %{
        "accountId" => String.t() | atom(),
        "invitationId" => String.t() | atom(),
        "invitedAt" => non_neg_integer(),
        "relationshipStatus" => list(any())
      }

  """
  @type invitation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_from_master_account_response() :: %{}

  """
  @type disassociate_from_master_account_response() :: %{}

  @typedoc """

  ## Example:

      delete_member_request() :: %{}

  """
  @type delete_member_request() :: %{}

  @typedoc """

  ## Example:

      update_allow_list_response() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom()
      }

  """
  @type update_allow_list_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_by_account() :: %{
        "currency" => list(any()),
        "estimatedCost" => String.t() | atom(),
        "serviceLimit" => service_limit(),
        "type" => list(any())
      }

  """
  @type usage_by_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_data_identifiers_response() :: %{
        "items" => list(custom_data_identifier_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_custom_data_identifiers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      server_side_encryption() :: %{
        "encryptionType" => list(any()),
        "kmsMasterKeyId" => String.t() | atom()
      }

  """
  @type server_side_encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_automated_discovery_accounts_request() :: %{
        optional("accounts") => list(automated_discovery_account_update())
      }

  """
  @type batch_update_automated_discovery_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sensitivity_inspection_template_excludes() :: %{
        "managedDataIdentifierIds" => list(String.t() | atom())
      }

  """
  @type sensitivity_inspection_template_excludes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_object() :: %{
        "bucketArn" => String.t() | atom(),
        "eTag" => String.t() | atom(),
        "extension" => String.t() | atom(),
        "key" => String.t() | atom(),
        "lastModified" => non_neg_integer(),
        "path" => String.t() | atom(),
        "publicAccess" => boolean(),
        "serverSideEncryption" => server_side_encryption(),
        "size" => float(),
        "storageClass" => list(any()),
        "tags" => list(key_value_pair()),
        "versionId" => String.t() | atom()
      }

  """
  @type s3_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_findings_response() :: %{
        "findingIds" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_findings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_hub_configuration() :: %{
        "publishClassificationFindings" => boolean(),
        "publishPolicyFindings" => boolean()
      }

  """
  @type security_hub_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_statistics_sort_by() :: %{
        "key" => list(any()),
        "orderBy" => list(any())
      }

  """
  @type usage_statistics_sort_by() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cell() :: %{
        "cellReference" => String.t() | atom(),
        "column" => float(),
        "columnName" => String.t() | atom(),
        "row" => float()
      }

  """
  @type cell() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_identity() :: %{
        "assumedRole" => assumed_role(),
        "awsAccount" => aws_account(),
        "awsService" => aws_service(),
        "federatedUser" => federated_user(),
        "iamUser" => iam_user(),
        "root" => user_identity_root(),
        "type" => list(any())
      }

  """
  @type user_identity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_sort_criteria() :: %{
        "attributeName" => list(any()),
        "orderBy" => list(any())
      }

  """
  @type list_jobs_sort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      automated_discovery_account_update() :: %{
        "accountId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type automated_discovery_account_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_request() :: %{
        optional("sortCriteria") => sort_criteria(),
        required("findingIds") => list(String.t() | atom())
      }

  """
  @type get_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      monthly_schedule() :: %{
        "dayOfMonth" => integer()
      }

  """
  @type monthly_schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      criteria_block_for_job() :: %{
        "and" => list(criteria_for_job())
      }

  """
  @type criteria_block_for_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_detail() :: %{
        "accountId" => String.t() | atom(),
        "email" => String.t() | atom()
      }

  """
  @type account_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_classification_jobs_request() :: %{
        optional("filterCriteria") => list_jobs_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortCriteria") => list_jobs_sort_criteria()
      }

  """
  @type list_classification_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_automated_discovery_configuration_response() :: %{
        "autoEnableOrganizationMembers" => list(any()),
        "classificationScopeId" => String.t() | atom(),
        "disabledAt" => non_neg_integer(),
        "firstEnabledAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "sensitivityInspectionTemplateId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type get_automated_discovery_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_profile_detections_response() :: %{
        "detections" => list(detection()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_resource_profile_detections_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_bucket_criteria_for_job() :: %{
        "excludes" => criteria_block_for_job(),
        "includes" => criteria_block_for_job()
      }

  """
  @type s3_bucket_criteria_for_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket_public_access() :: %{
        "effectivePermission" => list(any()),
        "permissionConfiguration" => bucket_permission_configuration()
      }

  """
  @type bucket_public_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_classification_scope_request() :: %{}

  """
  @type get_classification_scope_request() :: %{}

  @typedoc """

  ## Example:

      disable_organization_admin_account_request() :: %{
        required("adminAccountId") => String.t() | atom()
      }

  """
  @type disable_organization_admin_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resources_sort_criteria() :: %{
        "attributeName" => list(any()),
        "orderBy" => list(any())
      }

  """
  @type search_resources_sort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_detection() :: %{
        "arn" => String.t() | atom(),
        "count" => float(),
        "name" => String.t() | atom(),
        "occurrences" => occurrences()
      }

  """
  @type custom_detection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scoping() :: %{
        "excludes" => job_scoping_block(),
        "includes" => job_scoping_block()
      }

  """
  @type scoping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      allow_list_status() :: %{
        "code" => list(any()),
        "description" => String.t() | atom()
      }

  """
  @type allow_list_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iam_user() :: %{
        "accountId" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "principalId" => String.t() | atom(),
        "userName" => String.t() | atom()
      }

  """
  @type iam_user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_data_identifier_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type custom_data_identifier_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_statistics_sort_criteria() :: %{
        "attributeName" => list(any()),
        "orderBy" => list(any())
      }

  """
  @type finding_statistics_sort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_actor() :: %{
        "domainDetails" => domain_details(),
        "ipAddressDetails" => ip_address_details(),
        "userIdentity" => user_identity()
      }

  """
  @type finding_actor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_context_attributes() :: %{
        "creationDate" => non_neg_integer(),
        "mfaAuthenticated" => boolean()
      }

  """
  @type session_context_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_custom_data_identifier_response() :: %{
        "customDataIdentifierId" => String.t() | atom()
      }

  """
  @type create_custom_data_identifier_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      severity() :: %{
        "description" => list(any()),
        "score" => float()
      }

  """
  @type severity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_macie_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("findingPublishingFrequency") => list(any()),
        optional("status") => list(any())
      }

  """
  @type enable_macie_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_findings_filter_request() :: %{}

  """
  @type delete_findings_filter_request() :: %{}

  @typedoc """

  ## Example:

      create_allow_list_response() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom()
      }

  """
  @type create_allow_list_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      classification_export_configuration() :: %{
        "s3Destination" => s3_destination()
      }

  """
  @type classification_export_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket_count_by_encryption_type() :: %{
        "kmsManaged" => float(),
        "s3Managed" => float(),
        "unencrypted" => float(),
        "unknown" => float()
      }

  """
  @type bucket_count_by_encryption_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resources_response() :: %{
        "matchingResources" => list(matching_resource()),
        "nextToken" => String.t() | atom()
      }

  """
  @type search_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_classification_scope_request() :: %{
        optional("s3") => s3_classification_scope_update()
      }

  """
  @type update_classification_scope_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_classification_job_response() :: %{}

  """
  @type update_classification_job_response() :: %{}

  @typedoc """

  ## Example:

      api_call_details() :: %{
        "api" => String.t() | atom(),
        "apiServiceName" => String.t() | atom(),
        "firstSeen" => non_neg_integer(),
        "lastSeen" => non_neg_integer()
      }

  """
  @type api_call_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_profile_response() :: %{
        "profileUpdatedAt" => non_neg_integer(),
        "sensitivityScore" => integer(),
        "sensitivityScoreOverridden" => boolean(),
        "statistics" => resource_statistics()
      }

  """
  @type get_resource_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      simple_scope_term() :: %{
        "comparator" => list(any()),
        "key" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type simple_scope_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      test_custom_data_identifier_request() :: %{
        optional("ignoreWords") => list(String.t() | atom()),
        optional("keywords") => list(String.t() | atom()),
        optional("maximumMatchDistance") => integer(),
        required("regex") => String.t() | atom(),
        required("sampleText") => String.t() | atom()
      }

  """
  @type test_custom_data_identifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_automated_discovery_accounts_response() :: %{
        "items" => list(automated_discovery_account()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_automated_discovery_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_from_administrator_account_response() :: %{}

  """
  @type disassociate_from_administrator_account_response() :: %{}

  @typedoc """

  ## Example:

      get_custom_data_identifier_request() :: %{}

  """
  @type get_custom_data_identifier_request() :: %{}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "bucketCriteria" => s3_bucket_criteria_for_job(),
        "bucketDefinitions" => list(s3_bucket_definition_for_job()),
        "createdAt" => non_neg_integer(),
        "jobId" => String.t() | atom(),
        "jobStatus" => list(any()),
        "jobType" => list(any()),
        "lastRunErrorStatus" => last_run_error_status(),
        "name" => String.t() | atom(),
        "userPausedDetails" => user_paused_details()
      }

  """
  @type job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_automated_discovery_accounts_request() :: %{
        optional("accountIds") => list(String.t() | atom()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_automated_discovery_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sensitivity_inspection_template_response() :: %{}

  """
  @type update_sensitivity_inspection_template_response() :: %{}

  @typedoc """

  ## Example:

      create_custom_data_identifier_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("ignoreWords") => list(String.t() | atom()),
        optional("keywords") => list(String.t() | atom()),
        optional("maximumMatchDistance") => integer(),
        optional("severityLevels") => list(severity_level()),
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("regex") => String.t() | atom()
      }

  """
  @type create_custom_data_identifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      occurrences() :: %{
        "cells" => list(cell()),
        "lineRanges" => list(range()),
        "offsetRanges" => list(range()),
        "pages" => list(page()),
        "records" => list(record())
      }

  """
  @type occurrences() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_allow_list_request() :: %{}

  """
  @type get_allow_list_request() :: %{}

  @typedoc """

  ## Example:

      job_scope_term() :: %{
        "simpleScopeTerm" => simple_scope_term(),
        "tagScopeTerm" => tag_scope_term()
      }

  """
  @type job_scope_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_response() :: %{
        "autoEnable" => boolean(),
        "maxAccountLimitReached" => boolean()
      }

  """
  @type describe_organization_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sensitive_data_occurrences_request() :: %{}

  """
  @type get_sensitive_data_occurrences_request() :: %{}

  @typedoc """

  ## Example:

      s3_classification_scope() :: %{
        "excludes" => s3_classification_scope_exclusion()
      }

  """
  @type s3_classification_scope() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_findings_filters_response() :: %{
        "findingsFilterListItems" => list(findings_filter_list_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_findings_filters_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_classification_export_configuration_response() :: %{
        "configuration" => classification_export_configuration()
      }

  """
  @type get_classification_export_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_classification_scopes_request() :: %{
        optional("name") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_classification_scopes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_data_identifiers_request() :: %{
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_managed_data_identifiers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_findings_filter_request() :: %{
        optional("action") => list(any()),
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("findingCriteria") => finding_criteria(),
        optional("name") => String.t() | atom(),
        optional("position") => integer()
      }

  """
  @type update_findings_filter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_macie_request() :: %{}

  """
  @type disable_macie_request() :: %{}

  @typedoc """

  ## Example:

      get_macie_session_request() :: %{}

  """
  @type get_macie_session_request() :: %{}

  @typedoc """

  ## Example:

      create_findings_filter_response() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom()
      }

  """
  @type create_findings_filter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resources_tag_criterion() :: %{
        "comparator" => list(any()),
        "tagValues" => list(search_resources_tag_criterion_pair())
      }

  """
  @type search_resources_tag_criterion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_allow_list_response() :: %{}

  """
  @type delete_allow_list_response() :: %{}

  @typedoc """

  ## Example:

      s3_bucket() :: %{
        "allowsUnencryptedObjectUploads" => list(any()),
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "defaultServerSideEncryption" => server_side_encryption(),
        "name" => String.t() | atom(),
        "owner" => s3_bucket_owner(),
        "publicAccess" => bucket_public_access(),
        "tags" => list(key_value_pair())
      }

  """
  @type s3_bucket() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      object_level_statistics() :: %{
        "fileType" => float(),
        "storageClass" => float(),
        "total" => float()
      }

  """
  @type object_level_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket_server_side_encryption() :: %{
        "kmsMasterKeyId" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type bucket_server_side_encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_macie_session_response() :: %{
        "createdAt" => non_neg_integer(),
        "findingPublishingFrequency" => list(any()),
        "serviceRole" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_macie_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_service() :: %{
        "invokedBy" => String.t() | atom()
      }

  """
  @type aws_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sensitivity_inspection_templates_entry() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type sensitivity_inspection_templates_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_custom_data_identifier_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "deleted" => boolean(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type batch_get_custom_data_identifier_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resources_bucket_criteria() :: %{
        "excludes" => search_resources_criteria_block(),
        "includes" => search_resources_criteria_block()
      }

  """
  @type search_resources_bucket_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      federated_user() :: %{
        "accessKeyId" => String.t() | atom(),
        "accountId" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "principalId" => String.t() | atom(),
        "sessionContext" => session_context()
      }

  """
  @type federated_user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_resource_profile_detections_request() :: %{
        optional("suppressDataIdentifiers") => list(suppress_data_identifier()),
        required("resourceArn") => String.t() | atom()
      }

  """
  @type update_resource_profile_detections_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_response() :: %{
        "findings" => list(finding())
      }

  """
  @type get_findings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_findings_publication_configuration_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("securityHubConfiguration") => security_hub_configuration()
      }

  """
  @type put_findings_publication_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket_policy() :: %{
        "allowsPublicReadAccess" => boolean(),
        "allowsPublicWriteAccess" => boolean()
      }

  """
  @type bucket_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      findings_filter_list_item() :: %{
        "action" => list(any()),
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type findings_filter_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_allow_lists_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_allow_lists_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_identity_root() :: %{
        "accountId" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "principalId" => String.t() | atom()
      }

  """
  @type user_identity_root() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_filter_criteria() :: %{
        "excludes" => list(list_jobs_filter_term()),
        "includes" => list(list_jobs_filter_term())
      }

  """
  @type list_jobs_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_findings_filter_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("position") => integer(),
        optional("tags") => map(),
        required("action") => list(any()),
        required("findingCriteria") => finding_criteria(),
        required("name") => String.t() | atom()
      }

  """
  @type create_findings_filter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sensitive_data_occurrences_response() :: %{
        "error" => String.t() | atom(),
        "sensitiveDataOccurrences" => map(),
        "status" => list(any())
      }

  """
  @type get_sensitive_data_occurrences_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_findings_filter_response() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom()
      }

  """
  @type update_findings_filter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resources_tag_criterion_pair() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type search_resources_tag_criterion_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      automated_discovery_account_update_error() :: %{
        "accountId" => String.t() | atom(),
        "errorCode" => list(any())
      }

  """
  @type automated_discovery_account_update_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_data_identifiers_response() :: %{
        "items" => list(managed_data_identifier_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_managed_data_identifiers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      allow_list_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type allow_list_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      classification_details() :: %{
        "detailedResultsLocation" => String.t() | atom(),
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "originType" => list(any()),
        "result" => classification_result()
      }

  """
  @type classification_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding() :: %{
        "accountId" => String.t() | atom(),
        "archived" => boolean(),
        "category" => list(any()),
        "classificationDetails" => classification_details(),
        "count" => float(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "partition" => String.t() | atom(),
        "policyDetails" => policy_details(),
        "region" => String.t() | atom(),
        "resourcesAffected" => resources_affected(),
        "sample" => boolean(),
        "schemaVersion" => String.t() | atom(),
        "severity" => severity(),
        "title" => String.t() | atom(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_classification_job_request() :: %{}

  """
  @type describe_classification_job_request() :: %{}

  @typedoc """

  ## Example:

      update_automated_discovery_configuration_response() :: %{}

  """
  @type update_automated_discovery_configuration_response() :: %{}

  @typedoc """

  ## Example:

      update_macie_session_request() :: %{
        optional("findingPublishingFrequency") => list(any()),
        optional("status") => list(any())
      }

  """
  @type update_macie_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ip_geo_location() :: %{
        "lat" => float(),
        "lon" => float()
      }

  """
  @type ip_geo_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_profile_artifact() :: %{
        "arn" => String.t() | atom(),
        "classificationResultStatus" => String.t() | atom(),
        "sensitive" => boolean()
      }

  """
  @type resource_profile_artifact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_member_session_response() :: %{}

  """
  @type update_member_session_response() :: %{}

  @typedoc """

  ## Example:

      get_finding_statistics_request() :: %{
        optional("findingCriteria") => finding_criteria(),
        optional("size") => integer(),
        optional("sortCriteria") => finding_statistics_sort_criteria(),
        required("groupBy") => list(any())
      }

  """
  @type get_finding_statistics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_profile_artifacts_request() :: %{
        optional("nextToken") => String.t() | atom(),
        required("resourceArn") => String.t() | atom()
      }

  """
  @type list_resource_profile_artifacts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_findings_request() :: %{
        optional("findingCriteria") => finding_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortCriteria") => sort_criteria()
      }

  """
  @type list_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_buckets_response() :: %{
        "buckets" => list(bucket_metadata()),
        "nextToken" => String.t() | atom()
      }

  """
  @type describe_buckets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_data_identifiers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_custom_data_identifiers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_retrieval_configuration() :: %{
        "retrievalMode" => list(any()),
        "roleName" => String.t() | atom()
      }

  """
  @type update_retrieval_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      test_custom_data_identifier_response() :: %{
        "matchCount" => integer()
      }

  """
  @type test_custom_data_identifier_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_filter_request() :: %{}

  """
  @type get_findings_filter_request() :: %{}

  @typedoc """

  ## Example:

      get_member_request() :: %{}

  """
  @type get_member_request() :: %{}

  @typedoc """

  ## Example:

      s3_bucket_owner() :: %{
        "displayName" => String.t() | atom(),
        "id" => String.t() | atom()
      }

  """
  @type s3_bucket_owner() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_organization_configuration_response() :: %{}

  """
  @type update_organization_configuration_response() :: %{}

  @typedoc """

  ## Example:

      get_finding_statistics_response() :: %{
        "countsByGroup" => list(group_count())
      }

  """
  @type get_finding_statistics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_usage_totals_request() :: %{
        optional("timeRange") => String.t() | atom()
      }

  """
  @type get_usage_totals_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detection() :: %{
        "arn" => String.t() | atom(),
        "count" => float(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "suppressed" => boolean(),
        "type" => list(any())
      }

  """
  @type detection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_classification_scope_exclusion_update() :: %{
        "bucketNames" => list(String.t() | atom()),
        "operation" => list(any())
      }

  """
  @type s3_classification_scope_exclusion_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_destination() :: %{
        "bucketName" => String.t() | atom(),
        "keyPrefix" => String.t() | atom(),
        "kmsKeyArn" => String.t() | atom()
      }

  """
  @type s3_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_invitation_response() :: %{}

  """
  @type accept_invitation_response() :: %{}

  @typedoc """

  ## Example:

      resource_statistics() :: %{
        "totalBytesClassified" => float(),
        "totalDetections" => float(),
        "totalDetectionsSuppressed" => float(),
        "totalItemsClassified" => float(),
        "totalItemsSensitive" => float(),
        "totalItemsSkipped" => float(),
        "totalItemsSkippedInvalidEncryption" => float(),
        "totalItemsSkippedInvalidKms" => float(),
        "totalItemsSkippedPermissionDenied" => float()
      }

  """
  @type resource_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sample_findings_request() :: %{
        optional("findingTypes") => list(list(any())())
      }

  """
  @type create_sample_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      decline_invitations_request() :: %{
        required("accountIds") => list(String.t() | atom())
      }

  """
  @type decline_invitations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sensitive_data_item() :: %{
        "category" => list(any()),
        "detections" => list(default_detection()),
        "totalCount" => float()
      }

  """
  @type sensitive_data_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bucket_statistics_response() :: %{
        "bucketCount" => float(),
        "bucketCountByEffectivePermission" => bucket_count_by_effective_permission(),
        "bucketCountByEncryptionType" => bucket_count_by_encryption_type(),
        "bucketCountByObjectEncryptionRequirement" => bucket_count_policy_allows_unencrypted_object_uploads(),
        "bucketCountBySharedAccessType" => bucket_count_by_shared_access_type(),
        "bucketStatisticsBySensitivity" => bucket_statistics_by_sensitivity(),
        "classifiableObjectCount" => float(),
        "classifiableSizeInBytes" => float(),
        "lastUpdated" => non_neg_integer(),
        "objectCount" => float(),
        "sizeInBytes" => float(),
        "sizeInBytesCompressed" => float(),
        "unclassifiableObjectCount" => object_level_statistics(),
        "unclassifiableObjectSizeInBytes" => object_level_statistics()
      }

  """
  @type get_bucket_statistics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_automated_discovery_configuration_request() :: %{
        optional("autoEnableOrganizationMembers") => list(any()),
        required("status") => list(any())
      }

  """
  @type update_automated_discovery_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_master_account_response() :: %{
        "master" => invitation()
      }

  """
  @type get_master_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_schedule_frequency() :: %{
        "dailySchedule" => daily_schedule(),
        "monthlySchedule" => monthly_schedule(),
        "weeklySchedule" => weekly_schedule()
      }

  """
  @type job_schedule_frequency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_details() :: %{
        "isDefinedInJob" => list(any()),
        "isMonitoredByJob" => list(any()),
        "lastJobId" => String.t() | atom(),
        "lastJobRunTime" => non_neg_integer()
      }

  """
  @type job_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_classification_export_configuration_response() :: %{
        "configuration" => classification_export_configuration()
      }

  """
  @type put_classification_export_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_classification_job_response() :: %{
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom()
      }

  """
  @type create_classification_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      allow_list_criteria() :: %{
        "regex" => String.t() | atom(),
        "s3WordsList" => s3_words_list()
      }

  """
  @type allow_list_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_invitations_request() :: %{
        required("accountIds") => list(String.t() | atom())
      }

  """
  @type delete_invitations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      classification_scope_summary() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type classification_scope_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_member_response() :: %{
        "accountId" => String.t() | atom(),
        "administratorAccountId" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "email" => String.t() | atom(),
        "invitedAt" => non_neg_integer(),
        "masterAccountId" => String.t() | atom(),
        "relationshipStatus" => list(any()),
        "tags" => map(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_member_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_reveal_configuration_request() :: %{
        optional("retrievalConfiguration") => update_retrieval_configuration(),
        required("configuration") => reveal_configuration()
      }

  """
  @type update_reveal_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_organization_configuration_request() :: %{
        required("autoEnable") => boolean()
      }

  """
  @type update_organization_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_organization_admin_account_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("adminAccountId") => String.t() | atom()
      }

  """
  @type enable_organization_admin_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sensitivity_inspection_template_includes() :: %{
        "allowListIds" => list(String.t() | atom()),
        "customDataIdentifierIds" => list(String.t() | atom()),
        "managedDataIdentifierIds" => list(String.t() | atom())
      }

  """
  @type sensitivity_inspection_template_includes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_member_response() :: %{}

  """
  @type delete_member_response() :: %{}

  @typedoc """

  ## Example:

      s3_classification_scope_update() :: %{
        "excludes" => s3_classification_scope_exclusion_update()
      }

  """
  @type s3_classification_scope_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resources_criteria() :: %{
        "simpleCriterion" => search_resources_simple_criterion(),
        "tagCriterion" => search_resources_tag_criterion()
      }

  """
  @type search_resources_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_invitations_response() :: %{
        "unprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type delete_invitations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_reveal_configuration_response() :: %{
        "configuration" => reveal_configuration(),
        "retrievalConfiguration" => retrieval_configuration()
      }

  """
  @type update_reveal_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_organization_admin_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_custom_data_identifiers_response() :: %{
        "customDataIdentifiers" => list(batch_get_custom_data_identifier_summary()),
        "notFoundIdentifierIds" => list(String.t() | atom())
      }

  """
  @type batch_get_custom_data_identifiers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sort_criteria() :: %{
        "attributeName" => String.t() | atom(),
        "orderBy" => list(any())
      }

  """
  @type sort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ip_owner() :: %{
        "asn" => String.t() | atom(),
        "asnOrg" => String.t() | atom(),
        "isp" => String.t() | atom(),
        "org" => String.t() | atom()
      }

  """
  @type ip_owner() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      criteria_for_job() :: %{
        "simpleCriterion" => simple_criterion_for_job(),
        "tagCriterion" => tag_criterion_for_job()
      }

  """
  @type criteria_for_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sensitive_data_occurrences_availability_request() :: %{}

  """
  @type get_sensitive_data_occurrences_availability_request() :: %{}

  @typedoc """

  ## Example:

      weekly_schedule() :: %{
        "dayOfWeek" => list(any())
      }

  """
  @type weekly_schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessable_entity_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type unprocessable_entity_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_classification_export_configuration_request() :: %{}

  """
  @type get_classification_export_configuration_request() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_invitations_count_request() :: %{}

  """
  @type get_invitations_count_request() :: %{}

  @typedoc """

  ## Example:

      default_detection() :: %{
        "count" => float(),
        "occurrences" => occurrences(),
        "type" => String.t() | atom()
      }

  """
  @type default_detection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_words_list() :: %{
        "bucketName" => String.t() | atom(),
        "objectKey" => String.t() | atom()
      }

  """
  @type s3_words_list() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_invitation_request() :: %{
        optional("administratorAccountId") => String.t() | atom(),
        optional("masterAccount") => String.t() | atom(),
        required("invitationId") => String.t() | atom()
      }

  """
  @type accept_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("onlyAssociated") => String.t() | atom()
      }

  """
  @type list_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_members_response() :: %{
        "members" => list(member()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      block_public_access() :: %{
        "blockPublicAcls" => boolean(),
        "blockPublicPolicy" => boolean(),
        "ignorePublicAcls" => boolean(),
        "restrictPublicBuckets" => boolean()
      }

  """
  @type block_public_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      last_run_error_status() :: %{
        "code" => list(any())
      }

  """
  @type last_run_error_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      statistics() :: %{
        "approximateNumberOfObjectsToProcess" => float(),
        "numberOfRuns" => float()
      }

  """
  @type statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_findings_filters_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_findings_filters_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sensitivity_inspection_template_request() :: %{
        optional("description") => String.t() | atom(),
        optional("excludes") => sensitivity_inspection_template_excludes(),
        optional("includes") => sensitivity_inspection_template_includes()
      }

  """
  @type update_sensitivity_inspection_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resources_criteria_block() :: %{
        "and" => list(search_resources_criteria())
      }

  """
  @type search_resources_criteria_block() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_value_pair() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type key_value_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_profile_detections_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("resourceArn") => String.t() | atom()
      }

  """
  @type list_resource_profile_detections_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      get_master_account_request() :: %{}

  """
  @type get_master_account_request() :: %{}

  @typedoc """

  ## Example:

      s3_job_definition() :: %{
        "bucketCriteria" => s3_bucket_criteria_for_job(),
        "bucketDefinitions" => list(s3_bucket_definition_for_job()),
        "scoping" => scoping()
      }

  """
  @type s3_job_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_limit() :: %{
        "isServiceLimited" => boolean(),
        "unit" => list(any()),
        "value" => float()
      }

  """
  @type service_limit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      daily_schedule() :: %{}

  """
  @type daily_schedule() :: %{}

  @typedoc """

  ## Example:

      get_invitations_count_response() :: %{
        "invitationsCount" => float()
      }

  """
  @type get_invitations_count_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sensitive_data_occurrences_availability_response() :: %{
        "code" => list(any()),
        "reasons" => list(list(any())())
      }

  """
  @type get_sensitive_data_occurrences_availability_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_resource_profile_detections_response() :: %{}

  """
  @type update_resource_profile_detections_response() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_publication_configuration_response() :: %{
        "securityHubConfiguration" => security_hub_configuration()
      }

  """
  @type get_findings_publication_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      severity_level() :: %{
        "occurrencesThreshold" => float(),
        "severity" => list(any())
      }

  """
  @type severity_level() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_invitations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_invitations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_classification_scope_response() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "s3" => s3_classification_scope()
      }

  """
  @type get_classification_scope_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_criteria() :: %{
        "criterion" => map()
      }

  """
  @type finding_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      replication_details() :: %{
        "replicated" => boolean(),
        "replicatedExternally" => boolean(),
        "replicationAccounts" => list(String.t() | atom())
      }

  """
  @type replication_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sample_findings_response() :: %{}

  """
  @type create_sample_findings_response() :: %{}

  @typedoc """

  ## Example:

      update_resource_profile_request() :: %{
        optional("sensitivityScoreOverride") => integer(),
        required("resourceArn") => String.t() | atom()
      }

  """
  @type update_resource_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_usage_totals_response() :: %{
        "timeRange" => list(any()),
        "usageTotals" => list(usage_total())
      }

  """
  @type get_usage_totals_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      member() :: %{
        "accountId" => String.t() | atom(),
        "administratorAccountId" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "email" => String.t() | atom(),
        "invitedAt" => non_neg_integer(),
        "masterAccountId" => String.t() | atom(),
        "relationshipStatus" => list(any()),
        "tags" => map(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_organization_admin_account_response() :: %{}

  """
  @type enable_organization_admin_account_response() :: %{}

  @typedoc """

  ## Example:

      update_allow_list_request() :: %{
        optional("description") => String.t() | atom(),
        required("criteria") => allow_list_criteria(),
        required("name") => String.t() | atom()
      }

  """
  @type update_allow_list_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_action() :: %{
        "actionType" => list(any()),
        "apiCallDetails" => api_call_details()
      }

  """
  @type finding_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ip_address_details() :: %{
        "ipAddressV4" => String.t() | atom(),
        "ipCity" => ip_city(),
        "ipCountry" => ip_country(),
        "ipGeoLocation" => ip_geo_location(),
        "ipOwner" => ip_owner()
      }

  """
  @type ip_address_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_classification_export_configuration_request() :: %{
        required("configuration") => classification_export_configuration()
      }

  """
  @type put_classification_export_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resources_simple_criterion() :: %{
        "comparator" => list(any()),
        "key" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type search_resources_simple_criterion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_criterion_for_job() :: %{
        "comparator" => list(any()),
        "tagValues" => list(tag_criterion_pair_for_job())
      }

  """
  @type tag_criterion_for_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_details() :: %{
        "domainName" => String.t() | atom()
      }

  """
  @type domain_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      criterion_additional_properties() :: %{
        "eq" => list(String.t() | atom()),
        "eqExactMatch" => list(String.t() | atom()),
        "gt" => float(),
        "gte" => float(),
        "lt" => float(),
        "lte" => float(),
        "neq" => list(String.t() | atom())
      }

  """
  @type criterion_additional_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      session_issuer() :: %{
        "accountId" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "principalId" => String.t() | atom(),
        "type" => String.t() | atom(),
        "userName" => String.t() | atom()
      }

  """
  @type session_issuer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_reveal_configuration_request() :: %{}

  """
  @type get_reveal_configuration_request() :: %{}

  @typedoc """

  ## Example:

      assumed_role() :: %{
        "accessKeyId" => String.t() | atom(),
        "accountId" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "principalId" => String.t() | atom(),
        "sessionContext" => session_context()
      }

  """
  @type assumed_role() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessed_account() :: %{
        "accountId" => String.t() | atom(),
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom()
      }

  """
  @type unprocessed_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_automated_discovery_accounts_response() :: %{
        "errors" => list(automated_discovery_account_update_error())
      }

  """
  @type batch_update_automated_discovery_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_classification_scopes_response() :: %{
        "classificationScopes" => list(classification_scope_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_classification_scopes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket_permission_configuration() :: %{
        "accountLevelPermissions" => account_level_permissions(),
        "bucketLevelPermissions" => bucket_level_permissions()
      }

  """
  @type bucket_permission_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_paused_details() :: %{
        "jobExpiresAt" => non_neg_integer(),
        "jobImminentExpirationHealthEventArn" => String.t() | atom(),
        "jobPausedAt" => non_neg_integer()
      }

  """
  @type user_paused_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_invitations_response() :: %{
        "unprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type create_invitations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_allow_list_response() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "criteria" => allow_list_criteria(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => allow_list_status(),
        "tags" => map(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_allow_list_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reveal_configuration() :: %{
        "kmsKeyId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type reveal_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_profile_request() :: %{
        required("resourceArn") => String.t() | atom()
      }

  """
  @type get_resource_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_member_response() :: %{}

  """
  @type disassociate_member_response() :: %{}

  @typedoc """

  ## Example:

      bucket_level_permissions() :: %{
        "accessControlList" => access_control_list(),
        "blockPublicAccess" => block_public_access(),
        "bucketPolicy" => bucket_policy()
      }

  """
  @type bucket_level_permissions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_response() :: %{
        "adminAccounts" => list(admin_account()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_organization_admin_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_allow_lists_response() :: %{
        "allowLists" => list(allow_list_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_allow_lists_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matching_bucket() :: %{
        "accountId" => String.t() | atom(),
        "automatedDiscoveryMonitoringStatus" => list(any()),
        "bucketName" => String.t() | atom(),
        "classifiableObjectCount" => float(),
        "classifiableSizeInBytes" => float(),
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom(),
        "jobDetails" => job_details(),
        "lastAutomatedDiscoveryTime" => non_neg_integer(),
        "objectCount" => float(),
        "objectCountByEncryptionType" => object_count_by_encryption_type(),
        "sensitivityScore" => integer(),
        "sizeInBytes" => float(),
        "sizeInBytesCompressed" => float(),
        "unclassifiableObjectCount" => object_level_statistics(),
        "unclassifiableObjectSizeInBytes" => object_level_statistics()
      }

  """
  @type matching_bucket() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_automated_discovery_configuration_request() :: %{}

  """
  @type get_automated_discovery_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_custom_data_identifier_response() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "deleted" => boolean(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "ignoreWords" => list(String.t() | atom()),
        "keywords" => list(String.t() | atom()),
        "maximumMatchDistance" => integer(),
        "name" => String.t() | atom(),
        "regex" => String.t() | atom(),
        "severityLevels" => list(severity_level()),
        "tags" => map()
      }

  """
  @type get_custom_data_identifier_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sensitivity_inspection_templates_response() :: %{
        "nextToken" => String.t() | atom(),
        "sensitivityInspectionTemplates" => list(sensitivity_inspection_templates_entry())
      }

  """
  @type list_sensitivity_inspection_templates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_data_identifiers() :: %{
        "detections" => list(custom_detection()),
        "totalCount" => float()
      }

  """
  @type custom_data_identifiers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_from_administrator_account_request() :: %{}

  """
  @type disassociate_from_administrator_account_request() :: %{}

  @typedoc """

  ## Example:

      access_control_list() :: %{
        "allowsPublicReadAccess" => boolean(),
        "allowsPublicWriteAccess" => boolean()
      }

  """
  @type access_control_list() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_record() :: %{
        "accountId" => String.t() | atom(),
        "automatedDiscoveryFreeTrialStartDate" => non_neg_integer(),
        "freeTrialStartDate" => non_neg_integer(),
        "usage" => list(usage_by_account())
      }

  """
  @type usage_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_administrator_account_response() :: %{
        "administrator" => invitation()
      }

  """
  @type get_administrator_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_custom_data_identifier_response() :: %{}

  """
  @type delete_custom_data_identifier_response() :: %{}

  @typedoc """

  ## Example:

      job_scoping_block() :: %{
        "and" => list(job_scope_term())
      }

  """
  @type job_scoping_block() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_macie_response() :: %{}

  """
  @type enable_macie_response() :: %{}

  @typedoc """

  ## Example:

      tag_criterion_pair_for_job() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type tag_criterion_pair_for_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group_count() :: %{
        "count" => float(),
        "groupKey" => String.t() | atom()
      }

  """
  @type group_count() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matching_resource() :: %{
        "matchingBucket" => matching_bucket()
      }

  """
  @type matching_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      page() :: %{
        "lineRange" => range(),
        "offsetRange" => range(),
        "pageNumber" => float()
      }

  """
  @type page() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_details() :: %{
        "action" => finding_action(),
        "actor" => finding_actor()
      }

  """
  @type policy_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_classification_job_request() :: %{
        optional("allowListIds") => list(String.t() | atom()),
        optional("customDataIdentifierIds") => list(String.t() | atom()),
        optional("description") => String.t() | atom(),
        optional("initialRun") => boolean(),
        optional("managedDataIdentifierIds") => list(String.t() | atom()),
        optional("managedDataIdentifierSelector") => list(any()),
        optional("samplingPercentage") => integer(),
        optional("scheduleFrequency") => job_schedule_frequency(),
        optional("tags") => map(),
        required("clientToken") => String.t() | atom(),
        required("jobType") => list(any()),
        required("name") => String.t() | atom(),
        required("s3JobDefinition") => s3_job_definition()
      }

  """
  @type create_classification_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bucket_count_by_effective_permission() :: %{
        "publiclyAccessible" => float(),
        "publiclyReadable" => float(),
        "publiclyWritable" => float(),
        "unknown" => float()
      }

  """
  @type bucket_count_by_effective_permission() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      simple_criterion_for_job() :: %{
        "comparator" => list(any()),
        "key" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type simple_criterion_for_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detected_data_details() :: %{
        "value" => String.t() | atom()
      }

  """
  @type detected_data_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      automated_discovery_account() :: %{
        "accountId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type automated_discovery_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_classification_job_request() :: %{
        required("jobStatus") => list(any())
      }

  """
  @type update_classification_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_usage_statistics_response() :: %{
        "nextToken" => String.t() | atom(),
        "records" => list(usage_record()),
        "timeRange" => list(any())
      }

  """
  @type get_usage_statistics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_invitations_request() :: %{
        optional("disableEmailNotification") => boolean(),
        optional("message") => String.t() | atom(),
        required("accountIds") => list(String.t() | atom())
      }

  """
  @type create_invitations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_allow_list_request() :: %{
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("clientToken") => String.t() | atom(),
        required("criteria") => allow_list_criteria(),
        required("name") => String.t() | atom()
      }

  """
  @type create_allow_list_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_findings_publication_configuration_response() :: %{}

  """
  @type put_findings_publication_configuration_response() :: %{}

  @typedoc """

  ## Example:

      list_classification_jobs_response() :: %{
        "items" => list(job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_classification_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_invitations_response() :: %{
        "invitations" => list(invitation()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_invitations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_member_request() :: %{}

  """
  @type disassociate_member_request() :: %{}

  @typedoc """

  ## Example:

      disable_macie_response() :: %{}

  """
  @type disable_macie_response() :: %{}

  @type accept_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_get_custom_data_identifiers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_update_automated_discovery_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_allow_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_classification_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_custom_data_identifier_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_findings_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_sample_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type decline_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_allow_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_custom_data_identifier_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_findings_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_buckets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_classification_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_organization_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disable_macie_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disable_organization_admin_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_from_administrator_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_from_master_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_macie_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_organization_admin_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_administrator_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_allow_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_automated_discovery_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_bucket_statistics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_classification_export_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_classification_scope_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_custom_data_identifier_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_finding_statistics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_findings_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_findings_publication_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_invitations_count_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_macie_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_master_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_resource_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_reveal_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_sensitive_data_occurrences_errors() ::
          throttling_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_sensitive_data_occurrences_availability_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sensitivity_inspection_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_usage_statistics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_usage_totals_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_allow_lists_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_automated_discovery_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_classification_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_classification_scopes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_custom_data_identifiers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_findings_filters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_members_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_organization_admin_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_resource_profile_artifacts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_resource_profile_detections_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_sensitivity_inspection_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type put_classification_export_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_findings_publication_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type search_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type test_custom_data_identifier_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_allow_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_automated_discovery_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_classification_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_classification_scope_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_findings_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_macie_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_member_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_organization_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_resource_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_resource_profile_detections_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_reveal_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_sensitivity_inspection_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "macie2",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Macie2",
      signature_version: "v4",
      signing_name: "macie2",
      target_prefix: nil
    }
  end

  @doc """
  Accepts an Amazon Macie membership invitation that was received from a specific
  account.
  """
  @spec accept_invitation(map(), accept_invitation_request(), list()) ::
          {:ok, accept_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_invitation_errors()}
  def accept_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/accept"
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
  Retrieves information about one or more custom data identifiers.
  """
  @spec batch_get_custom_data_identifiers(
          map(),
          batch_get_custom_data_identifiers_request(),
          list()
        ) ::
          {:ok, batch_get_custom_data_identifiers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_custom_data_identifiers_errors()}
  def batch_get_custom_data_identifiers(%Client{} = client, input, options \\ []) do
    url_path = "/custom-data-identifiers/get"
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
  Changes the status of automated sensitive data discovery for one or more
  accounts.
  """
  @spec batch_update_automated_discovery_accounts(
          map(),
          batch_update_automated_discovery_accounts_request(),
          list()
        ) ::
          {:ok, batch_update_automated_discovery_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_automated_discovery_accounts_errors()}
  def batch_update_automated_discovery_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/automated-discovery/accounts"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates and defines the settings for an allow list.
  """
  @spec create_allow_list(map(), create_allow_list_request(), list()) ::
          {:ok, create_allow_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_allow_list_errors()}
  def create_allow_list(%Client{} = client, input, options \\ []) do
    url_path = "/allow-lists"
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
  Creates and defines the settings for a classification job.
  """
  @spec create_classification_job(map(), create_classification_job_request(), list()) ::
          {:ok, create_classification_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_classification_job_errors()}
  def create_classification_job(%Client{} = client, input, options \\ []) do
    url_path = "/jobs"
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
  Creates and defines the criteria and other settings for a custom data
  identifier.
  """
  @spec create_custom_data_identifier(map(), create_custom_data_identifier_request(), list()) ::
          {:ok, create_custom_data_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_custom_data_identifier_errors()}
  def create_custom_data_identifier(%Client{} = client, input, options \\ []) do
    url_path = "/custom-data-identifiers"
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
  Creates and defines the criteria and other settings for a findings filter.
  """
  @spec create_findings_filter(map(), create_findings_filter_request(), list()) ::
          {:ok, create_findings_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_findings_filter_errors()}
  def create_findings_filter(%Client{} = client, input, options \\ []) do
    url_path = "/findingsfilters"
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
  Sends an Amazon Macie membership invitation to one or more accounts.
  """
  @spec create_invitations(map(), create_invitations_request(), list()) ::
          {:ok, create_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_invitations_errors()}
  def create_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations"
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
  Associates an account with an Amazon Macie administrator account.
  """
  @spec create_member(map(), create_member_request(), list()) ::
          {:ok, create_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_member_errors()}
  def create_member(%Client{} = client, input, options \\ []) do
    url_path = "/members"
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
  Creates sample findings.
  """
  @spec create_sample_findings(map(), create_sample_findings_request(), list()) ::
          {:ok, create_sample_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_sample_findings_errors()}
  def create_sample_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings/sample"
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
  Declines Amazon Macie membership invitations that were received from specific
  accounts.
  """
  @spec decline_invitations(map(), decline_invitations_request(), list()) ::
          {:ok, decline_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, decline_invitations_errors()}
  def decline_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/decline"
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
  Deletes an allow list.
  """
  @spec delete_allow_list(map(), String.t() | atom(), delete_allow_list_request(), list()) ::
          {:ok, delete_allow_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_allow_list_errors()}
  def delete_allow_list(%Client{} = client, id, input, options \\ []) do
    url_path = "/allow-lists/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ignoreJobChecks", "ignoreJobChecks"}
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
  Soft deletes a custom data identifier.
  """
  @spec delete_custom_data_identifier(
          map(),
          String.t() | atom(),
          delete_custom_data_identifier_request(),
          list()
        ) ::
          {:ok, delete_custom_data_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_custom_data_identifier_errors()}
  def delete_custom_data_identifier(%Client{} = client, id, input, options \\ []) do
    url_path = "/custom-data-identifiers/#{AWS.Util.encode_uri(id)}"
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
  Deletes a findings filter.
  """
  @spec delete_findings_filter(
          map(),
          String.t() | atom(),
          delete_findings_filter_request(),
          list()
        ) ::
          {:ok, delete_findings_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_findings_filter_errors()}
  def delete_findings_filter(%Client{} = client, id, input, options \\ []) do
    url_path = "/findingsfilters/#{AWS.Util.encode_uri(id)}"
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
  Deletes Amazon Macie membership invitations that were received from specific
  accounts.
  """
  @spec delete_invitations(map(), delete_invitations_request(), list()) ::
          {:ok, delete_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_invitations_errors()}
  def delete_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/delete"
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
  Deletes the association between an Amazon Macie administrator account and an
  account.
  """
  @spec delete_member(map(), String.t() | atom(), delete_member_request(), list()) ::
          {:ok, delete_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_member_errors()}
  def delete_member(%Client{} = client, id, input, options \\ []) do
    url_path = "/members/#{AWS.Util.encode_uri(id)}"
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
  Retrieves (queries) statistical data and other information about one or more S3
  buckets that Amazon Macie monitors and analyzes for an account.
  """
  @spec describe_buckets(map(), describe_buckets_request(), list()) ::
          {:ok, describe_buckets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_buckets_errors()}
  def describe_buckets(%Client{} = client, input, options \\ []) do
    url_path = "/datasources/s3"
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
  Retrieves the status and settings for a classification job.
  """
  @spec describe_classification_job(map(), String.t() | atom(), list()) ::
          {:ok, describe_classification_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_classification_job_errors()}
  def describe_classification_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the Amazon Macie configuration settings for an organization in
  Organizations.
  """
  @spec describe_organization_configuration(map(), list()) ::
          {:ok, describe_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_organization_configuration_errors()}
  def describe_organization_configuration(%Client{} = client, options \\ []) do
    url_path = "/admin/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disables Amazon Macie and deletes all settings and resources for a Macie
  account.
  """
  @spec disable_macie(map(), disable_macie_request(), list()) ::
          {:ok, disable_macie_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_macie_errors()}
  def disable_macie(%Client{} = client, input, options \\ []) do
    url_path = "/macie"
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
  Disables an account as the delegated Amazon Macie administrator account for an
  organization in Organizations.
  """
  @spec disable_organization_admin_account(
          map(),
          disable_organization_admin_account_request(),
          list()
        ) ::
          {:ok, disable_organization_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_organization_admin_account_errors()}
  def disable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"adminAccountId", "adminAccountId"}
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
  Disassociates a member account from its Amazon Macie administrator account.
  """
  @spec disassociate_from_administrator_account(
          map(),
          disassociate_from_administrator_account_request(),
          list()
        ) ::
          {:ok, disassociate_from_administrator_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_from_administrator_account_errors()}
  def disassociate_from_administrator_account(%Client{} = client, input, options \\ []) do
    url_path = "/administrator/disassociate"
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
  (Deprecated) Disassociates a member account from its Amazon Macie administrator
  account.

  This operation has been replaced by the DisassociateFromAdministratorAccount
  operation.
  """
  @spec disassociate_from_master_account(
          map(),
          disassociate_from_master_account_request(),
          list()
        ) ::
          {:ok, disassociate_from_master_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_from_master_account_errors()}
  def disassociate_from_master_account(%Client{} = client, input, options \\ []) do
    url_path = "/master/disassociate"
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
  Disassociates an Amazon Macie administrator account from a member account.
  """
  @spec disassociate_member(map(), String.t() | atom(), disassociate_member_request(), list()) ::
          {:ok, disassociate_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_member_errors()}
  def disassociate_member(%Client{} = client, id, input, options \\ []) do
    url_path = "/members/disassociate/#{AWS.Util.encode_uri(id)}"
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
  Enables Amazon Macie and specifies the configuration settings for a Macie
  account.
  """
  @spec enable_macie(map(), enable_macie_request(), list()) ::
          {:ok, enable_macie_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_macie_errors()}
  def enable_macie(%Client{} = client, input, options \\ []) do
    url_path = "/macie"
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
  Designates an account as the delegated Amazon Macie administrator account for an
  organization in Organizations.
  """
  @spec enable_organization_admin_account(
          map(),
          enable_organization_admin_account_request(),
          list()
        ) ::
          {:ok, enable_organization_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_organization_admin_account_errors()}
  def enable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin"
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
  Retrieves information about the Amazon Macie administrator account for an
  account.
  """
  @spec get_administrator_account(map(), list()) ::
          {:ok, get_administrator_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_administrator_account_errors()}
  def get_administrator_account(%Client{} = client, options \\ []) do
    url_path = "/administrator"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the settings and status of an allow list.
  """
  @spec get_allow_list(map(), String.t() | atom(), list()) ::
          {:ok, get_allow_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_allow_list_errors()}
  def get_allow_list(%Client{} = client, id, options \\ []) do
    url_path = "/allow-lists/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the configuration settings and status of automated sensitive data
  discovery for an organization or standalone account.
  """
  @spec get_automated_discovery_configuration(map(), list()) ::
          {:ok, get_automated_discovery_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_automated_discovery_configuration_errors()}
  def get_automated_discovery_configuration(%Client{} = client, options \\ []) do
    url_path = "/automated-discovery/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) aggregated statistical data about all the S3 buckets that
  Amazon Macie monitors and analyzes for an account.
  """
  @spec get_bucket_statistics(map(), get_bucket_statistics_request(), list()) ::
          {:ok, get_bucket_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bucket_statistics_errors()}
  def get_bucket_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/datasources/s3/statistics"
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
  Retrieves the configuration settings for storing data classification results.
  """
  @spec get_classification_export_configuration(map(), list()) ::
          {:ok, get_classification_export_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_classification_export_configuration_errors()}
  def get_classification_export_configuration(%Client{} = client, options \\ []) do
    url_path = "/classification-export-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the classification scope settings for an account.
  """
  @spec get_classification_scope(map(), String.t() | atom(), list()) ::
          {:ok, get_classification_scope_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_classification_scope_errors()}
  def get_classification_scope(%Client{} = client, id, options \\ []) do
    url_path = "/classification-scopes/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the criteria and other settings for a custom data identifier.
  """
  @spec get_custom_data_identifier(map(), String.t() | atom(), list()) ::
          {:ok, get_custom_data_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_custom_data_identifier_errors()}
  def get_custom_data_identifier(%Client{} = client, id, options \\ []) do
    url_path = "/custom-data-identifiers/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) aggregated statistical data about findings.
  """
  @spec get_finding_statistics(map(), get_finding_statistics_request(), list()) ::
          {:ok, get_finding_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_finding_statistics_errors()}
  def get_finding_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/findings/statistics"
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
  Retrieves the details of one or more findings.
  """
  @spec get_findings(map(), get_findings_request(), list()) ::
          {:ok, get_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_findings_errors()}
  def get_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings/describe"
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
  Retrieves the criteria and other settings for a findings filter.
  """
  @spec get_findings_filter(map(), String.t() | atom(), list()) ::
          {:ok, get_findings_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_findings_filter_errors()}
  def get_findings_filter(%Client{} = client, id, options \\ []) do
    url_path = "/findingsfilters/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the configuration settings for publishing findings to Security Hub.
  """
  @spec get_findings_publication_configuration(map(), list()) ::
          {:ok, get_findings_publication_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_findings_publication_configuration_errors()}
  def get_findings_publication_configuration(%Client{} = client, options \\ []) do
    url_path = "/findings-publication-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the count of Amazon Macie membership invitations that were received by
  an account.
  """
  @spec get_invitations_count(map(), list()) ::
          {:ok, get_invitations_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_invitations_count_errors()}
  def get_invitations_count(%Client{} = client, options \\ []) do
    url_path = "/invitations/count"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the status and configuration settings for an Amazon Macie account.
  """
  @spec get_macie_session(map(), list()) ::
          {:ok, get_macie_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_macie_session_errors()}
  def get_macie_session(%Client{} = client, options \\ []) do
    url_path = "/macie"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  (Deprecated) Retrieves information about the Amazon Macie administrator account
  for an account.

  This operation has been replaced by the GetAdministratorAccount operation.
  """
  @spec get_master_account(map(), list()) ::
          {:ok, get_master_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_master_account_errors()}
  def get_master_account(%Client{} = client, options \\ []) do
    url_path = "/master"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an account that's associated with an Amazon Macie
  administrator account.
  """
  @spec get_member(map(), String.t() | atom(), list()) ::
          {:ok, get_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_member_errors()}
  def get_member(%Client{} = client, id, options \\ []) do
    url_path = "/members/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) sensitive data discovery statistics and the sensitivity
  score for an S3 bucket.
  """
  @spec get_resource_profile(map(), String.t() | atom(), list()) ::
          {:ok, get_resource_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_profile_errors()}
  def get_resource_profile(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resource-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the status and configuration settings for retrieving occurrences of
  sensitive data reported by findings.
  """
  @spec get_reveal_configuration(map(), list()) ::
          {:ok, get_reveal_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_reveal_configuration_errors()}
  def get_reveal_configuration(%Client{} = client, options \\ []) do
    url_path = "/reveal-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves occurrences of sensitive data reported by a finding.
  """
  @spec get_sensitive_data_occurrences(map(), String.t() | atom(), list()) ::
          {:ok, get_sensitive_data_occurrences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sensitive_data_occurrences_errors()}
  def get_sensitive_data_occurrences(%Client{} = client, finding_id, options \\ []) do
    url_path = "/findings/#{AWS.Util.encode_uri(finding_id)}/reveal"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Checks whether occurrences of sensitive data can be retrieved for a finding.
  """
  @spec get_sensitive_data_occurrences_availability(map(), String.t() | atom(), list()) ::
          {:ok, get_sensitive_data_occurrences_availability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sensitive_data_occurrences_availability_errors()}
  def get_sensitive_data_occurrences_availability(%Client{} = client, finding_id, options \\ []) do
    url_path = "/findings/#{AWS.Util.encode_uri(finding_id)}/reveal/availability"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the settings for the sensitivity inspection template for an account.
  """
  @spec get_sensitivity_inspection_template(map(), String.t() | atom(), list()) ::
          {:ok, get_sensitivity_inspection_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sensitivity_inspection_template_errors()}
  def get_sensitivity_inspection_template(%Client{} = client, id, options \\ []) do
    url_path = "/templates/sensitivity-inspections/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) quotas and aggregated usage data for one or more accounts.
  """
  @spec get_usage_statistics(map(), get_usage_statistics_request(), list()) ::
          {:ok, get_usage_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_usage_statistics_errors()}
  def get_usage_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/usage/statistics"
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
  Retrieves (queries) aggregated usage data for an account.
  """
  @spec get_usage_totals(map(), String.t() | atom() | nil, list()) ::
          {:ok, get_usage_totals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_usage_totals_errors()}
  def get_usage_totals(%Client{} = client, time_range \\ nil, options \\ []) do
    url_path = "/usage"
    headers = []
    query_params = []

    query_params =
      if !is_nil(time_range) do
        [{"timeRange", time_range} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a subset of information about all the allow lists for an account.
  """
  @spec list_allow_lists(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_allow_lists_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_allow_lists_errors()}
  def list_allow_lists(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/allow-lists"
    headers = []
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the status of automated sensitive data discovery for one or more
  accounts.
  """
  @spec list_automated_discovery_accounts(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_automated_discovery_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_automated_discovery_accounts_errors()}
  def list_automated_discovery_accounts(
        %Client{} = client,
        account_ids \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/automated-discovery/accounts"
    headers = []
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
      if !is_nil(account_ids) do
        [{"accountIds", account_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a subset of information about one or more classification jobs.
  """
  @spec list_classification_jobs(map(), list_classification_jobs_request(), list()) ::
          {:ok, list_classification_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_classification_jobs_errors()}
  def list_classification_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/jobs/list"
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
  Retrieves a subset of information about the classification scope for an account.
  """
  @spec list_classification_scopes(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_classification_scopes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_classification_scopes_errors()}
  def list_classification_scopes(
        %Client{} = client,
        name \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/classification-scopes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a subset of information about the custom data identifiers for an
  account.
  """
  @spec list_custom_data_identifiers(map(), list_custom_data_identifiers_request(), list()) ::
          {:ok, list_custom_data_identifiers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_custom_data_identifiers_errors()}
  def list_custom_data_identifiers(%Client{} = client, input, options \\ []) do
    url_path = "/custom-data-identifiers/list"
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
  Retrieves a subset of information about one or more findings.
  """
  @spec list_findings(map(), list_findings_request(), list()) ::
          {:ok, list_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_findings_errors()}
  def list_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings"
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
  Retrieves a subset of information about all the findings filters for an account.
  """
  @spec list_findings_filters(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_findings_filters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_findings_filters_errors()}
  def list_findings_filters(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/findingsfilters"
    headers = []
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about Amazon Macie membership invitations that were
  received by an account.
  """
  @spec list_invitations(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_invitations_errors()}
  def list_invitations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/invitations"
    headers = []
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the managed data identifiers that Amazon Macie
  currently provides.
  """
  @spec list_managed_data_identifiers(map(), list_managed_data_identifiers_request(), list()) ::
          {:ok, list_managed_data_identifiers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_managed_data_identifiers(%Client{} = client, input, options \\ []) do
    url_path = "/managed-data-identifiers/list"
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
  Retrieves information about the accounts that are associated with an Amazon
  Macie administrator account.
  """
  @spec list_members(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_members_errors()}
  def list_members(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        only_associated \\ nil,
        options \\ []
      ) do
    url_path = "/members"
    headers = []
    query_params = []

    query_params =
      if !is_nil(only_associated) do
        [{"onlyAssociated", only_associated} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the delegated Amazon Macie administrator account for
  an organization in Organizations.
  """
  @spec list_organization_admin_accounts(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_organization_admin_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_organization_admin_accounts_errors()}
  def list_organization_admin_accounts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/admin"
    headers = []
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about objects that Amazon Macie selected from an S3 bucket
  for automated sensitive data discovery.
  """
  @spec list_resource_profile_artifacts(
          map(),
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_resource_profile_artifacts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_profile_artifacts_errors()}
  def list_resource_profile_artifacts(
        %Client{} = client,
        next_token \\ nil,
        resource_arn,
        options \\ []
      ) do
    url_path = "/resource-profiles/artifacts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

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
  Retrieves information about the types and amount of sensitive data that Amazon
  Macie found in an S3 bucket.
  """
  @spec list_resource_profile_detections(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_resource_profile_detections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_profile_detections_errors()}
  def list_resource_profile_detections(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resource_arn,
        options \\ []
      ) do
    url_path = "/resource-profiles/detections"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a subset of information about the sensitivity inspection template for
  an account.
  """
  @spec list_sensitivity_inspection_templates(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_sensitivity_inspection_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sensitivity_inspection_templates_errors()}
  def list_sensitivity_inspection_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/templates/sensitivity-inspections"
    headers = []
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the tags (keys and values) that are associated with an Amazon Macie
  resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds or updates the configuration settings for storing data classification
  results.
  """
  @spec put_classification_export_configuration(
          map(),
          put_classification_export_configuration_request(),
          list()
        ) ::
          {:ok, put_classification_export_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_classification_export_configuration_errors()}
  def put_classification_export_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/classification-export-configuration"
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
  Updates the configuration settings for publishing findings to Security Hub.
  """
  @spec put_findings_publication_configuration(
          map(),
          put_findings_publication_configuration_request(),
          list()
        ) ::
          {:ok, put_findings_publication_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_findings_publication_configuration_errors()}
  def put_findings_publication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/findings-publication-configuration"
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
  Retrieves (queries) statistical data and other information about Amazon Web
  Services resources that Amazon Macie monitors and analyzes for an account.
  """
  @spec search_resources(map(), search_resources_request(), list()) ::
          {:ok, search_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_resources_errors()}
  def search_resources(%Client{} = client, input, options \\ []) do
    url_path = "/datasources/search-resources"
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
  Adds or updates one or more tags (keys and values) that are associated with an
  Amazon Macie resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
      204
    )
  end

  @doc """
  Tests criteria for a custom data identifier.
  """
  @spec test_custom_data_identifier(map(), test_custom_data_identifier_request(), list()) ::
          {:ok, test_custom_data_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_custom_data_identifier_errors()}
  def test_custom_data_identifier(%Client{} = client, input, options \\ []) do
    url_path = "/custom-data-identifiers/test"
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
  Removes one or more tags (keys and values) from an Amazon Macie resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
      204
    )
  end

  @doc """
  Updates the settings for an allow list.
  """
  @spec update_allow_list(map(), String.t() | atom(), update_allow_list_request(), list()) ::
          {:ok, update_allow_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_allow_list_errors()}
  def update_allow_list(%Client{} = client, id, input, options \\ []) do
    url_path = "/allow-lists/#{AWS.Util.encode_uri(id)}"
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
  Changes the configuration settings and status of automated sensitive data
  discovery for an organization or standalone account.
  """
  @spec update_automated_discovery_configuration(
          map(),
          update_automated_discovery_configuration_request(),
          list()
        ) ::
          {:ok, update_automated_discovery_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_automated_discovery_configuration_errors()}
  def update_automated_discovery_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/automated-discovery/configuration"
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
  Changes the status of a classification job.
  """
  @spec update_classification_job(
          map(),
          String.t() | atom(),
          update_classification_job_request(),
          list()
        ) ::
          {:ok, update_classification_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_classification_job_errors()}
  def update_classification_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the classification scope settings for an account.
  """
  @spec update_classification_scope(
          map(),
          String.t() | atom(),
          update_classification_scope_request(),
          list()
        ) ::
          {:ok, update_classification_scope_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_classification_scope_errors()}
  def update_classification_scope(%Client{} = client, id, input, options \\ []) do
    url_path = "/classification-scopes/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the criteria and other settings for a findings filter.
  """
  @spec update_findings_filter(
          map(),
          String.t() | atom(),
          update_findings_filter_request(),
          list()
        ) ::
          {:ok, update_findings_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_findings_filter_errors()}
  def update_findings_filter(%Client{} = client, id, input, options \\ []) do
    url_path = "/findingsfilters/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Suspends or re-enables Amazon Macie, or updates the configuration settings for a
  Macie account.
  """
  @spec update_macie_session(map(), update_macie_session_request(), list()) ::
          {:ok, update_macie_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_macie_session_errors()}
  def update_macie_session(%Client{} = client, input, options \\ []) do
    url_path = "/macie"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Enables an Amazon Macie administrator to suspend or re-enable Macie for a member
  account.
  """
  @spec update_member_session(map(), String.t() | atom(), update_member_session_request(), list()) ::
          {:ok, update_member_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_member_session_errors()}
  def update_member_session(%Client{} = client, id, input, options \\ []) do
    url_path = "/macie/members/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the Amazon Macie configuration settings for an organization in
  Organizations.
  """
  @spec update_organization_configuration(
          map(),
          update_organization_configuration_request(),
          list()
        ) ::
          {:ok, update_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_organization_configuration_errors()}
  def update_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/admin/configuration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the sensitivity score for an S3 bucket.
  """
  @spec update_resource_profile(map(), update_resource_profile_request(), list()) ::
          {:ok, update_resource_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_resource_profile_errors()}
  def update_resource_profile(%Client{} = client, input, options \\ []) do
    url_path = "/resource-profiles"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the sensitivity scoring settings for an S3 bucket.
  """
  @spec update_resource_profile_detections(
          map(),
          update_resource_profile_detections_request(),
          list()
        ) ::
          {:ok, update_resource_profile_detections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_resource_profile_detections_errors()}
  def update_resource_profile_detections(%Client{} = client, input, options \\ []) do
    url_path = "/resource-profiles/detections"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the status and configuration settings for retrieving occurrences of
  sensitive data reported by findings.
  """
  @spec update_reveal_configuration(map(), update_reveal_configuration_request(), list()) ::
          {:ok, update_reveal_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_reveal_configuration_errors()}
  def update_reveal_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/reveal-configuration"
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
  Updates the settings for the sensitivity inspection template for an account.
  """
  @spec update_sensitivity_inspection_template(
          map(),
          String.t() | atom(),
          update_sensitivity_inspection_template_request(),
          list()
        ) ::
          {:ok, update_sensitivity_inspection_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_sensitivity_inspection_template_errors()}
  def update_sensitivity_inspection_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/templates/sensitivity-inspections/#{AWS.Util.encode_uri(id)}"
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
end
