# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BackupGateway do
  @moduledoc """
  Backup gateway

  Backup gateway connects Backup to your hypervisor, so you can create, store, and
  restore backups of your virtual machines (VMs) anywhere, whether on-premises or
  in the VMware Cloud (VMC) on Amazon Web Services.

  Add on-premises resources by connecting to a hypervisor through a gateway.
  Backup will automatically discover the resources in your hypervisor.

  Use Backup to assign virtual or on-premises resources to a backup plan, or run
  on-demand backups. Once you have backed up your resources, you can view them and
  restore them like any resource supported by Backup.

  To download the Amazon Web Services software to get started, navigate to the
  Backup console, choose **Gateways**, then choose **Create gateway**.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-01-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "backup-gateway",
      global?: false,
      protocol: "json",
      service_id: "Backup Gateway",
      signature_version: "v4",
      signing_name: "backup-gateway",
      target_prefix: "BackupOnPremises_v20210101"
    }
  end

  @doc """
  Associates a backup gateway with your server.

  After you complete the association process, you can back up and restore your VMs
  through the gateway.
  """
  def associate_gateway_to_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateGatewayToServer", input, options)
  end

  @doc """
  Creates a backup gateway.

  After you create a gateway, you can associate it with a server using the
  `AssociateGatewayToServer` operation.
  """
  def create_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGateway", input, options)
  end

  @doc """
  Deletes a backup gateway.
  """
  def delete_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGateway", input, options)
  end

  @doc """
  Deletes a hypervisor.
  """
  def delete_hypervisor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteHypervisor", input, options)
  end

  @doc """
  Disassociates a backup gateway from the specified server.

  After the disassociation process finishes, the gateway can no longer access the
  virtual machines on the server.
  """
  def disassociate_gateway_from_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateGatewayFromServer", input, options)
  end

  @doc """
  By providing the ARN (Amazon Resource Name), this API returns the gateway.
  """
  def get_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGateway", input, options)
  end

  @doc """
  By providing the ARN (Amazon Resource Name), this API returns the virtual
  machine.
  """
  def get_virtual_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetVirtualMachine", input, options)
  end

  @doc """
  Connect to a hypervisor by importing its configuration.
  """
  def import_hypervisor_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportHypervisorConfiguration", input, options)
  end

  @doc """
  Lists backup gateways owned by an Amazon Web Services account in an Amazon Web
  Services Region.

  The returned list is ordered by gateway Amazon Resource Name (ARN).
  """
  def list_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGateways", input, options)
  end

  @doc """
  Lists your hypervisors.
  """
  def list_hypervisors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListHypervisors", input, options)
  end

  @doc """
  Lists the tags applied to the resource identified by its Amazon Resource Name
  (ARN).
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists your virtual machines.
  """
  def list_virtual_machines(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVirtualMachines", input, options)
  end

  @doc """
  Set the maintenance start time for a gateway.
  """
  def put_maintenance_start_time(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutMaintenanceStartTime", input, options)
  end

  @doc """
  Tag the resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Tests your hypervisor configuration to validate that backup gateway can connect
  with the hypervisor and its resources.
  """
  def test_hypervisor_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TestHypervisorConfiguration", input, options)
  end

  @doc """
  Removes tags from the resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a gateway's name.

  Specify which gateway to update using the Amazon Resource Name (ARN) of the
  gateway in your request.
  """
  def update_gateway_information(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGatewayInformation", input, options)
  end

  @doc """
  Updates the gateway virtual machine (VM) software.

  The request immediately triggers the software update.

  When you make this request, you get a `200 OK` success response immediately.
  However, it might take some time for the update to complete.
  """
  def update_gateway_software_now(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGatewaySoftwareNow", input, options)
  end

  @doc """
  Updates a hypervisor metadata, including its host, username, and password.

  Specify which hypervisor to update using the Amazon Resource Name (ARN) of the
  hypervisor in your request.
  """
  def update_hypervisor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateHypervisor", input, options)
  end
end
