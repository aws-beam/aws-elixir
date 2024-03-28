# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AccessAnalyzer do
  @moduledoc """
  Identity and Access Management Access Analyzer helps you to set, verify, and
  refine your IAM policies by providing
  a suite of capabilities.

  Its features include findings for external and unused access,
  basic and custom policy checks for validating policies, and policy generation to
  generate
  fine-grained policies. To start using IAM Access Analyzer to identify external
  or unused access,
  you first need to create an analyzer.

  **External access analyzers** help identify potential risks
  of accessing resources by enabling you to identify any resource policies that
  grant access
  to an external principal. It does this by using logic-based reasoning to analyze
  resource-based policies in your Amazon Web Services environment. An external
  principal can be another
  Amazon Web Services account, a root user, an IAM user or role, a federated user,
  an Amazon Web Services service, or an
  anonymous user. You can also use IAM Access Analyzer to preview public and
  cross-account access
  to your resources before deploying permissions changes.

  **Unused access analyzers** help identify potential
  identity access risks by enabling you to identify unused IAM roles, unused
  access keys,
  unused console passwords, and IAM principals with unused service and
  action-level
  permissions.

  Beyond findings, IAM Access Analyzer provides basic and custom policy checks to
  validate IAM
  policies before deploying permissions changes. You can use policy generation to
  refine
  permissions by attaching a policy generated using access activity logged in
  CloudTrail logs.

  This guide describes the IAM Access Analyzer operations that you can call
  programmatically.
  For general information about IAM Access Analyzer, see [Identity and Access Management Access
  Analyzer](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html)
  in the
  **IAM User Guide**.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      trail_properties() :: %{
        "allRegions" => [boolean()],
        "cloudTrailArn" => String.t(),
        "regions" => list([String.t()]())
      }

  """
  @type trail_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_trail_details() :: %{
        "accessRole" => String.t(),
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer(),
        "trails" => list(trail()())
      }

  """
  @type cloud_trail_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        "tags" => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reason_summary() :: %{
        "description" => [String.t()],
        "statementId" => [String.t()],
        "statementIndex" => [integer()]
      }

  """
  @type reason_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      status_reason() :: %{
        "code" => String.t()
      }

  """
  @type status_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_configuration() :: %{
        "vpcId" => String.t()
      }

  """
  @type vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_archive_rule_request() :: %{
        "clientToken" => [String.t()]
      }

  """
  @type delete_archive_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_access_previews_response() :: %{
        optional("nextToken") => String.t(),
        required("accessPreviews") => list(access_preview_summary()())
      }

  """
  @type list_access_previews_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unused_iam_user_access_key_details() :: %{
        "accessKeyId" => [String.t()],
        "lastAccessed" => non_neg_integer()
      }

  """
  @type unused_iam_user_access_key_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_grant_constraints() :: %{
        "encryptionContextEquals" => map(),
        "encryptionContextSubset" => map()
      }

  """
  @type kms_grant_constraints() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generated_policy_properties() :: %{
        "cloudTrailProperties" => cloud_trail_properties(),
        "isComplete" => [boolean()],
        "principalArn" => String.t()
      }

  """
  @type generated_policy_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      finding_summary() :: %{
        "action" => list([String.t()]()),
        "analyzedAt" => non_neg_integer(),
        "condition" => map(),
        "createdAt" => non_neg_integer(),
        "error" => [String.t()],
        "id" => String.t(),
        "isPublic" => [boolean()],
        "principal" => map(),
        "resource" => [String.t()],
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t(),
        "sources" => list(finding_source()()),
        "status" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type finding_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_previews_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("analyzerArn") => String.t()
      }

  """
  @type list_access_previews_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sns_topic_configuration() :: %{
        "topicPolicy" => String.t()
      }

  """
  @type sns_topic_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unused_access_configuration() :: %{
        "unusedAccessAge" => [integer()]
      }

  """
  @type unused_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_bucket_acl_grant_configuration() :: %{
        "grantee" => list(),
        "permission" => String.t()
      }

  """
  @type s3_bucket_acl_grant_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analyzed_resource() :: %{
        "actions" => list([String.t()]()),
        "analyzedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "error" => [String.t()],
        "isPublic" => [boolean()],
        "resourceArn" => String.t(),
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t(),
        "sharedVia" => list([String.t()]()),
        "status" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type analyzed_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_analyzer_response() :: %{
        "analyzer" => analyzer_summary()
      }

  """
  @type get_analyzer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_findings_response() :: %{
        "findings" => list(finding_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_analyzer_request() :: %{
        "analyzerName" => String.t(),
        "archiveRules" => list(inline_archive_rule()()),
        "clientToken" => [String.t()],
        "configuration" => list(),
        "tags" => map(),
        "type" => String.t()
      }

  """
  @type create_analyzer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unused_iam_user_password_details() :: %{
        "lastAccessed" => non_neg_integer()
      }

  """
  @type unused_iam_user_password_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unused_iam_role_details() :: %{
        "lastAccessed" => non_neg_integer()
      }

  """
  @type unused_iam_role_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unused_permission_details() :: %{
        "actions" => list(unused_action()()),
        "lastAccessed" => non_neg_integer(),
        "serviceNamespace" => [String.t()]
      }

  """
  @type unused_permission_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        "tagKeys" => list([String.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_analyzed_resource_response() :: %{
        "resource" => analyzed_resource()
      }

  """
  @type get_analyzed_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_finding_v2_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("analyzerArn") => String.t()
      }

  """
  @type get_finding_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      check_no_new_access_request() :: %{
        required("existingPolicyDocument") => String.t(),
        required("newPolicyDocument") => String.t(),
        required("policyType") => String.t()
      }

  """
  @type check_no_new_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      position() :: %{
        "column" => [integer()],
        "line" => [integer()],
        "offset" => [integer()]
      }

  """
  @type position() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_analyzer_request() :: %{
        "clientToken" => [String.t()]
      }

  """
  @type delete_analyzer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_analyzers_response() :: %{
        "analyzers" => list(analyzer_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_analyzers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      check_access_not_granted_response() :: %{
        "message" => [String.t()],
        "reasons" => list(reason_summary()()),
        "result" => String.t()
      }

  """
  @type check_access_not_granted_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_policy_generation_response() :: %{}

  """
  @type cancel_policy_generation_response() :: %{}

  @typedoc """

  ## Example:

      list_findings_v2_request() :: %{
        optional("filter") => map(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("sort") => sort_criteria(),
        required("analyzerArn") => String.t()
      }

  """
  @type list_findings_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_analyzed_resources_request() :: %{
        "analyzerArn" => String.t(),
        "maxResults" => [integer()],
        "nextToken" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type list_analyzed_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_preview_status_reason() :: %{
        "code" => String.t()
      }

  """
  @type access_preview_status_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_archive_rules_request() :: %{
        "maxResults" => [integer()],
        "nextToken" => String.t()
      }

  """
  @type list_archive_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      span() :: %{
        "end" => position(),
        "start" => position()
      }

  """
  @type span() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      finding_source() :: %{
        "detail" => finding_source_detail(),
        "type" => String.t()
      }

  """
  @type finding_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_analyzed_resources_response() :: %{
        "analyzedResources" => list(analyzed_resource_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_analyzed_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_preview_finding() :: %{
        "action" => list([String.t()]()),
        "changeType" => String.t(),
        "condition" => map(),
        "createdAt" => non_neg_integer(),
        "error" => [String.t()],
        "existingFindingId" => String.t(),
        "existingFindingStatus" => String.t(),
        "id" => String.t(),
        "isPublic" => [boolean()],
        "principal" => map(),
        "resource" => [String.t()],
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t(),
        "sources" => list(finding_source()()),
        "status" => String.t()
      }

  """
  @type access_preview_finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      archive_rule_summary() :: %{
        "createdAt" => non_neg_integer(),
        "filter" => map(),
        "ruleName" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type archive_rule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_preview_request() :: %{
        optional("clientToken") => [String.t()],
        required("analyzerArn") => String.t(),
        required("configurations") => map()
      }

  """
  @type create_access_preview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      policy_generation_details() :: %{
        "principalArn" => String.t()
      }

  """
  @type policy_generation_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ecr_repository_configuration() :: %{
        "repositoryPolicy" => String.t()
      }

  """
  @type ecr_repository_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_generated_policy_response() :: %{
        required("generatedPolicyResult") => generated_policy_result(),
        required("jobDetails") => job_details()
      }

  """
  @type get_generated_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_policy_finding() :: %{
        "findingDetails" => [String.t()],
        "findingType" => String.t(),
        "issueCode" => String.t(),
        "learnMoreLink" => String.t(),
        "locations" => list(location()())
      }

  """
  @type validate_policy_finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_archive_rules_response() :: %{
        "archiveRules" => list(archive_rule_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_archive_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_generated_policy_request() :: %{
        optional("includeResourcePlaceholders") => [boolean()],
        optional("includeServiceLevelTemplate") => [boolean()]
      }

  """
  @type get_generated_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analyzed_resource_summary() :: %{
        "resourceArn" => String.t(),
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t()
      }

  """
  @type analyzed_resource_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      finding() :: %{
        "action" => list([String.t()]()),
        "analyzedAt" => non_neg_integer(),
        "condition" => map(),
        "createdAt" => non_neg_integer(),
        "error" => [String.t()],
        "id" => String.t(),
        "isPublic" => [boolean()],
        "principal" => map(),
        "resource" => [String.t()],
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t(),
        "sources" => list(finding_source()()),
        "status" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_grant_configuration() :: %{
        "constraints" => kms_grant_constraints(),
        "granteePrincipal" => String.t(),
        "issuingAccount" => String.t(),
        "operations" => list(String.t()()),
        "retiringPrincipal" => String.t()
      }

  """
  @type kms_grant_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      check_no_new_access_response() :: %{
        "message" => [String.t()],
        "reasons" => list(reason_summary()()),
        "result" => String.t()
      }

  """
  @type check_no_new_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_findings_request() :: %{
        "analyzerArn" => String.t(),
        "filter" => map(),
        "maxResults" => [integer()],
        "nextToken" => String.t(),
        "sort" => sort_criteria()
      }

  """
  @type list_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_policy_generations_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("principalArn") => String.t()
      }

  """
  @type list_policy_generations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generated_policy_result() :: %{
        "generatedPolicies" => list(generated_policy()()),
        "properties" => generated_policy_properties()
      }

  """
  @type generated_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iam_role_configuration() :: %{
        "trustPolicy" => String.t()
      }

  """
  @type iam_role_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      location() :: %{
        "path" => list(list()()),
        "span" => span()
      }

  """
  @type location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      policy_generation() :: %{
        "completedOn" => non_neg_integer(),
        "jobId" => String.t(),
        "principalArn" => String.t(),
        "startedOn" => non_neg_integer(),
        "status" => String.t()
      }

  """
  @type policy_generation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      apply_archive_rule_request() :: %{
        "analyzerArn" => String.t(),
        "clientToken" => [String.t()],
        "ruleName" => String.t()
      }

  """
  @type apply_archive_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_policy_generations_response() :: %{
        optional("nextToken") => String.t(),
        required("policyGenerations") => list(policy_generation()())
      }

  """
  @type list_policy_generations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_key_configuration() :: %{
        "grants" => list(kms_grant_configuration()()),
        "keyPolicies" => map()
      }

  """
  @type kms_key_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_details() :: %{
        "completedOn" => non_neg_integer(),
        "jobError" => job_error(),
        "jobId" => String.t(),
        "startedOn" => non_neg_integer(),
        "status" => String.t()
      }

  """
  @type job_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inline_archive_rule() :: %{
        "filter" => map(),
        "ruleName" => String.t()
      }

  """
  @type inline_archive_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ebs_snapshot_configuration() :: %{
        "groups" => list(String.t()()),
        "kmsKeyId" => String.t(),
        "userIds" => list(String.t()())
      }

  """
  @type ebs_snapshot_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dynamodb_table_configuration() :: %{
        "tablePolicy" => String.t()
      }

  """
  @type dynamodb_table_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      efs_file_system_configuration() :: %{
        "fileSystemPolicy" => String.t()
      }

  """
  @type efs_file_system_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_finding_request() :: %{
        "analyzerArn" => String.t()
      }

  """
  @type get_finding_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_policy_response() :: %{
        optional("nextToken") => String.t(),
        required("findings") => list(validate_policy_finding()())
      }

  """
  @type validate_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_express_directory_bucket_configuration() :: %{
        "bucketPolicy" => String.t()
      }

  """
  @type s3_express_directory_bucket_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_preview_response() :: %{
        required("id") => String.t()
      }

  """
  @type create_access_preview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_policy_generation_request() :: %{
        optional("clientToken") => [String.t()],
        optional("cloudTrailDetails") => cloud_trail_details(),
        required("policyGenerationDetails") => policy_generation_details()
      }

  """
  @type start_policy_generation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      external_access_details() :: %{
        "action" => list([String.t()]()),
        "condition" => map(),
        "isPublic" => [boolean()],
        "principal" => map(),
        "sources" => list(finding_source()())
      }

  """
  @type external_access_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_finding_response() :: %{
        "finding" => finding()
      }

  """
  @type get_finding_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sort_criteria() :: %{
        "attributeName" => [String.t()],
        "orderBy" => String.t()
      }

  """
  @type sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_trail_properties() :: %{
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer(),
        "trailProperties" => list(trail_properties()())
      }

  """
  @type cloud_trail_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_preview_findings_request() :: %{
        optional("filter") => map(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("analyzerArn") => String.t()
      }

  """
  @type list_access_preview_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unprocessable_entity_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type unprocessable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      substring() :: %{
        "length" => [integer()],
        "start" => [integer()]
      }

  """
  @type substring() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_analyzer_response() :: %{
        "arn" => String.t()
      }

  """
  @type create_analyzer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validate_policy_request() :: %{
        optional("locale") => String.t(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("validatePolicyResourceType") => String.t(),
        required("policyDocument") => String.t(),
        required("policyType") => String.t()
      }

  """
  @type validate_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_analyzer_request() :: %{}

  """
  @type get_analyzer_request() :: %{}

  @typedoc """

  ## Example:

      get_analyzed_resource_request() :: %{
        "analyzerArn" => String.t(),
        "resourceArn" => String.t()
      }

  """
  @type get_analyzed_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_bucket_configuration() :: %{
        "accessPoints" => map(),
        "bucketAclGrants" => list(s3_bucket_acl_grant_configuration()()),
        "bucketPolicy" => String.t(),
        "bucketPublicAccessBlock" => s3_public_access_block_configuration()
      }

  """
  @type s3_bucket_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => String.t()
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

      update_findings_request() :: %{
        "analyzerArn" => String.t(),
        "clientToken" => [String.t()],
        "ids" => list(String.t()()),
        "resourceArn" => String.t(),
        "status" => String.t()
      }

  """
  @type update_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_access_preview_request() :: %{
        required("analyzerArn") => String.t()
      }

  """
  @type get_access_preview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      finding_source_detail() :: %{
        "accessPointAccount" => [String.t()],
        "accessPointArn" => [String.t()]
      }

  """
  @type finding_source_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access() :: %{
        "actions" => list(String.t()())
      }

  """
  @type access() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rds_db_snapshot_configuration() :: %{
        "attributes" => map(),
        "kmsKeyId" => String.t()
      }

  """
  @type rds_db_snapshot_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_finding_v2_response() :: %{
        "analyzedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "error" => [String.t()],
        "findingDetails" => list(list()()),
        "findingType" => String.t(),
        "id" => String.t(),
        "nextToken" => String.t(),
        "resource" => [String.t()],
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t(),
        "status" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_finding_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      finding_summary_v2() :: %{
        "analyzedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "error" => [String.t()],
        "findingType" => String.t(),
        "id" => String.t(),
        "resource" => [String.t()],
        "resourceOwnerAccount" => [String.t()],
        "resourceType" => String.t(),
        "status" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type finding_summary_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_policy_generation_request() :: %{}

  """
  @type cancel_policy_generation_request() :: %{}

  @typedoc """

  ## Example:

      get_archive_rule_request() :: %{}

  """
  @type get_archive_rule_request() :: %{}

  @typedoc """

  ## Example:

      analyzer_summary() :: %{
        "arn" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "lastResourceAnalyzed" => [String.t()],
        "lastResourceAnalyzedAt" => non_neg_integer(),
        "name" => String.t(),
        "status" => String.t(),
        "statusReason" => status_reason(),
        "tags" => map(),
        "type" => String.t()
      }

  """
  @type analyzer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trail() :: %{
        "allRegions" => [boolean()],
        "cloudTrailArn" => String.t(),
        "regions" => list([String.t()]())
      }

  """
  @type trail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generated_policy() :: %{
        "policy" => [String.t()]
      }

  """
  @type generated_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      check_access_not_granted_request() :: %{
        required("access") => list(access()()),
        required("policyDocument") => String.t(),
        required("policyType") => String.t()
      }

  """
  @type check_access_not_granted_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rds_db_cluster_snapshot_configuration() :: %{
        "attributes" => map(),
        "kmsKeyId" => String.t()
      }

  """
  @type rds_db_cluster_snapshot_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_preview_summary() :: %{
        "analyzerArn" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "status" => String.t(),
        "statusReason" => access_preview_status_reason()
      }

  """
  @type access_preview_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_analyzers_request() :: %{
        "maxResults" => [integer()],
        "nextToken" => String.t(),
        "type" => String.t()
      }

  """
  @type list_analyzers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_findings_v2_response() :: %{
        "findings" => list(finding_summary_v2()()),
        "nextToken" => String.t()
      }

  """
  @type list_findings_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_policy_generation_response() :: %{
        required("jobId") => String.t()
      }

  """
  @type start_policy_generation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_access_preview_response() :: %{
        required("accessPreview") => access_preview()
      }

  """
  @type get_access_preview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internet_configuration() :: %{}

  """
  @type internet_configuration() :: %{}

  @typedoc """

  ## Example:

      criterion() :: %{
        "contains" => list([String.t()]()),
        "eq" => list([String.t()]()),
        "exists" => [boolean()],
        "neq" => list([String.t()]())
      }

  """
  @type criterion() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_archive_rule_request() :: %{
        "clientToken" => [String.t()],
        "filter" => map(),
        "ruleName" => String.t()
      }

  """
  @type create_archive_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_resource_scan_request() :: %{
        "analyzerArn" => String.t(),
        "resourceArn" => String.t(),
        "resourceOwnerAccount" => [String.t()]
      }

  """
  @type start_resource_scan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      secrets_manager_secret_configuration() :: %{
        "kmsKeyId" => String.t(),
        "secretPolicy" => String.t()
      }

  """
  @type secrets_manager_secret_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_error() :: %{
        "code" => String.t(),
        "message" => [String.t()]
      }

  """
  @type job_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_public_access_block_configuration() :: %{
        "ignorePublicAcls" => [boolean()],
        "restrictPublicBuckets" => [boolean()]
      }

  """
  @type s3_public_access_block_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_preview() :: %{
        "analyzerArn" => String.t(),
        "configurations" => map(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "status" => String.t(),
        "statusReason" => access_preview_status_reason()
      }

  """
  @type access_preview() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_archive_rule_response() :: %{
        "archiveRule" => archive_rule_summary()
      }

  """
  @type get_archive_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sqs_queue_configuration() :: %{
        "queuePolicy" => String.t()
      }

  """
  @type sqs_queue_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_access_point_configuration() :: %{
        "accessPointPolicy" => String.t(),
        "networkOrigin" => list(),
        "publicAccessBlock" => s3_public_access_block_configuration()
      }

  """
  @type s3_access_point_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_archive_rule_request() :: %{
        "clientToken" => [String.t()],
        "filter" => map()
      }

  """
  @type update_archive_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_preview_findings_response() :: %{
        optional("nextToken") => String.t(),
        required("findings") => list(access_preview_finding()())
      }

  """
  @type list_access_preview_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dynamodb_stream_configuration() :: %{
        "streamPolicy" => String.t()
      }

  """
  @type dynamodb_stream_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unused_action() :: %{
        "action" => [String.t()],
        "lastAccessed" => non_neg_integer()
      }

  """
  @type unused_action() :: %{String.t() => any()}

  @type apply_archive_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_policy_generation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type check_access_not_granted_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | internal_server_exception()

  @type check_no_new_access_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | internal_server_exception()

  @type create_access_preview_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_analyzer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_archive_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_analyzer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_archive_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_access_preview_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_analyzed_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_analyzer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_archive_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_finding_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_finding_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_generated_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_access_preview_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_access_previews_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_analyzed_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_analyzers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_archive_rules_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_findings_v2_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_policy_generations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_policy_generation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type start_resource_scan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_archive_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type validate_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2019-11-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "access-analyzer",
      global?: false,
      protocol: "rest-json",
      service_id: "AccessAnalyzer",
      signature_version: "v4",
      signing_name: "access-analyzer",
      target_prefix: nil
    }
  end

  @doc """
  Retroactively applies the archive rule to existing findings that meet the
  archive rule
  criteria.
  """
  @spec apply_archive_rule(map(), apply_archive_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, apply_archive_rule_errors()}
  def apply_archive_rule(%Client{} = client, input, options \\ []) do
    url_path = "/archive-rule"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Cancels the requested policy generation.
  """
  @spec cancel_policy_generation(map(), String.t(), cancel_policy_generation_request(), list()) ::
          {:ok, cancel_policy_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_policy_generation_errors()}
  def cancel_policy_generation(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/policy/generation/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Checks whether the specified access isn't allowed by a policy.
  """
  @spec check_access_not_granted(map(), check_access_not_granted_request(), list()) ::
          {:ok, check_access_not_granted_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, check_access_not_granted_errors()}
  def check_access_not_granted(%Client{} = client, input, options \\ []) do
    url_path = "/policy/check-access-not-granted"
    headers = []
    query_params = []

    meta = metadata()

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
  Checks whether new access is allowed for an updated policy when compared to the
  existing
  policy.

  You can find examples for reference policies and learn how to set up and run a
  custom
  policy check for new access in the [IAM Access Analyzer custom policy checks samples](https://github.com/aws-samples/iam-access-analyzer-custom-policy-check-samples)
  repository on GitHub. The reference
  policies in this repository are meant to be passed to the
  `existingPolicyDocument` request parameter.
  """
  @spec check_no_new_access(map(), check_no_new_access_request(), list()) ::
          {:ok, check_no_new_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, check_no_new_access_errors()}
  def check_no_new_access(%Client{} = client, input, options \\ []) do
    url_path = "/policy/check-no-new-access"
    headers = []
    query_params = []

    meta = metadata()

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
  Creates an access preview that allows you to preview IAM Access Analyzer
  findings for your
  resource before deploying resource permissions.
  """
  @spec create_access_preview(map(), create_access_preview_request(), list()) ::
          {:ok, create_access_preview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_access_preview_errors()}
  def create_access_preview(%Client{} = client, input, options \\ []) do
    url_path = "/access-preview"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an analyzer for your account.
  """
  @spec create_analyzer(map(), create_analyzer_request(), list()) ::
          {:ok, create_analyzer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_analyzer_errors()}
  def create_analyzer(%Client{} = client, input, options \\ []) do
    url_path = "/analyzer"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an archive rule for the specified analyzer.

  Archive rules automatically archive
  new findings that meet the criteria you define when you create the rule.

  To learn about filter keys that you can use to create an archive rule, see [IAM Access Analyzer filter
  keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html)
  in the **IAM User Guide**.
  """
  @spec create_archive_rule(map(), String.t(), create_archive_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_archive_rule_errors()}
  def create_archive_rule(%Client{} = client, analyzer_name, input, options \\ []) do
    url_path = "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Deletes the specified analyzer.

  When you delete an analyzer, IAM Access Analyzer is disabled
  for the account or organization in the current or specific Region. All findings
  that were
  generated by the analyzer are deleted. You cannot undo this action.
  """
  @spec delete_analyzer(map(), String.t(), delete_analyzer_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_analyzer_errors()}
  def delete_analyzer(%Client{} = client, analyzer_name, input, options \\ []) do
    url_path = "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

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
  Deletes the specified archive rule.
  """
  @spec delete_archive_rule(map(), String.t(), String.t(), delete_archive_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_archive_rule_errors()}
  def delete_archive_rule(%Client{} = client, analyzer_name, rule_name, input, options \\ []) do
    url_path =
      "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule/#{AWS.Util.encode_uri(rule_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

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
  Retrieves information about an access preview for the specified analyzer.
  """
  @spec get_access_preview(map(), String.t(), String.t(), list()) ::
          {:ok, get_access_preview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_access_preview_errors()}
  def get_access_preview(%Client{} = client, access_preview_id, analyzer_arn, options \\ []) do
    url_path = "/access-preview/#{AWS.Util.encode_uri(access_preview_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(analyzer_arn) do
        [{"analyzerArn", analyzer_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a resource that was analyzed.
  """
  @spec get_analyzed_resource(map(), String.t(), String.t(), list()) ::
          {:ok, get_analyzed_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_analyzed_resource_errors()}
  def get_analyzed_resource(%Client{} = client, analyzer_arn, resource_arn, options \\ []) do
    url_path = "/analyzed-resource"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(analyzer_arn) do
        [{"analyzerArn", analyzer_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified analyzer.
  """
  @spec get_analyzer(map(), String.t(), list()) ::
          {:ok, get_analyzer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_analyzer_errors()}
  def get_analyzer(%Client{} = client, analyzer_name, options \\ []) do
    url_path = "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an archive rule.

  To learn about filter keys that you can use to create an archive rule, see [IAM Access Analyzer filter
  keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html)
  in the **IAM User Guide**.
  """
  @spec get_archive_rule(map(), String.t(), String.t(), list()) ::
          {:ok, get_archive_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_archive_rule_errors()}
  def get_archive_rule(%Client{} = client, analyzer_name, rule_name, options \\ []) do
    url_path =
      "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule/#{AWS.Util.encode_uri(rule_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified finding.

  GetFinding and GetFindingV2 both use
  `access-analyzer:GetFinding` in the `Action` element of an IAM
  policy statement. You must have permission to perform the
  `access-analyzer:GetFinding` action.
  """
  @spec get_finding(map(), String.t(), String.t(), list()) ::
          {:ok, get_finding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_finding_errors()}
  def get_finding(%Client{} = client, id, analyzer_arn, options \\ []) do
    url_path = "/finding/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(analyzer_arn) do
        [{"analyzerArn", analyzer_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified finding.

  GetFinding and GetFindingV2 both use
  `access-analyzer:GetFinding` in the `Action` element of an IAM
  policy statement. You must have permission to perform the
  `access-analyzer:GetFinding` action.
  """
  @spec get_finding_v2(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_finding_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_finding_v2_errors()}
  def get_finding_v2(
        %Client{} = client,
        id,
        analyzer_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/findingv2/#{AWS.Util.encode_uri(id)}"
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
      if !is_nil(analyzer_arn) do
        [{"analyzerArn", analyzer_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the policy that was generated using `StartPolicyGeneration`.
  """
  @spec get_generated_policy(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_generated_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_generated_policy_errors()}
  def get_generated_policy(
        %Client{} = client,
        job_id,
        include_resource_placeholders \\ nil,
        include_service_level_template \\ nil,
        options \\ []
      ) do
    url_path = "/policy/generation/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_service_level_template) do
        [{"includeServiceLevelTemplate", include_service_level_template} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_resource_placeholders) do
        [{"includeResourcePlaceholders", include_resource_placeholders} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of access preview findings generated by the specified access
  preview.
  """
  @spec list_access_preview_findings(
          map(),
          String.t(),
          list_access_preview_findings_request(),
          list()
        ) ::
          {:ok, list_access_preview_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_access_preview_findings_errors()}
  def list_access_preview_findings(%Client{} = client, access_preview_id, input, options \\ []) do
    url_path = "/access-preview/#{AWS.Util.encode_uri(access_preview_id)}"
    headers = []
    query_params = []

    meta = metadata()

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
  Retrieves a list of access previews for the specified analyzer.
  """
  @spec list_access_previews(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_access_previews_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_access_previews_errors()}
  def list_access_previews(
        %Client{} = client,
        analyzer_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/access-preview"
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
      if !is_nil(analyzer_arn) do
        [{"analyzerArn", analyzer_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of resources of the specified type that have been analyzed by
  the
  specified external access analyzer.

  This action is not supported for unused access
  analyzers.
  """
  @spec list_analyzed_resources(map(), list_analyzed_resources_request(), list()) ::
          {:ok, list_analyzed_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_analyzed_resources_errors()}
  def list_analyzed_resources(%Client{} = client, input, options \\ []) do
    url_path = "/analyzed-resource"
    headers = []
    query_params = []

    meta = metadata()

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
  Retrieves a list of analyzers.
  """
  @spec list_analyzers(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_analyzers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_analyzers_errors()}
  def list_analyzers(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/analyzer"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
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
  Retrieves a list of archive rules created for the specified analyzer.
  """
  @spec list_archive_rules(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_archive_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_archive_rules_errors()}
  def list_archive_rules(
        %Client{} = client,
        analyzer_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule"
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
  Retrieves a list of findings generated by the specified analyzer.

  ListFindings and
  ListFindingsV2 both use `access-analyzer:ListFindings` in the
  `Action` element of an IAM policy statement. You must have permission to
  perform the `access-analyzer:ListFindings` action.

  To learn about filter keys that you can use to retrieve a list of findings, see
  [IAM Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html)
  in the **IAM User Guide**.
  """
  @spec list_findings(map(), list_findings_request(), list()) ::
          {:ok, list_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_findings_errors()}
  def list_findings(%Client{} = client, input, options \\ []) do
    url_path = "/finding"
    headers = []
    query_params = []

    meta = metadata()

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
  Retrieves a list of findings generated by the specified analyzer.

  ListFindings and
  ListFindingsV2 both use `access-analyzer:ListFindings` in the
  `Action` element of an IAM policy statement. You must have permission to
  perform the `access-analyzer:ListFindings` action.

  To learn about filter keys that you can use to retrieve a list of findings, see
  [IAM Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html)
  in the **IAM User Guide**.
  """
  @spec list_findings_v2(map(), list_findings_v2_request(), list()) ::
          {:ok, list_findings_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_findings_v2_errors()}
  def list_findings_v2(%Client{} = client, input, options \\ []) do
    url_path = "/findingv2"
    headers = []
    query_params = []

    meta = metadata()

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
  Lists all of the policy generations requested in the last seven days.
  """
  @spec list_policy_generations(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_policy_generations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_policy_generations_errors()}
  def list_policy_generations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        principal_arn \\ nil,
        options \\ []
      ) do
    url_path = "/policy/generation"
    headers = []
    query_params = []

    query_params =
      if !is_nil(principal_arn) do
        [{"principalArn", principal_arn} | query_params]
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
  Retrieves a list of tags applied to the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts the policy generation request.
  """
  @spec start_policy_generation(map(), start_policy_generation_request(), list()) ::
          {:ok, start_policy_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_policy_generation_errors()}
  def start_policy_generation(%Client{} = client, input, options \\ []) do
    url_path = "/policy/generation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Immediately starts a scan of the policies applied to the specified resource.
  """
  @spec start_resource_scan(map(), start_resource_scan_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_resource_scan_errors()}
  def start_resource_scan(%Client{} = client, input, options \\ []) do
    url_path = "/resource/scan"
    headers = []
    query_params = []

    meta = metadata()

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
  Adds a tag to the specified resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

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
  Removes a tag from the specified resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the criteria and values for the specified archive rule.
  """
  @spec update_archive_rule(map(), String.t(), String.t(), update_archive_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_archive_rule_errors()}
  def update_archive_rule(%Client{} = client, analyzer_name, rule_name, input, options \\ []) do
    url_path =
      "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule/#{AWS.Util.encode_uri(rule_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the status for the specified findings.
  """
  @spec update_findings(map(), update_findings_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_findings_errors()}
  def update_findings(%Client{} = client, input, options \\ []) do
    url_path = "/finding"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Requests the validation of a policy and returns a list of findings.

  The findings help
  you identify issues and provide actionable recommendations to resolve the issue
  and enable
  you to author functional policies that meet security best practices.
  """
  @spec validate_policy(map(), validate_policy_request(), list()) ::
          {:ok, validate_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_policy_errors()}
  def validate_policy(%Client{} = client, input, options \\ []) do
    url_path = "/policy/validation"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

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
end
