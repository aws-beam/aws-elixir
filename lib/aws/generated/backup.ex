# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Backup do
  @moduledoc """
  Backup

  Backup is a unified backup service designed to protect Amazon Web Services
  services and their associated data.

  Backup simplifies the creation, migration, restoration, and deletion of backups,
  while also providing reporting and auditing.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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
      "CancelLegalHold",
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

  A backup plan is a document that contains information that Backup uses to
  schedule tasks that create recovery points for resources.

  If you call `CreateBackupPlan` with a plan that already exists, you receive an
  `AlreadyExistsException` exception.
  """
  def create_backup_plan(%Client{} = client, input, options \\ []) do
    url_path = "/backup/plans/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateBackupPlan",
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
  Creates a JSON document that specifies a set of resources to assign to a backup
  plan.

  For examples, see [Assigning resources programmatically](https://docs.aws.amazon.com/aws-backup/latest/devguide/assigning-resources.html#assigning-resources-json).
  """
  def create_backup_selection(%Client{} = client, backup_plan_id, input, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/selections/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateBackupSelection",
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
  Creates a logical container where backups are stored.

  A `CreateBackupVault` request includes a name, optionally one or more resource
  tags, an encryption key, and a request ID.

  Do not include sensitive data, such as passport numbers, in the name of a backup
  vault.
  """
  def create_backup_vault(%Client{} = client, backup_vault_name, input, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateBackupVault",
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
  Creates a framework with one or more controls.

  A framework is a collection of controls that you can use to evaluate your backup
  practices. By using pre-built customizable controls to define your policies, you
  can evaluate whether your backup practices comply with your policies and which
  resources are not yet in compliance.
  """
  def create_framework(%Client{} = client, input, options \\ []) do
    url_path = "/audit/frameworks"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateFramework",
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
  This action creates a legal hold on a recovery point (backup).

  A legal hold is a restraint on altering or deleting a backup until an authorized
  user cancels the legal hold. Any actions to delete or disassociate a recovery
  point will fail with an error if one or more active legal holds are on the
  recovery point.
  """
  def create_legal_hold(%Client{} = client, input, options \\ []) do
    url_path = "/legal-holds/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateLegalHold",
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
  Creates a report plan.

  A report plan is a document that contains information about the contents of the
  report and where Backup will deliver it.

  If you call `CreateReportPlan` with a plan that already exists, you receive an
  `AlreadyExistsException` exception.
  """
  def create_report_plan(%Client{} = client, input, options \\ []) do
    url_path = "/audit/report-plans"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateReportPlan",
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
  Deletes a backup plan.

  A backup plan can only be deleted after all associated selections of resources
  have been deleted. Deleting a backup plan deletes the current version of a
  backup plan. Previous versions, if any, will still exist.
  """
  def delete_backup_plan(%Client{} = client, backup_plan_id, input, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteBackupPlan",
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
  Deletes the resource selection associated with a backup plan that is specified
  by the `SelectionId`.
  """
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
      "DeleteBackupSelection",
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
  Deletes the backup vault identified by its name.

  A vault can be deleted only if it is empty.
  """
  def delete_backup_vault(%Client{} = client, backup_vault_name, input, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteBackupVault",
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
  Deletes the policy document that manages permissions on a backup vault.
  """
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
      "DeleteBackupVaultAccessPolicy",
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
  Deletes Backup Vault Lock from a backup vault specified by a backup vault name.

  If the Vault Lock configuration is immutable, then you cannot delete Vault Lock
  using API operations, and you will receive an `InvalidRequestException` if you
  attempt to do so. For more information, see [Vault Lock](https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html) in
  the *Backup Developer Guide*.
  """
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
      "DeleteBackupVaultLockConfiguration",
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
  Deletes event notifications for the specified backup vault.
  """
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
      "DeleteBackupVaultNotifications",
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
  Deletes the framework specified by a framework name.
  """
  def delete_framework(%Client{} = client, framework_name, input, options \\ []) do
    url_path = "/audit/frameworks/#{AWS.Util.encode_uri(framework_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteFramework",
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
  Deletes the recovery point specified by a recovery point ID.

  If the recovery point ID belongs to a continuous backup, calling this endpoint
  deletes the existing continuous backup and stops future continuous backup.

  When an IAM role's permissions are insufficient to call this API, the service
  sends back an HTTP 200 response with an empty HTTP body, but the recovery point
  is not deleted. Instead, it enters an `EXPIRED` state.

  `EXPIRED` recovery points can be deleted with this API once the IAM role has the
  `iam:CreateServiceLinkedRole` action. To learn more about adding this role, see
  [ Troubleshooting manual deletions](https://docs.aws.amazon.com/aws-backup/latest/devguide/deleting-backups.html#deleting-backups-troubleshooting).

  If the user or role is deleted or the permission within the role is removed, the
  deletion will not be successful and will enter an `EXPIRED` state.
  """
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
      "DeleteRecoveryPoint",
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
  Deletes the report plan specified by a report plan name.
  """
  def delete_report_plan(%Client{} = client, report_plan_name, input, options \\ []) do
    url_path = "/audit/report-plans/#{AWS.Util.encode_uri(report_plan_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteReportPlan",
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
  Returns backup job details for the specified `BackupJobId`.
  """
  def describe_backup_job(%Client{} = client, backup_job_id, options \\ []) do
    url_path = "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeBackupJob",
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
  Returns metadata about a backup vault specified by its name.
  """
  def describe_backup_vault(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeBackupVault",
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
  Returns metadata associated with creating a copy of a resource.
  """
  def describe_copy_job(%Client{} = client, copy_job_id, options \\ []) do
    url_path = "/copy-jobs/#{AWS.Util.encode_uri(copy_job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeCopyJob",
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
  Returns the framework details for the specified `FrameworkName`.
  """
  def describe_framework(%Client{} = client, framework_name, options \\ []) do
    url_path = "/audit/frameworks/#{AWS.Util.encode_uri(framework_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeFramework",
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
  Describes whether the Amazon Web Services account is opted in to cross-account
  backup.

  Returns an error if the account is not a member of an Organizations
  organization. Example: `describe-global-settings --region us-west-2`
  """
  def describe_global_settings(%Client{} = client, options \\ []) do
    url_path = "/global-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeGlobalSettings",
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
  Returns information about a saved resource, including the last time it was
  backed up, its Amazon Resource Name (ARN), and the Amazon Web Services service
  type of the saved resource.
  """
  def describe_protected_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeProtectedResource",
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
  Returns metadata associated with a recovery point, including ID, status,
  encryption, and lifecycle.
  """
  def describe_recovery_point(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
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
      "DescribeRecoveryPoint",
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
  Returns the current service opt-in settings for the Region.

  If service opt-in is enabled for a service, Backup tries to protect that
  service's resources in this Region, when the resource is included in an
  on-demand backup or scheduled backup plan. Otherwise, Backup does not try to
  protect that service's resources in this Region.
  """
  def describe_region_settings(%Client{} = client, options \\ []) do
    url_path = "/account-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeRegionSettings",
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
  Returns the details associated with creating a report as specified by its
  `ReportJobId`.
  """
  def describe_report_job(%Client{} = client, report_job_id, options \\ []) do
    url_path = "/audit/report-jobs/#{AWS.Util.encode_uri(report_job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeReportJob",
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
  Returns a list of all report plans for an Amazon Web Services account and Amazon
  Web Services Region.
  """
  def describe_report_plan(%Client{} = client, report_plan_name, options \\ []) do
    url_path = "/audit/report-plans/#{AWS.Util.encode_uri(report_plan_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeReportPlan",
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
  Returns metadata associated with a restore job that is specified by a job ID.
  """
  def describe_restore_job(%Client{} = client, restore_job_id, options \\ []) do
    url_path = "/restore-jobs/#{AWS.Util.encode_uri(restore_job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeRestoreJob",
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
  Deletes the specified continuous backup recovery point from Backup and releases
  control of that continuous backup to the source service, such as Amazon RDS.

  The source service will continue to create and retain continuous backups using
  the lifecycle that you specified in your original backup plan.

  Does not support snapshot backup recovery points.
  """
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
      "DisassociateRecoveryPoint",
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
  This action to a specific child (nested) recovery point removes the relationship
  between the specified recovery point and its parent (composite) recovery point.
  """
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
      "DisassociateRecoveryPointFromParent",
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
  def export_backup_plan_template(%Client{} = client, backup_plan_id, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/toTemplate/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ExportBackupPlanTemplate",
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
  Returns `BackupPlan` details for the specified `BackupPlanId`.

  The details are the body of a backup plan in JSON format, in addition to plan
  metadata.
  """
  def get_backup_plan(%Client{} = client, backup_plan_id, version_id \\ nil, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version_id) do
        [{"versionId", version_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBackupPlan",
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
  Returns a valid JSON document specifying a backup plan or an error.
  """
  def get_backup_plan_from_json(%Client{} = client, input, options \\ []) do
    url_path = "/backup/template/json/toPlan"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBackupPlanFromJSON",
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
  Returns the template specified by its `templateId` as a backup plan.
  """
  def get_backup_plan_from_template(%Client{} = client, backup_plan_template_id, options \\ []) do
    url_path = "/backup/template/plans/#{AWS.Util.encode_uri(backup_plan_template_id)}/toPlan"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBackupPlanFromTemplate",
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
  Returns selection metadata and a document in JSON format that specifies a list
  of resources that are associated with a backup plan.
  """
  def get_backup_selection(%Client{} = client, backup_plan_id, selection_id, options \\ []) do
    url_path =
      "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/selections/#{AWS.Util.encode_uri(selection_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBackupSelection",
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
  Returns the access policy document that is associated with the named backup
  vault.
  """
  def get_backup_vault_access_policy(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/access-policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBackupVaultAccessPolicy",
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
  Returns event notifications for the specified backup vault.
  """
  def get_backup_vault_notifications(%Client{} = client, backup_vault_name, options \\ []) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/notification-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBackupVaultNotifications",
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
  This action returns details for a specified legal hold.

  The details are the body of a legal hold in JSON format, in addition to
  metadata.
  """
  def get_legal_hold(%Client{} = client, legal_hold_id, options \\ []) do
    url_path = "/legal-holds/#{AWS.Util.encode_uri(legal_hold_id)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetLegalHold",
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
  Returns a set of metadata key-value pairs that were used to create the backup.
  """
  def get_recovery_point_restore_metadata(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/#{AWS.Util.encode_uri(recovery_point_arn)}/restore-metadata"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetRecoveryPointRestoreMetadata",
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
  Returns the Amazon Web Services resource types supported by Backup.
  """
  def get_supported_resource_types(%Client{} = client, options \\ []) do
    url_path = "/supported-resource-types"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetSupportedResourceTypes",
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
  Returns a list of existing backup jobs for an authenticated account for the last
  30 days.

  For a longer period of time, consider using these [monitoring tools](https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html).
  """
  def list_backup_jobs(
        %Client{} = client,
        by_account_id \\ nil,
        by_backup_vault_name \\ nil,
        by_complete_after \\ nil,
        by_complete_before \\ nil,
        by_created_after \\ nil,
        by_created_before \\ nil,
        by_parent_job_id \\ nil,
        by_resource_arn \\ nil,
        by_resource_type \\ nil,
        by_state \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup-jobs/"
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

    Request.request_rest(
      client,
      meta,
      "ListBackupJobs",
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
  Returns metadata of your saved backup plan templates, including the template ID,
  name, and the creation and deletion dates.
  """
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

    Request.request_rest(
      client,
      meta,
      "ListBackupPlanTemplates",
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
  Returns version metadata of your backup plans, including Amazon Resource Names
  (ARNs), backup plan IDs, creation and deletion dates, plan names, and version
  IDs.
  """
  def list_backup_plan_versions(
        %Client{} = client,
        backup_plan_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/versions/"
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

    Request.request_rest(
      client,
      meta,
      "ListBackupPlanVersions",
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
  Returns a list of all active backup plans for an authenticated account.

  The list contains information such as Amazon Resource Names (ARNs), plan IDs,
  creation and deletion dates, version IDs, plan names, and creator request IDs.
  """
  def list_backup_plans(
        %Client{} = client,
        include_deleted \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup/plans/"
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

    Request.request_rest(
      client,
      meta,
      "ListBackupPlans",
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
  Returns an array containing metadata of the resources associated with the target
  backup plan.
  """
  def list_backup_selections(
        %Client{} = client,
        backup_plan_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}/selections/"
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

    Request.request_rest(
      client,
      meta,
      "ListBackupSelections",
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
  Returns a list of recovery point storage containers along with information about
  them.
  """
  def list_backup_vaults(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/backup-vaults/"
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

    Request.request_rest(
      client,
      meta,
      "ListBackupVaults",
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
  Returns metadata about your copy jobs.
  """
  def list_copy_jobs(
        %Client{} = client,
        by_account_id \\ nil,
        by_complete_after \\ nil,
        by_complete_before \\ nil,
        by_created_after \\ nil,
        by_created_before \\ nil,
        by_destination_vault_arn \\ nil,
        by_parent_job_id \\ nil,
        by_resource_arn \\ nil,
        by_resource_type \\ nil,
        by_state \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/copy-jobs/"
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

    Request.request_rest(
      client,
      meta,
      "ListCopyJobs",
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
  Returns a list of all frameworks for an Amazon Web Services account and Amazon
  Web Services Region.
  """
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

    Request.request_rest(
      client,
      meta,
      "ListFrameworks",
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
  This action returns metadata about active and previous legal holds.
  """
  def list_legal_holds(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/legal-holds/"
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

    Request.request_rest(
      client,
      meta,
      "ListLegalHolds",
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
  Returns an array of resources successfully backed up by Backup, including the
  time the resource was saved, an Amazon Resource Name (ARN) of the resource, and
  a resource type.
  """
  def list_protected_resources(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/resources/"
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

    Request.request_rest(
      client,
      meta,
      "ListProtectedResources",
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
  Returns detailed information about the recovery points stored in a backup vault.
  """
  def list_recovery_points_by_backup_vault(
        %Client{} = client,
        backup_vault_name,
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
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/recovery-points/"
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListRecoveryPointsByBackupVault",
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
  This action returns recovery point ARNs (Amazon Resource Names) of the specified
  legal hold.
  """
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

    Request.request_rest(
      client,
      meta,
      "ListRecoveryPointsByLegalHold",
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
  Returns detailed information about all the recovery points of the type specified
  by a resource Amazon Resource Name (ARN).

  For Amazon EFS and Amazon EC2, this action only lists recovery points created by
  Backup.
  """
  def list_recovery_points_by_resource(
        %Client{} = client,
        resource_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}/recovery-points/"
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

    Request.request_rest(
      client,
      meta,
      "ListRecoveryPointsByResource",
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
  Returns details about your report jobs.
  """
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

    Request.request_rest(
      client,
      meta,
      "ListReportJobs",
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
  Returns a list of your report plans.

  For detailed information about a single report plan, use `DescribeReportPlan`.
  """
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

    Request.request_rest(
      client,
      meta,
      "ListReportPlans",
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
  Returns a list of jobs that Backup initiated to restore a saved resource,
  including details about the recovery process.
  """
  def list_restore_jobs(
        %Client{} = client,
        by_account_id \\ nil,
        by_complete_after \\ nil,
        by_complete_before \\ nil,
        by_created_after \\ nil,
        by_created_before \\ nil,
        by_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/restore-jobs/"
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

    Request.request_rest(
      client,
      meta,
      "ListRestoreJobs",
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
  Returns a list of key-value pairs assigned to a target recovery point, backup
  plan, or backup vault.

  `ListTags` only works for resource types that support full Backup management of
  their backups. Those resource types are listed in the "Full Backup management"
  section of the [ Feature availability by resource](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource)
  table.
  """
  def list_tags(
        %Client{} = client,
        resource_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}/"
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

    Request.request_rest(
      client,
      meta,
      "ListTags",
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
  Sets a resource-based policy that is used to manage access permissions on the
  target backup vault.

  Requires a backup vault name and an access policy document in JSON format.
  """
  def put_backup_vault_access_policy(%Client{} = client, backup_vault_name, input, options \\ []) do
    url_path = "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/access-policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutBackupVaultAccessPolicy",
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
  Applies Backup Vault Lock to a backup vault, preventing attempts to delete any
  recovery point stored in or created in a backup vault.

  Vault Lock also prevents attempts to update the lifecycle policy that controls
  the retention period of any recovery point currently stored in a backup vault.
  If specified, Vault Lock enforces a minimum and maximum retention period for
  future backup and copy jobs that target a backup vault.

  Backup Vault Lock has yet to receive a third-party assessment for SEC 17a-4(f)
  and CFTC.
  """
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

    Request.request_rest(
      client,
      meta,
      "PutBackupVaultLockConfiguration",
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
  Turns on notifications on a backup vault for the specified topic and events.
  """
  def put_backup_vault_notifications(%Client{} = client, backup_vault_name, input, options \\ []) do
    url_path =
      "/backup-vaults/#{AWS.Util.encode_uri(backup_vault_name)}/notification-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutBackupVaultNotifications",
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
  Starts an on-demand backup job for the specified resource.
  """
  def start_backup_job(%Client{} = client, input, options \\ []) do
    url_path = "/backup-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartBackupJob",
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
  Starts a job to create a one-time copy of the specified resource.

  Does not support continuous backups.
  """
  def start_copy_job(%Client{} = client, input, options \\ []) do
    url_path = "/copy-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartCopyJob",
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
  Starts an on-demand report job for the specified report plan.
  """
  def start_report_job(%Client{} = client, report_plan_name, input, options \\ []) do
    url_path = "/audit/report-jobs/#{AWS.Util.encode_uri(report_plan_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartReportJob",
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
  Recovers the saved resource identified by an Amazon Resource Name (ARN).
  """
  def start_restore_job(%Client{} = client, input, options \\ []) do
    url_path = "/restore-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartRestoreJob",
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
  Attempts to cancel a job to create a one-time backup of a resource.

  This action is not supported for the following services: Amazon FSx for Windows
  File Server, Amazon FSx for Lustre, FSx for ONTAP , Amazon FSx for OpenZFS,
  Amazon DocumentDB (with MongoDB compatibility), Amazon RDS, Amazon Aurora, and
  Amazon Neptune.
  """
  def stop_backup_job(%Client{} = client, backup_job_id, input, options \\ []) do
    url_path = "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StopBackupJob",
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
  Assigns a set of key-value pairs to a recovery point, backup plan, or backup
  vault identified by an Amazon Resource Name (ARN).
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
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
  Removes a set of key-value pairs from a recovery point, backup plan, or backup
  vault identified by an Amazon Resource Name (ARN)
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/untag/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UntagResource",
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
  Updates an existing backup plan identified by its `backupPlanId` with the input
  document in JSON format.

  The new version is uniquely identified by a `VersionId`.
  """
  def update_backup_plan(%Client{} = client, backup_plan_id, input, options \\ []) do
    url_path = "/backup/plans/#{AWS.Util.encode_uri(backup_plan_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateBackupPlan",
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
  Updates an existing framework identified by its `FrameworkName` with the input
  document in JSON format.
  """
  def update_framework(%Client{} = client, framework_name, input, options \\ []) do
    url_path = "/audit/frameworks/#{AWS.Util.encode_uri(framework_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateFramework",
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
  Updates whether the Amazon Web Services account is opted in to cross-account
  backup.

  Returns an error if the account is not an Organizations management account. Use
  the `DescribeGlobalSettings` API to determine the current settings.
  """
  def update_global_settings(%Client{} = client, input, options \\ []) do
    url_path = "/global-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateGlobalSettings",
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
  Sets the transition lifecycle of a recovery point.

  The lifecycle defines when a protected resource is transitioned to cold storage
  and when it expires. Backup transitions and expires backups automatically
  according to the lifecycle that you define.

  Backups transitioned to cold storage must be stored in cold storage for a
  minimum of 90 days. Therefore, the “retention” setting must be 90 days greater
  than the “transition to cold after days” setting. The “transition to cold after
  days” setting cannot be changed after a backup has been transitioned to cold.

  Resource types that are able to be transitioned to cold storage are listed in
  the "Lifecycle to cold storage" section of the [ Feature availability by resource](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource)
  table. Backup ignores this expression for other resource types.

  This operation does not support continuous backups.
  """
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
      "UpdateRecoveryPointLifecycle",
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
  Updates the current service opt-in settings for the Region.

  If service-opt-in is enabled for a service, Backup tries to protect that
  service's resources in this Region, when the resource is included in an
  on-demand backup or scheduled backup plan. Otherwise, Backup does not try to
  protect that service's resources in this Region. Use the
  `DescribeRegionSettings` API to determine the resource types that are supported.
  """
  def update_region_settings(%Client{} = client, input, options \\ []) do
    url_path = "/account-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateRegionSettings",
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
  Updates an existing report plan identified by its `ReportPlanName` with the
  input document in JSON format.
  """
  def update_report_plan(%Client{} = client, report_plan_name, input, options \\ []) do
    url_path = "/audit/report-plans/#{AWS.Util.encode_uri(report_plan_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateReportPlan",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
