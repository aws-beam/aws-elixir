# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.SSM do
  @moduledoc """
  AWS Simple Systems Management enables you to configure and manage your EC2
  instances. You can create a configuration document and then associate it
  with one or more running instances.

  You can use a configuration document to automate the following tasks for
  your Windows instances:

  * Install, repair, or uninstall software using an MSI package

  * Run PowerShell scripts

  * Join an AWS Directory

  * Configure CloudWatch Logs to monitor applications and systems

  Note that configuration documents are not supported on Linux instances.
  """

  @doc """
  Associates the specified configuration document with the specified
  instance.

  When you associate a configuration document with an instance, the
  configuration agent on the instance processes the configuration document
  and configures the instance as specified.

  If you associate a configuration document with an instance that already has
  an associated configuration document, we replace the current configuration
  document with the new configuration document.
  """
  def create_association(client, input, options \\ []) do
    request(client, "CreateAssociation", input, options)
  end

  @doc """
  Associates the specified configuration documents with the specified
  instances.

  When you associate a configuration document with an instance, the
  configuration agent on the instance processes the configuration document
  and configures the instance as specified.

  If you associate a configuration document with an instance that already has
  an associated configuration document, we replace the current configuration
  document with the new configuration document.
  """
  def create_association_batch(client, input, options \\ []) do
    request(client, "CreateAssociationBatch", input, options)
  end

  @doc """
  Creates a configuration document.

  After you create a configuration document, you can use `CreateAssociation`
  to associate it with one or more running instances.
  """
  def create_document(client, input, options \\ []) do
    request(client, "CreateDocument", input, options)
  end

  @doc """
  Disassociates the specified configuration document from the specified
  instance.

  When you disassociate a configuration document from an instance, it does
  not change the configuration of the instance. To change the configuration
  state of an instance after you disassociate a configuration document, you
  must create a new configuration document with the desired configuration and
  associate it with the instance.
  """
  def delete_association(client, input, options \\ []) do
    request(client, "DeleteAssociation", input, options)
  end

  @doc """
  Deletes the specified configuration document.

  You must use `DeleteAssociation` to disassociate all instances that are
  associated with the configuration document before you can delete it.
  """
  def delete_document(client, input, options \\ []) do
    request(client, "DeleteDocument", input, options)
  end

  @doc """
  Describes the associations for the specified configuration document or
  instance.
  """
  def describe_association(client, input, options \\ []) do
    request(client, "DescribeAssociation", input, options)
  end

  @doc """
  Describes the specified configuration document.
  """
  def describe_document(client, input, options \\ []) do
    request(client, "DescribeDocument", input, options)
  end

  @doc """
  Gets the contents of the specified configuration document.
  """
  def get_document(client, input, options \\ []) do
    request(client, "GetDocument", input, options)
  end

  @doc """
  Lists the associations for the specified configuration document or
  instance.
  """
  def list_associations(client, input, options \\ []) do
    request(client, "ListAssociations", input, options)
  end

  @doc """
  Describes one or more of your configuration documents.
  """
  def list_documents(client, input, options \\ []) do
    request(client, "ListDocuments", input, options)
  end

  @doc """
  Updates the status of the configuration document associated with the
  specified instance.
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

