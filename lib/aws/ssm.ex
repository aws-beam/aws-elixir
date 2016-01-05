# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.SSM do
  @moduledoc """
  Simple Systems Manager (SSM) enables you to remotely manage the
  configuration of your Amazon EC2 instance. Using SSM, you can run scripts
  or commands using either EC2 Run Command or SSM Config. (SSM Config is
  currently available only for Windows instances.)

  <p/> **Run Command** Run Command provides an on-demand experience for
  executing commands. You can use pre-defined Amazon SSM documents to perform
  the actions listed later in this section, or you can create your own
  documents. With these documents, you can remotely configure your instances
  by sending commands using the **Commands** page in the [Amazon EC2
  console](http://console.aws.amazon.com/ec2/), [AWS Tools for Windows
  PowerShell](http://docs.aws.amazon.com/powershell/latest/reference/items/Amazon_Simple_Systems_Management_cmdlets.html),
  or the [AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/ssm/index.html).

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

  <p/> **SSM Config** SSM Config is a lightweight instance configuration
  solution. SSM Config is currently only available for Windows instances.
  With SSM Config, you can specify a setup configuration for your instances.
  SSM Config is similar to EC2 User Data, which is another way of running
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
  is available using the AWS CLI or the AWS Tools for Windows PowerShell. For
  more information, see [Managing Windows Instance
  Configuration](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-configuration-manage.html).

  <para>SSM Config and Run Command include the following pre-defined
  documents.</para> <table> <title>Amazon Pre-defined SSM Documents</title>
  <tgroup cols="3"> <colspec colname="col1" colnum="1" colwidth="1*"/>
  <colspec colname="col2" colnum="2" colwidth="1*"/> <colspec colname="col3"
  colnum="3" colwidth="1*"/> <thead> <row> <entry>Name</entry>
  <entry>Description</entry> <entry>Platform</entry> </row> </thead> <tbody>
  <row> <entry> <para>AWS-RunShellScript</para> </entry> <entry> <para>Run
  shell scripts</para> </entry> <entry> <para>Linux</para> </entry> </row>
  <row> <entry> <para>AWS-UpdateSSMAgent</para> </entry> <entry> <para>Update
  the Amazon SSM agent</para> </entry> <entry> <para>Linux</para> </entry>
  </row> <row> <entry> <para>AWS-JoinDirectoryServiceDomain </para> </entry>
  <entry> <para>Join an AWS Directory </para> </entry> <entry>
  <para>Windows</para> </entry> </row> <row> <entry>
  <para>AWS-RunPowerShellScript</para> </entry> <entry> <para>Run PowerShell
  commands or scripts</para> </entry> <entry> <para>Windows</para> </entry>
  </row> <row> <entry> <para>AWS-UpdateEC2Config</para> </entry> <entry>
  <para>Update the EC2Config service </para> </entry> <entry>
  <para>Windows</para> </entry> </row> <row> <entry>
  <para>AWS-ConfigureWindowsUpdate</para> </entry> <entry> <para>Configure
  Windows Update settings</para> </entry> <entry> <para>Windows</para>
  </entry> </row> <row> <entry> <para>AWS-InstallApplication</para> </entry>
  <entry> <para>Install, repair, or uninstall software using an MSI
  package</para> </entry> <entry> <para>Windows</para> </entry> </row> <row>
  <entry> <para>AWS-InstallPowerShellModule</para> </entry> <entry>
  <para>Install PowerShell modules </para> </entry> <entry>
  <para>Windows</para> </entry> </row> <row> <entry>
  <para>AWS-ConfigureCloudWatch</para> </entry> <entry> <para>Configure
  Amazon CloudWatch Logs to monitor applications and systems</para> </entry>
  <entry> <para>Windows</para> </entry> </row> </tbody> </tgroup> </table>
  <important> <simpara>The commands or scripts specified in SSM documents run
  with administrative privilege on your instances because the Amazon SSM
  agent runs as root on Linux and the EC2Config service runs in the Local
  System account on Windows. If a user has permission to execute any of the
  pre-defined SSM documents (any document that begins with AWS-*) then that
  user also has administrator access to the instance. Delegate access to SSM
  and Run Command judiciously. This becomes extremely important if you create
  your own SSM documents. Amazon Web Services does not provide guidance about
  how to create secure SSM documents. You create SSM documents and delegate
  access to Run Command at your own risk. As a security best practice, we
  recommend that you assign access to "AWS-*" documents, especially the
  AWS-RunShellScript document on Linux and the AWS-RunPowerShellScript
  document on Windows, to trusted administrators only. You can create SSM
  documents for specific tasks and delegate access to
  non-administrators.</simpara> </important>
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

  @spec request(map(), binary(), map(), list()) ->
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
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
        {:ok, nil, response}
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
