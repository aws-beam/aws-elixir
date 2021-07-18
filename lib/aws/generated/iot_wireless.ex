# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTWireless do
  @moduledoc """
  AWS IoT Wireless API documentation
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  Associates a wireless device with a thing.
  """
  def associate_wireless_device_with_thing(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{URI.encode(id)}/thing"
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
      204
    )
  end

  @doc """
  Associates a wireless gateway with a certificate.
  """
  def associate_wireless_gateway_with_certificate(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{URI.encode(id)}/certificate"
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
  Associates a wireless gateway with a thing.
  """
  def associate_wireless_gateway_with_thing(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{URI.encode(id)}/thing"
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
    url_path = "/wireless-gateways/#{URI.encode(id)}/tasks"
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

    Request.request_rest(
      client,
      metadata(),
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
    url_path = "/destinations/#{URI.encode(name)}"
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
      204
    )
  end

  @doc """
  Deletes a device profile.
  """
  def delete_device_profile(%Client{} = client, id, input, options \\ []) do
    url_path = "/device-profiles/#{URI.encode(id)}"
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
      204
    )
  end

  @doc """
  Deletes a service profile.
  """
  def delete_service_profile(%Client{} = client, id, input, options \\ []) do
    url_path = "/service-profiles/#{URI.encode(id)}"
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
      204
    )
  end

  @doc """
  Deletes a wireless device.
  """
  def delete_wireless_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{URI.encode(id)}"
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
      204
    )
  end

  @doc """
  Deletes a wireless gateway.
  """
  def delete_wireless_gateway(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{URI.encode(id)}"
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
      204
    )
  end

  @doc """
  Deletes a wireless gateway task.
  """
  def delete_wireless_gateway_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{URI.encode(id)}/tasks"
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
      204
    )
  end

  @doc """
  Deletes a wireless gateway task definition.

  Deleting this task definition does not affect tasks that are currently in
  progress.
  """
  def delete_wireless_gateway_task_definition(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateway-task-definitions/#{URI.encode(id)}"
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
      204
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
    url_path = "/partner-accounts/#{URI.encode(partner_account_id)}"
    headers = []

    {query_params, input} =
      [
        {"PartnerType", "partnerType"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
    url_path = "/wireless-devices/#{URI.encode(id)}/thing"
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
      204
    )
  end

  @doc """
  Disassociates a wireless gateway from its currently associated certificate.
  """
  def disassociate_wireless_gateway_from_certificate(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{URI.encode(id)}/certificate"
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
      204
    )
  end

  @doc """
  Disassociates a wireless gateway from its currently associated thing.
  """
  def disassociate_wireless_gateway_from_thing(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{URI.encode(id)}/thing"
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
      204
    )
  end

  @doc """
  Gets information about a destination.
  """
  def get_destination(%Client{} = client, name, options \\ []) do
    url_path = "/destinations/#{URI.encode(name)}"
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
  Gets information about a device profile.
  """
  def get_device_profile(%Client{} = client, id, options \\ []) do
    url_path = "/device-profiles/#{URI.encode(id)}"
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
  Returns current default log-levels, or log levels by resource types, could be
  for wireless device log options or wireless gateway log options.
  """
  def get_log_levels_by_resource_types(%Client{} = client, options \\ []) do
    url_path = "/log-levels"
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
      200
    )
  end

  @doc """
  Gets information about a partner account.

  If `PartnerAccountId` and `PartnerType` are `null`, returns all partner
  accounts.
  """
  def get_partner_account(%Client{} = client, partner_account_id, partner_type, options \\ []) do
    url_path = "/partner-accounts/#{URI.encode(partner_account_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(partner_type) do
        [{"partnerType", partner_type} | query_params]
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
  Fetches the log-level override if any for a given resource-ID and resource-type,
  coulde be a wireless device or a wireless gateway.
  """
  def get_resource_log_level(
        %Client{} = client,
        resource_identifier,
        resource_type,
        options \\ []
      ) do
    url_path = "/log-levels/#{URI.encode(resource_identifier)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
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
      200
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
  Gets information about a service profile.
  """
  def get_service_profile(%Client{} = client, id, options \\ []) do
    url_path = "/service-profiles/#{URI.encode(id)}"
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
  Gets information about a wireless device.
  """
  def get_wireless_device(%Client{} = client, identifier, identifier_type, options \\ []) do
    url_path = "/wireless-devices/#{URI.encode(identifier)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(identifier_type) do
        [{"identifierType", identifier_type} | query_params]
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
  Gets operating information about a wireless device.
  """
  def get_wireless_device_statistics(%Client{} = client, wireless_device_id, options \\ []) do
    url_path = "/wireless-devices/#{URI.encode(wireless_device_id)}/statistics"
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
      200
    )
  end

  @doc """
  Gets information about a wireless gateway.
  """
  def get_wireless_gateway(%Client{} = client, identifier, identifier_type, options \\ []) do
    url_path = "/wireless-gateways/#{URI.encode(identifier)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(identifier_type) do
        [{"identifierType", identifier_type} | query_params]
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
  Gets the ID of the certificate that is currently associated with a wireless
  gateway.
  """
  def get_wireless_gateway_certificate(%Client{} = client, id, options \\ []) do
    url_path = "/wireless-gateways/#{URI.encode(id)}/certificate"
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
  Gets the firmware version and other information about a wireless gateway.
  """
  def get_wireless_gateway_firmware_information(%Client{} = client, id, options \\ []) do
    url_path = "/wireless-gateways/#{URI.encode(id)}/firmware-information"
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
  Gets operating information about a wireless gateway.
  """
  def get_wireless_gateway_statistics(%Client{} = client, wireless_gateway_id, options \\ []) do
    url_path = "/wireless-gateways/#{URI.encode(wireless_gateway_id)}/statistics"
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
      200
    )
  end

  @doc """
  Gets information about a wireless gateway task.
  """
  def get_wireless_gateway_task(%Client{} = client, id, options \\ []) do
    url_path = "/wireless-gateways/#{URI.encode(id)}/tasks"
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
  Gets information about a wireless gateway task definition.
  """
  def get_wireless_gateway_task_definition(%Client{} = client, id, options \\ []) do
    url_path = "/wireless-gateway-task-definitions/#{URI.encode(id)}"
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
  Lists the device profiles registered to your AWS account.
  """
  def list_device_profiles(
        %Client{} = client,
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
  Lists the wireless devices registered to your AWS account.
  """
  def list_wireless_devices(
        %Client{} = client,
        destination_name \\ nil,
        device_profile_id \\ nil,
        max_results \\ nil,
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  Sets the log-level override for a resource-ID and resource-type, could be a
  wireless gateway or a wireless device.
  """
  def put_resource_log_level(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/log-levels/#{URI.encode(resource_identifier)}"
    headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  Remove log-level overrides if any for all resources (both wireless devices and
  wireless gateways).
  """
  def reset_all_resource_log_levels(%Client{} = client, input, options \\ []) do
    url_path = "/log-levels"
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
      204
    )
  end

  @doc """
  Remove log-level override if any for a specific resource-ID and resource-type,
  could be a wireless device or a wireless gateway.
  """
  def reset_resource_log_level(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/log-levels/#{URI.encode(resource_identifier)}"
    headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  Sends a decrypted application data frame to a device.
  """
  def send_data_to_wireless_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{URI.encode(id)}/data"
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
      202
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

    Request.request_rest(
      client,
      metadata(),
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
    url_path = "/wireless-devices/#{URI.encode(id)}/test"
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

    Request.request_rest(
      client,
      metadata(),
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
    url_path = "/destinations/#{URI.encode(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Set default log level, or log levels by resource types, could be for wireless
  device log options or wireless gateways log options.

  This is to control the log messages that will be displayed in CloudWatch.
  """
  def update_log_levels_by_resource_types(%Client{} = client, input, options \\ []) do
    url_path = "/log-levels"
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
      200
    )
  end

  @doc """
  Updates properties of a partner account.
  """
  def update_partner_account(%Client{} = client, partner_account_id, input, options \\ []) do
    url_path = "/partner-accounts/#{URI.encode(partner_account_id)}"
    headers = []

    {query_params, input} =
      [
        {"PartnerType", "partnerType"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
    url_path = "/wireless-devices/#{URI.encode(id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
    url_path = "/wireless-gateways/#{URI.encode(id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
