# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Backup do
  @moduledoc """
  Backup

  Backup is a unified backup service designed to protect Amazon Web Services
  services and their associated data.

  Backup simplifies the creation, migration,
  restoration, and deletion of backups, while also providing reporting and
  auditing.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  list_restore_testing_plans_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => [String.t()]
  }
  """
  @type list_restore_testing_plans_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  report_job() :: %{
    "CompletionTime" => non_neg_integer(),
    "CreationTime" => non_neg_integer(),
    "ReportDestination" => report_destination(),
    "ReportJobId" => String.t(),
    "ReportPlanArn" => String.t(),
    "ReportTemplate" => String.t(),
    "Status" => String.t(),
    "StatusMessage" => String.t()
  }
  """
  @type report_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_point_member() :: %{
    "BackupVaultName" => String.t(),
    "RecoveryPointArn" => String.t(),
    "ResourceArn" => String.t(),
    "ResourceType" => String.t()
  }
  """
  @type recovery_point_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  missing_parameter_value_exception() :: %{
    "Code" => String.t(),
    "Context" => String.t(),
    "Message" => String.t(),
    "Type" => String.t()
  }
  """
  @type missing_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_backup_plan_output() :: %{
    "BackupPlanArn" => String.t(),
    "BackupPlanId" => String.t(),
    "DeletionDate" => non_neg_integer(),
    "VersionId" => String.t()
  }
  """
  @type delete_backup_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backup_plan_input() :: %{
    "AdvancedBackupSettings" => list(advanced_backup_setting()()),
    "BackupPlanName" => String.t(),
    "Rules" => list(backup_rule_input()())
  }
  """
  @type backup_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backup_plans_list_member() :: %{
    "AdvancedBackupSettings" => list(advanced_backup_setting()()),
    "BackupPlanArn" => String.t(),
    "BackupPlanId" => String.t(),
    "BackupPlanName" => String.t(),
    "CreationDate" => non_neg_integer(),
    "CreatorRequestId" => String.t(),
    "DeletionDate" => non_neg_integer(),
    "LastExecutionDate" => non_neg_integer(),
    "VersionId" => String.t()
  }
  """
  @type backup_plans_list_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_restore_job_metadata_input() :: %{

  }
  """
  @type get_restore_job_metadata_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_restore_testing_plan_input() :: %{

  }
  """
  @type get_restore_testing_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_recovery_point_input() :: %{
    optional("BackupVaultAccountId") => String.t()
  }
  """
  @type describe_recovery_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_vaults_output() :: %{
    "BackupVaultList" => list(backup_vault_list_member()()),
    "NextToken" => String.t()
  }
  """
  @type list_backup_vaults_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_recovery_point_lifecycle_input() :: %{
    optional("Lifecycle") => lifecycle()
  }
  """
  @type update_recovery_point_lifecycle_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_point_creator() :: %{
    "BackupPlanArn" => String.t(),
    "BackupPlanId" => String.t(),
    "BackupPlanVersion" => String.t(),
    "BackupRuleId" => String.t()
  }
  """
  @type recovery_point_creator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_backup_job_input() :: %{
    optional("BackupOptions") => map(),
    optional("CompleteWindowMinutes") => float(),
    optional("IdempotencyToken") => String.t(),
    optional("Lifecycle") => lifecycle(),
    optional("RecoveryPointTags") => map(),
    optional("StartWindowMinutes") => float(),
    required("BackupVaultName") => String.t(),
    required("IamRoleArn") => String.t(),
    required("ResourceArn") => String.t()
  }
  """
  @type start_backup_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  copy_job() :: %{
    "AccountId" => String.t(),
    "BackupSizeInBytes" => float(),
    "ChildJobsInState" => map(),
    "CompletionDate" => non_neg_integer(),
    "CompositeMemberIdentifier" => String.t(),
    "CopyJobId" => String.t(),
    "CreatedBy" => recovery_point_creator(),
    "CreationDate" => non_neg_integer(),
    "DestinationBackupVaultArn" => String.t(),
    "DestinationRecoveryPointArn" => String.t(),
    "IamRoleArn" => String.t(),
    "IsParent" => boolean(),
    "MessageCategory" => String.t(),
    "NumberOfChildJobs" => float(),
    "ParentJobId" => String.t(),
    "ResourceArn" => String.t(),
    "ResourceName" => String.t(),
    "ResourceType" => String.t(),
    "SourceBackupVaultArn" => String.t(),
    "SourceRecoveryPointArn" => String.t(),
    "State" => list(any()),
    "StatusMessage" => String.t()
  }
  """
  @type copy_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_protected_resources_by_backup_vault_output() :: %{
    "NextToken" => String.t(),
    "Results" => list(protected_resource()())
  }
  """
  @type list_protected_resources_by_backup_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_report_plan_output() :: %{
    "CreationTime" => non_neg_integer(),
    "ReportPlanArn" => String.t(),
    "ReportPlanName" => String.t()
  }
  """
  @type create_report_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_restore_testing_selection_input() :: %{
    optional("CreatorRequestId") => [String.t()],
    required("RestoreTestingSelection") => restore_testing_selection_for_create()
  }
  """
  @type create_restore_testing_selection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_region_settings_output() :: %{
    "ResourceTypeManagementPreference" => map(),
    "ResourceTypeOptInPreference" => map()
  }
  """
  @type describe_region_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_restore_testing_plan_input() :: %{

  }
  """
  @type delete_restore_testing_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_backup_plan_output() :: %{
    "AdvancedBackupSettings" => list(advanced_backup_setting()()),
    "BackupPlanArn" => String.t(),
    "BackupPlanId" => String.t(),
    "CreationDate" => non_neg_integer(),
    "VersionId" => String.t()
  }
  """
  @type create_backup_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_restore_job_input() :: %{
    optional("CopySourceTagsToRestoredResource") => boolean(),
    optional("IamRoleArn") => String.t(),
    optional("IdempotencyToken") => String.t(),
    optional("ResourceType") => String.t(),
    required("Metadata") => map(),
    required("RecoveryPointArn") => String.t()
  }
  """
  @type start_restore_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backup_plan() :: %{
    "AdvancedBackupSettings" => list(advanced_backup_setting()()),
    "BackupPlanName" => String.t(),
    "Rules" => list(backup_rule()())
  }
  """
  @type backup_plan() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_point_by_backup_vault() :: %{
    "BackupSizeInBytes" => float(),
    "BackupVaultArn" => String.t(),
    "BackupVaultName" => String.t(),
    "CalculatedLifecycle" => calculated_lifecycle(),
    "CompletionDate" => non_neg_integer(),
    "CompositeMemberIdentifier" => String.t(),
    "CreatedBy" => recovery_point_creator(),
    "CreationDate" => non_neg_integer(),
    "EncryptionKeyArn" => String.t(),
    "IamRoleArn" => String.t(),
    "IsEncrypted" => boolean(),
    "IsParent" => boolean(),
    "LastRestoreTime" => non_neg_integer(),
    "Lifecycle" => lifecycle(),
    "ParentRecoveryPointArn" => String.t(),
    "RecoveryPointArn" => String.t(),
    "ResourceArn" => String.t(),
    "ResourceName" => String.t(),
    "ResourceType" => String.t(),
    "SourceBackupVaultArn" => String.t(),
    "Status" => list(any()),
    "StatusMessage" => String.t(),
    "VaultType" => list(any())
  }
  """
  @type recovery_point_by_backup_vault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  restore_testing_selection_for_list() :: %{
    "CreationTime" => [non_neg_integer()],
    "IamRoleArn" => [String.t()],
    "ProtectedResourceType" => [String.t()],
    "RestoreTestingPlanName" => [String.t()],
    "RestoreTestingSelectionName" => [String.t()],
    "ValidationWindowHours" => integer()
  }
  """
  @type restore_testing_selection_for_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_report_jobs_output() :: %{
    "NextToken" => String.t(),
    "ReportJobs" => list(report_job()())
  }
  """
  @type list_report_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backup_plan_input() :: %{
    optional("VersionId") => String.t()
  }
  """
  @type get_backup_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_report_job_output() :: %{
    "ReportJobId" => String.t()
  }
  """
  @type start_report_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_plan_templates_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_backup_plan_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_restore_job_metadata_output() :: %{
    "Metadata" => map(),
    "RestoreJobId" => String.t()
  }
  """
  @type get_restore_job_metadata_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backup_plan_from_json_output() :: %{
    "BackupPlan" => backup_plan()
  }
  """
  @type get_backup_plan_from_json_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  already_exists_exception() :: %{
    "Arn" => String.t(),
    "Code" => String.t(),
    "Context" => String.t(),
    "CreatorRequestId" => String.t(),
    "Message" => String.t(),
    "Type" => String.t()
  }
  """
  @type already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  restore_testing_plan_for_list() :: %{
    "CreationTime" => [non_neg_integer()],
    "LastExecutionTime" => [non_neg_integer()],
    "LastUpdateTime" => [non_neg_integer()],
    "RestoreTestingPlanArn" => [String.t()],
    "RestoreTestingPlanName" => [String.t()],
    "ScheduleExpression" => [String.t()],
    "ScheduleExpressionTimezone" => [String.t()],
    "StartWindowHours" => integer()
  }
  """
  @type restore_testing_plan_for_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  restore_testing_plan_for_update() :: %{
    "RecoveryPointSelection" => restore_testing_recovery_point_selection(),
    "ScheduleExpression" => [String.t()],
    "ScheduleExpressionTimezone" => [String.t()],
    "StartWindowHours" => integer()
  }
  """
  @type restore_testing_plan_for_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  report_plan() :: %{
    "CreationTime" => non_neg_integer(),
    "DeploymentStatus" => String.t(),
    "LastAttemptedExecutionTime" => non_neg_integer(),
    "LastSuccessfulExecutionTime" => non_neg_integer(),
    "ReportDeliveryChannel" => report_delivery_channel(),
    "ReportPlanArn" => String.t(),
    "ReportPlanDescription" => String.t(),
    "ReportPlanName" => String.t(),
    "ReportSetting" => report_setting()
  }
  """
  @type report_plan() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  report_destination() :: %{
    "S3BucketName" => String.t(),
    "S3Keys" => list(String.t()())
  }
  """
  @type report_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_global_settings_input() :: %{

  }
  """
  @type describe_global_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_recovery_point_input() :: %{

  }
  """
  @type disassociate_recovery_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  protected_resource() :: %{
    "LastBackupTime" => non_neg_integer(),
    "LastBackupVaultArn" => String.t(),
    "LastRecoveryPointArn" => String.t(),
    "ResourceArn" => String.t(),
    "ResourceName" => String.t(),
    "ResourceType" => String.t()
  }
  """
  @type protected_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_backup_job_input() :: %{

  }
  """
  @type stop_backup_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_backup_vault_input() :: %{
    optional("BackupVaultTags") => map(),
    optional("CreatorRequestId") => String.t(),
    optional("EncryptionKeyArn") => String.t()
  }
  """
  @type create_backup_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backup_plan_output() :: %{
    "AdvancedBackupSettings" => list(advanced_backup_setting()()),
    "BackupPlan" => backup_plan(),
    "BackupPlanArn" => String.t(),
    "BackupPlanId" => String.t(),
    "CreationDate" => non_neg_integer(),
    "CreatorRequestId" => String.t(),
    "DeletionDate" => non_neg_integer(),
    "LastExecutionDate" => non_neg_integer(),
    "VersionId" => String.t()
  }
  """
  @type get_backup_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_framework_input() :: %{

  }
  """
  @type describe_framework_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_plans_output() :: %{
    "BackupPlansList" => list(backup_plans_list_member()()),
    "NextToken" => String.t()
  }
  """
  @type list_backup_plans_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_selections_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_backup_selections_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  restore_job_summary() :: %{
    "AccountId" => String.t(),
    "Count" => integer(),
    "EndTime" => non_neg_integer(),
    "Region" => String.t(),
    "ResourceType" => String.t(),
    "StartTime" => non_neg_integer(),
    "State" => list(any())
  }
  """
  @type restore_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_backup_vault_output() :: %{
    "BackupVaultArn" => String.t(),
    "BackupVaultName" => String.t(),
    "CreationDate" => non_neg_integer()
  }
  """
  @type create_backup_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_restore_testing_plan_output() :: %{
    "RestoreTestingPlan" => restore_testing_plan_for_get()
  }
  """
  @type get_restore_testing_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  condition_parameter() :: %{
    "ConditionKey" => String.t(),
    "ConditionValue" => String.t()
  }
  """
  @type condition_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_legal_hold_input() :: %{
    optional("IdempotencyToken") => String.t(),
    optional("RecoveryPointSelection") => recovery_point_selection(),
    optional("Tags") => map(),
    required("Description") => String.t(),
    required("Title") => String.t()
  }
  """
  @type create_legal_hold_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_backup_selection_input() :: %{

  }
  """
  @type delete_backup_selection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  restore_jobs_list_member() :: %{
    "AccountId" => String.t(),
    "BackupSizeInBytes" => float(),
    "CompletionDate" => non_neg_integer(),
    "CreatedBy" => restore_job_creator(),
    "CreatedResourceArn" => String.t(),
    "CreationDate" => non_neg_integer(),
    "DeletionStatus" => list(any()),
    "DeletionStatusMessage" => String.t(),
    "ExpectedCompletionTimeMinutes" => float(),
    "IamRoleArn" => String.t(),
    "PercentDone" => String.t(),
    "RecoveryPointArn" => String.t(),
    "RecoveryPointCreationDate" => non_neg_integer(),
    "ResourceType" => String.t(),
    "RestoreJobId" => String.t(),
    "Status" => list(any()),
    "StatusMessage" => String.t(),
    "ValidationStatus" => list(any()),
    "ValidationStatusMessage" => String.t()
  }
  """
  @type restore_jobs_list_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_restore_testing_plans_output() :: %{
    "NextToken" => [String.t()],
    "RestoreTestingPlans" => list(restore_testing_plan_for_list()())
  }
  """
  @type list_restore_testing_plans_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_report_jobs_input() :: %{
    optional("ByCreationAfter") => non_neg_integer(),
    optional("ByCreationBefore") => non_neg_integer(),
    optional("ByReportPlanName") => String.t(),
    optional("ByStatus") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_report_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_backup_vault_output() :: %{
    "BackupVaultArn" => String.t(),
    "BackupVaultName" => String.t(),
    "CreationDate" => non_neg_integer(),
    "CreatorRequestId" => String.t(),
    "EncryptionKeyArn" => String.t(),
    "LockDate" => non_neg_integer(),
    "Locked" => boolean(),
    "MaxRetentionDays" => float(),
    "MinRetentionDays" => float(),
    "NumberOfRecoveryPoints" => float(),
    "VaultType" => list(any())
  }
  """
  @type describe_backup_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_restore_testing_selections_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => [String.t()]
  }
  """
  @type list_restore_testing_selections_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_job_summaries_input() :: %{
    optional("AccountId") => String.t(),
    optional("AggregationPeriod") => list(any()),
    optional("MaxResults") => integer(),
    optional("MessageCategory") => String.t(),
    optional("NextToken") => String.t(),
    optional("ResourceType") => String.t(),
    optional("State") => list(any())
  }
  """
  @type list_backup_job_summaries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_backup_vault_notifications_input() :: %{
    required("BackupVaultEvents") => list(list(any())()),
    required("SNSTopicArn") => String.t()
  }
  """
  @type put_backup_vault_notifications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_protected_resource_input() :: %{

  }
  """
  @type describe_protected_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cancel_legal_hold_output() :: %{

  }
  """
  @type cancel_legal_hold_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  control_scope() :: %{
    "ComplianceResourceIds" => list(String.t()()),
    "ComplianceResourceTypes" => list(String.t()()),
    "Tags" => map()
  }
  """
  @type control_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_legal_hold_output() :: %{
    "CancelDescription" => String.t(),
    "CancellationDate" => non_neg_integer(),
    "CreationDate" => non_neg_integer(),
    "Description" => String.t(),
    "LegalHoldArn" => String.t(),
    "LegalHoldId" => String.t(),
    "RecoveryPointSelection" => recovery_point_selection(),
    "RetainRecordUntil" => non_neg_integer(),
    "Status" => list(any()),
    "Title" => String.t()
  }
  """
  @type get_legal_hold_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  framework_control() :: %{
    "ControlInputParameters" => list(control_input_parameter()()),
    "ControlName" => String.t(),
    "ControlScope" => control_scope()
  }
  """
  @type framework_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_jobs_output() :: %{
    "BackupJobs" => list(backup_job()()),
    "NextToken" => String.t()
  }
  """
  @type list_backup_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backup_plan_from_template_input() :: %{

  }
  """
  @type get_backup_plan_from_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  export_backup_plan_template_output() :: %{
    "BackupPlanTemplateJson" => String.t()
  }
  """
  @type export_backup_plan_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_backup_plan_input() :: %{
    required("BackupPlan") => backup_plan_input()
  }
  """
  @type update_backup_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_report_plans_output() :: %{
    "NextToken" => String.t(),
    "ReportPlans" => list(report_plan()())
  }
  """
  @type list_report_plans_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backup_selection() :: %{
    "Conditions" => conditions(),
    "IamRoleArn" => String.t(),
    "ListOfTags" => list(condition()()),
    "NotResources" => list(String.t()()),
    "Resources" => list(String.t()()),
    "SelectionName" => String.t()
  }
  """
  @type backup_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_region_settings_input() :: %{
    optional("ResourceTypeManagementPreference") => map(),
    optional("ResourceTypeOptInPreference") => map()
  }
  """
  @type update_region_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_legal_holds_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_legal_holds_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lifecycle() :: %{
    "DeleteAfterDays" => float(),
    "MoveToColdStorageAfterDays" => float(),
    "OptInToArchiveForSupportedResources" => boolean()
  }
  """
  @type lifecycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_recovery_points_by_legal_hold_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_recovery_points_by_legal_hold_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_backup_selection_output() :: %{
    "BackupPlanId" => String.t(),
    "CreationDate" => non_neg_integer(),
    "SelectionId" => String.t()
  }
  """
  @type create_backup_selection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_restore_testing_selection_input() :: %{

  }
  """
  @type get_restore_testing_selection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  protected_resource_conditions() :: %{
    "StringEquals" => list(key_value()()),
    "StringNotEquals" => list(key_value()())
  }
  """
  @type protected_resource_conditions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  control_input_parameter() :: %{
    "ParameterName" => String.t(),
    "ParameterValue" => String.t()
  }
  """
  @type control_input_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  calculated_lifecycle() :: %{
    "DeleteAt" => non_neg_integer(),
    "MoveToColdStorageAt" => non_neg_integer()
  }
  """
  @type calculated_lifecycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  copy_action() :: %{
    "DestinationBackupVaultArn" => String.t(),
    "Lifecycle" => lifecycle()
  }
  """
  @type copy_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_framework_input() :: %{
    optional("FrameworkControls") => list(framework_control()()),
    optional("FrameworkDescription") => String.t(),
    optional("IdempotencyToken") => String.t()
  }
  """
  @type update_framework_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_restore_testing_inferred_metadata_input() :: %{
    optional("BackupVaultAccountId") => [String.t()],
    required("BackupVaultName") => [String.t()],
    required("RecoveryPointArn") => [String.t()]
  }
  """
  @type get_restore_testing_inferred_metadata_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backup_vault_access_policy_input() :: %{

  }
  """
  @type get_backup_vault_access_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_report_plans_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_report_plans_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_backup_selection_input() :: %{
    optional("CreatorRequestId") => String.t(),
    required("BackupSelection") => backup_selection()
  }
  """
  @type create_backup_selection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "Code" => String.t(),
    "Context" => String.t(),
    "Message" => String.t(),
    "Type" => String.t()
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_backup_vault_access_policy_input() :: %{
    optional("Policy") => String.t()
  }
  """
  @type put_backup_vault_access_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "Code" => String.t(),
    "Context" => String.t(),
    "Message" => String.t(),
    "Type" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_restore_jobs_output() :: %{
    "NextToken" => String.t(),
    "RestoreJobs" => list(restore_jobs_list_member()())
  }
  """
  @type list_restore_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_restore_job_output() :: %{
    "RestoreJobId" => String.t()
  }
  """
  @type start_restore_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  copy_job_summary() :: %{
    "AccountId" => String.t(),
    "Count" => integer(),
    "EndTime" => non_neg_integer(),
    "MessageCategory" => String.t(),
    "Region" => String.t(),
    "ResourceType" => String.t(),
    "StartTime" => non_neg_integer(),
    "State" => list(any())
  }
  """
  @type copy_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_restore_testing_selection_input() :: %{

  }
  """
  @type delete_restore_testing_selection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_recovery_points_by_resource_output() :: %{
    "NextToken" => String.t(),
    "RecoveryPoints" => list(recovery_point_by_resource()())
  }
  """
  @type list_recovery_points_by_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_request_exception() :: %{
    "Code" => String.t(),
    "Context" => String.t(),
    "Message" => String.t(),
    "Type" => String.t()
  }
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_selections_output() :: %{
    "BackupSelectionsList" => list(backup_selections_list_member()()),
    "NextToken" => String.t()
  }
  """
  @type list_backup_selections_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  restore_testing_plan_for_get() :: %{
    "CreationTime" => [non_neg_integer()],
    "CreatorRequestId" => [String.t()],
    "LastExecutionTime" => [non_neg_integer()],
    "LastUpdateTime" => [non_neg_integer()],
    "RecoveryPointSelection" => restore_testing_recovery_point_selection(),
    "RestoreTestingPlanArn" => [String.t()],
    "RestoreTestingPlanName" => [String.t()],
    "ScheduleExpression" => [String.t()],
    "ScheduleExpressionTimezone" => [String.t()],
    "StartWindowHours" => integer()
  }
  """
  @type restore_testing_plan_for_get() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_restore_testing_selection_output() :: %{
    "CreationTime" => [non_neg_integer()],
    "RestoreTestingPlanArn" => [String.t()],
    "RestoreTestingPlanName" => [String.t()],
    "RestoreTestingSelectionName" => [String.t()],
    "UpdateTime" => [non_neg_integer()]
  }
  """
  @type update_restore_testing_selection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_restore_job_output() :: %{
    "AccountId" => String.t(),
    "BackupSizeInBytes" => float(),
    "CompletionDate" => non_neg_integer(),
    "CreatedBy" => restore_job_creator(),
    "CreatedResourceArn" => String.t(),
    "CreationDate" => non_neg_integer(),
    "DeletionStatus" => list(any()),
    "DeletionStatusMessage" => String.t(),
    "ExpectedCompletionTimeMinutes" => float(),
    "IamRoleArn" => String.t(),
    "PercentDone" => String.t(),
    "RecoveryPointArn" => String.t(),
    "RecoveryPointCreationDate" => non_neg_integer(),
    "ResourceType" => String.t(),
    "RestoreJobId" => String.t(),
    "Status" => list(any()),
    "StatusMessage" => String.t(),
    "ValidationStatus" => list(any()),
    "ValidationStatusMessage" => String.t()
  }
  """
  @type describe_restore_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  restore_testing_selection_for_update() :: %{
    "IamRoleArn" => [String.t()],
    "ProtectedResourceArns" => list(String.t()()),
    "ProtectedResourceConditions" => protected_resource_conditions(),
    "RestoreMetadataOverrides" => map(),
    "ValidationWindowHours" => integer()
  }
  """
  @type restore_testing_selection_for_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_copy_job_output() :: %{
    "CopyJobId" => String.t(),
    "CreationDate" => non_neg_integer(),
    "IsParent" => boolean()
  }
  """
  @type start_copy_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_restore_job_summaries_input() :: %{
    optional("AccountId") => String.t(),
    optional("AggregationPeriod") => list(any()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("ResourceType") => String.t(),
    optional("State") => list(any())
  }
  """
  @type list_restore_job_summaries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_recovery_point_from_parent_input() :: %{

  }
  """
  @type disassociate_recovery_point_from_parent_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_backup_job_output() :: %{
    "AccountId" => String.t(),
    "BackupJobId" => String.t(),
    "BackupOptions" => map(),
    "BackupSizeInBytes" => float(),
    "BackupType" => String.t(),
    "BackupVaultArn" => String.t(),
    "BackupVaultName" => String.t(),
    "BytesTransferred" => float(),
    "ChildJobsInState" => map(),
    "CompletionDate" => non_neg_integer(),
    "CreatedBy" => recovery_point_creator(),
    "CreationDate" => non_neg_integer(),
    "ExpectedCompletionDate" => non_neg_integer(),
    "IamRoleArn" => String.t(),
    "InitiationDate" => non_neg_integer(),
    "IsParent" => boolean(),
    "MessageCategory" => String.t(),
    "NumberOfChildJobs" => float(),
    "ParentJobId" => String.t(),
    "PercentDone" => String.t(),
    "RecoveryPointArn" => String.t(),
    "ResourceArn" => String.t(),
    "ResourceName" => String.t(),
    "ResourceType" => String.t(),
    "StartBy" => non_neg_integer(),
    "State" => list(any()),
    "StatusMessage" => String.t()
  }
  """
  @type describe_backup_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backup_selections_list_member() :: %{
    "BackupPlanId" => String.t(),
    "CreationDate" => non_neg_integer(),
    "CreatorRequestId" => String.t(),
    "IamRoleArn" => String.t(),
    "SelectionId" => String.t(),
    "SelectionName" => String.t()
  }
  """
  @type backup_selections_list_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_framework_output() :: %{
    "FrameworkArn" => String.t(),
    "FrameworkName" => String.t()
  }
  """
  @type create_framework_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_copy_job_summaries_output() :: %{
    "AggregationPeriod" => String.t(),
    "CopyJobSummaries" => list(copy_job_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_copy_job_summaries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_global_settings_output() :: %{
    "GlobalSettings" => map(),
    "LastUpdateTime" => non_neg_integer()
  }
  """
  @type describe_global_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_supported_resource_types_output() :: %{
    "ResourceTypes" => list(String.t()())
  }
  """
  @type get_supported_resource_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_parameter_value_exception() :: %{
    "Code" => String.t(),
    "Context" => String.t(),
    "Message" => String.t(),
    "Type" => String.t()
  }
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  restore_testing_recovery_point_selection() :: %{
    "Algorithm" => list(any()),
    "ExcludeVaults" => list(String.t()()),
    "IncludeVaults" => list(String.t()()),
    "RecoveryPointTypes" => list(list(any())()),
    "SelectionWindowDays" => integer()
  }
  """
  @type restore_testing_recovery_point_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  dependency_failure_exception() :: %{
    "Code" => String.t(),
    "Context" => String.t(),
    "Message" => String.t(),
    "Type" => String.t()
  }
  """
  @type dependency_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_restore_testing_selection_output() :: %{
    "CreationTime" => [non_neg_integer()],
    "RestoreTestingPlanArn" => [String.t()],
    "RestoreTestingPlanName" => [String.t()],
    "RestoreTestingSelectionName" => [String.t()]
  }
  """
  @type create_restore_testing_selection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_report_job_output() :: %{
    "ReportJob" => report_job()
  }
  """
  @type describe_report_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_restore_testing_inferred_metadata_output() :: %{
    "InferredMetadata" => map()
  }
  """
  @type get_restore_testing_inferred_metadata_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backup_vault_notifications_output() :: %{
    "BackupVaultArn" => String.t(),
    "BackupVaultEvents" => list(list(any())()),
    "BackupVaultName" => String.t(),
    "SNSTopicArn" => String.t()
  }
  """
  @type get_backup_vault_notifications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  advanced_backup_setting() :: %{
    "BackupOptions" => map(),
    "ResourceType" => String.t()
  }
  """
  @type advanced_backup_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_point_selection() :: %{
    "DateRange" => date_range(),
    "ResourceIdentifiers" => list(String.t()()),
    "VaultNames" => list(String.t()())
  }
  """
  @type recovery_point_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conditions() :: %{
    "StringEquals" => list(condition_parameter()()),
    "StringLike" => list(condition_parameter()()),
    "StringNotEquals" => list(condition_parameter()()),
    "StringNotLike" => list(condition_parameter()())
  }
  """
  @type conditions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_restore_testing_plan_input() :: %{
    required("RestoreTestingPlan") => restore_testing_plan_for_update()
  }
  """
  @type update_restore_testing_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_backup_vault_input() :: %{

  }
  """
  @type delete_backup_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backup_vault_access_policy_output() :: %{
    "BackupVaultArn" => String.t(),
    "BackupVaultName" => String.t(),
    "Policy" => String.t()
  }
  """
  @type get_backup_vault_access_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_restore_testing_selection_output() :: %{
    "RestoreTestingSelection" => restore_testing_selection_for_get()
  }
  """
  @type get_restore_testing_selection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  report_delivery_channel() :: %{
    "Formats" => list(String.t()()),
    "S3BucketName" => String.t(),
    "S3KeyPrefix" => String.t()
  }
  """
  @type report_delivery_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_protected_resources_output() :: %{
    "NextToken" => String.t(),
    "Results" => list(protected_resource()())
  }
  """
  @type list_protected_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_unavailable_exception() :: %{
    "Code" => String.t(),
    "Context" => String.t(),
    "Message" => String.t(),
    "Type" => String.t()
  }
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_framework_input() :: %{

  }
  """
  @type delete_framework_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_backup_vault_notifications_input() :: %{

  }
  """
  @type delete_backup_vault_notifications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  condition() :: %{
    "ConditionKey" => String.t(),
    "ConditionType" => list(any()),
    "ConditionValue" => String.t()
  }
  """
  @type condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_resource_state_exception() :: %{
    "Code" => String.t(),
    "Context" => String.t(),
    "Message" => String.t(),
    "Type" => String.t()
  }
  """
  @type invalid_resource_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_input() :: %{
    required("Tags") => map()
  }
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_plan_versions_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_backup_plan_versions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_restore_jobs_input() :: %{
    optional("ByAccountId") => String.t(),
    optional("ByCompleteAfter") => non_neg_integer(),
    optional("ByCompleteBefore") => non_neg_integer(),
    optional("ByCreatedAfter") => non_neg_integer(),
    optional("ByCreatedBefore") => non_neg_integer(),
    optional("ByResourceType") => String.t(),
    optional("ByRestoreTestingPlanArn") => String.t(),
    optional("ByStatus") => list(any()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_restore_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backup_selection_input() :: %{

  }
  """
  @type get_backup_selection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backup_selection_output() :: %{
    "BackupPlanId" => String.t(),
    "BackupSelection" => backup_selection(),
    "CreationDate" => non_neg_integer(),
    "CreatorRequestId" => String.t(),
    "SelectionId" => String.t()
  }
  """
  @type get_backup_selection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_point_by_resource() :: %{
    "BackupSizeBytes" => float(),
    "BackupVaultName" => String.t(),
    "CreationDate" => non_neg_integer(),
    "EncryptionKeyArn" => String.t(),
    "IsParent" => boolean(),
    "ParentRecoveryPointArn" => String.t(),
    "RecoveryPointArn" => String.t(),
    "ResourceName" => String.t(),
    "Status" => list(any()),
    "StatusMessage" => String.t()
  }
  """
  @type recovery_point_by_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  report_setting() :: %{
    "Accounts" => list(String.t()()),
    "FrameworkArns" => list(String.t()()),
    "NumberOfFrameworks" => integer(),
    "OrganizationUnits" => list(String.t()()),
    "Regions" => list(String.t()()),
    "ReportTemplate" => String.t()
  }
  """
  @type report_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_recovery_points_by_backup_vault_input() :: %{
    optional("BackupVaultAccountId") => String.t(),
    optional("ByBackupPlanId") => String.t(),
    optional("ByCreatedAfter") => non_neg_integer(),
    optional("ByCreatedBefore") => non_neg_integer(),
    optional("ByParentRecoveryPointArn") => String.t(),
    optional("ByResourceArn") => String.t(),
    optional("ByResourceType") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_recovery_points_by_backup_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  framework() :: %{
    "CreationTime" => non_neg_integer(),
    "DeploymentStatus" => String.t(),
    "FrameworkArn" => String.t(),
    "FrameworkDescription" => String.t(),
    "FrameworkName" => String.t(),
    "NumberOfControls" => integer()
  }
  """
  @type framework() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  restore_testing_selection_for_create() :: %{
    "IamRoleArn" => [String.t()],
    "ProtectedResourceArns" => list(String.t()()),
    "ProtectedResourceConditions" => protected_resource_conditions(),
    "ProtectedResourceType" => [String.t()],
    "RestoreMetadataOverrides" => map(),
    "RestoreTestingSelectionName" => [String.t()],
    "ValidationWindowHours" => integer()
  }
  """
  @type restore_testing_selection_for_create() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_frameworks_output() :: %{
    "Frameworks" => list(framework()()),
    "NextToken" => String.t()
  }
  """
  @type list_frameworks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backup_vault_list_member() :: %{
    "BackupVaultArn" => String.t(),
    "BackupVaultName" => String.t(),
    "CreationDate" => non_neg_integer(),
    "CreatorRequestId" => String.t(),
    "EncryptionKeyArn" => String.t(),
    "LockDate" => non_neg_integer(),
    "Locked" => boolean(),
    "MaxRetentionDays" => float(),
    "MinRetentionDays" => float(),
    "NumberOfRecoveryPoints" => float()
  }
  """
  @type backup_vault_list_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_copy_job_input() :: %{

  }
  """
  @type describe_copy_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_copy_job_summaries_input() :: %{
    optional("AccountId") => String.t(),
    optional("AggregationPeriod") => list(any()),
    optional("MaxResults") => integer(),
    optional("MessageCategory") => String.t(),
    optional("NextToken") => String.t(),
    optional("ResourceType") => String.t(),
    optional("State") => list(any())
  }
  """
  @type list_copy_job_summaries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_legal_holds_output() :: %{
    "LegalHolds" => list(legal_hold()()),
    "NextToken" => String.t()
  }
  """
  @type list_legal_holds_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_backup_vault_access_policy_input() :: %{

  }
  """
  @type delete_backup_vault_access_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backup_rule() :: %{
    "CompletionWindowMinutes" => float(),
    "CopyActions" => list(copy_action()()),
    "EnableContinuousBackup" => boolean(),
    "Lifecycle" => lifecycle(),
    "RecoveryPointTags" => map(),
    "RuleId" => String.t(),
    "RuleName" => String.t(),
    "ScheduleExpression" => String.t(),
    "ScheduleExpressionTimezone" => String.t(),
    "StartWindowMinutes" => float(),
    "TargetBackupVaultName" => String.t()
  }
  """
  @type backup_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backup_plan_from_template_output() :: %{
    "BackupPlanDocument" => backup_plan()
  }
  """
  @type get_backup_plan_from_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_report_plan_input() :: %{
    optional("IdempotencyToken") => String.t(),
    optional("ReportDeliveryChannel") => report_delivery_channel(),
    optional("ReportPlanDescription") => String.t(),
    optional("ReportSetting") => report_setting()
  }
  """
  @type update_report_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_input() :: %{
    required("TagKeyList") => list(String.t()())
  }
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_report_plan_input() :: %{

  }
  """
  @type describe_report_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_recovery_points_by_resource_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_recovery_points_by_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_recovery_points_by_legal_hold_output() :: %{
    "NextToken" => String.t(),
    "RecoveryPoints" => list(recovery_point_member()())
  }
  """
  @type list_recovery_points_by_legal_hold_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_legal_hold_output() :: %{
    "CreationDate" => non_neg_integer(),
    "Description" => String.t(),
    "LegalHoldArn" => String.t(),
    "LegalHoldId" => String.t(),
    "RecoveryPointSelection" => recovery_point_selection(),
    "Status" => list(any()),
    "Title" => String.t()
  }
  """
  @type create_legal_hold_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_global_settings_input() :: %{
    optional("GlobalSettings") => map()
  }
  """
  @type update_global_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_copy_jobs_input() :: %{
    optional("ByAccountId") => String.t(),
    optional("ByCompleteAfter") => non_neg_integer(),
    optional("ByCompleteBefore") => non_neg_integer(),
    optional("ByCreatedAfter") => non_neg_integer(),
    optional("ByCreatedBefore") => non_neg_integer(),
    optional("ByDestinationVaultArn") => String.t(),
    optional("ByMessageCategory") => String.t(),
    optional("ByParentJobId") => String.t(),
    optional("ByResourceArn") => String.t(),
    optional("ByResourceType") => String.t(),
    optional("ByState") => list(any()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_copy_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_recovery_point_restore_metadata_input() :: %{
    optional("BackupVaultAccountId") => String.t()
  }
  """
  @type get_recovery_point_restore_metadata_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_jobs_input() :: %{
    optional("ByAccountId") => String.t(),
    optional("ByBackupVaultName") => String.t(),
    optional("ByCompleteAfter") => non_neg_integer(),
    optional("ByCompleteBefore") => non_neg_integer(),
    optional("ByCreatedAfter") => non_neg_integer(),
    optional("ByCreatedBefore") => non_neg_integer(),
    optional("ByMessageCategory") => String.t(),
    optional("ByParentJobId") => String.t(),
    optional("ByResourceArn") => String.t(),
    optional("ByResourceType") => String.t(),
    optional("ByState") => list(any()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_backup_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_copy_job_input() :: %{
    optional("IdempotencyToken") => String.t(),
    optional("Lifecycle") => lifecycle(),
    required("DestinationBackupVaultArn") => String.t(),
    required("IamRoleArn") => String.t(),
    required("RecoveryPointArn") => String.t(),
    required("SourceBackupVaultName") => String.t()
  }
  """
  @type start_copy_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_report_plan_input() :: %{

  }
  """
  @type delete_report_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_backup_job_output() :: %{
    "BackupJobId" => String.t(),
    "CreationDate" => non_neg_integer(),
    "IsParent" => boolean(),
    "RecoveryPointArn" => String.t()
  }
  """
  @type start_backup_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_restore_jobs_by_protected_resource_output() :: %{
    "NextToken" => String.t(),
    "RestoreJobs" => list(restore_jobs_list_member()())
  }
  """
  @type list_restore_jobs_by_protected_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backup_vault_notifications_input() :: %{

  }
  """
  @type get_backup_vault_notifications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_framework_input() :: %{
    optional("FrameworkDescription") => String.t(),
    optional("FrameworkTags") => map(),
    optional("IdempotencyToken") => String.t(),
    required("FrameworkControls") => list(framework_control()()),
    required("FrameworkName") => String.t()
  }
  """
  @type create_framework_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_backup_plan_input() :: %{
    optional("BackupPlanTags") => map(),
    optional("CreatorRequestId") => String.t(),
    required("BackupPlan") => backup_plan_input()
  }
  """
  @type create_backup_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_backup_vault_input() :: %{
    optional("BackupVaultAccountId") => String.t()
  }
  """
  @type describe_backup_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_copy_jobs_output() :: %{
    "CopyJobs" => list(copy_job()()),
    "NextToken" => String.t()
  }
  """
  @type list_copy_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_vaults_input() :: %{
    optional("ByShared") => boolean(),
    optional("ByVaultType") => list(any()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_backup_vaults_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_protected_resources_by_backup_vault_input() :: %{
    optional("BackupVaultAccountId") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_protected_resources_by_backup_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  limit_exceeded_exception() :: %{
    "Code" => String.t(),
    "Context" => String.t(),
    "Message" => String.t(),
    "Type" => String.t()
  }
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backup_job_summary() :: %{
    "AccountId" => String.t(),
    "Count" => integer(),
    "EndTime" => non_neg_integer(),
    "MessageCategory" => String.t(),
    "Region" => String.t(),
    "ResourceType" => String.t(),
    "StartTime" => non_neg_integer(),
    "State" => list(any())
  }
  """
  @type backup_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_protected_resource_output() :: %{
    "LastBackupTime" => non_neg_integer(),
    "LastBackupVaultArn" => String.t(),
    "LastRecoveryPointArn" => String.t(),
    "LatestRestoreExecutionTimeMinutes" => float(),
    "LatestRestoreJobCreationDate" => non_neg_integer(),
    "LatestRestoreRecoveryPointCreationDate" => non_neg_integer(),
    "ResourceArn" => String.t(),
    "ResourceName" => String.t(),
    "ResourceType" => String.t()
  }
  """
  @type describe_protected_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  restore_job_creator() :: %{
    "RestoreTestingPlanArn" => String.t()
  }
  """
  @type restore_job_creator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_logically_air_gapped_backup_vault_output() :: %{
    "BackupVaultArn" => String.t(),
    "BackupVaultName" => String.t(),
    "CreationDate" => non_neg_integer(),
    "VaultState" => list(any())
  }
  """
  @type create_logically_air_gapped_backup_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backup_rule_input() :: %{
    "CompletionWindowMinutes" => float(),
    "CopyActions" => list(copy_action()()),
    "EnableContinuousBackup" => boolean(),
    "Lifecycle" => lifecycle(),
    "RecoveryPointTags" => map(),
    "RuleName" => String.t(),
    "ScheduleExpression" => String.t(),
    "ScheduleExpressionTimezone" => String.t(),
    "StartWindowMinutes" => float(),
    "TargetBackupVaultName" => String.t()
  }
  """
  @type backup_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  restore_testing_plan_for_create() :: %{
    "RecoveryPointSelection" => restore_testing_recovery_point_selection(),
    "RestoreTestingPlanName" => [String.t()],
    "ScheduleExpression" => [String.t()],
    "ScheduleExpressionTimezone" => [String.t()],
    "StartWindowHours" => integer()
  }
  """
  @type restore_testing_plan_for_create() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  legal_hold() :: %{
    "CancellationDate" => non_neg_integer(),
    "CreationDate" => non_neg_integer(),
    "Description" => String.t(),
    "LegalHoldArn" => String.t(),
    "LegalHoldId" => String.t(),
    "Status" => list(any()),
    "Title" => String.t()
  }
  """
  @type legal_hold() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_plan_versions_output() :: %{
    "BackupPlanVersionsList" => list(backup_plans_list_member()()),
    "NextToken" => String.t()
  }
  """
  @type list_backup_plan_versions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_framework_output() :: %{
    "CreationTime" => non_neg_integer(),
    "FrameworkArn" => String.t(),
    "FrameworkName" => String.t()
  }
  """
  @type update_framework_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_frameworks_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_frameworks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backup_plan_templates_list_member() :: %{
    "BackupPlanTemplateId" => String.t(),
    "BackupPlanTemplateName" => String.t()
  }
  """
  @type backup_plan_templates_list_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_job_summaries_output() :: %{
    "AggregationPeriod" => String.t(),
    "BackupJobSummaries" => list(backup_job_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_backup_job_summaries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_recovery_points_by_backup_vault_output() :: %{
    "NextToken" => String.t(),
    "RecoveryPoints" => list(recovery_point_by_backup_vault()())
  }
  """
  @type list_recovery_points_by_backup_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  key_value() :: %{
    "Key" => [String.t()],
    "Value" => [String.t()]
  }
  """
  @type key_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_report_job_input() :: %{
    optional("IdempotencyToken") => String.t()
  }
  """
  @type start_report_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_report_plan_input() :: %{
    optional("IdempotencyToken") => String.t(),
    optional("ReportPlanDescription") => String.t(),
    optional("ReportPlanTags") => map(),
    required("ReportDeliveryChannel") => report_delivery_channel(),
    required("ReportPlanName") => String.t(),
    required("ReportSetting") => report_setting()
  }
  """
  @type create_report_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backup_job() :: %{
    "AccountId" => String.t(),
    "BackupJobId" => String.t(),
    "BackupOptions" => map(),
    "BackupSizeInBytes" => float(),
    "BackupType" => String.t(),
    "BackupVaultArn" => String.t(),
    "BackupVaultName" => String.t(),
    "BytesTransferred" => float(),
    "CompletionDate" => non_neg_integer(),
    "CreatedBy" => recovery_point_creator(),
    "CreationDate" => non_neg_integer(),
    "ExpectedCompletionDate" => non_neg_integer(),
    "IamRoleArn" => String.t(),
    "InitiationDate" => non_neg_integer(),
    "IsParent" => boolean(),
    "MessageCategory" => String.t(),
    "ParentJobId" => String.t(),
    "PercentDone" => String.t(),
    "RecoveryPointArn" => String.t(),
    "ResourceArn" => String.t(),
    "ResourceName" => String.t(),
    "ResourceType" => String.t(),
    "StartBy" => non_neg_integer(),
    "State" => list(any()),
    "StatusMessage" => String.t()
  }
  """
  @type backup_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_backup_plan_input() :: %{

  }
  """
  @type delete_backup_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_region_settings_input() :: %{

  }
  """
  @type describe_region_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_restore_jobs_by_protected_resource_input() :: %{
    optional("ByRecoveryPointCreationDateAfter") => non_neg_integer(),
    optional("ByRecoveryPointCreationDateBefore") => non_neg_integer(),
    optional("ByStatus") => list(any()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_restore_jobs_by_protected_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backup_plan_from_json_input() :: %{
    required("BackupPlanTemplateJson") => String.t()
  }
  """
  @type get_backup_plan_from_json_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_restore_job_summaries_output() :: %{
    "AggregationPeriod" => String.t(),
    "NextToken" => String.t(),
    "RestoreJobSummaries" => list(restore_job_summary()())
  }
  """
  @type list_restore_job_summaries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_framework_output() :: %{
    "CreationTime" => non_neg_integer(),
    "DeploymentStatus" => String.t(),
    "FrameworkArn" => String.t(),
    "FrameworkControls" => list(framework_control()()),
    "FrameworkDescription" => String.t(),
    "FrameworkName" => String.t(),
    "FrameworkStatus" => String.t(),
    "IdempotencyToken" => String.t()
  }
  """
  @type describe_framework_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_report_job_input() :: %{

  }
  """
  @type describe_report_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  export_backup_plan_template_input() :: %{

  }
  """
  @type export_backup_plan_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_restore_testing_plan_output() :: %{
    "CreationTime" => [non_neg_integer()],
    "RestoreTestingPlanArn" => [String.t()],
    "RestoreTestingPlanName" => [String.t()],
    "UpdateTime" => [non_neg_integer()]
  }
  """
  @type update_restore_testing_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  date_range() :: %{
    "FromDate" => non_neg_integer(),
    "ToDate" => non_neg_integer()
  }
  """
  @type date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_recovery_point_lifecycle_output() :: %{
    "BackupVaultArn" => String.t(),
    "CalculatedLifecycle" => calculated_lifecycle(),
    "Lifecycle" => lifecycle(),
    "RecoveryPointArn" => String.t()
  }
  """
  @type update_recovery_point_lifecycle_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_restore_testing_selections_output() :: %{
    "NextToken" => [String.t()],
    "RestoreTestingSelections" => list(restore_testing_selection_for_list()())
  }
  """
  @type list_restore_testing_selections_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_recovery_point_output() :: %{
    "BackupSizeInBytes" => float(),
    "BackupVaultArn" => String.t(),
    "BackupVaultName" => String.t(),
    "CalculatedLifecycle" => calculated_lifecycle(),
    "CompletionDate" => non_neg_integer(),
    "CompositeMemberIdentifier" => String.t(),
    "CreatedBy" => recovery_point_creator(),
    "CreationDate" => non_neg_integer(),
    "EncryptionKeyArn" => String.t(),
    "IamRoleArn" => String.t(),
    "IsEncrypted" => boolean(),
    "IsParent" => boolean(),
    "LastRestoreTime" => non_neg_integer(),
    "Lifecycle" => lifecycle(),
    "ParentRecoveryPointArn" => String.t(),
    "RecoveryPointArn" => String.t(),
    "ResourceArn" => String.t(),
    "ResourceName" => String.t(),
    "ResourceType" => String.t(),
    "SourceBackupVaultArn" => String.t(),
    "Status" => list(any()),
    "StatusMessage" => String.t(),
    "StorageClass" => list(any()),
    "VaultType" => list(any())
  }
  """
  @type describe_recovery_point_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_copy_job_output() :: %{
    "CopyJob" => copy_job()
  }
  """
  @type describe_copy_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cancel_legal_hold_input() :: %{
    optional("RetainRecordInDays") => float(),
    required("CancelDescription") => String.t()
  }
  """
  @type cancel_legal_hold_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_output() :: %{
    "NextToken" => String.t(),
    "Tags" => map()
  }
  """
  @type list_tags_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_restore_testing_plan_input() :: %{
    optional("CreatorRequestId") => [String.t()],
    optional("Tags") => map(),
    required("RestoreTestingPlan") => restore_testing_plan_for_create()
  }
  """
  @type create_restore_testing_plan_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_legal_hold_input() :: %{

  }
  """
  @type get_legal_hold_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  restore_testing_selection_for_get() :: %{
    "CreationTime" => [non_neg_integer()],
    "CreatorRequestId" => [String.t()],
    "IamRoleArn" => [String.t()],
    "ProtectedResourceArns" => list(String.t()()),
    "ProtectedResourceConditions" => protected_resource_conditions(),
    "ProtectedResourceType" => [String.t()],
    "RestoreMetadataOverrides" => map(),
    "RestoreTestingPlanName" => [String.t()],
    "RestoreTestingSelectionName" => [String.t()],
    "ValidationWindowHours" => integer()
  }
  """
  @type restore_testing_selection_for_get() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_recovery_point_restore_metadata_output() :: %{
    "BackupVaultArn" => String.t(),
    "RecoveryPointArn" => String.t(),
    "ResourceType" => String.t(),
    "RestoreMetadata" => map()
  }
  """
  @type get_recovery_point_restore_metadata_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_restore_testing_plan_output() :: %{
    "CreationTime" => [non_neg_integer()],
    "RestoreTestingPlanArn" => [String.t()],
    "RestoreTestingPlanName" => [String.t()]
  }
  """
  @type create_restore_testing_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_backup_vault_lock_configuration_input() :: %{

  }
  """
  @type delete_backup_vault_lock_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_protected_resources_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_protected_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_recovery_point_input() :: %{

  }
  """
  @type delete_recovery_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_report_plan_output() :: %{
    "CreationTime" => non_neg_integer(),
    "ReportPlanArn" => String.t(),
    "ReportPlanName" => String.t()
  }
  """
  @type update_report_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_plan_templates_output() :: %{
    "BackupPlanTemplatesList" => list(backup_plan_templates_list_member()()),
    "NextToken" => String.t()
  }
  """
  @type list_backup_plan_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backup_plans_input() :: %{
    optional("IncludeDeleted") => boolean(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_backup_plans_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_backup_job_input() :: %{

  }
  """
  @type describe_backup_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_logically_air_gapped_backup_vault_input() :: %{
    optional("BackupVaultTags") => map(),
    optional("CreatorRequestId") => String.t(),
    required("MaxRetentionDays") => float(),
    required("MinRetentionDays") => float()
  }
  """
  @type create_logically_air_gapped_backup_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_report_plan_output() :: %{
    "ReportPlan" => report_plan()
  }
  """
  @type describe_report_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_restore_testing_selection_input() :: %{
    required("RestoreTestingSelection") => restore_testing_selection_for_update()
  }
  """
  @type update_restore_testing_selection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_backup_vault_lock_configuration_input() :: %{
    optional("ChangeableForDays") => float(),
    optional("MaxRetentionDays") => float(),
    optional("MinRetentionDays") => float()
  }
  """
  @type put_backup_vault_lock_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_restore_job_input() :: %{

  }
  """
  @type describe_restore_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_backup_plan_output() :: %{
    "AdvancedBackupSettings" => list(advanced_backup_setting()()),
    "BackupPlanArn" => String.t(),
    "BackupPlanId" => String.t(),
    "CreationDate" => non_neg_integer(),
    "VersionId" => String.t()
  }
  """
  @type update_backup_plan_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_restore_validation_result_input() :: %{
    optional("ValidationStatusMessage") => String.t(),
    required("ValidationStatus") => list(any())
  }
  """
  @type put_restore_validation_result_input() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2018-11-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "backup",
      global?: false,
      protocol: "rest-json",
      service_id: "Backup",
      signature_version: "v4",
      signing_name: "backup",
      target_prefix: nil
    }
  end

  @doc """
  This action removes the specified legal hold on a recovery point.

  This action can only be performed by a user with sufficient permissions.
  """
  @spec cancel_legal_hold(map(), String.t(), cancel_legal_hold_input(), list()) ::
          {:ok, cancel_legal_hold_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_resource_state_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def cancel_legal_hold(%Client{} = client, legal_hold_id, input, options \\ []) do
    url_path = "/legal-holds/#{AWS.Util.encode_uri(legal_hold_id)}"
    headers = []

    {query_params, input} =
      [
        {"CancelDescription", "cancelDescription"},
        {"RetainRecordInDays", "retainRecordInDays"}
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
      201
    )
  end

  @doc """
  Creates a backup plan using a backup plan name and backup rules.

  A backup plan is a
  document that contains information that Backup uses to schedule tasks that
  create recovery points for resources.

  If you call `CreateBackupPlan` with a plan that already exists, you receive
  an `AlreadyExistsException` exception.
  """
  @spec create_backup_plan(map(), create_backup_plan_input(), list()) ::
          {:ok, create_backup_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, already_exists_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def create_backup_plan(%Client{} = client, input, options \\ []) do
    url_path = "/backup/plans"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a JSON document that specifies a set of resources to assign to a backup
  plan.

  For examples, see [Assigning resources programmatically](https://docs.aws.amazon.com/aws-backup/latest/devguide/assigning-resources.html#assigning-resources-json).
  """
  @spec create_backup_selection(map(), String.t(), create_backup_selection_input(), list()) ::
          {:ok, create_backup_selection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, already_exists_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def create_backup_selection(%Client{} = client, backup_plan_id, input, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/selections"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a logical container where backups are stored.

  A `CreateBackupVault`
  request includes a name, optionally one or more resource tags, an encryption
  key, and a
  request ID.

  Do not include sensitive data, such as passport numbers, in the name of a backup
  vault.
  """
  @spec create_backup_vault(map(), String.t(), create_backup_vault_input(), list()) ::
          {:ok, create_backup_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, already_exists_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def create_backup_vault(%Client{} = client, backup_vault_name, input, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a framework with one or more controls.

  A framework is a collection of controls
  that you can use to evaluate your backup practices. By using pre-built
  customizable
  controls to define your policies, you can evaluate whether your backup practices
  comply
  with your policies and which resources are not yet in compliance.
  """
  @spec create_framework(map(), create_framework_input(), list()) ::
          {:ok, create_framework_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, already_exists_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def create_framework(%Client{} = client, input, options \\ []) do
    url_path = "/audit/frameworks"
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
  This action creates a legal hold on a recovery point (backup).

  A legal hold
  is a restraint on altering or deleting a backup until an authorized user cancels
  the
  legal hold. Any actions to delete or disassociate a recovery point will fail
  with
  an error if one or more active legal holds are on the recovery point.
  """
  @spec create_legal_hold(map(), create_legal_hold_input(), list()) ::
          {:ok, create_legal_hold_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def create_legal_hold(%Client{} = client, input, options \\ []) do
    url_path = "/legal-holds"
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
  This request creates a logical container to where backups may be copied.

  This request includes a name, the Region, the maximum number of retention days,
  the
  minimum number of retention days, and optionally can include tags and a creator
  request
  ID.

  Do not include sensitive data, such as passport numbers, in the name of a backup
  vault.
  """
  @spec create_logically_air_gapped_backup_vault(
          map(),
          String.t(),
          create_logically_air_gapped_backup_vault_input(),
          list()
        ) ::
          {:ok, create_logically_air_gapped_backup_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, already_exists_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def create_logically_air_gapped_backup_vault(
        %Client{} = client,
        backup_vault_name,
        input,
        options \\ []
      ) do
    url_path = "/logically-air-gapped-backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a report plan.

  A report plan is a document that contains information about the
  contents of the report and where Backup will deliver it.

  If you call `CreateReportPlan` with a plan that already exists, you receive
  an `AlreadyExistsException` exception.
  """
  @spec create_report_plan(map(), create_report_plan_input(), list()) ::
          {:ok, create_report_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, already_exists_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def create_report_plan(%Client{} = client, input, options \\ []) do
    url_path = "/audit/report-plans"
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
  This is the first of two steps to create a restore testing
  plan; once this request is successful, finish the procedure with
  request CreateRestoreTestingSelection.

  You must include the parameter RestoreTestingPlan. You may
  optionally include CreatorRequestId and Tags.
  """
  @spec create_restore_testing_plan(map(), create_restore_testing_plan_input(), list()) ::
          {:ok, create_restore_testing_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, already_exists_exception()}
          | {:error, conflict_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def create_restore_testing_plan(%Client{} = client, input, options \\ []) do
    url_path = "/restore-testing/plans"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  This request can be sent after CreateRestoreTestingPlan request
  returns successfully.

  This is the second part of creating a resource testing
  plan, and it must be completed sequentially.

  This consists of `RestoreTestingSelectionName`,
  `ProtectedResourceType`, and one of the following:

    *

  `ProtectedResourceArns`

    *

  `ProtectedResourceConditions`

  Each protected resource type can have one single value.

  A restore testing selection can include a wildcard value ("*") for
  `ProtectedResourceArns` along with `ProtectedResourceConditions`.
  Alternatively, you can include up to 30 specific protected resource ARNs in
  `ProtectedResourceArns`.

  Cannot select by both protected resource types AND specific ARNs.
  Request will fail if both are included.
  """
  @spec create_restore_testing_selection(
          map(),
          String.t(),
          create_restore_testing_selection_input(),
          list()
        ) ::
          {:ok, create_restore_testing_selection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, already_exists_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def create_restore_testing_selection(
        %Client{} = client,
        restore_testing_plan_name,
        input,
        options \\ []
      ) do
    url_path =
      "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}/selections"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Deletes a backup plan.

  A backup plan can only be deleted after all associated selections
  of resources have been deleted. Deleting a backup plan deletes the current
  version of a
  backup plan. Previous versions, if any, will still exist.
  """
  @spec delete_backup_plan(map(), String.t(), delete_backup_plan_input(), list()) ::
          {:ok, delete_backup_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def delete_backup_plan(%Client{} = client, backup_plan_id, input, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}"
    headers = []
    query_params = []

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
  Deletes the resource selection associated with a backup plan that is specified
  by the
  `SelectionId`.
  """
  @spec delete_backup_selection(
          map(),
          String.t(),
          String.t(),
          delete_backup_selection_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def delete_backup_selection(
        %Client{} = client,
        backup_plan_id,
        selection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/selections/#{AWS.Util.encode_uri(selection_id)}"

    headers = []
    query_params = []

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
  Deletes the backup vault identified by its name.

  A vault can be deleted only if it is
  empty.
  """
  @spec delete_backup_vault(map(), String.t(), delete_backup_vault_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def delete_backup_vault(%Client{} = client, backup_vault_name, input, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}"
    headers = []
    query_params = []

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
  Deletes the policy document that manages permissions on a backup vault.
  """
  @spec delete_backup_vault_access_policy(
          map(),
          String.t(),
          delete_backup_vault_access_policy_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def delete_backup_vault_access_policy(
        %Client{} = client,
        backup_vault_name,
        input,
        options \\ []
      ) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/access-policy"
    headers = []
    query_params = []

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
  Deletes Backup Vault Lock from a backup vault specified by a backup vault
  name.

  If the Vault Lock configuration is immutable, then you cannot delete Vault Lock
  using
  API operations, and you will receive an `InvalidRequestException` if you attempt
  to do so. For more information, see [Vault Lock](https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html) in
  the
  *Backup Developer Guide*.
  """
  @spec delete_backup_vault_lock_configuration(
          map(),
          String.t(),
          delete_backup_vault_lock_configuration_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def delete_backup_vault_lock_configuration(
        %Client{} = client,
        backup_vault_name,
        input,
        options \\ []
      ) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/vault-lock"
    headers = []
    query_params = []

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
  Deletes event notifications for the specified backup vault.
  """
  @spec delete_backup_vault_notifications(
          map(),
          String.t(),
          delete_backup_vault_notifications_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def delete_backup_vault_notifications(
        %Client{} = client,
        backup_vault_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/notification-configuration"

    headers = []
    query_params = []

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
  Deletes the framework specified by a framework name.
  """
  @spec delete_framework(map(), String.t(), delete_framework_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def delete_framework(%Client{} = client, framework_name, input, options \\ []) do
    url_path = "/audit/frameworks/#{AWS.Util.encode_uri(framework_name)}"
    headers = []
    query_params = []

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
  Deletes the recovery point specified by a recovery point ID.

  If the recovery point ID belongs to a continuous backup, calling this endpoint
  deletes
  the existing continuous backup and stops future continuous backup.

  When an IAM role's permissions are insufficient to call this API, the service
  sends back
  an HTTP 200 response with an empty HTTP body, but the recovery point is not
  deleted.
  Instead, it enters an `EXPIRED` state.

  `EXPIRED` recovery points can be deleted with this API once the IAM role
  has the `iam:CreateServiceLinkedRole` action. To learn more about adding this
  role, see
  [
  Troubleshooting manual
  deletions](https://docs.aws.amazon.com/aws-backup/latest/devguide/deleting-backups.html#deleting-backups-troubleshooting).

  If the user or role is deleted or the permission within the role is removed,
  the deletion will not be successful and will enter an `EXPIRED` state.
  """
  @spec delete_recovery_point(
          map(),
          String.t(),
          String.t(),
          delete_recovery_point_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_resource_state_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def delete_recovery_point(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}"

    headers = []
    query_params = []

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
  Deletes the report plan specified by a report plan name.
  """
  @spec delete_report_plan(map(), String.t(), delete_report_plan_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def delete_report_plan(%Client{} = client, report_plan_name, input, options \\ []) do
    url_path = "/audit/report-plans/#{AWS.Util.encode_uri(report_plan_name)}"
    headers = []
    query_params = []

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
  This request deletes the specified restore testing plan.

  Deletion can only successfully occur if all associated
  restore testing selections are deleted first.
  """
  @spec delete_restore_testing_plan(
          map(),
          String.t(),
          delete_restore_testing_plan_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_request_exception()}
          | {:error, service_unavailable_exception()}
  def delete_restore_testing_plan(
        %Client{} = client,
        restore_testing_plan_name,
        input,
        options \\ []
      ) do
    url_path = "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}"
    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Input the Restore Testing Plan name and Restore Testing Selection
  name.

  All testing selections associated with a restore testing plan must
  be deleted before the restore testing plan can be deleted.
  """
  @spec delete_restore_testing_selection(
          map(),
          String.t(),
          String.t(),
          delete_restore_testing_selection_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def delete_restore_testing_selection(
        %Client{} = client,
        restore_testing_plan_name,
        restore_testing_selection_name,
        input,
        options \\ []
      ) do
    url_path =
      "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}/selections/#{AWS.Util.encode_uri(restore_testing_selection_name)}"

    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Returns backup job details for the specified `BackupJobId`.
  """
  @spec describe_backup_job(map(), String.t(), list()) ::
          {:ok, describe_backup_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, dependency_failure_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def describe_backup_job(%Client{} = client, backup_job_id, options \\ []) do
    url_path = "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metadata about a backup vault specified by its name.
  """
  @spec describe_backup_vault(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_backup_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def describe_backup_vault(
        %Client{} = client,
        backup_vault_name,
        backup_vault_account_id \\ nil,
        options \\ []
      ) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(backup_vault_account_id) do
        [{"backupVaultAccountId", backup_vault_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metadata associated with creating a copy of a resource.
  """
  @spec describe_copy_job(map(), String.t(), list()) ::
          {:ok, describe_copy_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def describe_copy_job(%Client{} = client, copy_job_id, options \\ []) do
    url_path = "/copy-jobs/#{AWS.Util.encode_uri(copy_job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the framework details for the specified `FrameworkName`.
  """
  @spec describe_framework(map(), String.t(), list()) ::
          {:ok, describe_framework_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def describe_framework(%Client{} = client, framework_name, options \\ []) do
    url_path = "/audit/frameworks/#{AWS.Util.encode_uri(framework_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes whether the Amazon Web Services account is opted in to cross-account
  backup.

  Returns an error if the account is not a member of an Organizations
  organization.
  Example: `describe-global-settings --region us-west-2`
  """
  @spec describe_global_settings(map(), list()) ::
          {:ok, describe_global_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_request_exception()}
          | {:error, service_unavailable_exception()}
  def describe_global_settings(%Client{} = client, options \\ []) do
    url_path = "/global-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a saved resource, including the last time it was
  backed up,
  its Amazon Resource Name (ARN), and the Amazon Web Services service type of the
  saved
  resource.
  """
  @spec describe_protected_resource(map(), String.t(), list()) ::
          {:ok, describe_protected_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def describe_protected_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metadata associated with a recovery point, including ID, status,
  encryption, and
  lifecycle.
  """
  @spec describe_recovery_point(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_recovery_point_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def describe_recovery_point(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        backup_vault_account_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(backup_vault_account_id) do
        [{"backupVaultAccountId", backup_vault_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the current service opt-in settings for the Region.

  If service opt-in is enabled
  for a service, Backup tries to protect that service's resources in this Region,
  when the resource is included in an on-demand backup or scheduled backup plan.
  Otherwise,
  Backup does not try to protect that service's resources in this
  Region.
  """
  @spec describe_region_settings(map(), list()) ::
          {:ok, describe_region_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, service_unavailable_exception()}
  def describe_region_settings(%Client{} = client, options \\ []) do
    url_path = "/account-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the details associated with creating a report as specified by its
  `ReportJobId`.
  """
  @spec describe_report_job(map(), String.t(), list()) ::
          {:ok, describe_report_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def describe_report_job(%Client{} = client, report_job_id, options \\ []) do
    url_path = "/audit/report-jobs/#{AWS.Util.encode_uri(report_job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all report plans for an Amazon Web Services account and Amazon
  Web Services Region.
  """
  @spec describe_report_plan(map(), String.t(), list()) ::
          {:ok, describe_report_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def describe_report_plan(%Client{} = client, report_plan_name, options \\ []) do
    url_path = "/audit/report-plans/#{AWS.Util.encode_uri(report_plan_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metadata associated with a restore job that is specified by a job ID.
  """
  @spec describe_restore_job(map(), String.t(), list()) ::
          {:ok, describe_restore_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, dependency_failure_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def describe_restore_job(%Client{} = client, restore_job_id, options \\ []) do
    url_path = "/restore-jobs/#{AWS.Util.encode_uri(restore_job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Deletes the specified continuous backup recovery point from Backup and
  releases control of that continuous backup to the source service, such as Amazon
  RDS.

  The source service will continue to create and retain continuous backups using
  the
  lifecycle that you specified in your original backup plan.

  Does not support snapshot backup recovery points.
  """
  @spec disassociate_recovery_point(
          map(),
          String.t(),
          String.t(),
          disassociate_recovery_point_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, invalid_resource_state_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def disassociate_recovery_point(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}/disassociate"

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
  This action to a specific child (nested) recovery point removes the relationship
  between the specified recovery point and its parent (composite) recovery point.
  """
  @spec disassociate_recovery_point_from_parent(
          map(),
          String.t(),
          String.t(),
          disassociate_recovery_point_from_parent_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def disassociate_recovery_point_from_parent(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}/parentAssociation"

    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Returns the backup plan that is specified by the plan ID as a backup template.
  """
  @spec export_backup_plan_template(map(), String.t(), list()) ::
          {:ok, export_backup_plan_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def export_backup_plan_template(%Client{} = client, backup_plan_id, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/toTemplate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns `BackupPlan` details for the specified `BackupPlanId`.

  The
  details are the body of a backup plan in JSON format, in addition to plan
  metadata.
  """
  @spec get_backup_plan(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_backup_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def get_backup_plan(%Client{} = client, backup_plan_id, version_id \\ nil, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version_id) do
        [{"versionId", version_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a valid JSON document specifying a backup plan or an error.
  """
  @spec get_backup_plan_from_json(map(), get_backup_plan_from_json_input(), list()) ::
          {:ok, get_backup_plan_from_json_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def get_backup_plan_from_json(%Client{} = client, input, options \\ []) do
    url_path = "/backup/template/json/toPlan"
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
  Returns the template specified by its `templateId` as a backup plan.
  """
  @spec get_backup_plan_from_template(map(), String.t(), list()) ::
          {:ok, get_backup_plan_from_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def get_backup_plan_from_template(%Client{} = client, backup_plan_template_id, options \\ []) do
    url_path = "/backup/template/plans/#{AWS.Util.encode_uri(backup_plan_template_id)}/toPlan"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns selection metadata and a document in JSON format that specifies a list
  of
  resources that are associated with a backup plan.
  """
  @spec get_backup_selection(map(), String.t(), String.t(), list()) ::
          {:ok, get_backup_selection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def get_backup_selection(%Client{} = client, backup_plan_id, selection_id, options \\ []) do
    url_path =
      "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/selections/#{AWS.Util.encode_uri(selection_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the access policy document that is associated with the named backup
  vault.
  """
  @spec get_backup_vault_access_policy(map(), String.t(), list()) ::
          {:ok, get_backup_vault_access_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def get_backup_vault_access_policy(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/access-policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns event notifications for the specified backup vault.
  """
  @spec get_backup_vault_notifications(map(), String.t(), list()) ::
          {:ok, get_backup_vault_notifications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def get_backup_vault_notifications(%Client{} = client, backup_vault_name, options \\ []) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/notification-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This action returns details for a specified legal hold.

  The details are the
  body of a legal hold in JSON format, in addition to metadata.
  """
  @spec get_legal_hold(map(), String.t(), list()) ::
          {:ok, get_legal_hold_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def get_legal_hold(%Client{} = client, legal_hold_id, options \\ []) do
    url_path = "/legal-holds/#{AWS.Util.encode_uri(legal_hold_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a set of metadata key-value pairs that were used to create the backup.
  """
  @spec get_recovery_point_restore_metadata(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, get_recovery_point_restore_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def get_recovery_point_restore_metadata(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        backup_vault_account_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}/restore-metadata"

    headers = []
    query_params = []

    query_params =
      if !is_nil(backup_vault_account_id) do
        [{"backupVaultAccountId", backup_vault_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This request returns the metadata for the specified restore job.
  """
  @spec get_restore_job_metadata(map(), String.t(), list()) ::
          {:ok, get_restore_job_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def get_restore_job_metadata(%Client{} = client, restore_job_id, options \\ []) do
    url_path = "/restore-jobs/#{AWS.Util.encode_uri(restore_job_id)}/metadata"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This request returns the minimal required set of metadata needed to
  start a restore job with secure default settings.

  `BackupVaultName`
  and `RecoveryPointArn` are required parameters.
  `BackupVaultAccountId` is an optional parameter.
  """
  @spec get_restore_testing_inferred_metadata(
          map(),
          String.t() | nil,
          String.t(),
          String.t(),
          list()
        ) ::
          {:ok, get_restore_testing_inferred_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def get_restore_testing_inferred_metadata(
        %Client{} = client,
        backup_vault_account_id \\ nil,
        backup_vault_name,
        recovery_point_arn,
        options \\ []
      ) do
    url_path = "/restore-testing/inferred-metadata"
    headers = []
    query_params = []

    query_params =
      if !is_nil(recovery_point_arn) do
        [{"RecoveryPointArn", recovery_point_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(backup_vault_name) do
        [{"BackupVaultName", backup_vault_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(backup_vault_account_id) do
        [{"BackupVaultAccountId", backup_vault_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns `RestoreTestingPlan` details for the specified
  `RestoreTestingPlanName`.

  The details are the body of a restore testing plan
  in JSON format, in addition to plan metadata.
  """
  @spec get_restore_testing_plan(map(), String.t(), list()) ::
          {:ok, get_restore_testing_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def get_restore_testing_plan(%Client{} = client, restore_testing_plan_name, options \\ []) do
    url_path = "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns RestoreTestingSelection, which displays resources
  and elements of the restore testing plan.
  """
  @spec get_restore_testing_selection(map(), String.t(), String.t(), list()) ::
          {:ok, get_restore_testing_selection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def get_restore_testing_selection(
        %Client{} = client,
        restore_testing_plan_name,
        restore_testing_selection_name,
        options \\ []
      ) do
    url_path =
      "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}/selections/#{AWS.Util.encode_uri(restore_testing_selection_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the Amazon Web Services resource types supported by Backup.
  """
  @spec get_supported_resource_types(map(), list()) ::
          {:ok, get_supported_resource_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, service_unavailable_exception()}
  def get_supported_resource_types(%Client{} = client, options \\ []) do
    url_path = "/supported-resource-types"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This is a request for a summary of backup jobs created
  or running within the most recent 30 days.

  You can
  include parameters AccountID, State, ResourceType, MessageCategory,
  AggregationPeriod, MaxResults, or NextToken to filter
  results.

  This request returns a summary that contains
  Region, Account, State, ResourceType, MessageCategory,
  StartTime, EndTime, and Count of included jobs.
  """
  @spec list_backup_job_summaries(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_backup_job_summaries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def list_backup_job_summaries(
        %Client{} = client,
        account_id \\ nil,
        aggregation_period \\ nil,
        max_results \\ nil,
        message_category \\ nil,
        next_token \\ nil,
        resource_type \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/audit/backup-job-summaries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"State", state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_type) do
        [{"ResourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(message_category) do
        [{"MessageCategory", message_category} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aggregation_period) do
        [{"AggregationPeriod", aggregation_period} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id) do
        [{"AccountId", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing backup jobs for an authenticated account for the last
  30
  days.

  For a longer period of time, consider using these [monitoring tools](https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html).
  """
  @spec list_backup_jobs(
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
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_backup_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def list_backup_jobs(
        %Client{} = client,
        by_account_id \\ nil,
        by_backup_vault_name \\ nil,
        by_complete_after \\ nil,
        by_complete_before \\ nil,
        by_created_after \\ nil,
        by_created_before \\ nil,
        by_message_category \\ nil,
        by_parent_job_id \\ nil,
        by_resource_arn \\ nil,
        by_resource_type \\ nil,
        by_state \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup-jobs"
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
      if !is_nil(by_state) do
        [{"state", by_state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_resource_type) do
        [{"resourceType", by_resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_resource_arn) do
        [{"resourceArn", by_resource_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_parent_job_id) do
        [{"parentJobId", by_parent_job_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_message_category) do
        [{"messageCategory", by_message_category} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_created_before) do
        [{"createdBefore", by_created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_created_after) do
        [{"createdAfter", by_created_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_complete_before) do
        [{"completeBefore", by_complete_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_complete_after) do
        [{"completeAfter", by_complete_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_backup_vault_name) do
        [{"backupVaultName", by_backup_vault_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_account_id) do
        [{"accountId", by_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metadata of your saved backup plan templates, including the template ID,
  name,
  and the creation and deletion dates.
  """
  @spec list_backup_plan_templates(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_backup_plan_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_backup_plan_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup/template/plans"
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
  Returns version metadata of your backup plans, including Amazon Resource Names
  (ARNs),
  backup plan IDs, creation and deletion dates, plan names, and version IDs.
  """
  @spec list_backup_plan_versions(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_backup_plan_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_backup_plan_versions(
        %Client{} = client,
        backup_plan_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/versions"
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
  Returns a list of all active backup plans for an authenticated account.

  The list
  contains information such as Amazon Resource Names (ARNs), plan IDs, creation
  and deletion
  dates, version IDs, plan names, and creator request IDs.
  """
  @spec list_backup_plans(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_backup_plans_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_backup_plans(
        %Client{} = client,
        include_deleted \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup/plans"
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
      if !is_nil(include_deleted) do
        [{"includeDeleted", include_deleted} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an array containing metadata of the resources associated with the target
  backup
  plan.
  """
  @spec list_backup_selections(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_backup_selections_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_backup_selections(
        %Client{} = client,
        backup_plan_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/selections"
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
  Returns a list of recovery point storage containers along with information about
  them.
  """
  @spec list_backup_vaults(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_backup_vaults_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_backup_vaults(
        %Client{} = client,
        by_shared \\ nil,
        by_vault_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup-vaults"
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
      if !is_nil(by_vault_type) do
        [{"vaultType", by_vault_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_shared) do
        [{"shared", by_shared} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This request obtains a list of copy jobs created
  or running within the the most recent 30 days.

  You can
  include parameters AccountID, State, ResourceType, MessageCategory,
  AggregationPeriod, MaxResults, or NextToken to filter
  results.

  This request returns a summary that contains
  Region, Account, State, RestourceType, MessageCategory,
  StartTime, EndTime, and Count of included jobs.
  """
  @spec list_copy_job_summaries(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_copy_job_summaries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def list_copy_job_summaries(
        %Client{} = client,
        account_id \\ nil,
        aggregation_period \\ nil,
        max_results \\ nil,
        message_category \\ nil,
        next_token \\ nil,
        resource_type \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/audit/copy-job-summaries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"State", state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_type) do
        [{"ResourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(message_category) do
        [{"MessageCategory", message_category} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aggregation_period) do
        [{"AggregationPeriod", aggregation_period} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id) do
        [{"AccountId", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metadata about your copy jobs.
  """
  @spec list_copy_jobs(
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
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_copy_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def list_copy_jobs(
        %Client{} = client,
        by_account_id \\ nil,
        by_complete_after \\ nil,
        by_complete_before \\ nil,
        by_created_after \\ nil,
        by_created_before \\ nil,
        by_destination_vault_arn \\ nil,
        by_message_category \\ nil,
        by_parent_job_id \\ nil,
        by_resource_arn \\ nil,
        by_resource_type \\ nil,
        by_state \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/copy-jobs"
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
      if !is_nil(by_state) do
        [{"state", by_state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_resource_type) do
        [{"resourceType", by_resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_resource_arn) do
        [{"resourceArn", by_resource_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_parent_job_id) do
        [{"parentJobId", by_parent_job_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_message_category) do
        [{"messageCategory", by_message_category} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_destination_vault_arn) do
        [{"destinationVaultArn", by_destination_vault_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_created_before) do
        [{"createdBefore", by_created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_created_after) do
        [{"createdAfter", by_created_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_complete_before) do
        [{"completeBefore", by_complete_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_complete_after) do
        [{"completeAfter", by_complete_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_account_id) do
        [{"accountId", by_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all frameworks for an Amazon Web Services account and Amazon
  Web Services Region.
  """
  @spec list_frameworks(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_frameworks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def list_frameworks(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/audit/frameworks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This action returns metadata about active and previous legal holds.
  """
  @spec list_legal_holds(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_legal_holds_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def list_legal_holds(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/legal-holds"
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
  Returns an array of resources successfully backed up by Backup, including
  the time the resource was saved, an Amazon Resource Name (ARN) of the resource,
  and a
  resource type.
  """
  @spec list_protected_resources(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_protected_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def list_protected_resources(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/resources"
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
  This request lists the protected resources corresponding to each backup vault.
  """
  @spec list_protected_resources_by_backup_vault(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_protected_resources_by_backup_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_protected_resources_by_backup_vault(
        %Client{} = client,
        backup_vault_name,
        backup_vault_account_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/resources"
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
      if !is_nil(backup_vault_account_id) do
        [{"backupVaultAccountId", backup_vault_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns detailed information about the recovery points stored in a backup vault.
  """
  @spec list_recovery_points_by_backup_vault(
          map(),
          String.t(),
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
          {:ok, list_recovery_points_by_backup_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_recovery_points_by_backup_vault(
        %Client{} = client,
        backup_vault_name,
        backup_vault_account_id \\ nil,
        by_backup_plan_id \\ nil,
        by_created_after \\ nil,
        by_created_before \\ nil,
        by_parent_recovery_point_arn \\ nil,
        by_resource_arn \\ nil,
        by_resource_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points"
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
      if !is_nil(by_resource_type) do
        [{"resourceType", by_resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_resource_arn) do
        [{"resourceArn", by_resource_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_parent_recovery_point_arn) do
        [{"parentRecoveryPointArn", by_parent_recovery_point_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_created_before) do
        [{"createdBefore", by_created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_created_after) do
        [{"createdAfter", by_created_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_backup_plan_id) do
        [{"backupPlanId", by_backup_plan_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(backup_vault_account_id) do
        [{"backupVaultAccountId", backup_vault_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This action returns recovery point ARNs (Amazon Resource Names) of the
  specified legal hold.
  """
  @spec list_recovery_points_by_legal_hold(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_recovery_points_by_legal_hold_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def list_recovery_points_by_legal_hold(
        %Client{} = client,
        legal_hold_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/legal-holds/#{AWS.Util.encode_uri(legal_hold_id)}/recovery-points"
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
  Returns detailed information about all the recovery points of the type specified
  by a
  resource Amazon Resource Name (ARN).

  For Amazon EFS and Amazon EC2, this action only lists recovery points
  created by Backup.
  """
  @spec list_recovery_points_by_resource(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_recovery_points_by_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_recovery_points_by_resource(
        %Client{} = client,
        resource_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}/recovery-points"
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
  Returns details about your report jobs.
  """
  @spec list_report_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_report_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_report_jobs(
        %Client{} = client,
        by_creation_after \\ nil,
        by_creation_before \\ nil,
        by_report_plan_name \\ nil,
        by_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/audit/report-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_status) do
        [{"Status", by_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_report_plan_name) do
        [{"ReportPlanName", by_report_plan_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_creation_before) do
        [{"CreationBefore", by_creation_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_creation_after) do
        [{"CreationAfter", by_creation_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of your report plans.

  For detailed information about a single report
  plan, use `DescribeReportPlan`.
  """
  @spec list_report_plans(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_report_plans_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def list_report_plans(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/audit/report-plans"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This request obtains a summary of restore jobs created
  or running within the the most recent 30 days.

  You can
  include parameters AccountID, State, ResourceType,
  AggregationPeriod, MaxResults, or NextToken to filter
  results.

  This request returns a summary that contains
  Region, Account, State, RestourceType, MessageCategory,
  StartTime, EndTime, and Count of included jobs.
  """
  @spec list_restore_job_summaries(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_restore_job_summaries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def list_restore_job_summaries(
        %Client{} = client,
        account_id \\ nil,
        aggregation_period \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        resource_type \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/audit/restore-job-summaries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"State", state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_type) do
        [{"ResourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aggregation_period) do
        [{"AggregationPeriod", aggregation_period} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id) do
        [{"AccountId", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of jobs that Backup initiated to restore a saved resource,
  including details about the recovery process.
  """
  @spec list_restore_jobs(
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
          String.t() | nil,
          list()
        ) ::
          {:ok, list_restore_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_restore_jobs(
        %Client{} = client,
        by_account_id \\ nil,
        by_complete_after \\ nil,
        by_complete_before \\ nil,
        by_created_after \\ nil,
        by_created_before \\ nil,
        by_resource_type \\ nil,
        by_restore_testing_plan_arn \\ nil,
        by_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/restore-jobs"
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
      if !is_nil(by_status) do
        [{"status", by_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_restore_testing_plan_arn) do
        [{"restoreTestingPlanArn", by_restore_testing_plan_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_resource_type) do
        [{"resourceType", by_resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_created_before) do
        [{"createdBefore", by_created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_created_after) do
        [{"createdAfter", by_created_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_complete_before) do
        [{"completeBefore", by_complete_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_complete_after) do
        [{"completeAfter", by_complete_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_account_id) do
        [{"accountId", by_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This returns restore jobs that contain the specified protected resource.

  You must include `ResourceArn`. You can optionally include
  `NextToken`, `ByStatus`, `MaxResults`,
  `ByRecoveryPointCreationDateAfter` , and
  `ByRecoveryPointCreationDateBefore`.
  """
  @spec list_restore_jobs_by_protected_resource(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_restore_jobs_by_protected_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_restore_jobs_by_protected_resource(
        %Client{} = client,
        resource_arn,
        by_recovery_point_creation_date_after \\ nil,
        by_recovery_point_creation_date_before \\ nil,
        by_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}/restore-jobs"
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
      if !is_nil(by_status) do
        [{"status", by_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_recovery_point_creation_date_before) do
        [
          {"recoveryPointCreationDateBefore", by_recovery_point_creation_date_before}
          | query_params
        ]
      else
        query_params
      end

    query_params =
      if !is_nil(by_recovery_point_creation_date_after) do
        [{"recoveryPointCreationDateAfter", by_recovery_point_creation_date_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of restore testing plans.
  """
  @spec list_restore_testing_plans(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_restore_testing_plans_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def list_restore_testing_plans(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/restore-testing/plans"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of restore testing selections.

  Can be filtered
  by `MaxResults` and `RestoreTestingPlanName`.
  """
  @spec list_restore_testing_selections(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_restore_testing_selections_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_restore_testing_selections(
        %Client{} = client,
        restore_testing_plan_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}/selections"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of key-value pairs assigned to a target recovery point, backup
  plan, or
  backup vault.

  `ListTags` only works for resource types that support full Backup
  management of their backups. Those resource types are listed in the "Full Backup
  management" section of the [ Feature availability by
  resource](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource)
  table.
  """
  @spec list_tags(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def list_tags(
        %Client{} = client,
        resource_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Sets a resource-based policy that is used to manage access permissions on the
  target
  backup vault.

  Requires a backup vault name and an access policy document in JSON
  format.
  """
  @spec put_backup_vault_access_policy(
          map(),
          String.t(),
          put_backup_vault_access_policy_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def put_backup_vault_access_policy(%Client{} = client, backup_vault_name, input, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/access-policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Applies Backup Vault Lock to a backup vault, preventing attempts to delete
  any recovery point stored in or created in a backup vault.

  Vault Lock also prevents
  attempts to update the lifecycle policy that controls the retention period of
  any recovery
  point currently stored in a backup vault. If specified, Vault Lock enforces a
  minimum and
  maximum retention period for future backup and copy jobs that target a backup
  vault.

  Backup Vault Lock has been assessed by Cohasset Associates for use in
  environments
  that are subject to SEC 17a-4, CFTC, and FINRA regulations. For more information
  about
  how Backup Vault Lock relates to these regulations, see the
  [Cohasset Associates Compliance Assessment.](samples/cohassetreport.zip)
  """
  @spec put_backup_vault_lock_configuration(
          map(),
          String.t(),
          put_backup_vault_lock_configuration_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def put_backup_vault_lock_configuration(
        %Client{} = client,
        backup_vault_name,
        input,
        options \\ []
      ) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/vault-lock"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Turns on notifications on a backup vault for the specified topic and events.
  """
  @spec put_backup_vault_notifications(
          map(),
          String.t(),
          put_backup_vault_notifications_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def put_backup_vault_notifications(%Client{} = client, backup_vault_name, input, options \\ []) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/notification-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This request allows you to send your independent self-run
  restore test validation results.

  `RestoreJobId` and `ValidationStatus`
  are required. Optionally, you can input a
  `ValidationStatusMessage`.
  """
  @spec put_restore_validation_result(
          map(),
          String.t(),
          put_restore_validation_result_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def put_restore_validation_result(%Client{} = client, restore_job_id, input, options \\ []) do
    url_path = "/restore-jobs/#{AWS.Util.encode_uri(restore_job_id)}/validations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 204)
  end

  @doc """
  Starts an on-demand backup job for the specified resource.
  """
  @spec start_backup_job(map(), start_backup_job_input(), list()) ::
          {:ok, start_backup_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def start_backup_job(%Client{} = client, input, options \\ []) do
    url_path = "/backup-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Starts a job to create a one-time copy of the specified resource.

  Does not support continuous backups.
  """
  @spec start_copy_job(map(), start_copy_job_input(), list()) ::
          {:ok, start_copy_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def start_copy_job(%Client{} = client, input, options \\ []) do
    url_path = "/copy-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Starts an on-demand report job for the specified report plan.
  """
  @spec start_report_job(map(), String.t(), start_report_job_input(), list()) ::
          {:ok, start_report_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def start_report_job(%Client{} = client, report_plan_name, input, options \\ []) do
    url_path = "/audit/report-jobs/#{AWS.Util.encode_uri(report_plan_name)}"
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
  Recovers the saved resource identified by an Amazon Resource Name (ARN).
  """
  @spec start_restore_job(map(), start_restore_job_input(), list()) ::
          {:ok, start_restore_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def start_restore_job(%Client{} = client, input, options \\ []) do
    url_path = "/restore-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Attempts to cancel a job to create a one-time backup of a resource.

  This action is not supported for the following services:
  Amazon FSx for Windows File Server, Amazon FSx for Lustre, FSx for ONTAP
  , Amazon FSx for OpenZFS, Amazon DocumentDB (with MongoDB compatibility), Amazon
  RDS, Amazon Aurora,
  and Amazon Neptune.
  """
  @spec stop_backup_job(map(), String.t(), stop_backup_job_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def stop_backup_job(%Client{} = client, backup_job_id, input, options \\ []) do
    url_path = "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}"
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
  Assigns a set of key-value pairs to a recovery point, backup plan, or backup
  vault
  identified by an Amazon Resource Name (ARN).
  """
  @spec tag_resource(map(), String.t(), tag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
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
  Removes a set of key-value pairs from a recovery point, backup plan, or backup
  vault
  identified by an Amazon Resource Name (ARN)
  """
  @spec untag_resource(map(), String.t(), untag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/untag/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates an existing backup plan identified by its `backupPlanId` with the
  input document in JSON format.

  The new version is uniquely identified by a
  `VersionId`.
  """
  @spec update_backup_plan(map(), String.t(), update_backup_plan_input(), list()) ::
          {:ok, update_backup_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def update_backup_plan(%Client{} = client, backup_plan_id, input, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}"
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
  Updates an existing framework identified by its `FrameworkName` with the
  input document in JSON format.
  """
  @spec update_framework(map(), String.t(), update_framework_input(), list()) ::
          {:ok, update_framework_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, already_exists_exception()}
          | {:error, conflict_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def update_framework(%Client{} = client, framework_name, input, options \\ []) do
    url_path = "/audit/frameworks/#{AWS.Util.encode_uri(framework_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates whether the Amazon Web Services account is opted in to cross-account
  backup.

  Returns an error if the account is not an Organizations management account. Use
  the
  `DescribeGlobalSettings` API to determine the current settings.
  """
  @spec update_global_settings(map(), update_global_settings_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def update_global_settings(%Client{} = client, input, options \\ []) do
    url_path = "/global-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Sets the transition lifecycle of a recovery point.

  The lifecycle defines when a protected resource is transitioned to cold storage
  and when
  it expires. Backup transitions and expires backups automatically according to
  the lifecycle that you define.

  Backups transitioned to cold storage must be stored in cold storage for a
  minimum of 90
  days. Therefore, the “retention” setting must be 90 days greater than the
  “transition to
  cold after days” setting. The “transition to cold after days” setting cannot be
  changed
  after a backup has been transitioned to cold.

  Resource types that are able to be transitioned to cold storage are listed in
  the "Lifecycle to cold storage"
  section of the [
  Feature availability by
  resource](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource)
  table. Backup ignores this expression for
  other resource types.

  This operation does not support continuous backups.
  """
  @spec update_recovery_point_lifecycle(
          map(),
          String.t(),
          String.t(),
          update_recovery_point_lifecycle_input(),
          list()
        ) ::
          {:ok, update_recovery_point_lifecycle_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, invalid_request_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def update_recovery_point_lifecycle(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}"

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
  Updates the current service opt-in settings for the Region.

  Use
  the `DescribeRegionSettings` API to determine the resource types that are
  supported.
  """
  @spec update_region_settings(map(), update_region_settings_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, service_unavailable_exception()}
  def update_region_settings(%Client{} = client, input, options \\ []) do
    url_path = "/account-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing report plan identified by its `ReportPlanName` with the
  input document in JSON format.
  """
  @spec update_report_plan(map(), String.t(), update_report_plan_input(), list()) ::
          {:ok, update_report_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def update_report_plan(%Client{} = client, report_plan_name, input, options \\ []) do
    url_path = "/audit/report-plans/#{AWS.Util.encode_uri(report_plan_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This request will send changes to your specified restore testing
  plan.

  `RestoreTestingPlanName`
  cannot be updated after it is created.

  `RecoveryPointSelection` can contain:

    *

  `Algorithm`

    *

  `ExcludeVaults`

    *

  `IncludeVaults`

    *

  `RecoveryPointTypes`

    *

  `SelectionWindowDays`
  """
  @spec update_restore_testing_plan(
          map(),
          String.t(),
          update_restore_testing_plan_input(),
          list()
        ) ::
          {:ok, update_restore_testing_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def update_restore_testing_plan(
        %Client{} = client,
        restore_testing_plan_name,
        input,
        options \\ []
      ) do
    url_path = "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Most elements except the `RestoreTestingSelectionName`
  can be updated with this request.

  `RestoreTestingSelection` can use either protected
  resource ARNs or conditions, but not both. That is, if your selection
  has `ProtectedResourceArns`, requesting an update with the
  parameter `ProtectedResourceConditions` will be
  unsuccessful.
  """
  @spec update_restore_testing_selection(
          map(),
          String.t(),
          String.t(),
          update_restore_testing_selection_input(),
          list()
        ) ::
          {:ok, update_restore_testing_selection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, invalid_parameter_value_exception()}
          | {:error, missing_parameter_value_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_unavailable_exception()}
  def update_restore_testing_selection(
        %Client{} = client,
        restore_testing_plan_name,
        restore_testing_selection_name,
        input,
        options \\ []
      ) do
    url_path =
      "/restore-testing/plans/#{AWS.Util.encode_uri(restore_testing_plan_name)}/selections/#{AWS.Util.encode_uri(restore_testing_selection_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
