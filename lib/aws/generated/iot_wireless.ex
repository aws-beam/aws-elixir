# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTWireless do
  @moduledoc """
  AWS IoT Wireless provides bi-directional communication between
  internet-connected wireless devices and the AWS Cloud.

  To onboard both LoRaWAN and Sidewalk devices to AWS IoT, use the IoT Wireless
  API. These wireless devices use the Low Power Wide Area Networking (LPWAN)
  communication protocol to communicate with AWS IoT.

  Using the API, you can perform create, read, update, and delete operations for
  your wireless devices, gateways, destinations, and profiles. After onboarding
  your devices, you can use the API operations to set log levels and monitor your
  devices with CloudWatch.

  You can also use the API operations to create multicast groups and schedule a
  multicast session for sending a downlink message to devices in the group. By
  using Firmware Updates Over-The-Air (FUOTA) API operations, you can create a
  FUOTA task and schedule a session to update the firmware of individual devices
  or an entire group of devices in a multicast group.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-11-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.iotwireless",
      global?: false,
      protocol: "rest-json",
      service_id: "IoT Wireless",
      signature_version: "v4",
      signing_name: "iotwireless",
      target_prefix: nil
    }
  end

  @doc """
  Associates a partner account with your AWS account.
  """
  def associate_aws_account_with_partner_account(%Client{} = client, input, options \\ []) do
    url_path = "/partner-accounts"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "AssociateAwsAccountWithPartnerAccount",
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
  Associate a multicast group with a FUOTA task.
  """
  def associate_multicast_group_with_fuota_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}/multicast-group"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "AssociateMulticastGroupWithFuotaTask",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Associate a wireless device with a FUOTA task.
  """
  def associate_wireless_device_with_fuota_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}/wireless-device"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "AssociateWirelessDeviceWithFuotaTask",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Associates a wireless device with a multicast group.
  """
  def associate_wireless_device_with_multicast_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/wireless-device"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "AssociateWirelessDeviceWithMulticastGroup",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Associates a wireless device with a thing.
  """
  def associate_wireless_device_with_thing(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}/thing"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "AssociateWirelessDeviceWithThing",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Associates a wireless gateway with a certificate.
  """
  def associate_wireless_gateway_with_certificate(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/certificate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "AssociateWirelessGatewayWithCertificate",
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
  Associates a wireless gateway with a thing.
  """
  def associate_wireless_gateway_with_thing(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/thing"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "AssociateWirelessGatewayWithThing",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Cancels an existing multicast group session.
  """
  def cancel_multicast_group_session(%Client{} = client, id, input, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/session"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CancelMulticastGroupSession",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Creates a new destination that maps a device message to an AWS IoT rule.
  """
  def create_destination(%Client{} = client, input, options \\ []) do
    url_path = "/destinations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateDestination",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new device profile.
  """
  def create_device_profile(%Client{} = client, input, options \\ []) do
    url_path = "/device-profiles"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateDeviceProfile",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a FUOTA task.
  """
  def create_fuota_task(%Client{} = client, input, options \\ []) do
    url_path = "/fuota-tasks"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateFuotaTask",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a multicast group.
  """
  def create_multicast_group(%Client{} = client, input, options \\ []) do
    url_path = "/multicast-groups"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateMulticastGroup",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new network analyzer configuration.
  """
  def create_network_analyzer_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/network-analyzer-configurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateNetworkAnalyzerConfiguration",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new service profile.
  """
  def create_service_profile(%Client{} = client, input, options \\ []) do
    url_path = "/service-profiles"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateServiceProfile",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Provisions a wireless device.
  """
  def create_wireless_device(%Client{} = client, input, options \\ []) do
    url_path = "/wireless-devices"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateWirelessDevice",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Provisions a wireless gateway.
  """
  def create_wireless_gateway(%Client{} = client, input, options \\ []) do
    url_path = "/wireless-gateways"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateWirelessGateway",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a task for a wireless gateway.
  """
  def create_wireless_gateway_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/tasks"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateWirelessGatewayTask",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a gateway task definition.
  """
  def create_wireless_gateway_task_definition(%Client{} = client, input, options \\ []) do
    url_path = "/wireless-gateway-task-definitions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateWirelessGatewayTaskDefinition",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes a destination.
  """
  def delete_destination(%Client{} = client, name, input, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteDestination",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a device profile.
  """
  def delete_device_profile(%Client{} = client, id, input, options \\ []) do
    url_path = "/device-profiles/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteDeviceProfile",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a FUOTA task.
  """
  def delete_fuota_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteFuotaTask",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a multicast group if it is not in use by a fuota task.
  """
  def delete_multicast_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteMulticastGroup",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a network analyzer configuration.
  """
  def delete_network_analyzer_configuration(
        %Client{} = client,
        configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/network-analyzer-configurations/#{AWS.Util.encode_uri(configuration_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteNetworkAnalyzerConfiguration",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Remove queued messages from the downlink queue.
  """
  def delete_queued_messages(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}/data"
    headers = []

    {query_params, input} =
      [
        {"MessageId", "messageId"},
        {"WirelessDeviceType", "WirelessDeviceType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteQueuedMessages",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a service profile.
  """
  def delete_service_profile(%Client{} = client, id, input, options \\ []) do
    url_path = "/service-profiles/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteServiceProfile",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a wireless device.
  """
  def delete_wireless_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteWirelessDevice",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete an import task.
  """
  def delete_wireless_device_import_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless_device_import_task/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a wireless gateway.
  """
  def delete_wireless_gateway(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteWirelessGateway",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a wireless gateway task.
  """
  def delete_wireless_gateway_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/tasks"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteWirelessGatewayTask",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a wireless gateway task definition.

  Deleting this task definition does not affect tasks that are currently in
  progress.
  """
  def delete_wireless_gateway_task_definition(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateway-task-definitions/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteWirelessGatewayTaskDefinition",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deregister a wireless device from AWS IoT Wireless.
  """
  def deregister_wireless_device(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(identifier)}/deregister"
    headers = []

    {query_params, input} =
      [
        {"WirelessDeviceType", "WirelessDeviceType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Disassociates your AWS account from a partner account.

  If `PartnerAccountId` and `PartnerType` are `null`, disassociates your AWS
  account from all partner accounts.
  """
  def disassociate_aws_account_from_partner_account(
        %Client{} = client,
        partner_account_id,
        input,
        options \\ []
      ) do
    url_path = "/partner-accounts/#{AWS.Util.encode_uri(partner_account_id)}"
    headers = []

    {query_params, input} =
      [
        {"PartnerType", "partnerType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisassociateAwsAccountFromPartnerAccount",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates a multicast group from a fuota task.
  """
  def disassociate_multicast_group_from_fuota_task(
        %Client{} = client,
        id,
        multicast_group_id,
        input,
        options \\ []
      ) do
    url_path =
      "/fuota-tasks/#{AWS.Util.encode_uri(id)}/multicast-groups/#{AWS.Util.encode_uri(multicast_group_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisassociateMulticastGroupFromFuotaTask",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates a wireless device from a FUOTA task.
  """
  def disassociate_wireless_device_from_fuota_task(
        %Client{} = client,
        id,
        wireless_device_id,
        input,
        options \\ []
      ) do
    url_path =
      "/fuota-tasks/#{AWS.Util.encode_uri(id)}/wireless-devices/#{AWS.Util.encode_uri(wireless_device_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisassociateWirelessDeviceFromFuotaTask",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates a wireless device from a multicast group.
  """
  def disassociate_wireless_device_from_multicast_group(
        %Client{} = client,
        id,
        wireless_device_id,
        input,
        options \\ []
      ) do
    url_path =
      "/multicast-groups/#{AWS.Util.encode_uri(id)}/wireless-devices/#{AWS.Util.encode_uri(wireless_device_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisassociateWirelessDeviceFromMulticastGroup",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates a wireless device from its currently associated thing.
  """
  def disassociate_wireless_device_from_thing(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}/thing"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisassociateWirelessDeviceFromThing",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates a wireless gateway from its currently associated certificate.
  """
  def disassociate_wireless_gateway_from_certificate(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/certificate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisassociateWirelessGatewayFromCertificate",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates a wireless gateway from its currently associated thing.
  """
  def disassociate_wireless_gateway_from_thing(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/thing"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisassociateWirelessGatewayFromThing",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Gets information about a destination.
  """
  def get_destination(%Client{} = client, name, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetDestination",
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
  Gets information about a device profile.
  """
  def get_device_profile(%Client{} = client, id, options \\ []) do
    url_path = "/device-profiles/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetDeviceProfile",
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
  Get the event configuration based on resource types.
  """
  def get_event_configuration_by_resource_types(%Client{} = client, options \\ []) do
    url_path = "/event-configurations-resource-types"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetEventConfigurationByResourceTypes",
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
  Gets information about a FUOTA task.
  """
  def get_fuota_task(%Client{} = client, id, options \\ []) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetFuotaTask",
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
  Returns current default log levels or log levels by resource types.

  Based on resource types, log levels can be for wireless device log options or
  wireless gateway log options.
  """
  def get_log_levels_by_resource_types(%Client{} = client, options \\ []) do
    url_path = "/log-levels"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetLogLevelsByResourceTypes",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets information about a multicast group.
  """
  def get_multicast_group(%Client{} = client, id, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetMulticastGroup",
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
  Gets information about a multicast group session.
  """
  def get_multicast_group_session(%Client{} = client, id, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/session"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetMulticastGroupSession",
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
  Get network analyzer configuration.
  """
  def get_network_analyzer_configuration(%Client{} = client, configuration_name, options \\ []) do
    url_path = "/network-analyzer-configurations/#{AWS.Util.encode_uri(configuration_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetNetworkAnalyzerConfiguration",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets information about a partner account.

  If `PartnerAccountId` and `PartnerType` are `null`, returns all partner
  accounts.
  """
  def get_partner_account(%Client{} = client, partner_account_id, partner_type, options \\ []) do
    url_path = "/partner-accounts/#{AWS.Util.encode_uri(partner_account_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(partner_type) do
        [{"partnerType", partner_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetPartnerAccount",
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
  Get the position information for a given resource.

  This action is no longer supported. Calls to retrieve the position information
  should use the
  [GetResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html)
  API operation instead.
  """
  def get_position(%Client{} = client, resource_identifier, resource_type, options \\ []) do
    url_path = "/positions/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetPosition",
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
  Get position configuration for a given resource.

  This action is no longer supported. Calls to retrieve the position configuration
  should use the
  [GetResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html)
  API operation instead.
  """
  def get_position_configuration(
        %Client{} = client,
        resource_identifier,
        resource_type,
        options \\ []
      ) do
    url_path = "/position-configurations/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetPositionConfiguration",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Get estimated position information as a payload in GeoJSON format.

  The payload measurement data is resolved using solvers that are provided by
  third-party vendors.
  """
  def get_position_estimate(%Client{} = client, input, options \\ []) do
    url_path = "/position-estimate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetPositionEstimate",
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
  Get the event configuration for a particular resource identifier.
  """
  def get_resource_event_configuration(
        %Client{} = client,
        identifier,
        identifier_type,
        partner_type \\ nil,
        options \\ []
      ) do
    url_path = "/event-configurations/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(partner_type) do
        [{"partnerType", partner_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(identifier_type) do
        [{"identifierType", identifier_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetResourceEventConfiguration",
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
  Fetches the log-level override, if any, for a given resource-ID and
  resource-type.

  It can be used for a wireless device or a wireless gateway.
  """
  def get_resource_log_level(
        %Client{} = client,
        resource_identifier,
        resource_type,
        options \\ []
      ) do
    url_path = "/log-levels/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetResourceLogLevel",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Get the position information for a given wireless device or a wireless gateway
  resource.

  The position information uses the [ World Geodetic System (WGS84)](https://gisgeography.com/wgs84-world-geodetic-system/).
  """
  def get_resource_position(%Client{} = client, resource_identifier, resource_type, options \\ []) do
    url_path = "/resource-positions/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetResourcePosition",
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
  Gets the account-specific endpoint for Configuration and Update Server (CUPS)
  protocol or LoRaWAN Network Server (LNS) connections.
  """
  def get_service_endpoint(%Client{} = client, service_type \\ nil, options \\ []) do
    url_path = "/service-endpoint"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_type) do
        [{"serviceType", service_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetServiceEndpoint",
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
  Gets information about a service profile.
  """
  def get_service_profile(%Client{} = client, id, options \\ []) do
    url_path = "/service-profiles/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetServiceProfile",
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
  Gets information about a wireless device.
  """
  def get_wireless_device(%Client{} = client, identifier, identifier_type, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(identifier_type) do
        [{"identifierType", identifier_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetWirelessDevice",
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
  Get information about an import task and count of device onboarding summary
  information for the import task.
  """
  def get_wireless_device_import_task(%Client{} = client, id, options \\ []) do
    url_path = "/wireless_device_import_task/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets operating information about a wireless device.
  """
  def get_wireless_device_statistics(%Client{} = client, wireless_device_id, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(wireless_device_id)}/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetWirelessDeviceStatistics",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets information about a wireless gateway.
  """
  def get_wireless_gateway(%Client{} = client, identifier, identifier_type, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(identifier_type) do
        [{"identifierType", identifier_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetWirelessGateway",
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
  Gets the ID of the certificate that is currently associated with a wireless
  gateway.
  """
  def get_wireless_gateway_certificate(%Client{} = client, id, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/certificate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetWirelessGatewayCertificate",
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
  Gets the firmware version and other information about a wireless gateway.
  """
  def get_wireless_gateway_firmware_information(%Client{} = client, id, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/firmware-information"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetWirelessGatewayFirmwareInformation",
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
  Gets operating information about a wireless gateway.
  """
  def get_wireless_gateway_statistics(%Client{} = client, wireless_gateway_id, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(wireless_gateway_id)}/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetWirelessGatewayStatistics",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets information about a wireless gateway task.
  """
  def get_wireless_gateway_task(%Client{} = client, id, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/tasks"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetWirelessGatewayTask",
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
  Gets information about a wireless gateway task definition.
  """
  def get_wireless_gateway_task_definition(%Client{} = client, id, options \\ []) do
    url_path = "/wireless-gateway-task-definitions/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetWirelessGatewayTaskDefinition",
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
  Lists the destinations registered to your AWS account.
  """
  def list_destinations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/destinations"
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListDestinations",
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
  Lists the device profiles registered to your AWS account.
  """
  def list_device_profiles(
        %Client{} = client,
        device_profile_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/device-profiles"
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
      if !is_nil(device_profile_type) do
        [{"deviceProfileType", device_profile_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List the Sidewalk devices in an import task and their onboarding status.
  """
  def list_devices_for_wireless_device_import_task(
        %Client{} = client,
        id,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/wireless_device_import_task"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

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
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListDeviceProfiles",
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
  List event configurations where at least one event topic has been enabled.
  """
  def list_event_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resource_type,
        options \\ []
      ) do
    url_path = "/event-configurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListEventConfigurations",
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
  Lists the FUOTA tasks registered to your AWS account.
  """
  def list_fuota_tasks(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/fuota-tasks"
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListFuotaTasks",
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
  Lists the multicast groups registered to your AWS account.
  """
  def list_multicast_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/multicast-groups"
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListMulticastGroups",
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
  List all multicast groups associated with a fuota task.
  """
  def list_multicast_groups_by_fuota_task(
        %Client{} = client,
        id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}/multicast-groups"
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListMulticastGroupsByFuotaTask",
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
  Lists the network analyzer configurations.
  """
  def list_network_analyzer_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/network-analyzer-configurations"
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListNetworkAnalyzerConfigurations",
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
  Lists the partner accounts associated with your AWS account.
  """
  def list_partner_accounts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/partner-accounts"
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListPartnerAccounts",
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
  List position configurations for a given resource, such as positioning solvers.

  This action is no longer supported. Calls to retrieve position information
  should use the
  [GetResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html)
  API operation instead.
  """
  def list_position_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/position-configurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListPositionConfigurations",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  List queued messages in the downlink queue.
  """
  def list_queued_messages(
        %Client{} = client,
        id,
        max_results \\ nil,
        next_token \\ nil,
        wireless_device_type \\ nil,
        options \\ []
      ) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}/data"
    headers = []
    query_params = []

    query_params =
      if !is_nil(wireless_device_type) do
        [{"WirelessDeviceType", wireless_device_type} | query_params]
      else
        query_params
      end

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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListQueuedMessages",
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
  Lists the service profiles registered to your AWS account.
  """
  def list_service_profiles(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/service-profiles"
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListServiceProfiles",
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
  Lists the tags (metadata) you have assigned to the resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
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
  List wireless devices that have been added to an import task.
  """
  def list_wireless_device_import_tasks(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/wireless_device_import_tasks"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the wireless devices registered to your AWS account.
  """
  def list_wireless_devices(
        %Client{} = client,
        destination_name \\ nil,
        device_profile_id \\ nil,
        fuota_task_id \\ nil,
        max_results \\ nil,
        multicast_group_id \\ nil,
        next_token \\ nil,
        service_profile_id \\ nil,
        wireless_device_type \\ nil,
        options \\ []
      ) do
    url_path = "/wireless-devices"
    headers = []
    query_params = []

    query_params =
      if !is_nil(wireless_device_type) do
        [{"wirelessDeviceType", wireless_device_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(service_profile_id) do
        [{"serviceProfileId", service_profile_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(multicast_group_id) do
        [{"multicastGroupId", multicast_group_id} | query_params]
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
      if !is_nil(fuota_task_id) do
        [{"fuotaTaskId", fuota_task_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(device_profile_id) do
        [{"deviceProfileId", device_profile_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(destination_name) do
        [{"destinationName", destination_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListWirelessDevices",
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
  List the wireless gateway tasks definitions registered to your AWS account.
  """
  def list_wireless_gateway_task_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        task_definition_type \\ nil,
        options \\ []
      ) do
    url_path = "/wireless-gateway-task-definitions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(task_definition_type) do
        [{"taskDefinitionType", task_definition_type} | query_params]
      else
        query_params
      end

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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListWirelessGatewayTaskDefinitions",
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
  Lists the wireless gateways registered to your AWS account.
  """
  def list_wireless_gateways(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/wireless-gateways"
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListWirelessGateways",
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
  Put position configuration for a given resource.

  This action is no longer supported. Calls to update the position configuration
  should use the
  [UpdateResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_UpdateResourcePosition.html)
  API operation instead.
  """
  def put_position_configuration(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/position-configurations/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutPositionConfiguration",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Sets the log-level override for a resource-ID and resource-type.

  This option can be specified for a wireless gateway or a wireless device. A
  limit of 200 log level override can be set per account.
  """
  def put_resource_log_level(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/log-levels/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutResourceLogLevel",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes the log-level overrides for all resources; both wireless devices and
  wireless gateways.
  """
  def reset_all_resource_log_levels(%Client{} = client, input, options \\ []) do
    url_path = "/log-levels"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ResetAllResourceLogLevels",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes the log-level override, if any, for a specific resource-ID and
  resource-type.

  It can be used for a wireless device or a wireless gateway.
  """
  def reset_resource_log_level(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/log-levels/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ResetResourceLogLevel",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Sends the specified data to a multicast group.
  """
  def send_data_to_multicast_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/data"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "SendDataToMulticastGroup",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Sends a decrypted application data frame to a device.
  """
  def send_data_to_wireless_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}/data"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "SendDataToWirelessDevice",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Starts a bulk association of all qualifying wireless devices with a multicast
  group.
  """
  def start_bulk_associate_wireless_device_with_multicast_group(
        %Client{} = client,
        id,
        input,
        options \\ []
      ) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/bulk"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartBulkAssociateWirelessDeviceWithMulticastGroup",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Starts a bulk disassociatin of all qualifying wireless devices from a multicast
  group.
  """
  def start_bulk_disassociate_wireless_device_from_multicast_group(
        %Client{} = client,
        id,
        input,
        options \\ []
      ) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/bulk"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartBulkDisassociateWirelessDeviceFromMulticastGroup",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Starts a FUOTA task.
  """
  def start_fuota_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartFuotaTask",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Starts a multicast group session.
  """
  def start_multicast_group_session(%Client{} = client, id, input, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/session"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartMulticastGroupSession",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Start import task for a single wireless device.
  """
  def start_single_wireless_device_import_task(%Client{} = client, input, options \\ []) do
    url_path = "/wireless_single_device_import_task"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Start import task for provisioning Sidewalk devices in bulk using an S3 CSV
  file.
  """
  def start_wireless_device_import_task(%Client{} = client, input, options \\ []) do
    url_path = "/wireless_device_import_task"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Adds a tag to a resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []

    {query_params, input} =
      [
        {"ResourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Simulates a provisioned device by sending an uplink data payload of `Hello`.
  """
  def test_wireless_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}/test"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TestWirelessDevice",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes one or more tags from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []

    {query_params, input} =
      [
        {"ResourceArn", "resourceArn"},
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UntagResource",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates properties of a destination.
  """
  def update_destination(%Client{} = client, name, input, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateDestination",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update the event configuration based on resource types.
  """
  def update_event_configuration_by_resource_types(%Client{} = client, input, options \\ []) do
    url_path = "/event-configurations-resource-types"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateEventConfigurationByResourceTypes",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates properties of a FUOTA task.
  """
  def update_fuota_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateFuotaTask",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Set default log level, or log levels by resource types.

  This can be for wireless device log options or wireless gateways log options and
  is used to control the log messages that'll be displayed in CloudWatch.
  """
  def update_log_levels_by_resource_types(%Client{} = client, input, options \\ []) do
    url_path = "/log-levels"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateLogLevelsByResourceTypes",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates properties of a multicast group session.
  """
  def update_multicast_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateMulticastGroup",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update network analyzer configuration.
  """
  def update_network_analyzer_configuration(
        %Client{} = client,
        configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/network-analyzer-configurations/#{AWS.Util.encode_uri(configuration_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateNetworkAnalyzerConfiguration",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates properties of a partner account.
  """
  def update_partner_account(%Client{} = client, partner_account_id, input, options \\ []) do
    url_path = "/partner-accounts/#{AWS.Util.encode_uri(partner_account_id)}"
    headers = []

    {query_params, input} =
      [
        {"PartnerType", "partnerType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdatePartnerAccount",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update the position information of a resource.

  This action is no longer supported. Calls to update the position information
  should use the
  [UpdateResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_UpdateResourcePosition.html)
  API operation instead.
  """
  def update_position(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/positions/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdatePosition",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update the event configuration for a particular resource identifier.
  """
  def update_resource_event_configuration(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/event-configurations/#{AWS.Util.encode_uri(identifier)}"
    headers = []

    {query_params, input} =
      [
        {"IdentifierType", "identifierType"},
        {"PartnerType", "partnerType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateResourceEventConfiguration",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update the position information of a given wireless device or a wireless gateway
  resource.

  The position coordinates are based on the [ World Geodetic System (WGS84)](https://gisgeography.com/wgs84-world-geodetic-system/).
  """
  def update_resource_position(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/resource-positions/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateResourcePosition",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates properties of a wireless device.
  """
  def update_wireless_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateWirelessDevice",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update an import task to add more devices to the task.
  """
  def update_wireless_device_import_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless_device_import_task/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates properties of a wireless gateway.
  """
  def update_wireless_gateway(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateWirelessGateway",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end
end
