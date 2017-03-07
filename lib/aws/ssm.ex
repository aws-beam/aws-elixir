# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.SSM do
  @moduledoc """
  Amazon EC2 Systems Manager is a collection of capabilities that helps you
  automate management tasks such as collecting system inventory, applying
  operating system (OS) patches, automating the creation of Amazon Machine
  Images (AMIs), and configuring operating systems (OSs) and applications at
  scale. Systems Manager works with managed instances: Amazon EC2 instances
  and servers or virtual machines (VMs) in your on-premises environment that
  are configured for Systems Manager.

  This references is intended to be used with the EC2 Systems Manager User
  Guide
  ([Linux](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/systems-manager.html))
  ([Windows](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/systems-manager.html)).

  To get started, verify prerequisites and configure managed instances
  ([Linux](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/systems-manager-prereqs.html))
  ([Windows](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/systems-manager-prereqs.html)).
  """

  @doc """
  Adds or overwrites one or more tags for the specified resource. Tags are
  metadata that you assign to your managed instances. Tags enable you to
  categorize your managed instances in different ways, for example, by
  purpose, owner, or environment. Each tag consists of a key and an optional
  value, both of which you define. For example, you could define a set of
  tags for your account's managed instances that helps you track each
  instance's owner and stack level. For example: Key=Owner and Value=DbAdmin,
  SysAdmin, or Dev. Or Key=Stack and Value=Production, Pre-Production, or
  Test. Each resource can have a maximum of 10 tags.

  We recommend that you devise a set of tag keys that meets your needs for
  each resource type. Using a consistent set of tag keys makes it easier for
  you to manage your resources. You can search and filter the resources based
  on the tags you add. Tags don't have any semantic meaning to Amazon EC2 and
  are interpreted strictly as a string of characters.

  For more information about tags, see [Tagging Your Amazon EC2
  Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
  in the Amazon EC2 User Guide.
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
  Registers your on-premises server or virtual machine with Amazon EC2 so
  that you can manage these resources using Run Command. An on-premises
  server or virtual machine that has been registered with EC2 is called a
  managed instance. For more information about activations, see [Setting Up
  Managed Instances
  (Linux)](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/managed-instances.html)
  or [Setting Up Managed Instances
  (Windows)](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/managed-instances.html)
  in the Amazon EC2 User Guide.
  """
  def create_activation(client, input, options \\ []) do
    request(client, "CreateActivation", input, options)
  end

  @doc """
  Associates the specified SSM document with the specified instances or
  targets.

  When you associate an SSM document with one or more instances using
  instance IDs or tags, the SSM agent running on the instance processes the
  document and configures the instance as specified.

  If you associate a document with an instance that already has an associated
  document, the system throws the AssociationAlreadyExists exception.
  """
  def create_association(client, input, options \\ []) do
    request(client, "CreateAssociation", input, options)
  end

  @doc """
  Associates the specified SSM document with the specified instances or
  targets.

  When you associate an SSM document with one or more instances using
  instance IDs or tags, the SSM agent running on the instance processes the
  document and configures the instance as specified.

  If you associate a document with an instance that already has an associated
  document, the system throws the AssociationAlreadyExists exception.
  """
  def create_association_batch(client, input, options \\ []) do
    request(client, "CreateAssociationBatch", input, options)
  end

  @doc """
  Creates an SSM document.

  After you create an SSM document, you can use CreateAssociation to
  associate it with one or more running instances.
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
  """
  def create_patch_baseline(client, input, options \\ []) do
    request(client, "CreatePatchBaseline", input, options)
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
  Disassociates the specified SSM document from the specified instance.

  When you disassociate an SSM document from an instance, it does not change
  the configuration of the instance. To change the configuration state of an
  instance after you disassociate a document, you must create a new document
  with the desired configuration and associate it with the instance.
  """
  def delete_association(client, input, options \\ []) do
    request(client, "DeleteAssociation", input, options)
  end

  @doc """
  Deletes the SSM document and all instance associations to the document.

  Before you delete the SSM document, we recommend that you use
  DeleteAssociation to disassociate all instances that are associated with
  the document.
  """
  def delete_document(client, input, options \\ []) do
    request(client, "DeleteDocument", input, options)
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
  Deletes a patch baseline.
  """
  def delete_patch_baseline(client, input, options \\ []) do
    request(client, "DeletePatchBaseline", input, options)
  end

  @doc """
  Removes the server or virtual machine from the list of registered servers.
  You can reregister the instance again at any time. If you don’t plan to use
  Run Command on the server, we suggest uninstalling the SSM agent first.
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
  Describes the associations for the specified SSM document or instance.
  """
  def describe_association(client, input, options \\ []) do
    request(client, "DescribeAssociation", input, options)
  end

  @doc """
  Provides details about all active and terminated Automation executions.
  """
  def describe_automation_executions(client, input, options \\ []) do
    request(client, "DescribeAutomationExecutions", input, options)
  end

  @doc """
  Lists all patches that could possibly be included in a patch baseline.
  """
  def describe_available_patches(client, input, options \\ []) do
    request(client, "DescribeAvailablePatches", input, options)
  end

  @doc """
  Describes the specified SSM document.
  """
  def describe_document(client, input, options \\ []) do
    request(client, "DescribeDocument", input, options)
  end

  @doc """
  Describes the permissions for an SSM document. If you created the document,
  you are the owner. If a document is shared, it can either be shared
  privately (by specifying a user’s AWS account ID) or publicly (*All*).
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
  for the specified patch baseline.
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
  agent version (Linux), status etc. If you specify one or more instance IDs,
  it returns information for those instances. If you do not specify instance
  IDs, it returns information for all your instances. If you specify an
  instance ID that is not valid or an instance that you do not own, you
  receive an error.
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
  Retrieves the individual task executions (one per target) for a particular
  task executed as part of a Maintenance Window execution.
  """
  def describe_maintenance_window_execution_task_invocations(client, input, options \\ []) do
    request(client, "DescribeMaintenanceWindowExecutionTaskInvocations", input, options)
  end

  @doc """
  For a given Maintenance Window execution, lists the tasks that were
  executed.
  """
  def describe_maintenance_window_execution_tasks(client, input, options \\ []) do
    request(client, "DescribeMaintenanceWindowExecutionTasks", input, options)
  end

  @doc """
  Lists the executions of a Maintenance Window (meaning, information about
  when the Maintenance Window was scheduled to be active and information
  about tasks registered and run with the Maintenance Window).
  """
  def describe_maintenance_window_executions(client, input, options \\ []) do
    request(client, "DescribeMaintenanceWindowExecutions", input, options)
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
  Get information about a parameter.
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
  Retrieves the default patch baseline.
  """
  def get_default_patch_baseline(client, input, options \\ []) do
    request(client, "GetDefaultPatchBaseline", input, options)
  end

  @doc """
  Retrieves the current snapshot for the patch baseline the instance uses.
  This API is primarily used by the AWS-ApplyPatchBaseline Systems Manager
  document.
  """
  def get_deployable_patch_snapshot_for_instance(client, input, options \\ []) do
    request(client, "GetDeployablePatchSnapshotForInstance", input, options)
  end

  @doc """
  Gets the contents of the specified SSM document.
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
  Retrieves details about a specific task executed as part of a Maintenance
  Window execution.
  """
  def get_maintenance_window_execution(client, input, options \\ []) do
    request(client, "GetMaintenanceWindowExecution", input, options)
  end

  @doc """
  Retrieves the details about a specific task executed as part of a
  Maintenance Window execution.
  """
  def get_maintenance_window_execution_task(client, input, options \\ []) do
    request(client, "GetMaintenanceWindowExecutionTask", input, options)
  end

  @doc """
  Query a list of all parameters used by the AWS account.
  """
  def get_parameter_history(client, input, options \\ []) do
    request(client, "GetParameterHistory", input, options)
  end

  @doc """
  Get a list of parameters used by the AWS account.&gt;
  """
  def get_parameters(client, input, options \\ []) do
    request(client, "GetParameters", input, options)
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
  Lists the associations for the specified SSM document or instance.
  """
  def list_associations(client, input, options \\ []) do
    request(client, "ListAssociations", input, options)
  end

  @doc """
  An invocation is copy of a command sent to a specific instance. A command
  can apply to one or more instances. A command invocation applies to one
  instance. For example, if a user executes SendCommand against three
  instances, then a command invocation is created for each requested instance
  ID. ListCommandInvocations provide status about command execution.
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
  List all versions for a document.
  """
  def list_document_versions(client, input, options \\ []) do
    request(client, "ListDocumentVersions", input, options)
  end

  @doc """
  Describes one or more of your SSM documents.
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
  Returns a list of the tags assigned to the specified resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Share a document publicly or privately. If you share a document privately,
  you must specify the AWS user account IDs for those people who can use the
  document. If you share a document publicly, you must specify *All* as the
  account ID.
  """
  def modify_document_permission(client, input, options \\ []) do
    request(client, "ModifyDocumentPermission", input, options)
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
  Add one or more paramaters to the system.
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
  Executes commands on one or more remote instances.
  """
  def send_command(client, input, options \\ []) do
    request(client, "SendCommand", input, options)
  end

  @doc """
  Initiates execution of an Automation document.
  """
  def start_automation_execution(client, input, options \\ []) do
    request(client, "StartAutomationExecution", input, options)
  end

  @doc """
  Stop an Automation that is currently executing.
  """
  def stop_automation_execution(client, input, options \\ []) do
    request(client, "StopAutomationExecution", input, options)
  end

  @doc """
  Updates an association. You can only update the document version, schedule,
  parameters, and Amazon S3 output of an association.
  """
  def update_association(client, input, options \\ []) do
    request(client, "UpdateAssociation", input, options)
  end

  @doc """
  Updates the status of the SSM document associated with the specified
  instance.
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
  Assigns or changes an Amazon Identity and Access Management (IAM) role to
  the managed instance.
  """
  def update_managed_instance_role(client, input, options \\ []) do
    request(client, "UpdateManagedInstanceRole", input, options)
  end

  @doc """
  Modifies an existing patch baseline. Fields not specified in the request
  are left unchanged.
  """
  def update_patch_baseline(client, input, options \\ []) do
    request(client, "UpdatePatchBaseline", input, options)
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
