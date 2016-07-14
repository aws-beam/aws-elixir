# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.SSM do
  @moduledoc """
  This is the Amazon Simple Systems Manager (SSM) API Reference. SSM enables
  you to remotely manage the configuration of your on-premises servers and
  virtual machines (VMs) and your Amazon EC2 instances using scripts,
  commands, or the Amazon EC2 console. SSM includes an on-demand solution
  called *Amazon EC2 Run Command* and a lightweight instance configuration
  solution called *SSM Config*.

  This references is intended to be used with the EC2 Run Command User Guide
  for
  [Linux](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/execute-remote-commands.html)
  or
  [Windows](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/execute-remote-commands.html).

  <note> You must register your on-premises servers and VMs through an
  activation process before you can configure them using Run Command.
  Registered servers and VMs are called *managed instances*. For more
  information, see [Setting Up Run Command On Managed Instances (On-Premises
  Servers and VMs) on
  Linux](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/managed-instances.html)
  or [Setting Up Run Command On Managed Instances (On-Premises Servers and
  VMs) on
  Windows](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/managed-instances.html).

  </note> **Run Command**

  Run Command provides an on-demand experience for executing commands. You
  can use pre-defined SSM documents to perform the actions listed later in
  this section, or you can create your own documents. With these documents,
  you can remotely configure your instances by sending commands using the
  **Commands** page in the [Amazon EC2
  console](http://console.aws.amazon.com/ec2/), [AWS Tools for Windows
  PowerShell](http://docs.aws.amazon.com/powershell/latest/reference/items/Amazon_Simple_Systems_Management_cmdlets.html),
  the [AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/ssm/index.html), or
  AWS SDKs.

  Run Command reports the status of the command execution for each instance
  targeted by a command. You can also audit the command execution to
  understand who executed commands, when, and what changes were made. By
  switching between different SSM documents, you can quickly configure your
  instances with different types of commands. To get started with Run
  Command, verify that your environment meets the prerequisites for remotely
  running commands on EC2 instances
  ([Linux](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/remote-commands-prereq.html)
  or
  [Windows](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/remote-commands-prereq.html)).

  <p/> **SSM Config**

  SSM Config is a lightweight instance configuration solution. SSM Config is
  currently only available for Windows instances. With SSM Config, you can
  specify a setup configuration for your instances. SSM Config is similar to
  EC2 User Data, which is another way of running one-time scripts or applying
  settings during instance launch. SSM Config is an extension of this
  capability. Using SSM documents, you can specify which actions the system
  should perform on your instances, including which applications to install,
  which AWS Directory Service directory to join, which Microsoft PowerShell
  modules to install, etc. If an instance is missing one or more of these
  configurations, the system makes those changes. By default, the system
  checks every five minutes to see if there is a new configuration to apply
  as defined in a new SSM document. If so, the system updates the instances
  accordingly. In this way, you can remotely maintain a consistent
  configuration baseline on your instances. SSM Config is available using the
  AWS CLI or the AWS Tools for Windows PowerShell. For more information, see
  [Managing Windows Instance
  Configuration](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-configuration-manage.html).

  SSM Config and Run Command include the following pre-defined documents.

  **Linux**

  <ul> <li> **AWS-RunShellScript** to run shell scripts

  </li> <li> **AWS-UpdateSSMAgent** to update the Amazon SSM agent

  </li> </ul> <p/> **Windows**

  <ul> <li> **AWS-JoinDirectoryServiceDomain** to join an AWS Directory

  </li> <li> **AWS-RunPowerShellScript** to run PowerShell commands or
  scripts

  </li> <li> **AWS-UpdateEC2Config** to update the EC2Config service

  </li> <li> **AWS-ConfigureWindowsUpdate** to configure Windows Update
  settings

  </li> <li> **AWS-InstallApplication** to install, repair, or uninstall
  software using an MSI package

  </li> <li> **AWS-InstallPowerShellModule** to install PowerShell modules

  </li> <li> **AWS-ConfigureCloudWatch** to configure Amazon CloudWatch Logs
  to monitor applications and systems

  </li> <li> **AWS-ListWindowsInventory** to collect information about an EC2
  instance running in Windows.

  </li> <li> **AWS-FindWindowsUpdates** to scan an instance and determines
  which updates are missing.

  </li> <li> **AWS-InstallMissingWindowsUpdates** to install missing updates
  on your EC2 instance.

  </li> <li> **AWS-InstallSpecificWindowsUpdates** to install one or more
  specific updates.

  </li> </ul> <important> The commands or scripts specified in SSM documents
  run with administrative privilege on your instances because the Amazon SSM
  agent runs as root on Linux and the EC2Config service runs in the Local
  System account on Windows. If a user has permission to execute any of the
  pre-defined SSM documents (any document that begins with AWS-*) then that
  user also has administrator access to the instance. Delegate access to Run
  Command and SSM Config judiciously. This becomes extremely important if you
  create your own SSM documents. Amazon Web Services does not provide
  guidance about how to create secure SSM documents. You create SSM documents
  and delegate access to Run Command at your own risk. As a security best
  practice, we recommend that you assign access to "AWS-*" documents,
  especially the AWS-RunShellScript document on Linux and the
  AWS-RunPowerShellScript document on Windows, to trusted administrators
  only. You can create SSM documents for specific tasks and delegate access
  to non-administrators.

  </important> For information about creating and sharing SSM documents, see
  the following topics in the SSM User Guide:

  <ul> <li> [Creating SSM
  Documents](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-ssm-doc.html)
  and [Sharing SSM
  Documents](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ssm-sharing.html)
  (Linux)

  </li> <li> [Creating SSM
  Documents](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/create-ssm-doc.html)
  and [Sharing SSM
  Documents](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ssm-sharing.html)
  (Windows)

  </li> </ul>
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
  Associates the specified SSM document with the specified instance.

  When you associate an SSM document with an instance, the configuration
  agent on the instance processes the document and configures the instance as
  specified.

  If you associate a document with an instance that already has an associated
  document, the system throws the AssociationAlreadyExists exception.
  """
  def create_association(client, input, options \\ []) do
    request(client, "CreateAssociation", input, options)
  end

  @doc """
  Associates the specified SSM document with the specified instances.

  When you associate an SSM document with an instance, the configuration
  agent on the instance processes the document and configures the instance as
  specified.

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
  Removes the server or virtual machine from the list of registered servers.
  You can reregister the instance again at any time. If you don’t plan to use
  Run Command on the server, we suggest uninstalling the SSM agent first.
  """
  def deregister_managed_instance(client, input, options \\ []) do
    request(client, "DeregisterManagedInstance", input, options)
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
  Describes one or more of your instances. You can use this to get
  information about instances like the operating system platform, the SSM
  agent version, status etc. If you specify one or more instance IDs, it
  returns information for those instances. If you do not specify instance
  IDs, it returns information for all your instances. If you specify an
  instance ID that is not valid or an instance that you do not own, you
  receive an error.
  """
  def describe_instance_information(client, input, options \\ []) do
    request(client, "DescribeInstanceInformation", input, options)
  end

  @doc """
  Gets the contents of the specified SSM document.
  """
  def get_document(client, input, options \\ []) do
    request(client, "GetDocument", input, options)
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
  Describes one or more of your SSM documents.
  """
  def list_documents(client, input, options \\ []) do
    request(client, "ListDocuments", input, options)
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
  Updates the status of the SSM document associated with the specified
  instance.
  """
  def update_association_status(client, input, options \\ []) do
    request(client, "UpdateAssociationStatus", input, options)
  end

  @doc """
  Assigns or changes an Amazon Identity and Access Management (IAM) role to
  the managed instance.
  """
  def update_managed_instance_role(client, input, options \\ []) do
    request(client, "UpdateManagedInstanceRole", input, options)
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
