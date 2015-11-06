# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.SSM do
  @moduledoc """
  Simple Systems Manager (SSM) is a set of capabilities that can help you
  manage your Amazon EC2 instances running on Windows. SSM enables you to run
  scripts or other common administrative tasks on your instances using either
  SSM Run Command or SSM Config.

  Run Command extends the server administration capabilities of SSM by
  offering an on-demand experience for executing commands. You can use
  pre-defined Amazon SSM documents (formerly called configuration documents)
  to perform the actions listed later in this section, or you can create your
  own documents. With these document, you can then remotely configure your
  instances by sending commands using the AWS command line interface (CLI),
  AWS Tools for Windows PowerShell, or the **Commands** page in the Amazon
  EC2 console. Additionally, because Run Command enables you to execute
  PowerShell commands or scripts, you can administer your instances remotely
  using PowerShell as though you were logged on locally to the instance. Run
  Command reports the status of the command execution for each instance
  targeted by a command. You can also audit the command execution to
  understand who executed commands, when, and what changes were made. By
  switching between different SSM documents, you can quickly configure your
  instances with different types of commands.

  SSM Config is a lightweight instance configuration solution. With SSM
  Config, you can specify a setup configuration for your instances. SSM
  Config is similar to EC2 User Data, which is another way of running
  one-time scripts or applying settings during instance launch. SSM Config is
  an extension of this capability. Using SSM documents, you can specify which
  actions the system should perform on your instances, including which
  applications to install, which AWS Directory Service directory to join,
  which Microsoft PowerShell modules to install, etc. If an instance is
  missing one or more of these configurations, the system makes those
  changes. By default, the system checks every five minutes to see if there
  is a new configuration to apply as defined in a new SSM document. If so,
  the system updates the instances accordingly. In this way, you can remotely
  maintain a consistent configuration baseline on your instances. SSM Config
  is available using the AWS CLI or the AWS Tools for Windows PowerShell.

  <note> SSM is currently not supported on Linux instances.

  </note> You can use Run Command and SSM Config to do the following:

  <ul> <li> Join an AWS Directory Service directory (SSM Config and Run
  Command)

  </li> <li> Install, repair, or uninstall software using an MSI package (SSM
  Config and Run Command)

  </li> <li> Install PowerShell modules (SSM Config and Run Command)

  </li> <li> Configure CloudWatch Logs to monitor applications and systems
  (SSM Config and Run Command)

  </li> <li> Run PowerShell commands or scripts (Run Command only)

  </li> <li> Update the EC2Config service (Run Command only)

  </li> <li> Configure Windows Update settings (Run Command only)

  </li> </ul> <important> SSM documents run with administrative privilege on
  Windows instances because the EC2Config service runs in the Local System
  account. If a user has permission to execute any of the pre-defined SSM
  documents (any document that begins with AWS-*) then that user also has
  administrator access to the instance. Delegate access to SSM Config and Run
  Command judiciously. This becomes extremely important if you create your
  own SSM documents. Amazon Web Services does not provide guidance about how
  to create secure SSM documents. You create SSM documents and delegate
  access to Run Command actions at your own risk. As a security best
  practice, we recommend that you assign access to "AWS-*" documents,
  especially the AWS-RunPowerShellScript document, to trusted administrators
  only. You can create low-level SSM documents for low security tasks and
  delegate access to non-administrators.

  </important>
  """

  @doc """
  Attempts to cancel the command specified by the Command ID. There is no
  guarantee that the command will be terminated and the underlying process
  stopped.
  """
  def cancel_command(client, input, options \\ []) do
    request(client, "CancelCommand", input, options)
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

  After you create an SSM document, you can use `CreateAssociation` to
  associate it with one or more running instances.
  """
  def create_document(client, input, options \\ []) do
    request(client, "CreateDocument", input, options)
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

  defp request(client, action, input, options) do
    client = %{client | service: "ssm"}
    host = "ssm.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AmazonSSM.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end
end
