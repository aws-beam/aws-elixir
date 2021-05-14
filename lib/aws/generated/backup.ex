# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Backup do
  @moduledoc """
  AWS Backup

  AWS Backup is a unified backup service designed to protect AWS services and
  their associated data.

  AWS Backup simplifies the creation, migration, restoration, and deletion of
  backups, while also providing reporting and auditing.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  Creates a backup plan using a backup plan name and backup rules.

  A backup plan is a document that contains information that AWS Backup uses to
  schedule tasks that create recovery points for resources.

  If you call `CreateBackupPlan` with a plan that already exists, an
  `AlreadyExistsException` is returned.
  """
  def create_backup_plan(%Client{} = client, input, options \\ []) do
    url_path = "/backup/plans/"
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
  Creates a JSON document that specifies a set of resources to assign to a backup
  plan.

  Resources can be included by specifying patterns for a `ListOfTags` and selected
  `Resources`.

  For example, consider the following patterns:

    * `Resources: "arn:aws:ec2:region:account-id:volume/volume-id"`

    * `ConditionKey:"department"`

  `ConditionValue:"finance"`

  `ConditionType:"StringEquals"`

    * `ConditionKey:"importance"`

  `ConditionValue:"critical"`

  `ConditionType:"StringEquals"`

  Using these patterns would back up all Amazon Elastic Block Store (Amazon EBS)
  volumes that are tagged as `"department=finance"`, `"importance=critical"`, in
  addition to an EBS volume with the specified volume ID.

  Resources and conditions are additive in that all resources that match the
  pattern are selected. This shouldn't be confused with a logical AND, where all
  conditions must match. The matching patterns are logically put together using
  the OR operator. In other words, all patterns that match are selected for
  backup.
  """
  def create_backup_selection(%Client{} = client, backup_plan_id, input, options \\ []) do
    url_path = "/backup/plans/#{URI.encode(backup_plan_id)}/selections/"
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
  Creates a logical container where backups are stored.

  A `CreateBackupVault` request includes a name, optionally one or more resource
  tags, an encryption key, and a request ID.

  Sensitive data, such as passport numbers, should not be included the name of a
  backup vault.
  """
  def create_backup_vault(%Client{} = client, backup_vault_name, input, options \\ []) do
    url_path = "/backup-vaults/#{URI.encode(backup_vault_name)}"
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
  Deletes a backup plan.

  A backup plan can only be deleted after all associated selections of resources
  have been deleted. Deleting a backup plan deletes the current version of a
  backup plan. Previous versions, if any, will still exist.
  """
  def delete_backup_plan(%Client{} = client, backup_plan_id, input, options \\ []) do
    url_path = "/backup/plans/#{URI.encode(backup_plan_id)}"
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
      "/backup/plans/#{URI.encode(backup_plan_id)}/selections/#{URI.encode(selection_id)}"

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
  Deletes the backup vault identified by its name.

  A vault can be deleted only if it is empty.
  """
  def delete_backup_vault(%Client{} = client, backup_vault_name, input, options \\ []) do
    url_path = "/backup-vaults/#{URI.encode(backup_vault_name)}"
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
  Deletes the policy document that manages permissions on a backup vault.
  """
  def delete_backup_vault_access_policy(
        %Client{} = client,
        backup_vault_name,
        input,
        options \\ []
      ) do
    url_path = "/backup-vaults/#{URI.encode(backup_vault_name)}/access-policy"
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
  Deletes event notifications for the specified backup vault.
  """
  def delete_backup_vault_notifications(
        %Client{} = client,
        backup_vault_name,
        input,
        options \\ []
      ) do
    url_path = "/backup-vaults/#{URI.encode(backup_vault_name)}/notification-configuration"
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
  Deletes the recovery point specified by a recovery point ID.

  If the recovery point ID belongs to a continuous backup, calling this endpoint
  deletes the existing continuous backup and stops future continuous backup.
  """
  def delete_recovery_point(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{URI.encode(backup_vault_name)}/recovery-points/#{
        URI.encode(recovery_point_arn)
      }"

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
  Returns backup job details for the specified `BackupJobId`.
  """
  def describe_backup_job(%Client{} = client, backup_job_id, options \\ []) do
    url_path = "/backup-jobs/#{URI.encode(backup_job_id)}"
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
  Returns metadata about a backup vault specified by its name.
  """
  def describe_backup_vault(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{URI.encode(backup_vault_name)}"
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
  Returns metadata associated with creating a copy of a resource.
  """
  def describe_copy_job(%Client{} = client, copy_job_id, options \\ []) do
    url_path = "/copy-jobs/#{URI.encode(copy_job_id)}"
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
  Describes the global settings of the AWS account, including whether it is opted
  in to cross-account backup.
  """
  def describe_global_settings(%Client{} = client, options \\ []) do
    url_path = "/global-settings"
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
  Returns information about a saved resource, including the last time it was
  backed up, its Amazon Resource Name (ARN), and the AWS service type of the saved
  resource.
  """
  def describe_protected_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resources/#{URI.encode(resource_arn)}"
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
      "/backup-vaults/#{URI.encode(backup_vault_name)}/recovery-points/#{
        URI.encode(recovery_point_arn)
      }"

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
  Returns the current service opt-in settings for the Region.

  If service-opt-in is enabled for a service, AWS Backup tries to protect that
  service's resources in this Region, when the resource is included in an
  on-demand backup or scheduled backup plan. Otherwise, AWS Backup does not try to
  protect that service's resources in this Region, AWS Backup does not try to
  protect that service's resources in this Region.
  """
  def describe_region_settings(%Client{} = client, options \\ []) do
    url_path = "/account-settings"
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
  Returns metadata associated with a restore job that is specified by a job ID.
  """
  def describe_restore_job(%Client{} = client, restore_job_id, options \\ []) do
    url_path = "/restore-jobs/#{URI.encode(restore_job_id)}"
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
  Deletes the specified continuous backup recovery point from AWS Backup and
  releases control of that continuous backup to the source service, such as Amazon
  RDS.

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
      "/backup-vaults/#{URI.encode(backup_vault_name)}/recovery-points/#{
        URI.encode(recovery_point_arn)
      }/disassociate"

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
  Returns the backup plan that is specified by the plan ID as a backup template.
  """
  def export_backup_plan_template(%Client{} = client, backup_plan_id, options \\ []) do
    url_path = "/backup/plans/#{URI.encode(backup_plan_id)}/toTemplate/"
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
  Returns `BackupPlan` details for the specified `BackupPlanId`.

  The details are the body of a backup plan in JSON format, in addition to plan
  metadata.
  """
  def get_backup_plan(%Client{} = client, backup_plan_id, version_id \\ nil, options \\ []) do
    url_path = "/backup/plans/#{URI.encode(backup_plan_id)}/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version_id) do
        [{"versionId", version_id} | query_params]
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
  Returns a valid JSON document specifying a backup plan or an error.
  """
  def get_backup_plan_from_json(%Client{} = client, input, options \\ []) do
    url_path = "/backup/template/json/toPlan"
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
  Returns the template specified by its `templateId` as a backup plan.
  """
  def get_backup_plan_from_template(%Client{} = client, backup_plan_template_id, options \\ []) do
    url_path = "/backup/template/plans/#{URI.encode(backup_plan_template_id)}/toPlan"
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
  Returns selection metadata and a document in JSON format that specifies a list
  of resources that are associated with a backup plan.
  """
  def get_backup_selection(%Client{} = client, backup_plan_id, selection_id, options \\ []) do
    url_path =
      "/backup/plans/#{URI.encode(backup_plan_id)}/selections/#{URI.encode(selection_id)}"

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
  Returns the access policy document that is associated with the named backup
  vault.
  """
  def get_backup_vault_access_policy(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{URI.encode(backup_vault_name)}/access-policy"
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
  Returns event notifications for the specified backup vault.
  """
  def get_backup_vault_notifications(%Client{} = client, backup_vault_name, options \\ []) do
    url_path = "/backup-vaults/#{URI.encode(backup_vault_name)}/notification-configuration"
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
  Returns a set of metadata key-value pairs that were used to create the backup.
  """
  def get_recovery_point_restore_metadata(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{URI.encode(backup_vault_name)}/recovery-points/#{
        URI.encode(recovery_point_arn)
      }/restore-metadata"

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
  Returns the AWS resource types supported by AWS Backup.
  """
  def get_supported_resource_types(%Client{} = client, options \\ []) do
    url_path = "/supported-resource-types"
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
  Returns a list of existing backup jobs for an authenticated account for the last
  30 days.

  For a longer period of time, consider using these [monitoring tools](https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html).
  """
  def list_backup_jobs(
        %Client{} = client,
        by_account_id \\ nil,
        by_backup_vault_name \\ nil,
        by_created_after \\ nil,
        by_created_before \\ nil,
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
    url_path = "/backup/plans/#{URI.encode(backup_plan_id)}/versions/"
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
  Returns a list of existing backup plans for an authenticated account.

  The list is populated only if the advanced option is set for the backup plan.
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
    url_path = "/backup/plans/#{URI.encode(backup_plan_id)}/selections/"
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
  Returns metadata about your copy jobs.
  """
  def list_copy_jobs(
        %Client{} = client,
        by_account_id \\ nil,
        by_created_after \\ nil,
        by_created_before \\ nil,
        by_destination_vault_arn \\ nil,
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
      if !is_nil(by_account_id) do
        [{"accountId", by_account_id} | query_params]
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
  Returns an array of resources successfully backed up by AWS Backup, including
  the time the resource was saved, an Amazon Resource Name (ARN) of the resource,
  and a resource type.
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
  Returns detailed information about the recovery points stored in a backup vault.
  """
  def list_recovery_points_by_backup_vault(
        %Client{} = client,
        backup_vault_name,
        by_backup_plan_id \\ nil,
        by_created_after \\ nil,
        by_created_before \\ nil,
        by_resource_arn \\ nil,
        by_resource_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/backup-vaults/#{URI.encode(backup_vault_name)}/recovery-points/"
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
  Returns detailed information about recovery points of the type specified by a
  resource Amazon Resource Name (ARN).
  """
  def list_recovery_points_by_resource(
        %Client{} = client,
        resource_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/resources/#{URI.encode(resource_arn)}/recovery-points/"
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
  Returns a list of jobs that AWS Backup initiated to restore a saved resource,
  including metadata about the recovery process.
  """
  def list_restore_jobs(
        %Client{} = client,
        by_account_id \\ nil,
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
      if !is_nil(by_account_id) do
        [{"accountId", by_account_id} | query_params]
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
  Returns a list of key-value pairs assigned to a target recovery point, backup
  plan, or backup vault.

  `ListTags` are currently only supported with Amazon EFS backups.
  """
  def list_tags(
        %Client{} = client,
        resource_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/tags/#{URI.encode(resource_arn)}/"
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
  Sets a resource-based policy that is used to manage access permissions on the
  target backup vault.

  Requires a backup vault name and an access policy document in JSON format.
  """
  def put_backup_vault_access_policy(%Client{} = client, backup_vault_name, input, options \\ []) do
    url_path = "/backup-vaults/#{URI.encode(backup_vault_name)}/access-policy"
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
  Turns on notifications on a backup vault for the specified topic and events.
  """
  def put_backup_vault_notifications(%Client{} = client, backup_vault_name, input, options \\ []) do
    url_path = "/backup-vaults/#{URI.encode(backup_vault_name)}/notification-configuration"
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
  Starts an on-demand backup job for the specified resource.
  """
  def start_backup_job(%Client{} = client, input, options \\ []) do
    url_path = "/backup-jobs"
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
  Starts a job to create a one-time copy of the specified resource.

  Does not support continuous backups.
  """
  def start_copy_job(%Client{} = client, input, options \\ []) do
    url_path = "/copy-jobs"
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
  Recovers the saved resource identified by an Amazon Resource Name (ARN).
  """
  def start_restore_job(%Client{} = client, input, options \\ []) do
    url_path = "/restore-jobs"
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
  Attempts to cancel a job to create a one-time backup of a resource.
  """
  def stop_backup_job(%Client{} = client, backup_job_id, input, options \\ []) do
    url_path = "/backup-jobs/#{URI.encode(backup_job_id)}"
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
  Assigns a set of key-value pairs to a recovery point, backup plan, or backup
  vault identified by an Amazon Resource Name (ARN).
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Removes a set of key-value pairs from a recovery point, backup plan, or backup
  vault identified by an Amazon Resource Name (ARN)
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/untag/#{URI.encode(resource_arn)}"
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
  Updates an existing backup plan identified by its `backupPlanId` with the input
  document in JSON format.

  The new version is uniquely identified by a `VersionId`.
  """
  def update_backup_plan(%Client{} = client, backup_plan_id, input, options \\ []) do
    url_path = "/backup/plans/#{URI.encode(backup_plan_id)}"
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
  Updates the current global settings for the AWS account.

  Use the `DescribeGlobalSettings` API to determine the current settings.
  """
  def update_global_settings(%Client{} = client, input, options \\ []) do
    url_path = "/global-settings"
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
  Sets the transition lifecycle of a recovery point.

  The lifecycle defines when a protected resource is transitioned to cold storage
  and when it expires. AWS Backup transitions and expires backups automatically
  according to the lifecycle that you define.

  Backups transitioned to cold storage must be stored in cold storage for a
  minimum of 90 days. Therefore, the “expire after days” setting must be 90 days
  greater than the “transition to cold after days” setting. The “transition to
  cold after days” setting cannot be changed after a backup has been transitioned
  to cold.

  Only Amazon EFS file system backups can be transitioned to cold storage.

  Does not support continuous backups.
  """
  def update_recovery_point_lifecycle(
        %Client{} = client,
        backup_vault_name,
        recovery_point_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/backup-vaults/#{URI.encode(backup_vault_name)}/recovery-points/#{
        URI.encode(recovery_point_arn)
      }"

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
  Updates the current service opt-in settings for the Region.

  If service-opt-in is enabled for a service, AWS Backup tries to protect that
  service's resources in this Region, when the resource is included in an
  on-demand backup or scheduled backup plan. Otherwise, AWS Backup does not try to
  protect that service's resources in this Region. Use the
  `DescribeRegionSettings` API to determine the resource types that are supported.
  """
  def update_region_settings(%Client{} = client, input, options \\ []) do
    url_path = "/account-settings"
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
end
