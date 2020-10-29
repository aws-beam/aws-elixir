# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Backup do
  @moduledoc """
  AWS Backup

  AWS Backup is a unified backup service designed to protect AWS services and
  their associated data. AWS Backup simplifies the creation, migration,
  restoration, and deletion of backups, while also providing reporting and
  auditing.
  """

  @doc """
  Creates a backup plan using a backup plan name and backup rules. A backup
  plan is a document that contains information that AWS Backup uses to
  schedule tasks that create recovery points for resources.

  If you call `CreateBackupPlan` with a plan that already exists, an
  `AlreadyExistsException` is returned.
  """
  def create_backup_plan(client, input, options \\ []) do
    path_ = "/backup/plans/"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a JSON document that specifies a set of resources to assign to a
  backup plan. Resources can be included by specifying patterns for a
  `ListOfTags` and selected `Resources`.

  For example, consider the following patterns:

  <ul> <li> `Resources: "arn:aws:ec2:region:account-id:volume/volume-id"`

  </li> <li> `ConditionKey:"department"`

  `ConditionValue:"finance"`

  `ConditionType:"StringEquals"`

  </li> <li> `ConditionKey:"importance"`

  `ConditionValue:"critical"`

  `ConditionType:"StringEquals"`

  </li> </ul> Using these patterns would back up all Amazon Elastic Block
  Store (Amazon EBS) volumes that are tagged as `"department=finance"`,
  `"importance=critical"`, in addition to an EBS volume with the specified
  volume ID.

  Resources and conditions are additive in that all resources that match the
  pattern are selected. This shouldn't be confused with a logical AND, where
  all conditions must match. The matching patterns are logically put together
  using the OR operator. In other words, all patterns that match are selected
  for backup.
  """
  def create_backup_selection(client, backup_plan_id, input, options \\ []) do
    path_ = "/backup/plans/#{URI.encode(backup_plan_id)}/selections/"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a logical container where backups are stored. A `CreateBackupVault`
  request includes a name, optionally one or more resource tags, an
  encryption key, and a request ID.

  <note> Sensitive data, such as passport numbers, should not be included the
  name of a backup vault.

  </note>
  """
  def create_backup_vault(client, backup_vault_name, input, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a backup plan. A backup plan can only be deleted after all
  associated selections of resources have been deleted. Deleting a backup
  plan deletes the current version of a backup plan. Previous versions, if
  any, will still exist.
  """
  def delete_backup_plan(client, backup_plan_id, input, options \\ []) do
    path_ = "/backup/plans/#{URI.encode(backup_plan_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the resource selection associated with a backup plan that is
  specified by the `SelectionId`.
  """
  def delete_backup_selection(client, backup_plan_id, selection_id, input, options \\ []) do
    path_ = "/backup/plans/#{URI.encode(backup_plan_id)}/selections/#{URI.encode(selection_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the backup vault identified by its name. A vault can be deleted
  only if it is empty.
  """
  def delete_backup_vault(client, backup_vault_name, input, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the policy document that manages permissions on a backup vault.
  """
  def delete_backup_vault_access_policy(client, backup_vault_name, input, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}/access-policy"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes event notifications for the specified backup vault.
  """
  def delete_backup_vault_notifications(client, backup_vault_name, input, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}/notification-configuration"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the recovery point specified by a recovery point ID.
  """
  def delete_recovery_point(client, backup_vault_name, recovery_point_arn, input, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}/recovery-points/#{URI.encode(recovery_point_arn)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns backup job details for the specified `BackupJobId`.
  """
  def describe_backup_job(client, backup_job_id, options \\ []) do
    path_ = "/backup-jobs/#{URI.encode(backup_job_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns metadata about a backup vault specified by its name.
  """
  def describe_backup_vault(client, backup_vault_name, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns metadata associated with creating a copy of a resource.
  """
  def describe_copy_job(client, copy_job_id, options \\ []) do
    path_ = "/copy-jobs/#{URI.encode(copy_job_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information about a saved resource, including the last time it was
  backed up, its Amazon Resource Name (ARN), and the AWS service type of the
  saved resource.
  """
  def describe_protected_resource(client, resource_arn, options \\ []) do
    path_ = "/resources/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns metadata associated with a recovery point, including ID, status,
  encryption, and lifecycle.
  """
  def describe_recovery_point(client, backup_vault_name, recovery_point_arn, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}/recovery-points/#{URI.encode(recovery_point_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the current service opt-in settings for the Region. If the service
  has a value set to `true`, AWS Backup tries to protect that service's
  resources in this Region, when included in an on-demand backup or scheduled
  backup plan. If the value is set to `false` for a service, AWS Backup does
  not try to protect that service's resources in this Region.
  """
  def describe_region_settings(client, options \\ []) do
    path_ = "/account-settings"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns metadata associated with a restore job that is specified by a job
  ID.
  """
  def describe_restore_job(client, restore_job_id, options \\ []) do
    path_ = "/restore-jobs/#{URI.encode(restore_job_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the backup plan that is specified by the plan ID as a backup
  template.
  """
  def export_backup_plan_template(client, backup_plan_id, options \\ []) do
    path_ = "/backup/plans/#{URI.encode(backup_plan_id)}/toTemplate/"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns `BackupPlan` details for the specified `BackupPlanId`. Returns the
  body of a backup plan in JSON format, in addition to plan metadata.
  """
  def get_backup_plan(client, backup_plan_id, version_id \\ nil, options \\ []) do
    path_ = "/backup/plans/#{URI.encode(backup_plan_id)}/"
    headers = []
    query_ = []
    query_ = if !is_nil(version_id) do
      [{"versionId", version_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a valid JSON document specifying a backup plan or an error.
  """
  def get_backup_plan_from_j_s_o_n(client, input, options \\ []) do
    path_ = "/backup/template/json/toPlan"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the template specified by its `templateId` as a backup plan.
  """
  def get_backup_plan_from_template(client, backup_plan_template_id, options \\ []) do
    path_ = "/backup/template/plans/#{URI.encode(backup_plan_template_id)}/toPlan"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns selection metadata and a document in JSON format that specifies a
  list of resources that are associated with a backup plan.
  """
  def get_backup_selection(client, backup_plan_id, selection_id, options \\ []) do
    path_ = "/backup/plans/#{URI.encode(backup_plan_id)}/selections/#{URI.encode(selection_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the access policy document that is associated with the named backup
  vault.
  """
  def get_backup_vault_access_policy(client, backup_vault_name, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}/access-policy"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns event notifications for the specified backup vault.
  """
  def get_backup_vault_notifications(client, backup_vault_name, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}/notification-configuration"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a set of metadata key-value pairs that were used to create the
  backup.
  """
  def get_recovery_point_restore_metadata(client, backup_vault_name, recovery_point_arn, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}/recovery-points/#{URI.encode(recovery_point_arn)}/restore-metadata"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the AWS resource types supported by AWS Backup.
  """
  def get_supported_resource_types(client, options \\ []) do
    path_ = "/supported-resource-types"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of existing backup jobs for an authenticated account.
  """
  def list_backup_jobs(client, by_account_id \\ nil, by_backup_vault_name \\ nil, by_created_after \\ nil, by_created_before \\ nil, by_resource_arn \\ nil, by_resource_type \\ nil, by_state \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/backup-jobs/"
    headers = []
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
    query_ = if !is_nil(by_state) do
      [{"state", by_state} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_resource_type) do
      [{"resourceType", by_resource_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_resource_arn) do
      [{"resourceArn", by_resource_arn} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_created_before) do
      [{"createdBefore", by_created_before} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_created_after) do
      [{"createdAfter", by_created_after} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_backup_vault_name) do
      [{"backupVaultName", by_backup_vault_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_account_id) do
      [{"accountId", by_account_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns metadata of your saved backup plan templates, including the
  template ID, name, and the creation and deletion dates.
  """
  def list_backup_plan_templates(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/backup/template/plans"
    headers = []
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
  Returns version metadata of your backup plans, including Amazon Resource
  Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and
  version IDs.
  """
  def list_backup_plan_versions(client, backup_plan_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/backup/plans/#{URI.encode(backup_plan_id)}/versions/"
    headers = []
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
  Returns a list of existing backup plans for an authenticated account. The
  list is populated only if the advanced option is set for the backup plan.
  The list contains information such as Amazon Resource Names (ARNs), plan
  IDs, creation and deletion dates, version IDs, plan names, and creator
  request IDs.
  """
  def list_backup_plans(client, include_deleted \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/backup/plans/"
    headers = []
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
    query_ = if !is_nil(include_deleted) do
      [{"includeDeleted", include_deleted} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns an array containing metadata of the resources associated with the
  target backup plan.
  """
  def list_backup_selections(client, backup_plan_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/backup/plans/#{URI.encode(backup_plan_id)}/selections/"
    headers = []
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
  Returns a list of recovery point storage containers along with information
  about them.
  """
  def list_backup_vaults(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/backup-vaults/"
    headers = []
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
  Returns metadata about your copy jobs.
  """
  def list_copy_jobs(client, by_account_id \\ nil, by_created_after \\ nil, by_created_before \\ nil, by_destination_vault_arn \\ nil, by_resource_arn \\ nil, by_resource_type \\ nil, by_state \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/copy-jobs/"
    headers = []
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
    query_ = if !is_nil(by_state) do
      [{"state", by_state} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_resource_type) do
      [{"resourceType", by_resource_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_resource_arn) do
      [{"resourceArn", by_resource_arn} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_destination_vault_arn) do
      [{"destinationVaultArn", by_destination_vault_arn} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_created_before) do
      [{"createdBefore", by_created_before} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_created_after) do
      [{"createdAfter", by_created_after} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_account_id) do
      [{"accountId", by_account_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns an array of resources successfully backed up by AWS Backup,
  including the time the resource was saved, an Amazon Resource Name (ARN) of
  the resource, and a resource type.
  """
  def list_protected_resources(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/resources/"
    headers = []
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
  Returns detailed information about the recovery points stored in a backup
  vault.
  """
  def list_recovery_points_by_backup_vault(client, backup_vault_name, by_backup_plan_id \\ nil, by_created_after \\ nil, by_created_before \\ nil, by_resource_arn \\ nil, by_resource_type \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}/recovery-points/"
    headers = []
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
    query_ = if !is_nil(by_resource_type) do
      [{"resourceType", by_resource_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_resource_arn) do
      [{"resourceArn", by_resource_arn} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_created_before) do
      [{"createdBefore", by_created_before} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_created_after) do
      [{"createdAfter", by_created_after} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_backup_plan_id) do
      [{"backupPlanId", by_backup_plan_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns detailed information about recovery points of the type specified by
  a resource Amazon Resource Name (ARN).
  """
  def list_recovery_points_by_resource(client, resource_arn, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/resources/#{URI.encode(resource_arn)}/recovery-points/"
    headers = []
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
  Returns a list of jobs that AWS Backup initiated to restore a saved
  resource, including metadata about the recovery process.
  """
  def list_restore_jobs(client, by_account_id \\ nil, by_created_after \\ nil, by_created_before \\ nil, by_status \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/restore-jobs/"
    headers = []
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
    query_ = if !is_nil(by_status) do
      [{"status", by_status} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_created_before) do
      [{"createdBefore", by_created_before} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_created_after) do
      [{"createdAfter", by_created_after} | query_]
    else
      query_
    end
    query_ = if !is_nil(by_account_id) do
      [{"accountId", by_account_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of key-value pairs assigned to a target recovery point,
  backup plan, or backup vault.

  <note> `ListTags` are currently only supported with Amazon EFS backups.

  </note>
  """
  def list_tags(client, resource_arn, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}/"
    headers = []
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
  Sets a resource-based policy that is used to manage access permissions on
  the target backup vault. Requires a backup vault name and an access policy
  document in JSON format.
  """
  def put_backup_vault_access_policy(client, backup_vault_name, input, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}/access-policy"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Turns on notifications on a backup vault for the specified topic and
  events.
  """
  def put_backup_vault_notifications(client, backup_vault_name, input, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}/notification-configuration"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Starts an on-demand backup job for the specified resource.
  """
  def start_backup_job(client, input, options \\ []) do
    path_ = "/backup-jobs"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Starts a job to create a one-time copy of the specified resource.
  """
  def start_copy_job(client, input, options \\ []) do
    path_ = "/copy-jobs"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Recovers the saved resource identified by an Amazon Resource Name (ARN).
  """
  def start_restore_job(client, input, options \\ []) do
    path_ = "/restore-jobs"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Attempts to cancel a job to create a one-time backup of a resource.
  """
  def stop_backup_job(client, backup_job_id, input, options \\ []) do
    path_ = "/backup-jobs/#{URI.encode(backup_job_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Assigns a set of key-value pairs to a recovery point, backup plan, or
  backup vault identified by an Amazon Resource Name (ARN).
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes a set of key-value pairs from a recovery point, backup plan, or
  backup vault identified by an Amazon Resource Name (ARN)
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/untag/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an existing backup plan identified by its `backupPlanId` with the
  input document in JSON format. The new version is uniquely identified by a
  `VersionId`.
  """
  def update_backup_plan(client, backup_plan_id, input, options \\ []) do
    path_ = "/backup/plans/#{URI.encode(backup_plan_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sets the transition lifecycle of a recovery point.

  The lifecycle defines when a protected resource is transitioned to cold
  storage and when it expires. AWS Backup transitions and expires backups
  automatically according to the lifecycle that you define.

  Backups transitioned to cold storage must be stored in cold storage for a
  minimum of 90 days. Therefore, the “expire after days” setting must be 90
  days greater than the “transition to cold after days” setting. The
  “transition to cold after days” setting cannot be changed after a backup
  has been transitioned to cold.
  """
  def update_recovery_point_lifecycle(client, backup_vault_name, recovery_point_arn, input, options \\ []) do
    path_ = "/backup-vaults/#{URI.encode(backup_vault_name)}/recovery-points/#{URI.encode(recovery_point_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the current service opt-in settings for the Region. If the service
  has a value set to `true`, AWS Backup tries to protect that service's
  resources in this Region, when included in an on-demand backup or scheduled
  backup plan. If the value is set to `false` for a service, AWS Backup does
  not try to protect that service's resources in this Region.
  """
  def update_region_settings(client, input, options \\ []) do
    path_ = "/account-settings"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "backup"}
    host = build_host("backup", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
