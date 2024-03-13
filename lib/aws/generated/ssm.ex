# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSM do
  @moduledoc """
  Amazon Web Services Systems Manager is the operations hub for your Amazon Web
  Services applications and resources and a secure
  end-to-end management solution for hybrid cloud environments that enables safe
  and secure
  operations at scale.

  This reference is intended to be used with the [Amazon Web Services Systems Manager User
  Guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/). To get
  started, see [Setting up Amazon Web Services Systems Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html).

  ## Related resources

    *
  For information about each of the capabilities that comprise Systems Manager,
  see [Systems Manager capabilities](https://docs.aws.amazon.com/systems-manager/latest/userguide/what-is-systems-manager.html#systems-manager-capabilities)
  in the *Amazon Web Services Systems Manager User Guide*.

    *
  For details about predefined runbooks for Automation, a capability of Amazon Web
  Services Systems Manager, see the
  *
  [Systems Manager Automation runbook reference](https://docs.aws.amazon.com/systems-manager-automation-runbooks/latest/userguide/automation-runbook-reference.html)
  *.

    *
  For information about AppConfig, a capability of Systems Manager, see the *
  [AppConfig User Guide](https://docs.aws.amazon.com/appconfig/latest/userguide/) *
  and the *
  [AppConfig
  API Reference](https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/)
  *.

    *
  For information about Incident Manager, a capability of Systems Manager, see the
  *
  [Systems Manager Incident Manager User Guide](https://docs.aws.amazon.com/incident-manager/latest/userguide/)
  * and the *
  [Systems Manager Incident Manager API Reference](https://docs.aws.amazon.com/incident-manager/latest/APIReference/)
  *.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2014-11-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ssm",
      global?: false,
      protocol: "json",
      service_id: "SSM",
      signature_version: "v4",
      signing_name: "ssm",
      target_prefix: "AmazonSSM"
    }
  end

  @doc """
  Adds or overwrites one or more tags for the specified resource.

  *Tags*
  are metadata that you can assign to your automations, documents, managed nodes,
  maintenance
  windows, Parameter Store parameters, and patch baselines. Tags enable you to
  categorize your
  resources in different ways, for example, by purpose, owner, or environment.
  Each tag consists of
  a key and an optional value, both of which you define. For example, you could
  define a set of
  tags for your account's managed nodes that helps you track each node's owner and
  stack level. For
  example:

    *

  `Key=Owner,Value=DbAdmin`

    *

  `Key=Owner,Value=SysAdmin`

    *

  `Key=Owner,Value=Dev`

    *

  `Key=Stack,Value=Production`

    *

  `Key=Stack,Value=Pre-Production`

    *

  `Key=Stack,Value=Test`

  Most resources can have a maximum of 50 tags. Automations can have a maximum of
  5
  tags.

  We recommend that you devise a set of tag keys that meets your needs for each
  resource type.
  Using a consistent set of tag keys makes it easier for you to manage your
  resources. You can
  search and filter the resources based on the tags you add. Tags don't have any
  semantic meaning
  to and are interpreted strictly as a string of characters.

  For more information about using tags with Amazon Elastic Compute Cloud (Amazon
  EC2) instances, see [Tag your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the *Amazon EC2 User Guide*.
  """
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTagsToResource", input, options)
  end

  @doc """
  Associates a related item to a Systems Manager OpsCenter OpsItem.

  For example, you can associate an
  Incident Manager incident or analysis with an OpsItem. Incident Manager and
  OpsCenter are capabilities of
  Amazon Web Services Systems Manager.
  """
  def associate_ops_item_related_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateOpsItemRelatedItem", input, options)
  end

  @doc """
  Attempts to cancel the command specified by the Command ID.

  There is no guarantee that the
  command will be terminated and the underlying process stopped.
  """
  def cancel_command(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelCommand", input, options)
  end

  @doc """
  Stops a maintenance window execution that is already in progress and cancels any
  tasks in
  the window that haven't already starting running.

  Tasks already in progress will continue to
  completion.
  """
  def cancel_maintenance_window_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelMaintenanceWindowExecution", input, options)
  end

  @doc """
  Generates an activation code and activation ID you can use to register your
  on-premises
  servers, edge devices, or virtual machine (VM) with Amazon Web Services Systems
  Manager.

  Registering these machines with
  Systems Manager makes it possible to manage them using Systems Manager
  capabilities. You use the activation code and
  ID when installing SSM Agent on machines in your hybrid environment. For more
  information about
  requirements for managing on-premises machines using Systems Manager, see
  [Setting up Amazon Web Services Systems Manager for hybrid and multicloud
  environments](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.

  Amazon Elastic Compute Cloud (Amazon EC2) instances, edge devices, and
  on-premises servers and VMs that are
  configured for Systems Manager are all called *managed nodes*.
  """
  def create_activation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateActivation", input, options)
  end

  @doc """
  A State Manager association defines the state that you want to maintain on your
  managed
  nodes.

  For example, an association can specify that anti-virus software must be
  installed and
  running on your managed nodes, or that certain ports must be closed. For static
  targets, the
  association specifies a schedule for when the configuration is reapplied. For
  dynamic targets,
  such as an Amazon Web Services resource group or an Amazon Web Services
  autoscaling group, State Manager, a capability of
  Amazon Web Services Systems Manager applies the configuration when new managed
  nodes are added to the group. The
  association also specifies actions to take when applying the configuration. For
  example, an
  association for anti-virus software might run once a day. If the software isn't
  installed, then
  State Manager installs it. If the software is installed, but the service isn't
  running, then the
  association might instruct State Manager to start the service.
  """
  def create_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAssociation", input, options)
  end

  @doc """
  Associates the specified Amazon Web Services Systems Manager document (SSM
  document) with the specified managed nodes
  or targets.

  When you associate a document with one or more managed nodes using IDs or tags,
  Amazon Web Services Systems Manager
  Agent (SSM Agent) running on the managed node processes the document and
  configures the node as
  specified.

  If you associate a document with a managed node that already has an associated
  document, the
  system returns the AssociationAlreadyExists exception.
  """
  def create_association_batch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAssociationBatch", input, options)
  end

  @doc """
  Creates a Amazon Web Services Systems Manager (SSM document).

  An SSM document defines the actions that Systems Manager performs
  on your managed nodes. For more information about SSM documents, including
  information about
  supported schemas, features, and syntax, see [Amazon Web Services Systems Manager
  Documents](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-ssm-docs.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.
  """
  def create_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDocument", input, options)
  end

  @doc """
  Creates a new maintenance window.

  The value you specify for `Duration` determines the specific end time for the
  maintenance window based on the time it begins. No maintenance window tasks are
  permitted to
  start after the resulting endtime minus the number of hours you specify for
  `Cutoff`.
  For example, if the maintenance window starts at 3 PM, the duration is three
  hours, and the
  value you specify for `Cutoff` is one hour, no maintenance window tasks can
  start
  after 5 PM.
  """
  def create_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMaintenanceWindow", input, options)
  end

  @doc """
  Creates a new OpsItem.

  You must have permission in Identity and Access Management (IAM) to create a new
  OpsItem. For more information, see [Set up OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.

  Operations engineers and IT professionals use Amazon Web Services Systems
  Manager OpsCenter to view, investigate, and
  remediate operational issues impacting the performance and health of their
  Amazon Web Services resources. For
  more information, see [Amazon Web Services Systems Manager OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.
  """
  def create_ops_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateOpsItem", input, options)
  end

  @doc """
  If you create a new application in Application Manager, Amazon Web Services
  Systems Manager calls this API operation to specify
  information about the new application, including the application type.
  """
  def create_ops_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateOpsMetadata", input, options)
  end

  @doc """
  Creates a patch baseline.

  For information about valid key-value pairs in `PatchFilters` for each supported
  operating system type, see `PatchFilter`.
  """
  def create_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePatchBaseline", input, options)
  end

  @doc """
  A resource data sync helps you view data from multiple sources in a single
  location.

  Amazon Web Services Systems Manager offers two types of resource data sync:
  `SyncToDestination` and
  `SyncFromSource`.

  You can configure Systems Manager Inventory to use the `SyncToDestination` type
  to
  synchronize Inventory data from multiple Amazon Web Services Regions to a single
  Amazon Simple Storage Service (Amazon S3) bucket. For more information, see
  [Configuring resource data sync for
  Inventory](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-datasync.html)
  in the *Amazon Web Services Systems Manager User Guide*.

  You can configure Systems Manager Explorer to use the `SyncFromSource` type to
  synchronize
  operational work items (OpsItems) and operational data (OpsData) from multiple
  Amazon Web Services Regions to a
  single Amazon S3 bucket. This type can synchronize OpsItems and OpsData from
  multiple
  Amazon Web Services accounts and Amazon Web Services Regions or
  `EntireOrganization` by using Organizations. For more
  information, see [Setting up Systems Manager Explorer to display data from multiple accounts and
  Regions](https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resource-data-sync.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.

  A resource data sync is an asynchronous operation that returns immediately.
  After a
  successful initial sync is completed, the system continuously syncs data. To
  check the status of
  a sync, use the `ListResourceDataSync`.

  By default, data isn't encrypted in Amazon S3. We strongly recommend that you
  enable encryption in Amazon S3 to ensure secure data storage. We also recommend
  that you
  secure access to the Amazon S3 bucket by creating a restrictive bucket policy.
  """
  def create_resource_data_sync(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateResourceDataSync", input, options)
  end

  @doc """
  Deletes an activation.

  You aren't required to delete an activation. If you delete an
  activation, you can no longer use it to register additional managed nodes.
  Deleting an activation
  doesn't de-register managed nodes. You must manually de-register managed nodes.
  """
  def delete_activation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteActivation", input, options)
  end

  @doc """
  Disassociates the specified Amazon Web Services Systems Manager document (SSM
  document) from the specified managed
  node.

  If you created the association by using the `Targets` parameter, then you must
  delete the association by using the association ID.

  When you disassociate a document from a managed node, it doesn't change the
  configuration of
  the node. To change the configuration state of a managed node after you
  disassociate a document,
  you must create a new document with the desired configuration and associate it
  with the
  node.
  """
  def delete_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAssociation", input, options)
  end

  @doc """
  Deletes the Amazon Web Services Systems Manager document (SSM document) and all
  managed node associations to the
  document.

  Before you delete the document, we recommend that you use `DeleteAssociation` to
  disassociate all managed nodes that are associated with the document.
  """
  def delete_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDocument", input, options)
  end

  @doc """
  Delete a custom inventory type or the data associated with a custom Inventory
  type.

  Deleting
  a custom inventory type is also referred to as deleting a custom inventory
  schema.
  """
  def delete_inventory(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInventory", input, options)
  end

  @doc """
  Deletes a maintenance window.
  """
  def delete_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMaintenanceWindow", input, options)
  end

  @doc """
  Delete an OpsItem.

  You must have permission in Identity and Access Management (IAM) to
  delete an OpsItem.

  Note the following important information about this operation.

    
  Deleting an OpsItem is irreversible. You can't restore a deleted OpsItem.

    
  This operation uses an *eventual consistency model*, which means the
  system can take a few minutes to complete this operation. If you delete an
  OpsItem and
  immediately call, for example, `GetOpsItem`, the deleted OpsItem might still
  appear in the response.

    
  This operation is idempotent. The system doesn't throw an exception if you
  repeatedly
  call this operation for the same OpsItem. If the first call is successful, all
  additional calls
  return the same successful response as the first call.

    
  This operation doesn't support cross-account calls. A delegated administrator or
  management account can't delete OpsItems in other accounts, even if OpsCenter
  has been set up for
  cross-account administration. For more information about cross-account
  administration, see
  [Setting up OpsCenter to centrally manage OpsItems across
  accounts](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setting-up-cross-account.html)
  in the *Systems Manager User Guide*.
  """
  def delete_ops_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteOpsItem", input, options)
  end

  @doc """
  Delete OpsMetadata related to an application.
  """
  def delete_ops_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteOpsMetadata", input, options)
  end

  @doc """
  Delete a parameter from the system.

  After deleting a parameter, wait for at least 30 seconds
  to create a parameter with the same name.
  """
  def delete_parameter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteParameter", input, options)
  end

  @doc """
  Delete a list of parameters.

  After deleting a parameter, wait for at least 30 seconds to
  create a parameter with the same name.
  """
  def delete_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteParameters", input, options)
  end

  @doc """
  Deletes a patch baseline.
  """
  def delete_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePatchBaseline", input, options)
  end

  @doc """
  Deletes a resource data sync configuration.

  After the configuration is deleted, changes to
  data on managed nodes are no longer synced to or from the target. Deleting a
  sync configuration
  doesn't delete data.
  """
  def delete_resource_data_sync(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourceDataSync", input, options)
  end

  @doc """
  Deletes a Systems Manager resource policy.

  A resource policy helps you to define the IAM entity (for example, an Amazon Web
  Services account) that can manage your Systems Manager resources. The following
  resources support Systems Manager resource policies.

    *

  `OpsItemGroup` - The resource policy for `OpsItemGroup` enables
  Amazon Web Services accounts to view and interact with OpsCenter operational
  work items (OpsItems).

    *

  `Parameter` - The resource policy is used to share a parameter with other
  accounts using Resource Access Manager (RAM). For more information about
  cross-account sharing of parameters, see [Working with shared
  parameters](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-shared-parameters.html)
  in the *Amazon Web Services Systems Manager User Guide*.
  """
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Removes the server or virtual machine from the list of registered servers.

  You can
  reregister the node again at any time. If you don't plan to use Run Command on
  the server, we
  suggest uninstalling SSM Agent first.
  """
  def deregister_managed_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterManagedInstance", input, options)
  end

  @doc """
  Removes a patch group from a patch baseline.
  """
  def deregister_patch_baseline_for_patch_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterPatchBaselineForPatchGroup", input, options)
  end

  @doc """
  Removes a target from a maintenance window.
  """
  def deregister_target_from_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterTargetFromMaintenanceWindow", input, options)
  end

  @doc """
  Removes a task from a maintenance window.
  """
  def deregister_task_from_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterTaskFromMaintenanceWindow", input, options)
  end

  @doc """
  Describes details about the activation, such as the date and time the activation
  was
  created, its expiration date, the Identity and Access Management (IAM) role
  assigned to
  the managed nodes in the activation, and the number of nodes registered by using
  this
  activation.
  """
  def describe_activations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeActivations", input, options)
  end

  @doc """
  Describes the association for the specified target or managed node.

  If you created the
  association by using the `Targets` parameter, then you must retrieve the
  association
  by using the association ID.
  """
  def describe_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAssociation", input, options)
  end

  @doc """
  Views information about a specific execution of a specific association.
  """
  def describe_association_execution_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAssociationExecutionTargets", input, options)
  end

  @doc """
  Views all executions for a specific association ID.
  """
  def describe_association_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAssociationExecutions", input, options)
  end

  @doc """
  Provides details about all active and terminated Automation executions.
  """
  def describe_automation_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutomationExecutions", input, options)
  end

  @doc """
  Information about all active and terminated step executions in an Automation
  workflow.
  """
  def describe_automation_step_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutomationStepExecutions", input, options)
  end

  @doc """
  Lists all patches eligible to be included in a patch baseline.

  Currently, `DescribeAvailablePatches` supports only the Amazon Linux 1, Amazon
  Linux 2, and Windows Server operating systems.
  """
  def describe_available_patches(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAvailablePatches", input, options)
  end

  @doc """
  Describes the specified Amazon Web Services Systems Manager document (SSM
  document).
  """
  def describe_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDocument", input, options)
  end

  @doc """
  Describes the permissions for a Amazon Web Services Systems Manager document
  (SSM document).

  If you created the
  document, you are the owner. If a document is shared, it can either be shared
  privately (by
  specifying a user's Amazon Web Services account ID) or publicly (*All*).
  """
  def describe_document_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDocumentPermission", input, options)
  end

  @doc """
  All associations for the managed nodes.
  """
  def describe_effective_instance_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEffectiveInstanceAssociations", input, options)
  end

  @doc """
  Retrieves the current effective patches (the patch and the approval state) for
  the specified
  patch baseline.

  Applies to patch baselines for Windows only.
  """
  def describe_effective_patches_for_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEffectivePatchesForPatchBaseline", input, options)
  end

  @doc """
  The status of the associations for the managed nodes.
  """
  def describe_instance_associations_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceAssociationsStatus", input, options)
  end

  @doc """
  Provides information about one or more of your managed nodes, including the
  operating system
  platform, SSM Agent version, association status, and IP address.

  This operation does not return
  information for nodes that are either Stopped or Terminated.

  If you specify one or more node IDs, the operation returns information for those
  managed
  nodes. If you don't specify node IDs, it returns information for all your
  managed nodes. If you
  specify a node ID that isn't valid or a node that you don't own, you receive an
  error.

  The `IamRole` field returned for this API operation is the Identity and Access
  Management (IAM) role assigned to on-premises managed nodes. This operation does
  not
  return the IAM role for EC2 instances.
  """
  def describe_instance_information(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceInformation", input, options)
  end

  @doc """
  Retrieves the high-level patch state of one or more managed nodes.
  """
  def describe_instance_patch_states(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstancePatchStates", input, options)
  end

  @doc """
  Retrieves the high-level patch state for the managed nodes in the specified
  patch
  group.
  """
  def describe_instance_patch_states_for_patch_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstancePatchStatesForPatchGroup", input, options)
  end

  @doc """
  Retrieves information about the patches on the specified managed node and their
  state
  relative to the patch baseline being used for the node.
  """
  def describe_instance_patches(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstancePatches", input, options)
  end

  @doc """
  Describes a specific delete inventory operation.
  """
  def describe_inventory_deletions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInventoryDeletions", input, options)
  end

  @doc """
  Retrieves the individual task executions (one per target) for a particular task
  run as part
  of a maintenance window execution.
  """
  def describe_maintenance_window_execution_task_invocations(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeMaintenanceWindowExecutionTaskInvocations",
      input,
      options
    )
  end

  @doc """
  For a given maintenance window execution, lists the tasks that were run.
  """
  def describe_maintenance_window_execution_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindowExecutionTasks", input, options)
  end

  @doc """
  Lists the executions of a maintenance window.

  This includes information about when the
  maintenance window was scheduled to be active, and information about tasks
  registered and run
  with the maintenance window.
  """
  def describe_maintenance_window_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindowExecutions", input, options)
  end

  @doc """
  Retrieves information about upcoming executions of a maintenance window.
  """
  def describe_maintenance_window_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindowSchedule", input, options)
  end

  @doc """
  Lists the targets registered with the maintenance window.
  """
  def describe_maintenance_window_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindowTargets", input, options)
  end

  @doc """
  Lists the tasks in a maintenance window.

  For maintenance window tasks without a specified target, you can't supply values
  for
  `--max-errors` and `--max-concurrency`. Instead, the system inserts a
  placeholder value of `1`, which may be reported in the response to this command.
  These values don't affect the running of your task and can be ignored.
  """
  def describe_maintenance_window_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindowTasks", input, options)
  end

  @doc """
  Retrieves the maintenance windows in an Amazon Web Services account.
  """
  def describe_maintenance_windows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindows", input, options)
  end

  @doc """
  Retrieves information about the maintenance window targets or tasks that a
  managed node is
  associated with.
  """
  def describe_maintenance_windows_for_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMaintenanceWindowsForTarget", input, options)
  end

  @doc """
  Query a set of OpsItems.

  You must have permission in Identity and Access Management (IAM) to query a list
  of OpsItems. For more information, see [Set up OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.

  Operations engineers and IT professionals use Amazon Web Services Systems
  Manager OpsCenter to view, investigate, and
  remediate operational issues impacting the performance and health of their
  Amazon Web Services resources. For
  more information, see [Amazon Web Services Systems Manager OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.
  """
  def describe_ops_items(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOpsItems", input, options)
  end

  @doc """
  Lists the parameters in your Amazon Web Services account or the parameters
  shared with you when you enable
  the
  [Shared](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribeParameters.html#systemsmanager-DescribeParameters-request-Shared)
  option.

  Request results are returned on a best-effort basis. If you specify `MaxResults`
  in the request, the response includes information up to the limit specified. The
  number of items
  returned, however, can be between zero and the value of `MaxResults`. If the
  service
  reaches an internal limit while processing the results, it stops the operation
  and returns the
  matching values up to that point and a `NextToken`. You can specify the
  `NextToken` in a subsequent call to get the next set of results.

  If you change the KMS key alias for the KMS key used to encrypt a parameter,
  then you must also update the key alias the parameter uses to reference KMS.
  Otherwise,
  `DescribeParameters` retrieves whatever the original key alias was
  referencing.
  """
  def describe_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeParameters", input, options)
  end

  @doc """
  Lists the patch baselines in your Amazon Web Services account.
  """
  def describe_patch_baselines(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePatchBaselines", input, options)
  end

  @doc """
  Returns high-level aggregated patch compliance state information for a patch
  group.
  """
  def describe_patch_group_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePatchGroupState", input, options)
  end

  @doc """
  Lists all patch groups that have been registered with patch baselines.
  """
  def describe_patch_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePatchGroups", input, options)
  end

  @doc """
  Lists the properties of available patches organized by product, product family,
  classification, severity, and other properties of available patches.

  You can use the reported
  properties in the filters you specify in requests for operations such as
  `CreatePatchBaseline`, `UpdatePatchBaseline`, `DescribeAvailablePatches`, and
  `DescribePatchBaselines`.

  The following section lists the properties that can be used in filters for each
  major
  operating system type:

  ## Definitions

  ### AMAZON_LINUX

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### AMAZON_LINUX_2

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### CENTOS

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### DEBIAN

  Valid properties: `PRODUCT` | `PRIORITY`

  ### MACOS

  Valid properties: `PRODUCT` | `CLASSIFICATION`

  ### ORACLE_LINUX

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### REDHAT_ENTERPRISE_LINUX

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### SUSE

  Valid properties: `PRODUCT` | `CLASSIFICATION` |
  `SEVERITY`

  ### UBUNTU

  Valid properties: `PRODUCT` | `PRIORITY`

  ### WINDOWS

  Valid properties: `PRODUCT` | `PRODUCT_FAMILY` |
  `CLASSIFICATION` | `MSRC_SEVERITY`
  """
  def describe_patch_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePatchProperties", input, options)
  end

  @doc """
  Retrieves a list of all active sessions (both connected and disconnected) or
  terminated
  sessions from the past 30 days.
  """
  def describe_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSessions", input, options)
  end

  @doc """
  Deletes the association between an OpsItem and a related item.

  For example, this API
  operation can delete an Incident Manager incident from an OpsItem. Incident
  Manager is a capability of
  Amazon Web Services Systems Manager.
  """
  def disassociate_ops_item_related_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateOpsItemRelatedItem", input, options)
  end

  @doc """
  Get detailed information about a particular Automation execution.
  """
  def get_automation_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAutomationExecution", input, options)
  end

  @doc """
  Gets the state of a Amazon Web Services Systems Manager change calendar at the
  current time or a specified time.

  If
  you specify a time, `GetCalendarState` returns the state of the calendar at that
  specific time, and returns the next time that the change calendar state will
  transition. If you
  don't specify a time, `GetCalendarState` uses the current time. Change Calendar
  entries have two possible states: `OPEN` or `CLOSED`.

  If you specify more than one calendar in a request, the command returns the
  status of
  `OPEN` only if all calendars in the request are open. If one or more calendars
  in the
  request are closed, the status returned is `CLOSED`.

  For more information about Change Calendar, a capability of Amazon Web Services
  Systems Manager, see [Amazon Web Services Systems Manager Change Calendar](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar.html)
  in the *Amazon Web Services Systems Manager User Guide*.
  """
  def get_calendar_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCalendarState", input, options)
  end

  @doc """
  Returns detailed information about command execution for an invocation or
  plugin.

  `GetCommandInvocation` only gives the execution status of a plugin in a
  document.
  To get the command execution status on a specific managed node, use
  `ListCommandInvocations`. To get the command execution status across managed
  nodes,
  use `ListCommands`.
  """
  def get_command_invocation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCommandInvocation", input, options)
  end

  @doc """
  Retrieves the Session Manager connection status for a managed node to determine
  whether it is running
  and ready to receive Session Manager connections.
  """
  def get_connection_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConnectionStatus", input, options)
  end

  @doc """
  Retrieves the default patch baseline.

  Amazon Web Services Systems Manager supports creating multiple default patch
  baselines. For example, you can create a default patch baseline for each
  operating system.

  If you don't specify an operating system value, the default patch baseline for
  Windows is
  returned.
  """
  def get_default_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDefaultPatchBaseline", input, options)
  end

  @doc """
  Retrieves the current snapshot for the patch baseline the managed node uses.

  This API is
  primarily used by the `AWS-RunPatchBaseline` Systems Manager document (SSM
  document).

  If you run the command locally, such as with the Command Line Interface (CLI),
  the system attempts to use your local Amazon Web Services credentials and the
  operation fails. To avoid
  this, you can run the command in the Amazon Web Services Systems Manager
  console. Use Run Command, a capability of
  Amazon Web Services Systems Manager, with an SSM document that enables you to
  target a managed node with a script or
  command. For example, run the command using the `AWS-RunShellScript` document or
  the
  `AWS-RunPowerShellScript` document.
  """
  def get_deployable_patch_snapshot_for_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDeployablePatchSnapshotForInstance", input, options)
  end

  @doc """
  Gets the contents of the specified Amazon Web Services Systems Manager document
  (SSM document).
  """
  def get_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDocument", input, options)
  end

  @doc """
  Query inventory information.

  This includes managed node status, such as `Stopped`
  or `Terminated`.
  """
  def get_inventory(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInventory", input, options)
  end

  @doc """
  Return a list of inventory type names for the account, or return a list of
  attribute names
  for a specific Inventory item type.
  """
  def get_inventory_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInventorySchema", input, options)
  end

  @doc """
  Retrieves a maintenance window.
  """
  def get_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMaintenanceWindow", input, options)
  end

  @doc """
  Retrieves details about a specific a maintenance window execution.
  """
  def get_maintenance_window_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMaintenanceWindowExecution", input, options)
  end

  @doc """
  Retrieves the details about a specific task run as part of a maintenance window
  execution.
  """
  def get_maintenance_window_execution_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMaintenanceWindowExecutionTask", input, options)
  end

  @doc """
  Retrieves information about a specific task running on a specific target.
  """
  def get_maintenance_window_execution_task_invocation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "GetMaintenanceWindowExecutionTaskInvocation",
      input,
      options
    )
  end

  @doc """
  Retrieves the details of a maintenance window task.

  For maintenance window tasks without a specified target, you can't supply values
  for
  `--max-errors` and `--max-concurrency`. Instead, the system inserts a
  placeholder value of `1`, which may be reported in the response to this command.
  These values don't affect the running of your task and can be ignored.

  To retrieve a list of tasks in a maintenance window, instead use the
  `DescribeMaintenanceWindowTasks` command.
  """
  def get_maintenance_window_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMaintenanceWindowTask", input, options)
  end

  @doc """
  Get information about an OpsItem by using the ID.

  You must have permission in Identity and Access Management (IAM) to view
  information about an OpsItem. For more information,
  see [Set up
  OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html)
  in the *Amazon Web Services Systems Manager User Guide*.

  Operations engineers and IT professionals use Amazon Web Services Systems
  Manager OpsCenter to view, investigate, and
  remediate operational issues impacting the performance and health of their
  Amazon Web Services resources. For
  more information, see [Amazon Web Services Systems Manager OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.
  """
  def get_ops_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOpsItem", input, options)
  end

  @doc """
  View operational metadata related to an application in Application Manager.
  """
  def get_ops_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOpsMetadata", input, options)
  end

  @doc """
  View a summary of operations metadata (OpsData) based on specified filters and
  aggregators.

  OpsData can include information about Amazon Web Services Systems Manager
  OpsCenter operational workitems (OpsItems) as
  well as information about any Amazon Web Services resource or service configured
  to report OpsData to Amazon Web Services Systems Manager
  Explorer.
  """
  def get_ops_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOpsSummary", input, options)
  end

  @doc """
  Get information about a single parameter by specifying the parameter name.

  To get information about more than one parameter at a time, use the
  `GetParameters` operation.
  """
  def get_parameter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetParameter", input, options)
  end

  @doc """
  Retrieves the history of all changes to a parameter.

  If you change the KMS key alias for the KMS key used to encrypt a parameter,
  then you must also update the key alias the parameter uses to reference KMS.
  Otherwise,
  `GetParameterHistory` retrieves whatever the original key alias was
  referencing.
  """
  def get_parameter_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetParameterHistory", input, options)
  end

  @doc """
  Get information about one or more parameters by specifying multiple parameter
  names.

  To get information about a single parameter, you can use the `GetParameter`
  operation instead.
  """
  def get_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetParameters", input, options)
  end

  @doc """
  Retrieve information about one or more parameters in a specific hierarchy.

  Request results are returned on a best-effort basis. If you specify `MaxResults`
  in the request, the response includes information up to the limit specified. The
  number of items
  returned, however, can be between zero and the value of `MaxResults`. If the
  service
  reaches an internal limit while processing the results, it stops the operation
  and returns the
  matching values up to that point and a `NextToken`. You can specify the
  `NextToken` in a subsequent call to get the next set of results.
  """
  def get_parameters_by_path(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetParametersByPath", input, options)
  end

  @doc """
  Retrieves information about a patch baseline.
  """
  def get_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPatchBaseline", input, options)
  end

  @doc """
  Retrieves the patch baseline that should be used for the specified patch group.
  """
  def get_patch_baseline_for_patch_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPatchBaselineForPatchGroup", input, options)
  end

  @doc """
  Returns an array of the `Policy` object.
  """
  def get_resource_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicies", input, options)
  end

  @doc """

  `ServiceSetting` is an account-level setting for an Amazon Web Services service.

  This setting
  defines how a user interacts with or uses a service or a feature of a service.
  For example, if an
  Amazon Web Services service charges money to the account based on feature or
  service usage, then the Amazon Web Services
  service team might create a default setting of `false`. This means the user
  can't use
  this feature unless they change the setting to `true` and intentionally opt in
  for a
  paid feature.

  Services map a `SettingId` object to a setting value. Amazon Web Services
  services teams define
  the default value for a `SettingId`. You can't create a new `SettingId`,
  but you can overwrite the default value if you have the
  `ssm:UpdateServiceSetting`
  permission for the setting. Use the `UpdateServiceSetting` API operation to
  change the default setting. Or use the `ResetServiceSetting` to change the value
  back to the original value defined by the Amazon Web Services service team.

  Query the current service setting for the Amazon Web Services account.
  """
  def get_service_setting(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceSetting", input, options)
  end

  @doc """
  A parameter label is a user-defined alias to help you manage different versions
  of a
  parameter.

  When you modify a parameter, Amazon Web Services Systems Manager automatically
  saves a new version and
  increments the version number by one. A label can help you remember the purpose
  of a parameter
  when there are multiple versions.

  Parameter labels have the following requirements and restrictions.

    *
  A version of a parameter can have a maximum of 10 labels.

    *
  You can't attach the same label to different versions of the same parameter. For
  example,
  if version 1 has the label Production, then you can't attach Production to
  version 2.

    *
  You can move a label from one version of a parameter to another.

    *
  You can't create a label when you create a new parameter. You must attach a
  label to a
  specific version of a parameter.

    *
  If you no longer want to use a parameter label, then you can either delete it or
  move it
  to a different version of a parameter.

    *
  A label can have a maximum of 100 characters.

    *
  Labels can contain letters (case sensitive), numbers, periods (.), hyphens (-),
  or
  underscores (_).

    *
  Labels can't begin with a number, "`aws`" or "`ssm`" (not case
  sensitive). If a label fails to meet these requirements, then the label isn't
  associated with a
  parameter and the system displays it in the list of InvalidLabels.
  """
  def label_parameter_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "LabelParameterVersion", input, options)
  end

  @doc """
  Retrieves all versions of an association for a specific association ID.
  """
  def list_association_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssociationVersions", input, options)
  end

  @doc """
  Returns all State Manager associations in the current Amazon Web Services
  account and Amazon Web Services Region.

  You
  can limit the results to a specific State Manager association document or
  managed node by
  specifying a filter. State Manager is a capability of Amazon Web Services
  Systems Manager.
  """
  def list_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssociations", input, options)
  end

  @doc """
  An invocation is copy of a command sent to a specific managed node.

  A command can apply to
  one or more managed nodes. A command invocation applies to one managed node. For
  example, if a
  user runs `SendCommand` against three managed nodes, then a command invocation
  is
  created for each requested managed node ID. `ListCommandInvocations` provide
  status
  about command execution.
  """
  def list_command_invocations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCommandInvocations", input, options)
  end

  @doc """
  Lists the commands requested by users of the Amazon Web Services account.
  """
  def list_commands(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCommands", input, options)
  end

  @doc """
  For a specified resource ID, this API operation returns a list of compliance
  statuses for
  different resource types.

  Currently, you can only specify one resource ID per call. List results
  depend on the criteria specified in the filter.
  """
  def list_compliance_items(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComplianceItems", input, options)
  end

  @doc """
  Returns a summary count of compliant and non-compliant resources for a
  compliance type.

  For
  example, this call can return State Manager associations, patches, or custom
  compliance types
  according to the filter criteria that you specify.
  """
  def list_compliance_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComplianceSummaries", input, options)
  end

  @doc """
  Information about approval reviews for a version of a change template in Change
  Manager.
  """
  def list_document_metadata_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDocumentMetadataHistory", input, options)
  end

  @doc """
  List all versions for a document.
  """
  def list_document_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDocumentVersions", input, options)
  end

  @doc """
  Returns all Systems Manager (SSM) documents in the current Amazon Web Services
  account and Amazon Web Services Region.

  You can
  limit the results of this request by using a filter.
  """
  def list_documents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDocuments", input, options)
  end

  @doc """
  A list of inventory items returned by the request.
  """
  def list_inventory_entries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInventoryEntries", input, options)
  end

  @doc """
  Returns a list of all OpsItem events in the current Amazon Web Services Region
  and Amazon Web Services account.

  You can
  limit the results to events associated with specific OpsItems by specifying a
  filter.
  """
  def list_ops_item_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOpsItemEvents", input, options)
  end

  @doc """
  Lists all related-item resources associated with a Systems Manager OpsCenter
  OpsItem.

  OpsCenter is a
  capability of Amazon Web Services Systems Manager.
  """
  def list_ops_item_related_items(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOpsItemRelatedItems", input, options)
  end

  @doc """
  Amazon Web Services Systems Manager calls this API operation when displaying all
  Application Manager OpsMetadata objects or
  blobs.
  """
  def list_ops_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOpsMetadata", input, options)
  end

  @doc """
  Returns a resource-level summary count.

  The summary includes information about compliant and
  non-compliant statuses and detailed compliance-item severity counts, according
  to the filter
  criteria you specify.
  """
  def list_resource_compliance_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceComplianceSummaries", input, options)
  end

  @doc """
  Lists your resource data sync configurations.

  Includes information about the last time a
  sync attempted to start, the last sync status, and the last time a sync
  successfully
  completed.

  The number of sync configurations might be too large to return using a single
  call to
  `ListResourceDataSync`. You can limit the number of sync configurations returned
  by
  using the `MaxResults` parameter. To determine whether there are more sync
  configurations to list, check the value of `NextToken` in the output. If there
  are
  more sync configurations to list, you can request them by specifying the
  `NextToken`
  returned in the call to the parameter of a subsequent call.
  """
  def list_resource_data_sync(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceDataSync", input, options)
  end

  @doc """
  Returns a list of the tags assigned to the specified resource.

  For information about the ID format for each supported resource type, see
  `AddTagsToResource`.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Shares a Amazon Web Services Systems Manager document (SSM document)publicly or
  privately.

  If you share a document
  privately, you must specify the Amazon Web Services user IDs for those people
  who can use the document. If
  you share a document publicly, you must specify *All* as the account
  ID.
  """
  def modify_document_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDocumentPermission", input, options)
  end

  @doc """
  Registers a compliance type and other compliance details on a designated
  resource.

  This
  operation lets you register custom compliance details with a resource. This call
  overwrites
  existing compliance information on the resource, so you must provide a full list
  of compliance
  items each time that you send the request.

  ComplianceType can be one of the following:

    *
  ExecutionId: The execution ID when the patch, association, or custom compliance
  item was
  applied.

    *
  ExecutionType: Specify patch, association, or Custom:`string`.

    *
  ExecutionTime. The time the patch, association, or custom compliance item was
  applied to
  the managed node.

    *
  Id: The patch, association, or custom compliance ID.

    *
  Title: A title.

    *
  Status: The status of the compliance item. For example, `approved` for patches,
  or `Failed` for associations.

    *
  Severity: A patch severity. For example, `Critical`.

    *
  DocumentName: An SSM document name. For example, `AWS-RunPatchBaseline`.

    *
  DocumentVersion: An SSM document version number. For example, 4.

    *
  Classification: A patch classification. For example, `security updates`.

    *
  PatchBaselineId: A patch baseline ID.

    *
  PatchSeverity: A patch severity. For example, `Critical`.

    *
  PatchState: A patch state. For example, `InstancesWithFailedPatches`.

    *
  PatchGroup: The name of a patch group.

    *
  InstalledTime: The time the association, patch, or custom compliance item was
  applied to
  the resource. Specify the time by using the following format:
  `yyyy-MM-dd'T'HH:mm:ss'Z'`
  """
  def put_compliance_items(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutComplianceItems", input, options)
  end

  @doc """
  Bulk update custom inventory items on one or more managed nodes.

  The request adds an
  inventory item, if it doesn't already exist, or updates an inventory item, if it
  does
  exist.
  """
  def put_inventory(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutInventory", input, options)
  end

  @doc """
  Add a parameter to the system.
  """
  def put_parameter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutParameter", input, options)
  end

  @doc """
  Creates or updates a Systems Manager resource policy.

  A resource policy helps you to define the
  IAM entity (for example, an Amazon Web Services account) that can manage your
  Systems Manager resources.
  The following resources support Systems Manager resource policies.

    *

  `OpsItemGroup` - The resource policy for `OpsItemGroup` enables
  Amazon Web Services accounts to view and interact with OpsCenter operational
  work items (OpsItems).

    *

  `Parameter` - The resource policy is used to share a parameter with other
  accounts using Resource Access Manager (RAM).

  To share a parameter, it must be in the advanced parameter tier. For information
  about
  parameter tiers, see [Managing parameter
  tiers](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html).
  For information about changing an existing standard parameter to an
  advanced parameter, see [Changing a standard parameter to an advanced parameter](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html#parameter-store-advanced-parameters-enabling).

  To share a `SecureString` parameter, it must be encrypted with a customer
  managed key, and you must share the key separately through Key Management
  Service. Amazon Web Services managed keys cannot be shared. Parameters encrypted
  with the default Amazon Web Services managed key can be updated to use a
  customer managed key instead. For KMS key definitions, see [KMS concepts](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html)
  in the
  *Key Management Service Developer Guide*.

  While you can share a parameter using the Systems Manager `PutResourcePolicy`
  operation,
  we recommend using Resource Access Manager (RAM) instead. This is because using
  `PutResourcePolicy` requires the extra step of promoting the parameter to a
  standard RAM Resource Share using the RAM
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html) API operation. Otherwise, the parameter won't
  be returned by the Systems Manager
  [DescribeParameters](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribeParameters.html)
  API operation using the `--shared` option.

  For more information, see [Sharing a parameter](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-shared-parameters.html#share)
  in the *Amazon Web Services Systems Manager User Guide*
  """
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Defines the default patch baseline for the relevant operating system.

  To reset the Amazon Web Services-predefined patch baseline as the default,
  specify the full patch baseline
  Amazon Resource Name (ARN) as the baseline ID value. For example, for CentOS,
  specify
  `arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed` instead
  of
  `pb-0574b43a65ea646ed`.
  """
  def register_default_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterDefaultPatchBaseline", input, options)
  end

  @doc """
  Registers a patch baseline for a patch group.
  """
  def register_patch_baseline_for_patch_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterPatchBaselineForPatchGroup", input, options)
  end

  @doc """
  Registers a target with a maintenance window.
  """
  def register_target_with_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterTargetWithMaintenanceWindow", input, options)
  end

  @doc """
  Adds a new task to a maintenance window.
  """
  def register_task_with_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterTaskWithMaintenanceWindow", input, options)
  end

  @doc """
  Removes tag keys from the specified resource.
  """
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTagsFromResource", input, options)
  end

  @doc """

  `ServiceSetting` is an account-level setting for an Amazon Web Services service.

  This setting
  defines how a user interacts with or uses a service or a feature of a service.
  For example, if an
  Amazon Web Services service charges money to the account based on feature or
  service usage, then the Amazon Web Services
  service team might create a default setting of "false". This means the user
  can't use this
  feature unless they change the setting to "true" and intentionally opt in for a
  paid
  feature.

  Services map a `SettingId` object to a setting value. Amazon Web Services
  services teams define
  the default value for a `SettingId`. You can't create a new `SettingId`,
  but you can overwrite the default value if you have the
  `ssm:UpdateServiceSetting`
  permission for the setting. Use the `GetServiceSetting` API operation to view
  the
  current value. Use the `UpdateServiceSetting` API operation to change the
  default
  setting.

  Reset the service setting for the account to the default value as provisioned by
  the Amazon Web Services
  service team.
  """
  def reset_service_setting(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetServiceSetting", input, options)
  end

  @doc """
  Reconnects a session to a managed node after it has been disconnected.

  Connections can be
  resumed for disconnected sessions, but not terminated sessions.

  This command is primarily for use by client machines to automatically reconnect
  during
  intermittent network issues. It isn't intended for any other use.
  """
  def resume_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResumeSession", input, options)
  end

  @doc """
  Sends a signal to an Automation execution to change the current behavior or
  status of the
  execution.
  """
  def send_automation_signal(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendAutomationSignal", input, options)
  end

  @doc """
  Runs commands on one or more managed nodes.
  """
  def send_command(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendCommand", input, options)
  end

  @doc """
  Runs an association immediately and only one time.

  This operation can be helpful when
  troubleshooting associations.
  """
  def start_associations_once(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartAssociationsOnce", input, options)
  end

  @doc """
  Initiates execution of an Automation runbook.
  """
  def start_automation_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartAutomationExecution", input, options)
  end

  @doc """
  Creates a change request for Change Manager.

  The Automation runbooks specified in the
  change request run only after all required approvals for the change request have
  been
  received.
  """
  def start_change_request_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartChangeRequestExecution", input, options)
  end

  @doc """
  Initiates a connection to a target (for example, a managed node) for a Session
  Manager session.

  Returns a URL and token that can be used to open a WebSocket connection for
  sending input and
  receiving outputs.

  Amazon Web Services CLI usage: `start-session` is an interactive command that
  requires the Session Manager
  plugin to be installed on the client machine making the call. For information,
  see [Install the Session Manager plugin for the Amazon Web Services
  CLI](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html)
  in the *Amazon Web Services Systems Manager User Guide*.

  Amazon Web Services Tools for PowerShell usage: Start-SSMSession isn't currently
  supported by Amazon Web Services Tools
  for PowerShell on Windows local machines.
  """
  def start_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartSession", input, options)
  end

  @doc """
  Stop an Automation that is currently running.
  """
  def stop_automation_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopAutomationExecution", input, options)
  end

  @doc """
  Permanently ends a session and closes the data connection between the Session
  Manager client and
  SSM Agent on the managed node.

  A terminated session can't be resumed.
  """
  def terminate_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateSession", input, options)
  end

  @doc """
  Remove a label or labels from a parameter.
  """
  def unlabel_parameter_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnlabelParameterVersion", input, options)
  end

  @doc """
  Updates an association.

  You can update the association name and version, the document
  version, schedule, parameters, and Amazon Simple Storage Service (Amazon S3)
  output. When you
  call `UpdateAssociation`, the system removes all optional parameters from the
  request
  and overwrites the association with null values for those parameters. This is by
  design. You must
  specify all optional parameters in the call, even if you are not changing the
  parameters. This
  includes the `Name` parameter. Before calling this API action, we recommend that
  you
  call the `DescribeAssociation` API operation and make a note of all optional
  parameters required for your `UpdateAssociation` call.

  In order to call this API operation, a user, group, or role must be granted
  permission to
  call the `DescribeAssociation` API operation. If you don't have permission to
  call `DescribeAssociation`, then you receive the following error:

  ```
  An error
  occurred (AccessDeniedException) when calling the UpdateAssociation operation:
  User:
  isn't authorized to perform: ssm:DescribeAssociation on resource:

  ```

  When you update an association, the association immediately runs against the
  specified
  targets. You can add the `ApplyOnlyAtCronInterval` parameter to run the
  association
  during the next schedule run.
  """
  def update_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAssociation", input, options)
  end

  @doc """
  Updates the status of the Amazon Web Services Systems Manager document (SSM
  document) associated with the specified
  managed node.

  `UpdateAssociationStatus` is primarily used by the Amazon Web Services Systems
  Manager Agent (SSM Agent) to
  report status updates about your associations and is only used for associations
  created with the
  `InstanceId` legacy parameter.
  """
  def update_association_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAssociationStatus", input, options)
  end

  @doc """
  Updates one or more values for an SSM document.
  """
  def update_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDocument", input, options)
  end

  @doc """
  Set the default version of a document.

  If you change a document version for a State Manager association, Systems
  Manager immediately runs
  the association unless you previously specifed the `apply-only-at-cron-interval`
  parameter.
  """
  def update_document_default_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDocumentDefaultVersion", input, options)
  end

  @doc """
  Updates information related to approval reviews for a specific version of a
  change template
  in Change Manager.
  """
  def update_document_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDocumentMetadata", input, options)
  end

  @doc """
  Updates an existing maintenance window.

  Only specified parameters are modified.

  The value you specify for `Duration` determines the specific end time for the
  maintenance window based on the time it begins. No maintenance window tasks are
  permitted to
  start after the resulting endtime minus the number of hours you specify for
  `Cutoff`.
  For example, if the maintenance window starts at 3 PM, the duration is three
  hours, and the
  value you specify for `Cutoff` is one hour, no maintenance window tasks can
  start
  after 5 PM.
  """
  def update_maintenance_window(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMaintenanceWindow", input, options)
  end

  @doc """
  Modifies the target of an existing maintenance window.

  You
  can change the following:

    *
  Name

    *
  Description

    *
  Owner

    *
  IDs for an ID target

    *
  Tags for a Tag target

    *
  From any supported tag type to another. The three supported tag types are ID
  target, Tag
  target, and resource group. For more information, see `Target`.

  If a parameter is null, then the corresponding field isn't modified.
  """
  def update_maintenance_window_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMaintenanceWindowTarget", input, options)
  end

  @doc """
  Modifies a task assigned to a maintenance window.

  You can't change the task type, but you
  can change the following values:

    *

  `TaskARN`. For example, you can change a `RUN_COMMAND` task from
  `AWS-RunPowerShellScript` to `AWS-RunShellScript`.

    *

  `ServiceRoleArn`

    *

  `TaskInvocationParameters`

    *

  `Priority`

    *

  `MaxConcurrency`

    *

  `MaxErrors`

  One or more targets must be specified for maintenance window Run Command-type
  tasks.
  Depending on the task, targets are optional for other maintenance window task
  types (Automation,
  Lambda, and Step Functions). For more information about running tasks
  that don't specify targets, see [Registering maintenance window tasks without
  targets](https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.

  If the value for a parameter in `UpdateMaintenanceWindowTask` is null, then the
  corresponding field isn't modified. If you set `Replace` to true, then all
  fields
  required by the `RegisterTaskWithMaintenanceWindow` operation are required for
  this request. Optional fields that aren't specified are set to null.

  When you update a maintenance window task that has options specified in
  `TaskInvocationParameters`, you must provide again all the
  `TaskInvocationParameters` values that you want to retain. The values you don't
  specify again are removed. For example, suppose that when you registered a Run
  Command task, you
  specified `TaskInvocationParameters` values for `Comment`,
  `NotificationConfig`, and `OutputS3BucketName`. If you update the
  maintenance window task and specify only a different `OutputS3BucketName` value,
  the
  values for `Comment` and `NotificationConfig` are removed.
  """
  def update_maintenance_window_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMaintenanceWindowTask", input, options)
  end

  @doc """
  Changes the Identity and Access Management (IAM) role that is assigned to the
  on-premises server, edge device, or virtual machines (VM).

  IAM roles are first
  assigned to these hybrid nodes during the activation process. For more
  information, see `CreateActivation`.
  """
  def update_managed_instance_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateManagedInstanceRole", input, options)
  end

  @doc """
  Edit or change an OpsItem.

  You must have permission in Identity and Access Management (IAM) to update an
  OpsItem. For more information, see [Set up OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.

  Operations engineers and IT professionals use Amazon Web Services Systems
  Manager OpsCenter to view, investigate, and
  remediate operational issues impacting the performance and health of their
  Amazon Web Services resources. For
  more information, see [Amazon Web Services Systems Manager OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html)
  in the
  *Amazon Web Services Systems Manager User Guide*.
  """
  def update_ops_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateOpsItem", input, options)
  end

  @doc """
  Amazon Web Services Systems Manager calls this API operation when you edit
  OpsMetadata in Application Manager.
  """
  def update_ops_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateOpsMetadata", input, options)
  end

  @doc """
  Modifies an existing patch baseline.

  Fields not specified in the request are left
  unchanged.

  For information about valid key-value pairs in `PatchFilters` for each supported
  operating system type, see `PatchFilter`.
  """
  def update_patch_baseline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePatchBaseline", input, options)
  end

  @doc """
  Update a resource data sync.

  After you create a resource data sync for a Region, you can't
  change the account options for that sync. For example, if you create a sync in
  the us-east-2
  (Ohio) Region and you choose the `Include only the current account` option, you
  can't
  edit that sync later and choose the

  ```
  Include all accounts from my Organizations
  configuration
  ```

  option. Instead, you must delete the first resource data sync, and create a
  new one.

  This API operation only supports a resource data sync that was created with a
  SyncFromSource `SyncType`.
  """
  def update_resource_data_sync(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateResourceDataSync", input, options)
  end

  @doc """

  `ServiceSetting` is an account-level setting for an Amazon Web Services service.

  This setting
  defines how a user interacts with or uses a service or a feature of a service.
  For example, if an
  Amazon Web Services service charges money to the account based on feature or
  service usage, then the Amazon Web Services
  service team might create a default setting of "false". This means the user
  can't use this
  feature unless they change the setting to "true" and intentionally opt in for a
  paid
  feature.

  Services map a `SettingId` object to a setting value. Amazon Web Services
  services teams define
  the default value for a `SettingId`. You can't create a new `SettingId`,
  but you can overwrite the default value if you have the
  `ssm:UpdateServiceSetting`
  permission for the setting. Use the `GetServiceSetting` API operation to view
  the
  current value. Or, use the `ResetServiceSetting` to change the value back to the
  original value defined by the Amazon Web Services service team.

  Update the service setting for the account.
  """
  def update_service_setting(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceSetting", input, options)
  end
end
