# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.SSM do
  @moduledoc """
  AWS Systems Manager

  AWS Systems Manager is a collection of capabilities that helps you automate
  management tasks such as collecting system inventory, applying operating
  system (OS) patches, automating the creation of Amazon Machine Images
  (AMIs), and configuring operating systems (OSs) and applications at scale.
  Systems Manager lets you remotely and securely manage the configuration of
  your managed instances. A *managed instance* is any Amazon EC2 instance or
  on-premises machine in your hybrid environment that has been configured for
  Systems Manager.

  This reference is intended to be used with the [AWS Systems Manager User
  Guide](http://docs.aws.amazon.com/systems-manager/latest/userguide/).

  To get started, verify prerequisites and configure managed instances. For
  more information, see [Systems Manager
  Prerequisites](http://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html)
  in the *AWS Systems Manager User Guide*.

  For information about other API actions you can perform on Amazon EC2
  instances, see the [Amazon EC2 API
  Reference](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/). For
  information about how to use a Query API, see [Making API
  Requests](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/making-api-requests.html).
  """

  @doc """
  Adds or overwrites one or more tags for the specified resource. Tags are
  metadata that you can assign to your documents, managed instances,
  Maintenance Windows, Parameter Store parameters, and patch baselines. Tags
  enable you to categorize your resources in different ways, for example, by
  purpose, owner, or environment. Each tag consists of a key and an optional
  value, both of which you define. For example, you could define a set of
  tags for your account's managed instances that helps you track each
  instance's owner and stack level. For example: Key=Owner and Value=DbAdmin,
  SysAdmin, or Dev. Or Key=Stack and Value=Production, Pre-Production, or
  Test.

  Each resource can have a maximum of 50 tags.

  We recommend that you devise a set of tag keys that meets your needs for
  each resource type. Using a consistent set of tag keys makes it easier for
  you to manage your resources. You can search and filter the resources based
  on the tags you add. Tags don't have any semantic meaning to Amazon EC2 and
  are interpreted strictly as a string of characters.

  For more information about tags, see [Tagging Your Amazon EC2
  Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the *Amazon EC2 User Guide*.
  """
  def add_tags_to_resource(client, input, options \\ []) do
    request(client, "AddTagsToResource", input, options)
  end

  @doc """
  Attempts to cancel the command specified by the Command ID. There is no
  guarantee that the command will be terminated and the underlying process
  stopped.
  """
  def cancel_command(client, input, options \\ []) do
    request(client, "CancelCommand", input, options)
  end

  @doc """
  Stops a Maintenance Window execution that is already in progress and
  cancels any tasks in the window that have not already starting running.
  (Tasks already in progress will continue to completion.)
  """
  def cancel_maintenance_window_execution(client, input, options \\ []) do
    request(client, "CancelMaintenanceWindowExecution", input, options)
  end

  @doc """
  Registers your on-premises server or virtual machine with Amazon EC2 so
  that you can manage these resources using Run Command. An on-premises
  server or virtual machine that has been registered with EC2 is called a
  managed instance. For more information about activations, see [Setting Up
  Systems Manager in Hybrid
  Environments](http://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances.html).
  """
  def create_activation(client, input, options \\ []) do
    request(client, "CreateActivation", input, options)
  end

  @doc """
  Associates the specified Systems Manager document with the specified
  instances or targets.

  When you associate a document with one or more instances using instance IDs
  or tags, SSM Agent running on the instance processes the document and
  configures the instance as specified.

  If you associate a document with an instance that already has an associated
  document, the system returns the AssociationAlreadyExists exception.
  """
  def create_association(client, input, options \\ []) do
    request(client, "CreateAssociation", input, options)
  end

  @doc """
  Associates the specified Systems Manager document with the specified
  instances or targets.

  When you associate a document with one or more instances using instance IDs
  or tags, SSM Agent running on the instance processes the document and
  configures the instance as specified.

  If you associate a document with an instance that already has an associated
  document, the system returns the AssociationAlreadyExists exception.
  """
  def create_association_batch(client, input, options \\ []) do
    request(client, "CreateAssociationBatch", input, options)
  end

  @doc """
  Creates a Systems Manager document.

  After you create a document, you can use CreateAssociation to associate it
  with one or more running instances.
  """
  def create_document(client, input, options \\ []) do
    request(client, "CreateDocument", input, options)
  end

  @doc """
  Creates a new Maintenance Window.
  """
  def create_maintenance_window(client, input, options \\ []) do
    request(client, "CreateMaintenanceWindow", input, options)
  end

  @doc """
  Creates a patch baseline.

  <note> For information about valid key and value pairs in `PatchFilters`
  for each supported operating system type, see
  [PatchFilter](http://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html).

  </note>
  """
  def create_patch_baseline(client, input, options \\ []) do
    request(client, "CreatePatchBaseline", input, options)
  end

  @doc """
  Creates a resource data sync configuration to a single bucket in Amazon S3.
  This is an asynchronous operation that returns immediately. After a
  successful initial sync is completed, the system continuously syncs data to
  the Amazon S3 bucket. To check the status of the sync, use the
  `ListResourceDataSync`.

  By default, data is not encrypted in Amazon S3. We strongly recommend that
  you enable encryption in Amazon S3 to ensure secure data storage. We also
  recommend that you secure access to the Amazon S3 bucket by creating a
  restrictive bucket policy. For more information, see [Configuring Resource
  Data Sync for
  Inventory](http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-datasync.html)
  in the *AWS Systems Manager User Guide*.
  """
  def create_resource_data_sync(client, input, options \\ []) do
    request(client, "CreateResourceDataSync", input, options)
  end

  @doc """
  Deletes an activation. You are not required to delete an activation. If you
  delete an activation, you can no longer use it to register additional
  managed instances. Deleting an activation does not de-register managed
  instances. You must manually de-register managed instances.
  """
  def delete_activation(client, input, options \\ []) do
    request(client, "DeleteActivation", input, options)
  end

  @doc """
  Disassociates the specified Systems Manager document from the specified
  instance.

  When you disassociate a document from an instance, it does not change the
  configuration of the instance. To change the configuration state of an
  instance after you disassociate a document, you must create a new document
  with the desired configuration and associate it with the instance.
  """
  def delete_association(client, input, options \\ []) do
    request(client, "DeleteAssociation", input, options)
  end

  @doc """
  Deletes the Systems Manager document and all instance associations to the
  document.

  Before you delete the document, we recommend that you use
  `DeleteAssociation` to disassociate all instances that are associated with
  the document.
  """
  def delete_document(client, input, options \\ []) do
    request(client, "DeleteDocument", input, options)
  end

  @doc """
  Delete a custom inventory type, or the data associated with a custom
  Inventory type. Deleting a custom inventory type is also referred to as
  deleting a custom inventory schema.
  """
  def delete_inventory(client, input, options \\ []) do
    request(client, "DeleteInventory", input, options)
  end

  @doc """
  Deletes a Maintenance Window.
  """
  def delete_maintenance_window(client, input, options \\ []) do
    request(client, "DeleteMaintenanceWindow", input, options)
  end

  @doc """
  Delete a parameter from the system.
  """
  def delete_parameter(client, input, options \\ []) do
    request(client, "DeleteParameter", input, options)
  end

  @doc """
  Delete a list of parameters. This API is used to delete parameters by using
  the Amazon EC2 console.
  """
  def delete_parameters(client, input, options \\ []) do
    request(client, "DeleteParameters", input, options)
  end

  @doc """
  Deletes a patch baseline.
  """
  def delete_patch_baseline(client, input, options \\ []) do
    request(client, "DeletePatchBaseline", input, options)
  end

  @doc """
  Deletes a Resource Data Sync configuration. After the configuration is
  deleted, changes to inventory data on managed instances are no longer
  synced with the target Amazon S3 bucket. Deleting a sync configuration does
  not delete data in the target Amazon S3 bucket.
  """
  def delete_resource_data_sync(client, input, options \\ []) do
    request(client, "DeleteResourceDataSync", input, options)
  end

  @doc """
  Removes the server or virtual machine from the list of registered servers.
  You can reregister the instance again at any time. If you don't plan to use
  Run Command on the server, we suggest uninstalling SSM Agent first.
  """
  def deregister_managed_instance(client, input, options \\ []) do
    request(client, "DeregisterManagedInstance", input, options)
  end

  @doc """
  Removes a patch group from a patch baseline.
  """
  def deregister_patch_baseline_for_patch_group(client, input, options \\ []) do
    request(client, "DeregisterPatchBaselineForPatchGroup", input, options)
  end

  @doc """
  Removes a target from a Maintenance Window.
  """
  def deregister_target_from_maintenance_window(client, input, options \\ []) do
    request(client, "DeregisterTargetFromMaintenanceWindow", input, options)
  end

  @doc """
  Removes a task from a Maintenance Window.
  """
  def deregister_task_from_maintenance_window(client, input, options \\ []) do
    request(client, "DeregisterTaskFromMaintenanceWindow", input, options)
  end

  @doc """
  Details about the activation, including: the date and time the activation
  was created, the expiration date, the IAM role assigned to the instances in
  the activation, and the number of instances activated by this registration.
  """
  def describe_activations(client, input, options \\ []) do
    request(client, "DescribeActivations", input, options)
  end

  @doc """
  Describes the association for the specified target or instance. If you
  created the association by using the `Targets` parameter, then you must
  retrieve the association by using the association ID. If you created the
  association by specifying an instance ID and a Systems Manager document,
  then you retrieve the association by specifying the document name and the
  instance ID.
  """
  def describe_association(client, input, options \\ []) do
    request(client, "DescribeAssociation", input, options)
  end

  @doc """
  Use this API action to view information about a specific execution of a
  specific association.
  """
  def describe_association_execution_targets(client, input, options \\ []) do
    request(client, "DescribeAssociationExecutionTargets", input, options)
  end

  @doc """
  Use this API action to view all executions for a specific association ID.
  """
  def describe_association_executions(client, input, options \\ []) do
    request(client, "DescribeAssociationExecutions", input, options)
  end

  @doc """
  Provides details about all active and terminated Automation executions.
  """
  def describe_automation_executions(client, input, options \\ []) do
    request(client, "DescribeAutomationExecutions", input, options)
  end

  @doc """
  Information about all active and terminated step executions in an
  Automation workflow.
  """
  def describe_automation_step_executions(client, input, options \\ []) do
    request(client, "DescribeAutomationStepExecutions", input, options)
  end

  @doc """
  Lists all patches that could possibly be included in a patch baseline.
  """
  def describe_available_patches(client, input, options \\ []) do
    request(client, "DescribeAvailablePatches", input, options)
  end

  @doc """
  Describes the specified Systems Manager document.
  """
  def describe_document(client, input, options \\ []) do
    request(client, "DescribeDocument", input, options)
  end

  @doc """
  Describes the permissions for a Systems Manager document. If you created
  the document, you are the owner. If a document is shared, it can either be
  shared privately (by specifying a user's AWS account ID) or publicly
  (*All*).
  """
  def describe_document_permission(client, input, options \\ []) do
    request(client, "DescribeDocumentPermission", input, options)
  end

  @doc """
  All associations for the instance(s).
  """
  def describe_effective_instance_associations(client, input, options \\ []) do
    request(client, "DescribeEffectiveInstanceAssociations", input, options)
  end

  @doc """
  Retrieves the current effective patches (the patch and the approval state)
  for the specified patch baseline. Note that this API applies only to
  Windows patch baselines.
  """
  def describe_effective_patches_for_patch_baseline(client, input, options \\ []) do
    request(client, "DescribeEffectivePatchesForPatchBaseline", input, options)
  end

  @doc """
  The status of the associations for the instance(s).
  """
  def describe_instance_associations_status(client, input, options \\ []) do
    request(client, "DescribeInstanceAssociationsStatus", input, options)
  end

  @doc """
  Describes one or more of your instances. You can use this to get
  information about instances like the operating system platform, the SSM
  Agent version (Linux), status etc. If you specify one or more instance IDs,
  it returns information for those instances. If you do not specify instance
  IDs, it returns information for all your instances. If you specify an
  instance ID that is not valid or an instance that you do not own, you
  receive an error.

  <note> The IamRole field for this API action is the Amazon Identity and
  Access Management (IAM) role assigned to on-premises instances. This call
  does not return the IAM role for Amazon EC2 instances.

  </note>
  """
  def describe_instance_information(client, input, options \\ []) do
    request(client, "DescribeInstanceInformation", input, options)
  end

  @doc """
  Retrieves the high-level patch state of one or more instances.
  """
  def describe_instance_patch_states(client, input, options \\ []) do
    request(client, "DescribeInstancePatchStates", input, options)
  end

  @doc """
  Retrieves the high-level patch state for the instances in the specified
  patch group.
  """
  def describe_instance_patch_states_for_patch_group(client, input, options \\ []) do
    request(client, "DescribeInstancePatchStatesForPatchGroup", input, options)
  end

  @doc """
  Retrieves information about the patches on the specified instance and their
  state relative to the patch baseline being used for the instance.
  """
  def describe_instance_patches(client, input, options \\ []) do
    request(client, "DescribeInstancePatches", input, options)
  end

  @doc """
  Describes a specific delete inventory operation.
  """
  def describe_inventory_deletions(client, input, options \\ []) do
    request(client, "DescribeInventoryDeletions", input, options)
  end

  @doc """
  Retrieves the individual task executions (one per target) for a particular
  task run as part of a Maintenance Window execution.
  """
  def describe_maintenance_window_execution_task_invocations(client, input, options \\ []) do
    request(client, "DescribeMaintenanceWindowExecutionTaskInvocations", input, options)
  end

  @doc """
  For a given Maintenance Window execution, lists the tasks that were run.
  """
  def describe_maintenance_window_execution_tasks(client, input, options \\ []) do
    request(client, "DescribeMaintenanceWindowExecutionTasks", input, options)
  end

  @doc """
  Lists the executions of a Maintenance Window. This includes information
  about when the Maintenance Window was scheduled to be active, and
  information about tasks registered and run with the Maintenance Window.
  """
  def describe_maintenance_window_executions(client, input, options \\ []) do
    request(client, "DescribeMaintenanceWindowExecutions", input, options)
  end

  @doc """
  Retrieves information about upcoming executions of a Maintenance Window.
  """
  def describe_maintenance_window_schedule(client, input, options \\ []) do
    request(client, "DescribeMaintenanceWindowSchedule", input, options)
  end

  @doc """
  Lists the targets registered with the Maintenance Window.
  """
  def describe_maintenance_window_targets(client, input, options \\ []) do
    request(client, "DescribeMaintenanceWindowTargets", input, options)
  end

  @doc """
  Lists the tasks in a Maintenance Window.
  """
  def describe_maintenance_window_tasks(client, input, options \\ []) do
    request(client, "DescribeMaintenanceWindowTasks", input, options)
  end

  @doc """
  Retrieves the Maintenance Windows in an AWS account.
  """
  def describe_maintenance_windows(client, input, options \\ []) do
    request(client, "DescribeMaintenanceWindows", input, options)
  end

  @doc """
  Retrieves information about the Maintenance Windows targets or tasks that
  an instance is associated with.
  """
  def describe_maintenance_windows_for_target(client, input, options \\ []) do
    request(client, "DescribeMaintenanceWindowsForTarget", input, options)
  end

  @doc """
  Get information about a parameter.

  Request results are returned on a best-effort basis. If you specify
  `MaxResults` in the request, the response includes information up to the
  limit specified. The number of items returned, however, can be between zero
  and the value of `MaxResults`. If the service reaches an internal limit
  while processing the results, it stops the operation and returns the
  matching values up to that point and a `NextToken`. You can specify the
  `NextToken` in a subsequent call to get the next set of results.
  """
  def describe_parameters(client, input, options \\ []) do
    request(client, "DescribeParameters", input, options)
  end

  @doc """
  Lists the patch baselines in your AWS account.
  """
  def describe_patch_baselines(client, input, options \\ []) do
    request(client, "DescribePatchBaselines", input, options)
  end

  @doc """
  Returns high-level aggregated patch compliance state for a patch group.
  """
  def describe_patch_group_state(client, input, options \\ []) do
    request(client, "DescribePatchGroupState", input, options)
  end

  @doc """
  Lists all patch groups that have been registered with patch baselines.
  """
  def describe_patch_groups(client, input, options \\ []) do
    request(client, "DescribePatchGroups", input, options)
  end

  @doc """
  Retrieves a list of all active sessions (both connected and disconnected)
  or terminated sessions from the past 30 days.
  """
  def describe_sessions(client, input, options \\ []) do
    request(client, "DescribeSessions", input, options)
  end

  @doc """
  Get detailed information about a particular Automation execution.
  """
  def get_automation_execution(client, input, options \\ []) do
    request(client, "GetAutomationExecution", input, options)
  end

  @doc """
  Returns detailed information about command execution for an invocation or
  plugin.
  """
  def get_command_invocation(client, input, options \\ []) do
    request(client, "GetCommandInvocation", input, options)
  end

  @doc """
  Retrieves the Session Manager connection status for an instance to
  determine whether it is connected and ready to receive Session Manager
  connections.
  """
  def get_connection_status(client, input, options \\ []) do
    request(client, "GetConnectionStatus", input, options)
  end

  @doc """
  Retrieves the default patch baseline. Note that Systems Manager supports
  creating multiple default patch baselines. For example, you can create a
  default patch baseline for each operating system.

  If you do not specify an operating system value, the default patch baseline
  for Windows is returned.
  """
  def get_default_patch_baseline(client, input, options \\ []) do
    request(client, "GetDefaultPatchBaseline", input, options)
  end

  @doc """
  Retrieves the current snapshot for the patch baseline the instance uses.
  This API is primarily used by the AWS-RunPatchBaseline Systems Manager
  document.
  """
  def get_deployable_patch_snapshot_for_instance(client, input, options \\ []) do
    request(client, "GetDeployablePatchSnapshotForInstance", input, options)
  end

  @doc """
  Gets the contents of the specified Systems Manager document.
  """
  def get_document(client, input, options \\ []) do
    request(client, "GetDocument", input, options)
  end

  @doc """
  Query inventory information.
  """
  def get_inventory(client, input, options \\ []) do
    request(client, "GetInventory", input, options)
  end

  @doc """
  Return a list of inventory type names for the account, or return a list of
  attribute names for a specific Inventory item type.
  """
  def get_inventory_schema(client, input, options \\ []) do
    request(client, "GetInventorySchema", input, options)
  end

  @doc """
  Retrieves a Maintenance Window.
  """
  def get_maintenance_window(client, input, options \\ []) do
    request(client, "GetMaintenanceWindow", input, options)
  end

  @doc """
  Retrieves details about a specific task run as part of a Maintenance Window
  execution.
  """
  def get_maintenance_window_execution(client, input, options \\ []) do
    request(client, "GetMaintenanceWindowExecution", input, options)
  end

  @doc """
  Retrieves the details about a specific task run as part of a Maintenance
  Window execution.
  """
  def get_maintenance_window_execution_task(client, input, options \\ []) do
    request(client, "GetMaintenanceWindowExecutionTask", input, options)
  end

  @doc """
  Retrieves a task invocation. A task invocation is a specific task running
  on a specific target. Maintenance Windows report status for all
  invocations.
  """
  def get_maintenance_window_execution_task_invocation(client, input, options \\ []) do
    request(client, "GetMaintenanceWindowExecutionTaskInvocation", input, options)
  end

  @doc """
  Lists the tasks in a Maintenance Window.
  """
  def get_maintenance_window_task(client, input, options \\ []) do
    request(client, "GetMaintenanceWindowTask", input, options)
  end

  @doc """
  Get information about a parameter by using the parameter name. Don't
  confuse this API action with the `GetParameters` API action.
  """
  def get_parameter(client, input, options \\ []) do
    request(client, "GetParameter", input, options)
  end

  @doc """
  Query a list of all parameters used by the AWS account.
  """
  def get_parameter_history(client, input, options \\ []) do
    request(client, "GetParameterHistory", input, options)
  end

  @doc """
  Get details of a parameter. Don't confuse this API action with the
  `GetParameter` API action.
  """
  def get_parameters(client, input, options \\ []) do
    request(client, "GetParameters", input, options)
  end

  @doc """
  Retrieve parameters in a specific hierarchy. For more information, see
  [Working with Systems Manager
  Parameters](http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-working.html)
  in the *AWS Systems Manager User Guide*.

  Request results are returned on a best-effort basis. If you specify
  `MaxResults` in the request, the response includes information up to the
  limit specified. The number of items returned, however, can be between zero
  and the value of `MaxResults`. If the service reaches an internal limit
  while processing the results, it stops the operation and returns the
  matching values up to that point and a `NextToken`. You can specify the
  `NextToken` in a subsequent call to get the next set of results.

  <note> This API action doesn't support filtering by tags.

  </note>
  """
  def get_parameters_by_path(client, input, options \\ []) do
    request(client, "GetParametersByPath", input, options)
  end

  @doc """
  Retrieves information about a patch baseline.
  """
  def get_patch_baseline(client, input, options \\ []) do
    request(client, "GetPatchBaseline", input, options)
  end

  @doc """
  Retrieves the patch baseline that should be used for the specified patch
  group.
  """
  def get_patch_baseline_for_patch_group(client, input, options \\ []) do
    request(client, "GetPatchBaselineForPatchGroup", input, options)
  end

  @doc """
  `ServiceSetting` is an account-level setting for an AWS service. This
  setting defines how a user interacts with or uses a service or a feature of
  a service. For example, if an AWS service charges money to the account
  based on feature or service usage, then the AWS service team might create a
  default setting of "false". This means the user can't use this feature
  unless they change the setting to "true" and intentionally opt in for a
  paid feature.

  Services map a `SettingId` object to a setting value. AWS services teams
  define the default value for a `SettingId`. You can't create a new
  `SettingId`, but you can overwrite the default value if you have the
  `ssm:UpdateServiceSetting` permission for the setting. Use the
  `UpdateServiceSetting` API action to change the default setting. Or use the
  `ResetServiceSetting` to change the value back to the original value
  defined by the AWS service team.

  Query the current service setting for the account.
  """
  def get_service_setting(client, input, options \\ []) do
    request(client, "GetServiceSetting", input, options)
  end

  @doc """
  A parameter label is a user-defined alias to help you manage different
  versions of a parameter. When you modify a parameter, Systems Manager
  automatically saves a new version and increments the version number by one.
  A label can help you remember the purpose of a parameter when there are
  multiple versions.

  Parameter labels have the following requirements and restrictions.

  <ul> <li> A version of a parameter can have a maximum of 10 labels.

  </li> <li> You can't attach the same label to different versions of the
  same parameter. For example, if version 1 has the label Production, then
  you can't attach Production to version 2.

  </li> <li> You can move a label from one version of a parameter to another.

  </li> <li> You can't create a label when you create a new parameter. You
  must attach a label to a specific version of a parameter.

  </li> <li> You can't delete a parameter label. If you no longer want to use
  a parameter label, then you must move it to a different version of a
  parameter.

  </li> <li> A label can have a maximum of 100 characters.

  </li> <li> Labels can contain letters (case sensitive), numbers, periods
  (.), hyphens (-), or underscores (_).

  </li> <li> Labels can't begin with a number, "aws," or "ssm" (not case
  sensitive). If a label fails to meet these requirements, then the label is
  not associated with a parameter and the system displays it in the list of
  InvalidLabels.

  </li> </ul>
  """
  def label_parameter_version(client, input, options \\ []) do
    request(client, "LabelParameterVersion", input, options)
  end

  @doc """
  Retrieves all versions of an association for a specific association ID.
  """
  def list_association_versions(client, input, options \\ []) do
    request(client, "ListAssociationVersions", input, options)
  end

  @doc """
  Lists the associations for the specified Systems Manager document or
  instance.
  """
  def list_associations(client, input, options \\ []) do
    request(client, "ListAssociations", input, options)
  end

  @doc """
  An invocation is copy of a command sent to a specific instance. A command
  can apply to one or more instances. A command invocation applies to one
  instance. For example, if a user runs SendCommand against three instances,
  then a command invocation is created for each requested instance ID.
  ListCommandInvocations provide status about command execution.
  """
  def list_command_invocations(client, input, options \\ []) do
    request(client, "ListCommandInvocations", input, options)
  end

  @doc """
  Lists the commands requested by users of the AWS account.
  """
  def list_commands(client, input, options \\ []) do
    request(client, "ListCommands", input, options)
  end

  @doc """
  For a specified resource ID, this API action returns a list of compliance
  statuses for different resource types. Currently, you can only specify one
  resource ID per call. List results depend on the criteria specified in the
  filter.
  """
  def list_compliance_items(client, input, options \\ []) do
    request(client, "ListComplianceItems", input, options)
  end

  @doc """
  Returns a summary count of compliant and non-compliant resources for a
  compliance type. For example, this call can return State Manager
  associations, patches, or custom compliance types according to the filter
  criteria that you specify.
  """
  def list_compliance_summaries(client, input, options \\ []) do
    request(client, "ListComplianceSummaries", input, options)
  end

  @doc """
  List all versions for a document.
  """
  def list_document_versions(client, input, options \\ []) do
    request(client, "ListDocumentVersions", input, options)
  end

  @doc """
  Describes one or more of your Systems Manager documents.
  """
  def list_documents(client, input, options \\ []) do
    request(client, "ListDocuments", input, options)
  end

  @doc """
  A list of inventory items returned by the request.
  """
  def list_inventory_entries(client, input, options \\ []) do
    request(client, "ListInventoryEntries", input, options)
  end

  @doc """
  Returns a resource-level summary count. The summary includes information
  about compliant and non-compliant statuses and detailed compliance-item
  severity counts, according to the filter criteria you specify.
  """
  def list_resource_compliance_summaries(client, input, options \\ []) do
    request(client, "ListResourceComplianceSummaries", input, options)
  end

  @doc """
  Lists your resource data sync configurations. Includes information about
  the last time a sync attempted to start, the last sync status, and the last
  time a sync successfully completed.

  The number of sync configurations might be too large to return using a
  single call to `ListResourceDataSync`. You can limit the number of sync
  configurations returned by using the `MaxResults` parameter. To determine
  whether there are more sync configurations to list, check the value of
  `NextToken` in the output. If there are more sync configurations to list,
  you can request them by specifying the `NextToken` returned in the call to
  the parameter of a subsequent call.
  """
  def list_resource_data_sync(client, input, options \\ []) do
    request(client, "ListResourceDataSync", input, options)
  end

  @doc """
  Returns a list of the tags assigned to the specified resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Shares a Systems Manager document publicly or privately. If you share a
  document privately, you must specify the AWS user account IDs for those
  people who can use the document. If you share a document publicly, you must
  specify *All* as the account ID.
  """
  def modify_document_permission(client, input, options \\ []) do
    request(client, "ModifyDocumentPermission", input, options)
  end

  @doc """
  Registers a compliance type and other compliance details on a designated
  resource. This action lets you register custom compliance details with a
  resource. This call overwrites existing compliance information on the
  resource, so you must provide a full list of compliance items each time
  that you send the request.

  ComplianceType can be one of the following:

  <ul> <li> ExecutionId: The execution ID when the patch, association, or
  custom compliance item was applied.

  </li> <li> ExecutionType: Specify patch, association, or Custom:`string`.

  </li> <li> ExecutionTime. The time the patch, association, or custom
  compliance item was applied to the instance.

  </li> <li> Id: The patch, association, or custom compliance ID.

  </li> <li> Title: A title.

  </li> <li> Status: The status of the compliance item. For example,
  `approved` for patches, or `Failed` for associations.

  </li> <li> Severity: A patch severity. For example, `critical`.

  </li> <li> DocumentName: A SSM document name. For example,
  AWS-RunPatchBaseline.

  </li> <li> DocumentVersion: An SSM document version number. For example, 4.

  </li> <li> Classification: A patch classification. For example, `security
  updates`.

  </li> <li> PatchBaselineId: A patch baseline ID.

  </li> <li> PatchSeverity: A patch severity. For example, `Critical`.

  </li> <li> PatchState: A patch state. For example,
  `InstancesWithFailedPatches`.

  </li> <li> PatchGroup: The name of a patch group.

  </li> <li> InstalledTime: The time the association, patch, or custom
  compliance item was applied to the resource. Specify the time by using the
  following format: yyyy-MM-dd'T'HH:mm:ss'Z'

  </li> </ul>
  """
  def put_compliance_items(client, input, options \\ []) do
    request(client, "PutComplianceItems", input, options)
  end

  @doc """
  Bulk update custom inventory items on one more instance. The request adds
  an inventory item, if it doesn't already exist, or updates an inventory
  item, if it does exist.
  """
  def put_inventory(client, input, options \\ []) do
    request(client, "PutInventory", input, options)
  end

  @doc """
  Add a parameter to the system.
  """
  def put_parameter(client, input, options \\ []) do
    request(client, "PutParameter", input, options)
  end

  @doc """
  Defines the default patch baseline.
  """
  def register_default_patch_baseline(client, input, options \\ []) do
    request(client, "RegisterDefaultPatchBaseline", input, options)
  end

  @doc """
  Registers a patch baseline for a patch group.
  """
  def register_patch_baseline_for_patch_group(client, input, options \\ []) do
    request(client, "RegisterPatchBaselineForPatchGroup", input, options)
  end

  @doc """
  Registers a target with a Maintenance Window.
  """
  def register_target_with_maintenance_window(client, input, options \\ []) do
    request(client, "RegisterTargetWithMaintenanceWindow", input, options)
  end

  @doc """
  Adds a new task to a Maintenance Window.
  """
  def register_task_with_maintenance_window(client, input, options \\ []) do
    request(client, "RegisterTaskWithMaintenanceWindow", input, options)
  end

  @doc """
  Removes all tags from the specified resource.
  """
  def remove_tags_from_resource(client, input, options \\ []) do
    request(client, "RemoveTagsFromResource", input, options)
  end

  @doc """
  `ServiceSetting` is an account-level setting for an AWS service. This
  setting defines how a user interacts with or uses a service or a feature of
  a service. For example, if an AWS service charges money to the account
  based on feature or service usage, then the AWS service team might create a
  default setting of "false". This means the user can't use this feature
  unless they change the setting to "true" and intentionally opt in for a
  paid feature.

  Services map a `SettingId` object to a setting value. AWS services teams
  define the default value for a `SettingId`. You can't create a new
  `SettingId`, but you can overwrite the default value if you have the
  `ssm:UpdateServiceSetting` permission for the setting. Use the
  `GetServiceSetting` API action to view the current value. Use the
  `UpdateServiceSetting` API action to change the default setting.

  Reset the service setting for the account to the default value as
  provisioned by the AWS service team.
  """
  def reset_service_setting(client, input, options \\ []) do
    request(client, "ResetServiceSetting", input, options)
  end

  @doc """
  Reconnects a session to an instance after it has been disconnected.
  Connections can be resumed for disconnected sessions, but not terminated
  sessions.

  <note> This command is primarily for use by client machines to
  automatically reconnect during intermittent network issues. It is not
  intended for any other use.

  </note>
  """
  def resume_session(client, input, options \\ []) do
    request(client, "ResumeSession", input, options)
  end

  @doc """
  Sends a signal to an Automation execution to change the current behavior or
  status of the execution.
  """
  def send_automation_signal(client, input, options \\ []) do
    request(client, "SendAutomationSignal", input, options)
  end

  @doc """
  Runs commands on one or more managed instances.
  """
  def send_command(client, input, options \\ []) do
    request(client, "SendCommand", input, options)
  end

  @doc """
  Use this API action to run an association immediately and only one time.
  This action can be helpful when troubleshooting associations.
  """
  def start_associations_once(client, input, options \\ []) do
    request(client, "StartAssociationsOnce", input, options)
  end

  @doc """
  Initiates execution of an Automation document.
  """
  def start_automation_execution(client, input, options \\ []) do
    request(client, "StartAutomationExecution", input, options)
  end

  @doc """
  Initiates a connection to a target (for example, an instance) for a Session
  Manager session. Returns a URL and token that can be used to open a
  WebSocket connection for sending input and receiving outputs.

  <note> AWS CLI usage: `start-session` is an interactive command that
  requires the Session Manager plugin to be installed on the client machine
  making the call. For information, see [ Install the Session Manager Plugin
  for the AWS
  CLI](http://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html)
  in the *AWS Systems Manager User Guide*.

  </note>
  """
  def start_session(client, input, options \\ []) do
    request(client, "StartSession", input, options)
  end

  @doc """
  Stop an Automation that is currently running.
  """
  def stop_automation_execution(client, input, options \\ []) do
    request(client, "StopAutomationExecution", input, options)
  end

  @doc """
  Permanently ends a session and closes the data connection between the
  Session Manager client and SSM Agent on the instance. A terminated session
  cannot be resumed.
  """
  def terminate_session(client, input, options \\ []) do
    request(client, "TerminateSession", input, options)
  end

  @doc """
  Updates an association. You can update the association name and version,
  the document version, schedule, parameters, and Amazon S3 output.

  <important> When you update an association, the association immediately
  runs against the specified targets.

  </important>
  """
  def update_association(client, input, options \\ []) do
    request(client, "UpdateAssociation", input, options)
  end

  @doc """
  Updates the status of the Systems Manager document associated with the
  specified instance.
  """
  def update_association_status(client, input, options \\ []) do
    request(client, "UpdateAssociationStatus", input, options)
  end

  @doc """
  The document you want to update.
  """
  def update_document(client, input, options \\ []) do
    request(client, "UpdateDocument", input, options)
  end

  @doc """
  Set the default version of a document.
  """
  def update_document_default_version(client, input, options \\ []) do
    request(client, "UpdateDocumentDefaultVersion", input, options)
  end

  @doc """
  Updates an existing Maintenance Window. Only specified parameters are
  modified.
  """
  def update_maintenance_window(client, input, options \\ []) do
    request(client, "UpdateMaintenanceWindow", input, options)
  end

  @doc """
  Modifies the target of an existing Maintenance Window. You can't change the
  target type, but you can change the following:

  The target from being an ID target to a Tag target, or a Tag target to an
  ID target.

  IDs for an ID target.

  Tags for a Tag target.

  Owner.

  Name.

  Description.

  If a parameter is null, then the corresponding field is not modified.
  """
  def update_maintenance_window_target(client, input, options \\ []) do
    request(client, "UpdateMaintenanceWindowTarget", input, options)
  end

  @doc """
  Modifies a task assigned to a Maintenance Window. You can't change the task
  type, but you can change the following values:

  <ul> <li> TaskARN. For example, you can change a RUN_COMMAND task from
  AWS-RunPowerShellScript to AWS-RunShellScript.

  </li> <li> ServiceRoleArn

  </li> <li> TaskInvocationParameters

  </li> <li> Priority

  </li> <li> MaxConcurrency

  </li> <li> MaxErrors

  </li> </ul> If a parameter is null, then the corresponding field is not
  modified. Also, if you set Replace to true, then all fields required by the
  `RegisterTaskWithMaintenanceWindow` action are required for this request.
  Optional fields that aren't specified are set to null.
  """
  def update_maintenance_window_task(client, input, options \\ []) do
    request(client, "UpdateMaintenanceWindowTask", input, options)
  end

  @doc """
  Assigns or changes an Amazon Identity and Access Management (IAM) role to
  the managed instance.
  """
  def update_managed_instance_role(client, input, options \\ []) do
    request(client, "UpdateManagedInstanceRole", input, options)
  end

  @doc """
  Modifies an existing patch baseline. Fields not specified in the request
  are left unchanged.

  <note> For information about valid key and value pairs in `PatchFilters`
  for each supported operating system type, see
  [PatchFilter](http://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html).

  </note>
  """
  def update_patch_baseline(client, input, options \\ []) do
    request(client, "UpdatePatchBaseline", input, options)
  end

  @doc """
  `ServiceSetting` is an account-level setting for an AWS service. This
  setting defines how a user interacts with or uses a service or a feature of
  a service. For example, if an AWS service charges money to the account
  based on feature or service usage, then the AWS service team might create a
  default setting of "false". This means the user can't use this feature
  unless they change the setting to "true" and intentionally opt in for a
  paid feature.

  Services map a `SettingId` object to a setting value. AWS services teams
  define the default value for a `SettingId`. You can't create a new
  `SettingId`, but you can overwrite the default value if you have the
  `ssm:UpdateServiceSetting` permission for the setting. Use the
  `GetServiceSetting` API action to view the current value. Or, use the
  `ResetServiceSetting` to change the value back to the original value
  defined by the AWS service team.

  Update the service setting for the account.
  """
  def update_service_setting(client, input, options \\ []) do
    request(client, "UpdateServiceSetting", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "ssm"}
    host = get_host("ssm", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AmazonSSM.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
