# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTWireless do
  @moduledoc """
  AWS IoT Wireless provides bi-directional communication between
  internet-connected
  wireless devices and the AWS Cloud.

  To onboard both LoRaWAN and Sidewalk devices to AWS
  IoT, use the IoT Wireless API. These wireless devices use the Low Power Wide
  Area
  Networking (LPWAN) communication protocol to communicate with AWS IoT.

  Using the API, you can perform create, read, update, and delete operations for
  your
  wireless devices, gateways, destinations, and profiles. After onboarding your
  devices,
  you can use the API operations to set log levels and monitor your devices with
  CloudWatch.

  You can also use the API operations to create multicast groups and schedule a
  multicast session for sending a downlink message to devices in the group. By
  using
  Firmware Updates Over-The-Air (FUOTA) API operations, you can create a FUOTA
  task and
  schedule a session to update the firmware of individual devices or an entire
  group of
  devices in a multicast group.

  To connect to the AWS IoT Wireless Service, use the Service endpoints as
  described in
  [IoT Wireless Service endpoints](https://docs.aws.amazon.com/general/latest/gr/iot-lorawan.html#iot-wireless_region)
  in the *AWS General Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_resource_log_level_request() :: %{
        required("ResourceType") => String.t()
      }

  """
  @type get_resource_log_level_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_destinations_response() :: %{
        "DestinationList" => list(destinations()()),
        "NextToken" => String.t()
      }

  """
  @type list_destinations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      summary_metric_configuration() :: %{
        "Status" => list(any())
      }

  """
  @type summary_metric_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_status_resource_type_event_configuration() :: %{
        "LoRaWAN" => lo_ra_w_a_n_connection_status_resource_type_event_configuration()
      }

  """
  @type connection_status_resource_type_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_wireless_device_with_multicast_group_request() :: %{
        required("WirelessDeviceId") => String.t()
      }

  """
  @type associate_wireless_device_with_multicast_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      position_solver_configurations() :: %{
        "SemtechGnss" => semtech_gnss_configuration()
      }

  """
  @type position_solver_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_single_wireless_device_import_task_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("DeviceName") => String.t(),
        optional("Tags") => list(tag()()),
        required("DestinationName") => String.t(),
        required("Sidewalk") => sidewalk_single_start_import_info()
      }

  """
  @type start_single_wireless_device_import_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_position_configurations_response() :: %{
        "NextToken" => String.t(),
        "PositionConfigurationList" => list(position_configuration_item()())
      }

  """
  @type list_position_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_data_to_multicast_group_request() :: %{
        required("PayloadData") => String.t(),
        required("WirelessMetadata") => multicast_wireless_metadata()
      }

  """
  @type send_data_to_multicast_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_destination_response() :: %{
        "Arn" => String.t(),
        "Name" => String.t()
      }

  """
  @type create_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_resource_position_request() :: %{
        optional("GeoJsonPayload") => binary(),
        required("ResourceType") => list(any())
      }

  """
  @type update_resource_position_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_network_analyzer_configuration_response() :: %{
        "Arn" => String.t(),
        "Name" => String.t()
      }

  """
  @type create_network_analyzer_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_device_request() :: %{
        required("IdentifierType") => list(any())
      }

  """
  @type get_wireless_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_fuota_task_request() :: %{
        optional("LoRaWAN") => lo_ra_w_a_n_start_fuota_task()
      }

  """
  @type start_fuota_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      abp_v1_1() :: %{
        "DevAddr" => String.t(),
        "FCntStart" => integer(),
        "SessionKeys" => session_keys_abp_v1_1()
      }

  """
  @type abp_v1_1() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_connection_status_event_notification_configurations() :: %{
        "GatewayEuiEventTopic" => list(any())
      }

  """
  @type lo_ra_w_a_n_connection_status_event_notification_configurations() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      summary_metric_query() :: %{
        "AggregationPeriod" => list(any()),
        "Dimensions" => list(dimension()()),
        "EndTimestamp" => non_neg_integer(),
        "MetricName" => list(any()),
        "QueryId" => String.t(),
        "StartTimestamp" => non_neg_integer()
      }

  """
  @type summary_metric_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_multicast_session() :: %{
        "DlDr" => integer(),
        "DlFreq" => integer(),
        "PingSlotPeriod" => integer(),
        "SessionStartTime" => non_neg_integer(),
        "SessionTimeout" => integer()
      }

  """
  @type lo_ra_w_a_n_multicast_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_multicast_group_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LoRaWAN" => lo_ra_w_a_n_multicast_get(),
        "Name" => String.t(),
        "Status" => String.t()
      }

  """
  @type get_multicast_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_profile_request() :: %{}

  """
  @type get_device_profile_request() :: %{}

  @typedoc """

  ## Example:

      network_analyzer_configurations() :: %{
        "Arn" => String.t(),
        "Name" => String.t()
      }

  """
  @type network_analyzer_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_wireless_gateway_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("Tags") => list(tag()()),
        required("LoRaWAN") => lo_ra_w_a_n_gateway()
      }

  """
  @type create_wireless_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_destination_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("Expression") => String.t(),
        required("ExpressionType") => list(any()),
        required("Name") => String.t(),
        required("RoleArn") => String.t()
      }

  """
  @type create_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_bulk_associate_wireless_device_with_multicast_group_response() :: %{}

  """
  @type start_bulk_associate_wireless_device_with_multicast_group_response() :: %{}

  @typedoc """

  ## Example:

      start_bulk_disassociate_wireless_device_from_multicast_group_response() :: %{}

  """
  @type start_bulk_disassociate_wireless_device_from_multicast_group_response() :: %{}

  @typedoc """

  ## Example:

      downlink_queue_message() :: %{
        "LoRaWAN" => lo_ra_w_a_n_send_data_to_device(),
        "MessageId" => String.t(),
        "ReceivedAt" => String.t(),
        "TransmitMode" => integer()
      }

  """
  @type downlink_queue_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_profile_request() :: %{}

  """
  @type get_service_profile_request() :: %{}

  @typedoc """

  ## Example:

      get_position_request() :: %{
        required("ResourceType") => list(any())
      }

  """
  @type get_position_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_profile_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LoRaWAN" => lo_ra_w_a_n_device_profile(),
        "Name" => String.t(),
        "Sidewalk" => sidewalk_get_device_profile()
      }

  """
  @type get_device_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_analyzer_configuration_request() :: %{}

  """
  @type get_network_analyzer_configuration_request() :: %{}

  @typedoc """

  ## Example:

      update_wireless_device_import_task_request() :: %{
        required("Sidewalk") => sidewalk_update_import_info()
      }

  """
  @type update_wireless_device_import_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      send_data_to_wireless_device_request() :: %{
        optional("WirelessMetadata") => wireless_metadata(),
        required("PayloadData") => String.t(),
        required("TransmitMode") => integer()
      }

  """
  @type send_data_to_wireless_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      abp_v1_0_x() :: %{
        "DevAddr" => String.t(),
        "FCntStart" => integer(),
        "SessionKeys" => session_keys_abp_v1_0_x()
      }

  """
  @type abp_v1_0_x() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sidewalk_update_import_info() :: %{
        "DeviceCreationFile" => String.t()
      }

  """
  @type sidewalk_update_import_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      proximity_resource_type_event_configuration() :: %{
        "Sidewalk" => sidewalk_resource_type_event_configuration()
      }

  """
  @type proximity_resource_type_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wireless_metadata() :: %{
        "LoRaWAN" => lo_ra_w_a_n_send_data_to_device(),
        "Sidewalk" => sidewalk_send_data_to_device()
      }

  """
  @type wireless_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_analyzer_configuration_response() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "MulticastGroups" => list(String.t()()),
        "Name" => String.t(),
        "TraceContent" => trace_content(),
        "WirelessDevices" => list(String.t()()),
        "WirelessGateways" => list(String.t()())
      }

  """
  @type get_network_analyzer_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_configuration_by_resource_types_response() :: %{
        "ConnectionStatus" => connection_status_resource_type_event_configuration(),
        "DeviceRegistrationState" => device_registration_state_resource_type_event_configuration(),
        "Join" => join_resource_type_event_configuration(),
        "MessageDeliveryStatus" => message_delivery_status_resource_type_event_configuration(),
        "Proximity" => proximity_resource_type_event_configuration()
      }

  """
  @type get_event_configuration_by_resource_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_position_response() :: %{
        "GeoJsonPayload" => binary()
      }

  """
  @type get_resource_position_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_wireless_device_response() :: %{
        "Result" => String.t()
      }

  """
  @type test_wireless_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_registration_state_event_configuration() :: %{
        "Sidewalk" => sidewalk_event_notification_configurations(),
        "WirelessDeviceIdEventTopic" => list(any())
      }

  """
  @type device_registration_state_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_wireless_gateway_request() :: %{}

  """
  @type delete_wireless_gateway_request() :: %{}

  @typedoc """

  ## Example:

      get_destination_response() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Expression" => String.t(),
        "ExpressionType" => list(any()),
        "Name" => String.t(),
        "RoleArn" => String.t()
      }

  """
  @type get_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_fuota_task_get_info() :: %{
        "RfRegion" => String.t(),
        "StartTime" => non_neg_integer()
      }

  """
  @type lo_ra_w_a_n_fuota_task_get_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_delivery_status_event_configuration() :: %{
        "Sidewalk" => sidewalk_event_notification_configurations(),
        "WirelessDeviceIdEventTopic" => list(any())
      }

  """
  @type message_delivery_status_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      global_identity() :: %{
        "GeranCid" => integer(),
        "Lac" => integer()
      }

  """
  @type global_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_gateway_certificate_response() :: %{
        "IotCertificateId" => String.t(),
        "LoRaWANNetworkServerCertificateId" => String.t()
      }

  """
  @type get_wireless_gateway_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_position_estimate_response() :: %{
        "GeoJsonPayload" => binary()
      }

  """
  @type get_position_estimate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_metric_configuration_request() :: %{
        optional("SummaryMetric") => summary_metric_configuration()
      }

  """
  @type update_metric_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_wireless_gateway_with_certificate_request() :: %{
        required("IotCertificateId") => String.t()
      }

  """
  @type associate_wireless_gateway_with_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_log_level_response() :: %{
        "LogLevel" => list(any())
      }

  """
  @type get_resource_log_level_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cell_towers() :: %{
        "Cdma" => list(cdma_obj()()),
        "Gsm" => list(gsm_obj()()),
        "Lte" => list(lte_obj()()),
        "Tdscdma" => list(tdscdma_obj()()),
        "Wcdma" => list(wcdma_obj()())
      }

  """
  @type cell_towers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_multicast_groups_by_fuota_task_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_multicast_groups_by_fuota_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_service_profile_response() :: %{}

  """
  @type delete_service_profile_response() :: %{}

  @typedoc """

  ## Example:

      get_service_profile_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LoRaWAN" => lo_ra_w_a_n_get_service_profile_info(),
        "Name" => String.t()
      }

  """
  @type get_service_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sidewalk_event_notification_configurations() :: %{
        "AmazonIdEventTopic" => list(any())
      }

  """
  @type sidewalk_event_notification_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_log_levels_by_resource_types_response() :: %{}

  """
  @type update_log_levels_by_resource_types_response() :: %{}

  @typedoc """

  ## Example:

      destinations() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Expression" => String.t(),
        "ExpressionType" => list(any()),
        "Name" => String.t(),
        "RoleArn" => String.t()
      }

  """
  @type destinations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      imported_sidewalk_device() :: %{
        "LastUpdateTime" => non_neg_integer(),
        "OnboardingStatus" => list(any()),
        "OnboardingStatusReason" => String.t(),
        "SidewalkManufacturingSn" => String.t()
      }

  """
  @type imported_sidewalk_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_list_item() :: %{
        "DownlinkFrequency" => integer(),
        "GatewayId" => String.t()
      }

  """
  @type gateway_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_profile() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t()
      }

  """
  @type device_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sidewalk_update_account() :: %{
        "AppServerPrivateKey" => String.t()
      }

  """
  @type sidewalk_update_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_network_analyzer_configuration_response() :: %{}

  """
  @type delete_network_analyzer_configuration_response() :: %{}

  @typedoc """

  ## Example:

      create_multicast_group_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type create_multicast_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      join_event_configuration() :: %{
        "LoRaWAN" => lo_ra_w_a_n_join_event_notification_configurations(),
        "WirelessDeviceIdEventTopic" => list(any())
      }

  """
  @type join_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_position_configuration_request() :: %{
        required("ResourceType") => list(any())
      }

  """
  @type get_position_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_metric_configuration_response() :: %{
        "SummaryMetric" => summary_metric_configuration()
      }

  """
  @type get_metric_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_update_gateway_task_create() :: %{
        "CurrentVersion" => lo_ra_w_a_n_gateway_version(),
        "SigKeyCrc" => float(),
        "UpdateSignature" => String.t(),
        "UpdateVersion" => lo_ra_w_a_n_gateway_version()
      }

  """
  @type lo_ra_w_a_n_update_gateway_task_create() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_wireless_gateway_task_definitions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("TaskDefinitionType") => list(any())
      }

  """
  @type list_wireless_gateway_task_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_wireless_gateway_task_entry() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LoRaWAN" => lo_ra_w_a_n_update_gateway_task_entry()
      }

  """
  @type update_wireless_gateway_task_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      participating_gateways_multicast() :: %{
        "GatewayList" => list(String.t()()),
        "TransmissionInterval" => integer()
      }

  """
  @type participating_gateways_multicast() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trace_content() :: %{
        "LogLevel" => list(any()),
        "MulticastFrameInfo" => list(any()),
        "WirelessDeviceFrameInfo" => list(any())
      }

  """
  @type trace_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_wireless_device_from_multicast_group_response() :: %{}

  """
  @type disassociate_wireless_device_from_multicast_group_response() :: %{}

  @typedoc """

  ## Example:

      associate_multicast_group_with_fuota_task_response() :: %{}

  """
  @type associate_multicast_group_with_fuota_task_response() :: %{}

  @typedoc """

  ## Example:

      delete_queued_messages_response() :: %{}

  """
  @type delete_queued_messages_response() :: %{}

  @typedoc """

  ## Example:

      get_multicast_group_request() :: %{}

  """
  @type get_multicast_group_request() :: %{}

  @typedoc """

  ## Example:

      get_wireless_gateway_task_definition_request() :: %{}

  """
  @type get_wireless_gateway_task_definition_request() :: %{}

  @typedoc """

  ## Example:

      delete_fuota_task_response() :: %{}

  """
  @type delete_fuota_task_response() :: %{}

  @typedoc """

  ## Example:

      accuracy() :: %{
        "HorizontalAccuracy" => float(),
        "VerticalAccuracy" => float()
      }

  """
  @type accuracy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_fuota_task_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "Descriptor" => String.t(),
        "FirmwareUpdateImage" => String.t(),
        "FirmwareUpdateRole" => String.t(),
        "FragmentIntervalMS" => integer(),
        "FragmentSizeBytes" => integer(),
        "Id" => String.t(),
        "LoRaWAN" => lo_ra_w_a_n_fuota_task_get_info(),
        "Name" => String.t(),
        "RedundancyPercent" => integer(),
        "Status" => list(any())
      }

  """
  @type get_fuota_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wireless_gateway_statistics() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LastUplinkReceivedAt" => String.t(),
        "LoRaWAN" => lo_ra_w_a_n_gateway(),
        "Name" => String.t()
      }

  """
  @type wireless_gateway_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sidewalk_device_metadata() :: %{
        "BatteryLevel" => list(any()),
        "DeviceState" => list(any()),
        "Event" => list(any()),
        "Rssi" => integer()
      }

  """
  @type sidewalk_device_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_fuota_task_response() :: %{}

  """
  @type update_fuota_task_response() :: %{}

  @typedoc """

  ## Example:

      put_position_configuration_response() :: %{}

  """
  @type put_position_configuration_response() :: %{}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_update_gateway_task_entry() :: %{
        "CurrentVersion" => lo_ra_w_a_n_gateway_version(),
        "UpdateVersion" => lo_ra_w_a_n_gateway_version()
      }

  """
  @type lo_ra_w_a_n_update_gateway_task_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_queued_messages_request() :: %{
        optional("WirelessDeviceType") => list(any()),
        required("MessageId") => String.t()
      }

  """
  @type delete_queued_messages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_configuration_by_resource_types_request() :: %{}

  """
  @type get_event_configuration_by_resource_types_request() :: %{}

  @typedoc """

  ## Example:

      list_partner_accounts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_partner_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_event_configuration_request() :: %{
        optional("PartnerType") => list(any()),
        required("IdentifierType") => list(any())
      }

  """
  @type get_resource_event_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_network_analyzer_configuration_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("MulticastGroups") => list(String.t()()),
        optional("Tags") => list(tag()()),
        optional("TraceContent") => trace_content(),
        optional("WirelessDevices") => list(String.t()()),
        optional("WirelessGateways") => list(String.t()()),
        required("Name") => String.t()
      }

  """
  @type create_network_analyzer_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queued_messages_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("WirelessDeviceType") => list(any())
      }

  """
  @type list_queued_messages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_fuota_tasks_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_fuota_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_wireless_device_from_fuota_task_response() :: %{}

  """
  @type disassociate_wireless_device_from_fuota_task_response() :: %{}

  @typedoc """

  ## Example:

      otaa_v1_1() :: %{
        "AppKey" => String.t(),
        "JoinEui" => String.t(),
        "NwkKey" => String.t()
      }

  """
  @type otaa_v1_1() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_network_analyzer_configuration_response() :: %{}

  """
  @type update_network_analyzer_configuration_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_wireless_gateway_from_certificate_request() :: %{}

  """
  @type disassociate_wireless_gateway_from_certificate_request() :: %{}

  @typedoc """

  ## Example:

      update_position_response() :: %{}

  """
  @type update_position_response() :: %{}

  @typedoc """

  ## Example:

      associate_wireless_gateway_with_thing_response() :: %{}

  """
  @type associate_wireless_gateway_with_thing_response() :: %{}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_update_device() :: %{
        "AbpV1_0_x" => update_abp_v1_0_x(),
        "AbpV1_1" => update_abp_v1_1(),
        "DeviceProfileId" => String.t(),
        "FPorts" => update_f_ports(),
        "ServiceProfileId" => String.t()
      }

  """
  @type lo_ra_w_a_n_update_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_wireless_gateway_response() :: %{}

  """
  @type delete_wireless_gateway_response() :: %{}

  @typedoc """

  ## Example:

      get_resource_position_request() :: %{
        required("ResourceType") => list(any())
      }

  """
  @type get_resource_position_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_position_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceType") => list(any())
      }

  """
  @type list_position_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gsm_local_id() :: %{
        "Bcch" => integer(),
        "Bsic" => integer()
      }

  """
  @type gsm_local_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_wireless_device_request() :: %{
        optional("Description") => String.t(),
        optional("DestinationName") => String.t(),
        optional("LoRaWAN") => lo_ra_w_a_n_update_device(),
        optional("Name") => String.t(),
        optional("Positioning") => list(any())
      }

  """
  @type update_wireless_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_service_profile_request() :: %{}

  """
  @type delete_service_profile_request() :: %{}

  @typedoc """

  ## Example:

      delete_wireless_device_import_task_request() :: %{}

  """
  @type delete_wireless_device_import_task_request() :: %{}

  @typedoc """

  ## Example:

      update_resource_position_response() :: %{}

  """
  @type update_resource_position_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_wireless_device_from_multicast_group_request() :: %{}

  """
  @type disassociate_wireless_device_from_multicast_group_request() :: %{}

  @typedoc """

  ## Example:

      start_wireless_device_import_task_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type start_wireless_device_import_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_wireless_device_import_tasks_response() :: %{
        "NextToken" => String.t(),
        "WirelessDeviceImportTaskList" => list(wireless_device_import_task()())
      }

  """
  @type list_wireless_device_import_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_profile() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t()
      }

  """
  @type service_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_wireless_device_response() :: %{}

  """
  @type deregister_wireless_device_response() :: %{}

  @typedoc """

  ## Example:

      update_multicast_group_request() :: %{
        optional("Description") => String.t(),
        optional("LoRaWAN") => lo_ra_w_a_n_multicast(),
        optional("Name") => String.t()
      }

  """
  @type update_multicast_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_multicast_group_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("Tags") => list(tag()()),
        required("LoRaWAN") => lo_ra_w_a_n_multicast()
      }

  """
  @type create_multicast_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_fuota_task_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type create_fuota_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_service_profile_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type create_service_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_wireless_gateways_response() :: %{
        "NextToken" => String.t(),
        "WirelessGatewayList" => list(wireless_gateway_statistics()())
      }

  """
  @type list_wireless_gateways_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_wireless_devices_response() :: %{
        "NextToken" => String.t(),
        "WirelessDeviceList" => list(wireless_device_statistics()())
      }

  """
  @type list_wireless_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_gateway() :: %{
        "Beaconing" => beaconing(),
        "GatewayEui" => String.t(),
        "JoinEuiFilters" => list(list(String.t()())()),
        "MaxEirp" => float(),
        "NetIdFilters" => list(String.t()()),
        "RfRegion" => String.t(),
        "SubBands" => list(integer()())
      }

  """
  @type lo_ra_w_a_n_gateway() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_aws_account_with_partner_account_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("Sidewalk") => sidewalk_account_info()
      }

  """
  @type associate_aws_account_with_partner_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_position_response() :: %{
        "Accuracy" => accuracy(),
        "Position" => list(float()()),
        "SolverProvider" => list(any()),
        "SolverType" => list(any()),
        "SolverVersion" => String.t(),
        "Timestamp" => String.t()
      }

  """
  @type get_position_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wcdma_local_id() :: %{
        "Psc" => integer(),
        "Uarfcndl" => integer()
      }

  """
  @type wcdma_local_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_multicast_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_multicast_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_keys_abp_v1_1() :: %{
        "AppSKey" => String.t(),
        "FNwkSIntKey" => String.t(),
        "NwkSEncKey" => String.t(),
        "SNwkSIntKey" => String.t()
      }

  """
  @type session_keys_abp_v1_1() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_device_profile() :: %{
        "ClassBTimeout" => integer(),
        "ClassCTimeout" => integer(),
        "FactoryPresetFreqsList" => list(integer()()),
        "MacVersion" => String.t(),
        "MaxDutyCycle" => integer(),
        "MaxEirp" => integer(),
        "PingSlotDr" => integer(),
        "PingSlotFreq" => integer(),
        "PingSlotPeriod" => integer(),
        "RegParamsRevision" => String.t(),
        "RfRegion" => String.t(),
        "RxDataRate2" => integer(),
        "RxDelay1" => integer(),
        "RxDrOffset1" => integer(),
        "RxFreq2" => integer(),
        "Supports32BitFCnt" => boolean(),
        "SupportsClassB" => boolean(),
        "SupportsClassC" => boolean(),
        "SupportsJoin" => boolean()
      }

  """
  @type lo_ra_w_a_n_device_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_abp_v1_0_x() :: %{
        "FCntStart" => integer()
      }

  """
  @type update_abp_v1_0_x() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_multicast_group_response() :: %{}

  """
  @type update_multicast_group_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_multicast_group_from_fuota_task_response() :: %{}

  """
  @type disassociate_multicast_group_from_fuota_task_response() :: %{}

  @typedoc """

  ## Example:

      positioning() :: %{
        "ClockSync" => integer(),
        "Gnss" => integer(),
        "Stream" => integer()
      }

  """
  @type positioning() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cdma_local_id() :: %{
        "CdmaChannel" => integer(),
        "PnOffset" => integer()
      }

  """
  @type cdma_local_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wcdma_nmr_obj() :: %{
        "PathLoss" => integer(),
        "Psc" => integer(),
        "Rscp" => integer(),
        "Uarfcndl" => integer(),
        "UtranCid" => integer()
      }

  """
  @type wcdma_nmr_obj() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gsm_nmr_obj() :: %{
        "Bcch" => integer(),
        "Bsic" => integer(),
        "GlobalIdentity" => global_identity(),
        "RxLevel" => integer()
      }

  """
  @type gsm_nmr_obj() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lte_local_id() :: %{
        "Earfcn" => integer(),
        "Pci" => integer()
      }

  """
  @type lte_local_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_wireless_device_with_multicast_group_response() :: %{}

  """
  @type associate_wireless_device_with_multicast_group_response() :: %{}

  @typedoc """

  ## Example:

      get_metric_configuration_request() :: %{}

  """
  @type get_metric_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_wireless_gateway_task_response() :: %{
        "LastUplinkReceivedAt" => String.t(),
        "Status" => list(any()),
        "TaskCreatedAt" => String.t(),
        "WirelessGatewayId" => String.t(),
        "WirelessGatewayTaskDefinitionId" => String.t()
      }

  """
  @type get_wireless_gateway_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_aws_account_from_partner_account_request() :: %{
        required("PartnerType") => list(any())
      }

  """
  @type disassociate_aws_account_from_partner_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_metrics_request() :: %{
        optional("SummaryMetricQueries") => list(summary_metric_query()())
      }

  """
  @type get_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_wireless_device_request() :: %{}

  """
  @type delete_wireless_device_request() :: %{}

  @typedoc """

  ## Example:

      delete_fuota_task_request() :: %{}

  """
  @type delete_fuota_task_request() :: %{}

  @typedoc """

  ## Example:

      get_wireless_gateway_response() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LoRaWAN" => lo_ra_w_a_n_gateway(),
        "Name" => String.t(),
        "ThingArn" => String.t(),
        "ThingName" => String.t()
      }

  """
  @type get_wireless_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_gateway_firmware_information_response() :: %{
        "LoRaWAN" => lo_ra_w_a_n_gateway_current_version()
      }

  """
  @type get_wireless_gateway_firmware_information_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_fuota_task_request() :: %{}

  """
  @type get_fuota_task_request() :: %{}

  @typedoc """

  ## Example:

      update_wireless_device_import_task_response() :: %{}

  """
  @type update_wireless_device_import_task_response() :: %{}

  @typedoc """

  ## Example:

      get_partner_account_response() :: %{
        "AccountLinked" => boolean(),
        "Sidewalk" => sidewalk_account_info_with_fingerprint()
      }

  """
  @type get_partner_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_device() :: %{
        "AbpV1_0_x" => abp_v1_0_x(),
        "AbpV1_1" => abp_v1_1(),
        "DevEui" => String.t(),
        "DeviceProfileId" => String.t(),
        "FPorts" => f_ports(),
        "OtaaV1_0_x" => otaa_v1_0_x(),
        "OtaaV1_1" => otaa_v1_1(),
        "ServiceProfileId" => String.t()
      }

  """
  @type lo_ra_w_a_n_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_destination_response() :: %{}

  """
  @type delete_destination_response() :: %{}

  @typedoc """

  ## Example:

      wi_fi_access_point() :: %{
        "MacAddress" => String.t(),
        "Rss" => integer()
      }

  """
  @type wi_fi_access_point() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_wireless_gateway_with_thing_request() :: %{
        required("ThingArn") => String.t()
      }

  """
  @type associate_wireless_gateway_with_thing_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gnss() :: %{
        "AssistAltitude" => float(),
        "AssistPosition" => list(float()()),
        "CaptureTime" => float(),
        "CaptureTimeAccuracy" => float(),
        "Payload" => String.t(),
        "Use2DSolver" => boolean()
      }

  """
  @type gnss() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_resource_event_configuration_request() :: %{
        optional("ConnectionStatus") => connection_status_event_configuration(),
        optional("DeviceRegistrationState") => device_registration_state_event_configuration(),
        optional("Join") => join_event_configuration(),
        optional("MessageDeliveryStatus") => message_delivery_status_event_configuration(),
        optional("PartnerType") => list(any()),
        optional("Proximity") => proximity_event_configuration(),
        required("IdentifierType") => list(any())
      }

  """
  @type update_resource_event_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_device_profile_response() :: %{}

  """
  @type delete_device_profile_response() :: %{}

  @typedoc """

  ## Example:

      get_log_levels_by_resource_types_request() :: %{}

  """
  @type get_log_levels_by_resource_types_request() :: %{}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_send_data_to_device() :: %{
        "FPort" => integer(),
        "ParticipatingGateways" => participating_gateways()
      }

  """
  @type lo_ra_w_a_n_send_data_to_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_aws_account_from_partner_account_response() :: %{}

  """
  @type disassociate_aws_account_from_partner_account_response() :: %{}

  @typedoc """

  ## Example:

      sidewalk_create_device_profile() :: %{}

  """
  @type sidewalk_create_device_profile() :: %{}

  @typedoc """

  ## Example:

      disassociate_wireless_gateway_from_certificate_response() :: %{}

  """
  @type disassociate_wireless_gateway_from_certificate_response() :: %{}

  @typedoc """

  ## Example:

      create_fuota_task_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("Descriptor") => String.t(),
        optional("FragmentIntervalMS") => integer(),
        optional("FragmentSizeBytes") => integer(),
        optional("LoRaWAN") => lo_ra_w_a_n_fuota_task(),
        optional("Name") => String.t(),
        optional("RedundancyPercent") => integer(),
        optional("Tags") => list(tag()()),
        required("FirmwareUpdateImage") => String.t(),
        required("FirmwareUpdateRole") => String.t()
      }

  """
  @type create_fuota_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tdscdma_nmr_obj() :: %{
        "CellParams" => integer(),
        "PathLoss" => integer(),
        "Rscp" => integer(),
        "Uarfcn" => integer(),
        "UtranCid" => integer()
      }

  """
  @type tdscdma_nmr_obj() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_gateway_request() :: %{
        required("IdentifierType") => list(any())
      }

  """
  @type get_wireless_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sidewalk_account_info_with_fingerprint() :: %{
        "AmazonId" => String.t(),
        "Arn" => String.t(),
        "Fingerprint" => String.t()
      }

  """
  @type sidewalk_account_info_with_fingerprint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_wireless_gateway_response() :: %{}

  """
  @type update_wireless_gateway_response() :: %{}

  @typedoc """

  ## Example:

      tdscdma_obj() :: %{
        "Lac" => integer(),
        "Mcc" => integer(),
        "Mnc" => integer(),
        "PathLoss" => integer(),
        "Rscp" => integer(),
        "TdscdmaLocalId" => tdscdma_local_id(),
        "TdscdmaNmr" => list(tdscdma_nmr_obj()()),
        "TdscdmaTimingAdvance" => integer(),
        "UtranCid" => integer()
      }

  """
  @type tdscdma_obj() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_device_metadata() :: %{
        "DataRate" => integer(),
        "DevEui" => String.t(),
        "FPort" => integer(),
        "Frequency" => integer(),
        "Gateways" => list(lo_ra_w_a_n_gateway_metadata()()),
        "PublicGateways" => list(lo_ra_w_a_n_public_gateway_metadata()()),
        "Timestamp" => String.t()
      }

  """
  @type lo_ra_w_a_n_device_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_data_to_multicast_group_response() :: %{
        "MessageId" => String.t()
      }

  """
  @type send_data_to_multicast_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_multicast_group_from_fuota_task_request() :: %{}

  """
  @type disassociate_multicast_group_from_fuota_task_request() :: %{}

  @typedoc """

  ## Example:

      list_devices_for_wireless_device_import_task_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any()),
        required("Id") => String.t()
      }

  """
  @type list_devices_for_wireless_device_import_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_wireless_device_response() :: %{}

  """
  @type update_wireless_device_response() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_destinations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_destinations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_wireless_device_from_thing_response() :: %{}

  """
  @type disassociate_wireless_device_from_thing_response() :: %{}

  @typedoc """

  ## Example:

      sidewalk_create_wireless_device() :: %{
        "DeviceProfileId" => String.t()
      }

  """
  @type sidewalk_create_wireless_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_wireless_gateway_task_definition_response() :: %{}

  """
  @type delete_wireless_gateway_task_definition_response() :: %{}

  @typedoc """

  ## Example:

      delete_wireless_gateway_task_definition_request() :: %{}

  """
  @type delete_wireless_gateway_task_definition_request() :: %{}

  @typedoc """

  ## Example:

      update_event_configuration_by_resource_types_request() :: %{
        optional("ConnectionStatus") => connection_status_resource_type_event_configuration(),
        optional("DeviceRegistrationState") => device_registration_state_resource_type_event_configuration(),
        optional("Join") => join_resource_type_event_configuration(),
        optional("MessageDeliveryStatus") => message_delivery_status_resource_type_event_configuration(),
        optional("Proximity") => proximity_resource_type_event_configuration()
      }

  """
  @type update_event_configuration_by_resource_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_event_configuration_response() :: %{
        "ConnectionStatus" => connection_status_event_configuration(),
        "DeviceRegistrationState" => device_registration_state_event_configuration(),
        "Join" => join_event_configuration(),
        "MessageDeliveryStatus" => message_delivery_status_event_configuration(),
        "Proximity" => proximity_event_configuration()
      }

  """
  @type get_resource_event_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_data_to_wireless_device_response() :: %{
        "MessageId" => String.t()
      }

  """
  @type send_data_to_wireless_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_status_event_configuration() :: %{
        "LoRaWAN" => lo_ra_w_a_n_connection_status_event_notification_configurations(),
        "WirelessGatewayIdEventTopic" => list(any())
      }

  """
  @type connection_status_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_aws_account_with_partner_account_response() :: %{
        "Arn" => String.t(),
        "Sidewalk" => sidewalk_account_info()
      }

  """
  @type associate_aws_account_with_partner_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_destination_request() :: %{}

  """
  @type delete_destination_request() :: %{}

  @typedoc """

  ## Example:

      event_configuration_item() :: %{
        "Events" => event_notification_item_configurations(),
        "Identifier" => String.t(),
        "IdentifierType" => list(any()),
        "PartnerType" => list(any())
      }

  """
  @type event_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_abp_v1_1() :: %{
        "FCntStart" => integer()
      }

  """
  @type update_abp_v1_1() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_service_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_wireless_gateway_from_thing_request() :: %{}

  """
  @type disassociate_wireless_gateway_from_thing_request() :: %{}

  @typedoc """

  ## Example:

      imported_wireless_device() :: %{
        "Sidewalk" => imported_sidewalk_device()
      }

  """
  @type imported_wireless_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_gateway_task_request() :: %{}

  """
  @type get_wireless_gateway_task_request() :: %{}

  @typedoc """

  ## Example:

      wireless_gateway_event_log_option() :: %{
        "Event" => list(any()),
        "LogLevel" => list(any())
      }

  """
  @type wireless_gateway_event_log_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_wireless_gateway_task_request() :: %{
        required("WirelessGatewayTaskDefinitionId") => String.t()
      }

  """
  @type create_wireless_gateway_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      semtech_gnss_configuration() :: %{
        "Fec" => list(any()),
        "Status" => list(any())
      }

  """
  @type semtech_gnss_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_wireless_device_from_thing_request() :: %{}

  """
  @type disassociate_wireless_device_from_thing_request() :: %{}

  @typedoc """

  ## Example:

      list_multicast_groups_by_fuota_task_response() :: %{
        "MulticastGroupList" => list(multicast_group_by_fuota_task()()),
        "NextToken" => String.t()
      }

  """
  @type list_multicast_groups_by_fuota_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_log_level_response() :: %{}

  """
  @type put_resource_log_level_response() :: %{}

  @typedoc """

  ## Example:

      get_service_endpoint_request() :: %{
        optional("ServiceType") => list(any())
      }

  """
  @type get_service_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_profiles_response() :: %{
        "NextToken" => String.t(),
        "ServiceProfileList" => list(service_profile()())
      }

  """
  @type list_service_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_wireless_device_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("LoRaWAN") => lo_ra_w_a_n_device(),
        optional("Name") => String.t(),
        optional("Positioning") => list(any()),
        optional("Sidewalk") => sidewalk_create_wireless_device(),
        optional("Tags") => list(tag()()),
        required("DestinationName") => String.t(),
        required("Type") => list(any())
      }

  """
  @type create_wireless_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_join_event_notification_configurations() :: %{
        "DevEuiEventTopic" => list(any())
      }

  """
  @type lo_ra_w_a_n_join_event_notification_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wireless_device_statistics() :: %{
        "Arn" => String.t(),
        "DestinationName" => String.t(),
        "FuotaDeviceStatus" => list(any()),
        "Id" => String.t(),
        "LastUplinkReceivedAt" => String.t(),
        "LoRaWAN" => lo_ra_w_a_n_list_device(),
        "McGroupId" => integer(),
        "MulticastDeviceStatus" => String.t(),
        "Name" => String.t(),
        "Sidewalk" => sidewalk_list_device(),
        "Type" => list(any())
      }

  """
  @type wireless_device_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_devices_for_wireless_device_import_task_response() :: %{
        "DestinationName" => String.t(),
        "ImportedWirelessDeviceList" => list(imported_wireless_device()()),
        "NextToken" => String.t()
      }

  """
  @type list_devices_for_wireless_device_import_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_connection_status_resource_type_event_configuration() :: %{
        "WirelessGatewayEventTopic" => list(any())
      }

  """
  @type lo_ra_w_a_n_connection_status_resource_type_event_configuration() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      put_resource_log_level_request() :: %{
        required("LogLevel") => list(any()),
        required("ResourceType") => String.t()
      }

  """
  @type put_resource_log_level_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tdscdma_local_id() :: %{
        "CellParams" => integer(),
        "Uarfcn" => integer()
      }

  """
  @type tdscdma_local_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dak_certificate_metadata() :: %{
        "ApId" => String.t(),
        "CertificateId" => String.t(),
        "DeviceTypeId" => String.t(),
        "FactorySupport" => boolean(),
        "MaxAllowedSignature" => integer()
      }

  """
  @type dak_certificate_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_configurations_response() :: %{
        "EventConfigurationsList" => list(event_configuration_item()()),
        "NextToken" => String.t()
      }

  """
  @type list_event_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_metric_configuration_response() :: %{}

  """
  @type update_metric_configuration_response() :: %{}

  @typedoc """

  ## Example:

      create_service_profile_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("LoRaWAN") => lo_ra_w_a_n_service_profile(),
        optional("Name") => String.t(),
        optional("Tags") => list(tag()())
      }

  """
  @type create_service_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fuota_task_log_option() :: %{
        "Events" => list(fuota_task_event_log_option()()),
        "LogLevel" => list(any()),
        "Type" => list(any())
      }

  """
  @type fuota_task_log_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wireless_gateway_log_option() :: %{
        "Events" => list(wireless_gateway_event_log_option()()),
        "LogLevel" => list(any()),
        "Type" => list(any())
      }

  """
  @type wireless_gateway_log_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_destination_request() :: %{
        optional("Description") => String.t(),
        optional("Expression") => String.t(),
        optional("ExpressionType") => list(any()),
        optional("RoleArn") => String.t()
      }

  """
  @type update_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      position_configuration_item() :: %{
        "Destination" => String.t(),
        "ResourceIdentifier" => String.t(),
        "ResourceType" => list(any()),
        "Solvers" => position_solver_details()
      }

  """
  @type position_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_device_profile_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type create_device_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_partner_account_request() :: %{
        required("PartnerType") => list(any()),
        required("Sidewalk") => sidewalk_update_account()
      }

  """
  @type update_partner_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_multicast_group_session_request() :: %{
        required("LoRaWAN") => lo_ra_w_a_n_multicast_session()
      }

  """
  @type start_multicast_group_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_wireless_gateway_task_definitions_response() :: %{
        "NextToken" => String.t(),
        "TaskDefinitions" => list(update_wireless_gateway_task_entry()())
      }

  """
  @type list_wireless_gateway_task_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_metrics_response() :: %{
        "SummaryMetricQueryResults" => list(summary_metric_query_result()())
      }

  """
  @type get_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_notification_item_configurations() :: %{
        "ConnectionStatus" => connection_status_event_configuration(),
        "DeviceRegistrationState" => device_registration_state_event_configuration(),
        "Join" => join_event_configuration(),
        "MessageDeliveryStatus" => message_delivery_status_event_configuration(),
        "Proximity" => proximity_event_configuration()
      }

  """
  @type event_notification_item_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_wireless_device_from_fuota_task_request() :: %{}

  """
  @type disassociate_wireless_device_from_fuota_task_request() :: %{}

  @typedoc """

  ## Example:

      get_multicast_group_session_request() :: %{}

  """
  @type get_multicast_group_session_request() :: %{}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_gateway_metadata() :: %{
        "GatewayEui" => String.t(),
        "Rssi" => float(),
        "Snr" => float()
      }

  """
  @type lo_ra_w_a_n_gateway_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_wireless_device_import_tasks_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_wireless_device_import_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_multicast_group_session_request() :: %{}

  """
  @type cancel_multicast_group_session_request() :: %{}

  @typedoc """

  ## Example:

      test_wireless_device_request() :: %{}

  """
  @type test_wireless_device_request() :: %{}

  @typedoc """

  ## Example:

      get_wireless_gateway_statistics_request() :: %{}

  """
  @type get_wireless_gateway_statistics_request() :: %{}

  @typedoc """

  ## Example:

      fuota_task() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t()
      }

  """
  @type fuota_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_device_statistics_request() :: %{}

  """
  @type get_wireless_device_statistics_request() :: %{}

  @typedoc """

  ## Example:

      message_delivery_status_resource_type_event_configuration() :: %{
        "Sidewalk" => sidewalk_resource_type_event_configuration()
      }

  """
  @type message_delivery_status_resource_type_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_start_fuota_task() :: %{
        "StartTime" => non_neg_integer()
      }

  """
  @type lo_ra_w_a_n_start_fuota_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_wireless_gateway_task_definition_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type create_wireless_gateway_task_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_log_levels_by_resource_types_request() :: %{
        optional("DefaultLogLevel") => list(any()),
        optional("FuotaTaskLogOptions") => list(fuota_task_log_option()()),
        optional("WirelessDeviceLogOptions") => list(wireless_device_log_option()()),
        optional("WirelessGatewayLogOptions") => list(wireless_gateway_log_option()())
      }

  """
  @type update_log_levels_by_resource_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_all_resource_log_levels_request() :: %{}

  """
  @type reset_all_resource_log_levels_request() :: %{}

  @typedoc """

  ## Example:

      update_position_request() :: %{
        required("Position") => list(float()()),
        required("ResourceType") => list(any())
      }

  """
  @type update_position_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_multicast_group_session_response() :: %{}

  """
  @type cancel_multicast_group_session_response() :: %{}

  @typedoc """

  ## Example:

      create_wireless_gateway_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type create_wireless_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_position_configuration_response() :: %{
        "Destination" => String.t(),
        "Solvers" => position_solver_details()
      }

  """
  @type get_position_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_get_service_profile_info() :: %{
        "AddGwMetadata" => boolean(),
        "ChannelMask" => String.t(),
        "DevStatusReqFreq" => integer(),
        "DlBucketSize" => integer(),
        "DlRate" => integer(),
        "DlRatePolicy" => String.t(),
        "DrMax" => integer(),
        "DrMin" => integer(),
        "HrAllowed" => boolean(),
        "MinGwDiversity" => integer(),
        "NwkGeoLoc" => boolean(),
        "PrAllowed" => boolean(),
        "RaAllowed" => boolean(),
        "ReportDevStatusBattery" => boolean(),
        "ReportDevStatusMargin" => boolean(),
        "TargetPer" => integer(),
        "UlBucketSize" => integer(),
        "UlRate" => integer(),
        "UlRatePolicy" => String.t()
      }

  """
  @type lo_ra_w_a_n_get_service_profile_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_network_analyzer_configurations_response() :: %{
        "NetworkAnalyzerConfigurationList" => list(network_analyzer_configurations()()),
        "NextToken" => String.t()
      }

  """
  @type list_network_analyzer_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_network_analyzer_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_network_analyzer_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_network_analyzer_configuration_request() :: %{
        optional("Description") => String.t(),
        optional("MulticastGroupsToAdd") => list(String.t()()),
        optional("MulticastGroupsToRemove") => list(String.t()()),
        optional("TraceContent") => trace_content(),
        optional("WirelessDevicesToAdd") => list(String.t()()),
        optional("WirelessDevicesToRemove") => list(String.t()()),
        optional("WirelessGatewaysToAdd") => list(String.t()()),
        optional("WirelessGatewaysToRemove") => list(String.t()())
      }

  """
  @type update_network_analyzer_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_single_wireless_device_import_task_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type start_single_wireless_device_import_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_wireless_device_with_thing_request() :: %{
        required("ThingArn") => String.t()
      }

  """
  @type associate_wireless_device_with_thing_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gsm_obj() :: %{
        "GeranCid" => integer(),
        "GsmLocalId" => gsm_local_id(),
        "GsmNmr" => list(gsm_nmr_obj()()),
        "GsmTimingAdvance" => integer(),
        "Lac" => integer(),
        "Mcc" => integer(),
        "Mnc" => integer(),
        "RxLevel" => integer()
      }

  """
  @type gsm_obj() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      beaconing() :: %{
        "DataRate" => integer(),
        "Frequencies" => list(integer()())
      }

  """
  @type beaconing() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_wireless_device_with_fuota_task_response() :: %{}

  """
  @type associate_wireless_device_with_fuota_task_response() :: %{}

  @typedoc """

  ## Example:

      ip() :: %{
        "IpAddress" => String.t()
      }

  """
  @type ip() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceType") => list(any())
      }

  """
  @type list_event_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_position_estimate_request() :: %{
        optional("CellTowers") => cell_towers(),
        optional("Gnss") => gnss(),
        optional("Ip") => ip(),
        optional("Timestamp") => non_neg_integer(),
        optional("WiFiAccessPoints") => list(wi_fi_access_point()())
      }

  """
  @type get_position_estimate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      participating_gateways() :: %{
        "DownlinkMode" => list(any()),
        "GatewayList" => list(gateway_list_item()()),
        "TransmissionInterval" => integer()
      }

  """
  @type participating_gateways() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_destination_request() :: %{}

  """
  @type get_destination_request() :: %{}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_fuota_task() :: %{
        "RfRegion" => list(any())
      }

  """
  @type lo_ra_w_a_n_fuota_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_device_import_task_response() :: %{
        "Arn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "DestinationName" => String.t(),
        "FailedImportedDeviceCount" => float(),
        "Id" => String.t(),
        "InitializedImportedDeviceCount" => float(),
        "OnboardedImportedDeviceCount" => float(),
        "PendingImportedDeviceCount" => float(),
        "Sidewalk" => sidewalk_get_start_import_info(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }

  """
  @type get_wireless_device_import_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_wireless_gateway_task_response() :: %{
        "Status" => list(any()),
        "WirelessGatewayTaskDefinitionId" => String.t()
      }

  """
  @type create_wireless_gateway_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_public_gateway_metadata() :: %{
        "DlAllowed" => boolean(),
        "Id" => String.t(),
        "ProviderNetId" => String.t(),
        "RfRegion" => String.t(),
        "Rssi" => float(),
        "Snr" => float()
      }

  """
  @type lo_ra_w_a_n_public_gateway_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_wireless_gateway_from_thing_response() :: %{}

  """
  @type disassociate_wireless_gateway_from_thing_response() :: %{}

  @typedoc """

  ## Example:

      wireless_device_event_log_option() :: %{
        "Event" => list(any()),
        "LogLevel" => list(any())
      }

  """
  @type wireless_device_event_log_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_gateway_task_definition_response() :: %{
        "Arn" => String.t(),
        "AutoCreateTasks" => boolean(),
        "Name" => String.t(),
        "Update" => update_wireless_gateway_task_create()
      }

  """
  @type get_wireless_gateway_task_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wireless_device_import_task() :: %{
        "Arn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "DestinationName" => String.t(),
        "FailedImportedDeviceCount" => float(),
        "Id" => String.t(),
        "InitializedImportedDeviceCount" => float(),
        "OnboardedImportedDeviceCount" => float(),
        "PendingImportedDeviceCount" => float(),
        "Sidewalk" => sidewalk_get_start_import_info(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }

  """
  @type wireless_device_import_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      otaa_v1_0_x() :: %{
        "AppEui" => String.t(),
        "AppKey" => String.t(),
        "GenAppKey" => String.t(),
        "JoinEui" => String.t()
      }

  """
  @type otaa_v1_0_x() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_gateway_statistics_response() :: %{
        "ConnectionStatus" => list(any()),
        "LastUplinkReceivedAt" => String.t(),
        "WirelessGatewayId" => String.t()
      }

  """
  @type get_wireless_gateway_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multicast_group_by_fuota_task() :: %{
        "Id" => String.t()
      }

  """
  @type multicast_group_by_fuota_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_partner_accounts_response() :: %{
        "NextToken" => String.t(),
        "Sidewalk" => list(sidewalk_account_info_with_fingerprint()())
      }

  """
  @type list_partner_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_endpoint_response() :: %{
        "ServerTrust" => String.t(),
        "ServiceEndpoint" => String.t(),
        "ServiceType" => list(any())
      }

  """
  @type get_service_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_destination_response() :: %{}

  """
  @type update_destination_response() :: %{}

  @typedoc """

  ## Example:

      reset_resource_log_level_request() :: %{
        required("ResourceType") => String.t()
      }

  """
  @type reset_resource_log_level_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queued_messages_response() :: %{
        "DownlinkQueueMessagesList" => list(downlink_queue_message()()),
        "NextToken" => String.t()
      }

  """
  @type list_queued_messages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_gateway_current_version() :: %{
        "CurrentVersion" => lo_ra_w_a_n_gateway_version()
      }

  """
  @type lo_ra_w_a_n_gateway_current_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_f_ports() :: %{
        "Applications" => list(application_config()()),
        "Positioning" => positioning()
      }

  """
  @type update_f_ports() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fuota_task_event_log_option() :: %{
        "Event" => list(any()),
        "LogLevel" => list(any())
      }

  """
  @type fuota_task_event_log_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_multicast_group_response() :: %{}

  """
  @type delete_multicast_group_response() :: %{}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_multicast_metadata() :: %{
        "FPort" => integer()
      }

  """
  @type lo_ra_w_a_n_multicast_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_wireless_device_with_fuota_task_request() :: %{
        required("WirelessDeviceId") => String.t()
      }

  """
  @type associate_wireless_device_with_fuota_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wcdma_obj() :: %{
        "Lac" => integer(),
        "Mcc" => integer(),
        "Mnc" => integer(),
        "PathLoss" => integer(),
        "Rscp" => integer(),
        "UtranCid" => integer(),
        "WcdmaLocalId" => wcdma_local_id(),
        "WcdmaNmr" => list(wcdma_nmr_obj()())
      }

  """
  @type wcdma_obj() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_gateway_firmware_information_request() :: %{}

  """
  @type get_wireless_gateway_firmware_information_request() :: %{}

  @typedoc """

  ## Example:

      associate_wireless_gateway_with_certificate_response() :: %{
        "IotCertificateId" => String.t()
      }

  """
  @type associate_wireless_gateway_with_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_partner_account_response() :: %{}

  """
  @type update_partner_account_response() :: %{}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_multicast() :: %{
        "DlClass" => list(any()),
        "ParticipatingGateways" => participating_gateways_multicast(),
        "RfRegion" => list(any())
      }

  """
  @type lo_ra_w_a_n_multicast() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_bulk_associate_wireless_device_with_multicast_group_request() :: %{
        optional("QueryString") => String.t(),
        optional("Tags") => list(tag()())
      }

  """
  @type start_bulk_associate_wireless_device_with_multicast_group_request() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      session_keys_abp_v1_0_x() :: %{
        "AppSKey" => String.t(),
        "NwkSKey" => String.t()
      }

  """
  @type session_keys_abp_v1_0_x() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sidewalk_start_import_info() :: %{
        "DeviceCreationFile" => String.t(),
        "Role" => String.t()
      }

  """
  @type sidewalk_start_import_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_multicast_get() :: %{
        "DlClass" => list(any()),
        "NumberOfDevicesInGroup" => integer(),
        "NumberOfDevicesRequested" => integer(),
        "ParticipatingGateways" => participating_gateways_multicast(),
        "RfRegion" => list(any())
      }

  """
  @type lo_ra_w_a_n_multicast_get() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sidewalk_device() :: %{
        "AmazonId" => String.t(),
        "CertificateId" => String.t(),
        "DeviceCertificates" => list(certificate_list()()),
        "DeviceProfileId" => String.t(),
        "PrivateKeys" => list(certificate_list()()),
        "SidewalkId" => String.t(),
        "SidewalkManufacturingSn" => String.t(),
        "Status" => list(any())
      }

  """
  @type sidewalk_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      certificate_list() :: %{
        "SigningAlg" => list(any()),
        "Value" => String.t()
      }

  """
  @type certificate_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_log_levels_by_resource_types_response() :: %{
        "DefaultLogLevel" => list(any()),
        "FuotaTaskLogOptions" => list(fuota_task_log_option()()),
        "WirelessDeviceLogOptions" => list(wireless_device_log_option()()),
        "WirelessGatewayLogOptions" => list(wireless_gateway_log_option()())
      }

  """
  @type get_log_levels_by_resource_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dimension() :: %{
        "name" => list(any()),
        "value" => String.t()
      }

  """
  @type dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_multicast_groups_response() :: %{
        "MulticastGroupList" => list(multicast_group()()),
        "NextToken" => String.t()
      }

  """
  @type list_multicast_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cdma_nmr_obj() :: %{
        "BaseStationId" => integer(),
        "CdmaChannel" => integer(),
        "PilotPower" => integer(),
        "PnOffset" => integer()
      }

  """
  @type cdma_nmr_obj() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      semtech_gnss_detail() :: %{
        "Fec" => list(any()),
        "Provider" => list(any()),
        "Status" => list(any()),
        "Type" => list(any())
      }

  """
  @type semtech_gnss_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      f_ports() :: %{
        "Applications" => list(application_config()()),
        "ClockSync" => integer(),
        "Fuota" => integer(),
        "Multicast" => integer(),
        "Positioning" => positioning()
      }

  """
  @type f_ports() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lte_nmr_obj() :: %{
        "Earfcn" => integer(),
        "EutranCid" => integer(),
        "Pci" => integer(),
        "Rsrp" => integer(),
        "Rsrq" => float()
      }

  """
  @type lte_nmr_obj() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_position_configuration_request() :: %{
        optional("Destination") => String.t(),
        optional("Solvers") => position_solver_configurations(),
        required("ResourceType") => list(any())
      }

  """
  @type put_position_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_bulk_disassociate_wireless_device_from_multicast_group_request() :: %{
        optional("QueryString") => String.t(),
        optional("Tags") => list(tag()())
      }

  """
  @type start_bulk_disassociate_wireless_device_from_multicast_group_request() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      get_partner_account_request() :: %{
        required("PartnerType") => list(any())
      }

  """
  @type get_partner_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_wireless_gateway_request() :: %{
        optional("Description") => String.t(),
        optional("JoinEuiFilters") => list(list(String.t()())()),
        optional("MaxEirp") => float(),
        optional("Name") => String.t(),
        optional("NetIdFilters") => list(String.t()())
      }

  """
  @type update_wireless_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_wireless_gateway_task_definition_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Name") => String.t(),
        optional("Tags") => list(tag()()),
        optional("Update") => update_wireless_gateway_task_create(),
        required("AutoCreateTasks") => boolean()
      }

  """
  @type create_wireless_gateway_task_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_config() :: %{
        "DestinationName" => String.t(),
        "FPort" => integer(),
        "Type" => list(any())
      }

  """
  @type application_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multicast_wireless_metadata() :: %{
        "LoRaWAN" => lo_ra_w_a_n_multicast_metadata()
      }

  """
  @type multicast_wireless_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_wireless_gateway_task_request() :: %{}

  """
  @type delete_wireless_gateway_task_request() :: %{}

  @typedoc """

  ## Example:

      create_device_profile_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("LoRaWAN") => lo_ra_w_a_n_device_profile(),
        optional("Name") => String.t(),
        optional("Sidewalk") => sidewalk_create_device_profile(),
        optional("Tags") => list(tag()())
      }

  """
  @type create_device_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_device_response() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "DestinationName" => String.t(),
        "Id" => String.t(),
        "LoRaWAN" => lo_ra_w_a_n_device(),
        "Name" => String.t(),
        "Positioning" => list(any()),
        "Sidewalk" => sidewalk_device(),
        "ThingArn" => String.t(),
        "ThingName" => String.t(),
        "Type" => list(any())
      }

  """
  @type get_wireless_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wireless_device_log_option() :: %{
        "Events" => list(wireless_device_event_log_option()()),
        "LogLevel" => list(any()),
        "Type" => list(any())
      }

  """
  @type wireless_device_log_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      summary_metric_query_result() :: %{
        "AggregationPeriod" => list(any()),
        "Dimensions" => list(dimension()()),
        "EndTimestamp" => non_neg_integer(),
        "Error" => String.t(),
        "MetricName" => list(any()),
        "QueryId" => String.t(),
        "QueryStatus" => list(any()),
        "StartTimestamp" => non_neg_integer(),
        "Timestamps" => list(non_neg_integer()()),
        "Unit" => String.t(),
        "Values" => list(metric_query_value()())
      }

  """
  @type summary_metric_query_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_wireless_device_import_task_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("DestinationName") => String.t(),
        required("Sidewalk") => sidewalk_start_import_info()
      }

  """
  @type start_wireless_device_import_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sidewalk_account_info() :: %{
        "AmazonId" => String.t(),
        "AppServerPrivateKey" => String.t()
      }

  """
  @type sidewalk_account_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_wireless_device_import_task_response() :: %{}

  """
  @type delete_wireless_device_import_task_response() :: %{}

  @typedoc """

  ## Example:

      list_fuota_tasks_response() :: %{
        "FuotaTaskList" => list(fuota_task()()),
        "NextToken" => String.t()
      }

  """
  @type list_fuota_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_multicast_group_request() :: %{}

  """
  @type delete_multicast_group_request() :: %{}

  @typedoc """

  ## Example:

      multicast_group() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t()
      }

  """
  @type multicast_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_wireless_devices_request() :: %{
        optional("DestinationName") => String.t(),
        optional("DeviceProfileId") => String.t(),
        optional("FuotaTaskId") => String.t(),
        optional("MaxResults") => integer(),
        optional("MulticastGroupId") => String.t(),
        optional("NextToken") => String.t(),
        optional("ServiceProfileId") => String.t(),
        optional("WirelessDeviceType") => list(any())
      }

  """
  @type list_wireless_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_gateway_version() :: %{
        "Model" => String.t(),
        "PackageVersion" => String.t(),
        "Station" => String.t()
      }

  """
  @type lo_ra_w_a_n_gateway_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_wireless_gateway_task_create() :: %{
        "LoRaWAN" => lo_ra_w_a_n_update_gateway_task_create(),
        "UpdateDataRole" => String.t(),
        "UpdateDataSource" => String.t()
      }

  """
  @type update_wireless_gateway_task_create() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_multicast_group_with_fuota_task_request() :: %{
        required("MulticastGroupId") => String.t()
      }

  """
  @type associate_multicast_group_with_fuota_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_query_value() :: %{
        "Avg" => float(),
        "Max" => float(),
        "Min" => float(),
        "P90" => float(),
        "Std" => float(),
        "Sum" => float()
      }

  """
  @type metric_query_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_network_analyzer_configuration_request() :: %{}

  """
  @type delete_network_analyzer_configuration_request() :: %{}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_join_resource_type_event_configuration() :: %{
        "WirelessDeviceEventTopic" => list(any())
      }

  """
  @type lo_ra_w_a_n_join_resource_type_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_wireless_device_request() :: %{
        optional("WirelessDeviceType") => list(any())
      }

  """
  @type deregister_wireless_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_device_profiles_request() :: %{
        optional("DeviceProfileType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_device_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_device_profiles_response() :: %{
        "DeviceProfileList" => list(device_profile()()),
        "NextToken" => String.t()
      }

  """
  @type list_device_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sidewalk_single_start_import_info() :: %{
        "SidewalkManufacturingSn" => String.t()
      }

  """
  @type sidewalk_single_start_import_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_wireless_device_response() :: %{}

  """
  @type delete_wireless_device_response() :: %{}

  @typedoc """

  ## Example:

      create_wireless_device_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type create_wireless_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      position_solver_details() :: %{
        "SemtechGnss" => semtech_gnss_detail()
      }

  """
  @type position_solver_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_wireless_device_with_thing_response() :: %{}

  """
  @type associate_wireless_device_with_thing_response() :: %{}

  @typedoc """

  ## Example:

      sidewalk_get_device_profile() :: %{
        "ApplicationServerPublicKey" => String.t(),
        "DakCertificateMetadata" => list(dak_certificate_metadata()()),
        "QualificationStatus" => boolean()
      }

  """
  @type sidewalk_get_device_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_resource_event_configuration_response() :: %{}

  """
  @type update_resource_event_configuration_response() :: %{}

  @typedoc """

  ## Example:

      sidewalk_send_data_to_device() :: %{
        "AckModeRetryDurationSecs" => integer(),
        "MessageType" => list(any()),
        "Seq" => integer()
      }

  """
  @type sidewalk_send_data_to_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_resource_log_level_response() :: %{}

  """
  @type reset_resource_log_level_response() :: %{}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_list_device() :: %{
        "DevEui" => String.t()
      }

  """
  @type lo_ra_w_a_n_list_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      proximity_event_configuration() :: %{
        "Sidewalk" => sidewalk_event_notification_configurations(),
        "WirelessDeviceIdEventTopic" => list(any())
      }

  """
  @type proximity_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_device_statistics_response() :: %{
        "LastUplinkReceivedAt" => String.t(),
        "LoRaWAN" => lo_ra_w_a_n_device_metadata(),
        "Sidewalk" => sidewalk_device_metadata(),
        "WirelessDeviceId" => String.t()
      }

  """
  @type get_wireless_device_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lo_ra_w_a_n_service_profile() :: %{
        "AddGwMetadata" => boolean(),
        "DrMax" => integer(),
        "DrMin" => integer(),
        "PrAllowed" => boolean(),
        "RaAllowed" => boolean()
      }

  """
  @type lo_ra_w_a_n_service_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sidewalk_resource_type_event_configuration() :: %{
        "WirelessDeviceEventTopic" => list(any())
      }

  """
  @type sidewalk_resource_type_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_wireless_gateway_task_response() :: %{}

  """
  @type delete_wireless_gateway_task_response() :: %{}

  @typedoc """

  ## Example:

      sidewalk_list_device() :: %{
        "AmazonId" => String.t(),
        "DeviceCertificates" => list(certificate_list()()),
        "DeviceProfileId" => String.t(),
        "SidewalkId" => String.t(),
        "SidewalkManufacturingSn" => String.t(),
        "Status" => list(any())
      }

  """
  @type sidewalk_list_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_all_resource_log_levels_response() :: %{}

  """
  @type reset_all_resource_log_levels_response() :: %{}

  @typedoc """

  ## Example:

      device_registration_state_resource_type_event_configuration() :: %{
        "Sidewalk" => sidewalk_resource_type_event_configuration()
      }

  """
  @type device_registration_state_resource_type_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_fuota_task_request() :: %{
        optional("Description") => String.t(),
        optional("Descriptor") => String.t(),
        optional("FirmwareUpdateImage") => String.t(),
        optional("FirmwareUpdateRole") => String.t(),
        optional("FragmentIntervalMS") => integer(),
        optional("FragmentSizeBytes") => integer(),
        optional("LoRaWAN") => lo_ra_w_a_n_fuota_task(),
        optional("Name") => String.t(),
        optional("RedundancyPercent") => integer()
      }

  """
  @type update_fuota_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_device_profile_request() :: %{}

  """
  @type delete_device_profile_request() :: %{}

  @typedoc """

  ## Example:

      lte_obj() :: %{
        "EutranCid" => integer(),
        "LteLocalId" => lte_local_id(),
        "LteNmr" => list(lte_nmr_obj()()),
        "LteTimingAdvance" => integer(),
        "Mcc" => integer(),
        "Mnc" => integer(),
        "NrCapable" => boolean(),
        "Rsrp" => integer(),
        "Rsrq" => float(),
        "Tac" => integer()
      }

  """
  @type lte_obj() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t()
      }

  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_event_configuration_by_resource_types_response() :: %{}

  """
  @type update_event_configuration_by_resource_types_response() :: %{}

  @typedoc """

  ## Example:

      list_wireless_gateways_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_wireless_gateways_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_fuota_task_response() :: %{}

  """
  @type start_fuota_task_response() :: %{}

  @typedoc """

  ## Example:

      start_multicast_group_session_response() :: %{}

  """
  @type start_multicast_group_session_response() :: %{}

  @typedoc """

  ## Example:

      join_resource_type_event_configuration() :: %{
        "LoRaWAN" => lo_ra_w_a_n_join_resource_type_event_configuration()
      }

  """
  @type join_resource_type_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_device_import_task_request() :: %{}

  """
  @type get_wireless_device_import_task_request() :: %{}

  @typedoc """

  ## Example:

      get_multicast_group_session_response() :: %{
        "LoRaWAN" => lo_ra_w_a_n_multicast_session()
      }

  """
  @type get_multicast_group_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sidewalk_get_start_import_info() :: %{
        "DeviceCreationFileList" => list(String.t()()),
        "Role" => String.t()
      }

  """
  @type sidewalk_get_start_import_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cdma_obj() :: %{
        "BaseLat" => float(),
        "BaseLng" => float(),
        "BaseStationId" => integer(),
        "CdmaLocalId" => cdma_local_id(),
        "CdmaNmr" => list(cdma_nmr_obj()()),
        "NetworkId" => integer(),
        "PilotPower" => integer(),
        "RegistrationZone" => integer(),
        "SystemId" => integer()
      }

  """
  @type cdma_obj() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_wireless_gateway_certificate_request() :: %{}

  """
  @type get_wireless_gateway_certificate_request() :: %{}

  @type associate_aws_account_with_partner_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_multicast_group_with_fuota_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_wireless_device_with_fuota_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_wireless_device_with_multicast_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_wireless_device_with_thing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_wireless_gateway_with_certificate_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_wireless_gateway_with_thing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_multicast_group_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_device_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_fuota_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_multicast_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_network_analyzer_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_service_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_wireless_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_wireless_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_wireless_gateway_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_wireless_gateway_task_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_device_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_fuota_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_multicast_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_network_analyzer_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_queued_messages_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_service_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_wireless_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_wireless_device_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_wireless_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_wireless_gateway_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_wireless_gateway_task_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type deregister_wireless_device_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_aws_account_from_partner_account_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_multicast_group_from_fuota_task_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_wireless_device_from_fuota_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_wireless_device_from_multicast_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_wireless_device_from_thing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_wireless_gateway_from_certificate_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_wireless_gateway_from_thing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_device_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_event_configuration_by_resource_types_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type get_fuota_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_log_levels_by_resource_types_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_metric_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_metrics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_multicast_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_multicast_group_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_network_analyzer_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_partner_account_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_position_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_position_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_position_estimate_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_event_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_log_level_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_position_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_service_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_wireless_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_wireless_device_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_wireless_device_statistics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_wireless_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_wireless_gateway_certificate_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_wireless_gateway_firmware_information_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_wireless_gateway_statistics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_wireless_gateway_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_wireless_gateway_task_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_destinations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_device_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_devices_for_wireless_device_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_event_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_fuota_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_multicast_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_multicast_groups_by_fuota_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_network_analyzer_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_partner_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_position_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_queued_messages_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_service_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_wireless_device_import_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_wireless_devices_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_wireless_gateway_task_definitions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_wireless_gateways_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type put_position_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_resource_log_level_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type reset_all_resource_log_levels_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type reset_resource_log_level_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type send_data_to_multicast_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type send_data_to_wireless_device_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_bulk_associate_wireless_device_with_multicast_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_bulk_disassociate_wireless_device_from_multicast_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_fuota_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_multicast_group_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_single_wireless_device_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_wireless_device_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type test_wireless_device_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_event_configuration_by_resource_types_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_fuota_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_log_levels_by_resource_types_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_metric_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_multicast_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_network_analyzer_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_partner_account_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_position_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_resource_event_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_resource_position_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_wireless_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_wireless_device_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_wireless_gateway_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-11-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.iotwireless",
      global?: false,
      hostname: nil,
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
  @spec associate_aws_account_with_partner_account(
          map(),
          associate_aws_account_with_partner_account_request(),
          list()
        ) ::
          {:ok, associate_aws_account_with_partner_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_aws_account_with_partner_account_errors()}
  def associate_aws_account_with_partner_account(%Client{} = client, input, options \\ []) do
    url_path = "/partner-accounts"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associate a multicast group with a FUOTA task.
  """
  @spec associate_multicast_group_with_fuota_task(
          map(),
          String.t(),
          associate_multicast_group_with_fuota_task_request(),
          list()
        ) ::
          {:ok, associate_multicast_group_with_fuota_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_multicast_group_with_fuota_task_errors()}
  def associate_multicast_group_with_fuota_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}/multicast-group"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Associate a wireless device with a FUOTA task.
  """
  @spec associate_wireless_device_with_fuota_task(
          map(),
          String.t(),
          associate_wireless_device_with_fuota_task_request(),
          list()
        ) ::
          {:ok, associate_wireless_device_with_fuota_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_wireless_device_with_fuota_task_errors()}
  def associate_wireless_device_with_fuota_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}/wireless-device"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Associates a wireless device with a multicast group.
  """
  @spec associate_wireless_device_with_multicast_group(
          map(),
          String.t(),
          associate_wireless_device_with_multicast_group_request(),
          list()
        ) ::
          {:ok, associate_wireless_device_with_multicast_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_wireless_device_with_multicast_group_errors()}
  def associate_wireless_device_with_multicast_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/wireless-device"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Associates a wireless device with a thing.
  """
  @spec associate_wireless_device_with_thing(
          map(),
          String.t(),
          associate_wireless_device_with_thing_request(),
          list()
        ) ::
          {:ok, associate_wireless_device_with_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_wireless_device_with_thing_errors()}
  def associate_wireless_device_with_thing(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}/thing"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Associates a wireless gateway with a certificate.
  """
  @spec associate_wireless_gateway_with_certificate(
          map(),
          String.t(),
          associate_wireless_gateway_with_certificate_request(),
          list()
        ) ::
          {:ok, associate_wireless_gateway_with_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_wireless_gateway_with_certificate_errors()}
  def associate_wireless_gateway_with_certificate(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/certificate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a wireless gateway with a thing.
  """
  @spec associate_wireless_gateway_with_thing(
          map(),
          String.t(),
          associate_wireless_gateway_with_thing_request(),
          list()
        ) ::
          {:ok, associate_wireless_gateway_with_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_wireless_gateway_with_thing_errors()}
  def associate_wireless_gateway_with_thing(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/thing"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Cancels an existing multicast group session.
  """
  @spec cancel_multicast_group_session(
          map(),
          String.t(),
          cancel_multicast_group_session_request(),
          list()
        ) ::
          {:ok, cancel_multicast_group_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_multicast_group_session_errors()}
  def cancel_multicast_group_session(%Client{} = client, id, input, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/session"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Creates a new destination that maps a device message to an AWS IoT rule.
  """
  @spec create_destination(map(), create_destination_request(), list()) ::
          {:ok, create_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_destination_errors()}
  def create_destination(%Client{} = client, input, options \\ []) do
    url_path = "/destinations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new device profile.
  """
  @spec create_device_profile(map(), create_device_profile_request(), list()) ::
          {:ok, create_device_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_device_profile_errors()}
  def create_device_profile(%Client{} = client, input, options \\ []) do
    url_path = "/device-profiles"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a FUOTA task.
  """
  @spec create_fuota_task(map(), create_fuota_task_request(), list()) ::
          {:ok, create_fuota_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fuota_task_errors()}
  def create_fuota_task(%Client{} = client, input, options \\ []) do
    url_path = "/fuota-tasks"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a multicast group.
  """
  @spec create_multicast_group(map(), create_multicast_group_request(), list()) ::
          {:ok, create_multicast_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_multicast_group_errors()}
  def create_multicast_group(%Client{} = client, input, options \\ []) do
    url_path = "/multicast-groups"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new network analyzer configuration.
  """
  @spec create_network_analyzer_configuration(
          map(),
          create_network_analyzer_configuration_request(),
          list()
        ) ::
          {:ok, create_network_analyzer_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_network_analyzer_configuration_errors()}
  def create_network_analyzer_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/network-analyzer-configurations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new service profile.
  """
  @spec create_service_profile(map(), create_service_profile_request(), list()) ::
          {:ok, create_service_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_profile_errors()}
  def create_service_profile(%Client{} = client, input, options \\ []) do
    url_path = "/service-profiles"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Provisions a wireless device.
  """
  @spec create_wireless_device(map(), create_wireless_device_request(), list()) ::
          {:ok, create_wireless_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_wireless_device_errors()}
  def create_wireless_device(%Client{} = client, input, options \\ []) do
    url_path = "/wireless-devices"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Provisions a wireless gateway.

  When provisioning a wireless gateway, you might run into duplication errors
  for the following reasons.

    
  If you specify a `GatewayEui` value that already exists.

    
  If you used a `ClientRequestToken` with the same parameters
  within the last 10 minutes.

  To avoid this error, make sure that you use unique identifiers and parameters
  for each request within the specified time period.
  """
  @spec create_wireless_gateway(map(), create_wireless_gateway_request(), list()) ::
          {:ok, create_wireless_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_wireless_gateway_errors()}
  def create_wireless_gateway(%Client{} = client, input, options \\ []) do
    url_path = "/wireless-gateways"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a task for a wireless gateway.
  """
  @spec create_wireless_gateway_task(
          map(),
          String.t(),
          create_wireless_gateway_task_request(),
          list()
        ) ::
          {:ok, create_wireless_gateway_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_wireless_gateway_task_errors()}
  def create_wireless_gateway_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/tasks"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a gateway task definition.
  """
  @spec create_wireless_gateway_task_definition(
          map(),
          create_wireless_gateway_task_definition_request(),
          list()
        ) ::
          {:ok, create_wireless_gateway_task_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_wireless_gateway_task_definition_errors()}
  def create_wireless_gateway_task_definition(%Client{} = client, input, options \\ []) do
    url_path = "/wireless-gateway-task-definitions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes a destination.
  """
  @spec delete_destination(map(), String.t(), delete_destination_request(), list()) ::
          {:ok, delete_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_destination_errors()}
  def delete_destination(%Client{} = client, name, input, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a device profile.
  """
  @spec delete_device_profile(map(), String.t(), delete_device_profile_request(), list()) ::
          {:ok, delete_device_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_device_profile_errors()}
  def delete_device_profile(%Client{} = client, id, input, options \\ []) do
    url_path = "/device-profiles/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a FUOTA task.
  """
  @spec delete_fuota_task(map(), String.t(), delete_fuota_task_request(), list()) ::
          {:ok, delete_fuota_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fuota_task_errors()}
  def delete_fuota_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a multicast group if it is not in use by a fuota task.
  """
  @spec delete_multicast_group(map(), String.t(), delete_multicast_group_request(), list()) ::
          {:ok, delete_multicast_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_multicast_group_errors()}
  def delete_multicast_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a network analyzer configuration.
  """
  @spec delete_network_analyzer_configuration(
          map(),
          String.t(),
          delete_network_analyzer_configuration_request(),
          list()
        ) ::
          {:ok, delete_network_analyzer_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_network_analyzer_configuration_errors()}
  def delete_network_analyzer_configuration(
        %Client{} = client,
        configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/network-analyzer-configurations/#{AWS.Util.encode_uri(configuration_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Remove queued messages from the downlink queue.
  """
  @spec delete_queued_messages(map(), String.t(), delete_queued_messages_request(), list()) ::
          {:ok, delete_queued_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_queued_messages_errors()}
  def delete_queued_messages(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}/data"
    headers = []
    custom_headers = []

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
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a service profile.
  """
  @spec delete_service_profile(map(), String.t(), delete_service_profile_request(), list()) ::
          {:ok, delete_service_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_profile_errors()}
  def delete_service_profile(%Client{} = client, id, input, options \\ []) do
    url_path = "/service-profiles/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a wireless device.
  """
  @spec delete_wireless_device(map(), String.t(), delete_wireless_device_request(), list()) ::
          {:ok, delete_wireless_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_wireless_device_errors()}
  def delete_wireless_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete an import task.
  """
  @spec delete_wireless_device_import_task(
          map(),
          String.t(),
          delete_wireless_device_import_task_request(),
          list()
        ) ::
          {:ok, delete_wireless_device_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_wireless_device_import_task_errors()}
  def delete_wireless_device_import_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless_device_import_task/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a wireless gateway.

  When deleting a wireless gateway, you might run into duplication errors
  for the following reasons.

    
  If you specify a `GatewayEui` value that already exists.

    
  If you used a `ClientRequestToken` with the same parameters
  within the last 10 minutes.

  To avoid this error, make sure that you use unique identifiers and parameters
  for each request within the specified time period.
  """
  @spec delete_wireless_gateway(map(), String.t(), delete_wireless_gateway_request(), list()) ::
          {:ok, delete_wireless_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_wireless_gateway_errors()}
  def delete_wireless_gateway(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a wireless gateway task.
  """
  @spec delete_wireless_gateway_task(
          map(),
          String.t(),
          delete_wireless_gateway_task_request(),
          list()
        ) ::
          {:ok, delete_wireless_gateway_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_wireless_gateway_task_errors()}
  def delete_wireless_gateway_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/tasks"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a wireless gateway task definition.

  Deleting this task definition does not
  affect tasks that are currently in progress.
  """
  @spec delete_wireless_gateway_task_definition(
          map(),
          String.t(),
          delete_wireless_gateway_task_definition_request(),
          list()
        ) ::
          {:ok, delete_wireless_gateway_task_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_wireless_gateway_task_definition_errors()}
  def delete_wireless_gateway_task_definition(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateway-task-definitions/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deregister a wireless device from AWS IoT Wireless.
  """
  @spec deregister_wireless_device(
          map(),
          String.t(),
          deregister_wireless_device_request(),
          list()
        ) ::
          {:ok, deregister_wireless_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_wireless_device_errors()}
  def deregister_wireless_device(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(identifier)}/deregister"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates your AWS account from a partner account.

  If
  `PartnerAccountId` and `PartnerType` are `null`,
  disassociates your AWS account from all partner accounts.
  """
  @spec disassociate_aws_account_from_partner_account(
          map(),
          String.t(),
          disassociate_aws_account_from_partner_account_request(),
          list()
        ) ::
          {:ok, disassociate_aws_account_from_partner_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_aws_account_from_partner_account_errors()}
  def disassociate_aws_account_from_partner_account(
        %Client{} = client,
        partner_account_id,
        input,
        options \\ []
      ) do
    url_path = "/partner-accounts/#{AWS.Util.encode_uri(partner_account_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"PartnerType", "partnerType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates a multicast group from a fuota task.
  """
  @spec disassociate_multicast_group_from_fuota_task(
          map(),
          String.t(),
          String.t(),
          disassociate_multicast_group_from_fuota_task_request(),
          list()
        ) ::
          {:ok, disassociate_multicast_group_from_fuota_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_multicast_group_from_fuota_task_errors()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates a wireless device from a FUOTA task.
  """
  @spec disassociate_wireless_device_from_fuota_task(
          map(),
          String.t(),
          String.t(),
          disassociate_wireless_device_from_fuota_task_request(),
          list()
        ) ::
          {:ok, disassociate_wireless_device_from_fuota_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_wireless_device_from_fuota_task_errors()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates a wireless device from a multicast group.
  """
  @spec disassociate_wireless_device_from_multicast_group(
          map(),
          String.t(),
          String.t(),
          disassociate_wireless_device_from_multicast_group_request(),
          list()
        ) ::
          {:ok, disassociate_wireless_device_from_multicast_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_wireless_device_from_multicast_group_errors()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates a wireless device from its currently associated thing.
  """
  @spec disassociate_wireless_device_from_thing(
          map(),
          String.t(),
          disassociate_wireless_device_from_thing_request(),
          list()
        ) ::
          {:ok, disassociate_wireless_device_from_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_wireless_device_from_thing_errors()}
  def disassociate_wireless_device_from_thing(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}/thing"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates a wireless gateway from its currently associated certificate.
  """
  @spec disassociate_wireless_gateway_from_certificate(
          map(),
          String.t(),
          disassociate_wireless_gateway_from_certificate_request(),
          list()
        ) ::
          {:ok, disassociate_wireless_gateway_from_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_wireless_gateway_from_certificate_errors()}
  def disassociate_wireless_gateway_from_certificate(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/certificate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates a wireless gateway from its currently associated thing.
  """
  @spec disassociate_wireless_gateway_from_thing(
          map(),
          String.t(),
          disassociate_wireless_gateway_from_thing_request(),
          list()
        ) ::
          {:ok, disassociate_wireless_gateway_from_thing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_wireless_gateway_from_thing_errors()}
  def disassociate_wireless_gateway_from_thing(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/thing"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Gets information about a destination.
  """
  @spec get_destination(map(), String.t(), list()) ::
          {:ok, get_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_destination_errors()}
  def get_destination(%Client{} = client, name, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a device profile.
  """
  @spec get_device_profile(map(), String.t(), list()) ::
          {:ok, get_device_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_profile_errors()}
  def get_device_profile(%Client{} = client, id, options \\ []) do
    url_path = "/device-profiles/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the event configuration based on resource types.
  """
  @spec get_event_configuration_by_resource_types(map(), list()) ::
          {:ok, get_event_configuration_by_resource_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_event_configuration_by_resource_types_errors()}
  def get_event_configuration_by_resource_types(%Client{} = client, options \\ []) do
    url_path = "/event-configurations-resource-types"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a FUOTA task.
  """
  @spec get_fuota_task(map(), String.t(), list()) ::
          {:ok, get_fuota_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_fuota_task_errors()}
  def get_fuota_task(%Client{} = client, id, options \\ []) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns current default log levels or log levels by resource types.

  Based on resource
  types, log levels can be for wireless device log options or wireless gateway log
  options.
  """
  @spec get_log_levels_by_resource_types(map(), list()) ::
          {:ok, get_log_levels_by_resource_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_log_levels_by_resource_types_errors()}
  def get_log_levels_by_resource_types(%Client{} = client, options \\ []) do
    url_path = "/log-levels"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the metric configuration status for this AWS account.
  """
  @spec get_metric_configuration(map(), list()) ::
          {:ok, get_metric_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_metric_configuration_errors()}
  def get_metric_configuration(%Client{} = client, options \\ []) do
    url_path = "/metric-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the summary metrics for this AWS account.
  """
  @spec get_metrics(map(), get_metrics_request(), list()) ::
          {:ok, get_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_metrics_errors()}
  def get_metrics(%Client{} = client, input, options \\ []) do
    url_path = "/metrics"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets information about a multicast group.
  """
  @spec get_multicast_group(map(), String.t(), list()) ::
          {:ok, get_multicast_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_multicast_group_errors()}
  def get_multicast_group(%Client{} = client, id, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a multicast group session.
  """
  @spec get_multicast_group_session(map(), String.t(), list()) ::
          {:ok, get_multicast_group_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_multicast_group_session_errors()}
  def get_multicast_group_session(%Client{} = client, id, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/session"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get network analyzer configuration.
  """
  @spec get_network_analyzer_configuration(map(), String.t(), list()) ::
          {:ok, get_network_analyzer_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_analyzer_configuration_errors()}
  def get_network_analyzer_configuration(%Client{} = client, configuration_name, options \\ []) do
    url_path = "/network-analyzer-configurations/#{AWS.Util.encode_uri(configuration_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a partner account.

  If `PartnerAccountId` and
  `PartnerType` are `null`, returns all partner accounts.
  """
  @spec get_partner_account(map(), String.t(), String.t(), list()) ::
          {:ok, get_partner_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_partner_account_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the position information for a given resource.

  This action is no longer supported. Calls to retrieve the position information
  should use the
  [GetResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html)
  API operation instead.
  """
  @spec get_position(map(), String.t(), String.t(), list()) ::
          {:ok, get_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_position_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get position configuration for a given resource.

  This action is no longer supported. Calls to retrieve the position configuration
  should use the
  [GetResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html)
  API operation instead.
  """
  @spec get_position_configuration(map(), String.t(), String.t(), list()) ::
          {:ok, get_position_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_position_configuration_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get estimated position information as a payload in GeoJSON format.

  The payload
  measurement data is resolved using solvers that are provided by third-party
  vendors.
  """
  @spec get_position_estimate(map(), get_position_estimate_request(), list()) ::
          {:ok, get_position_estimate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_position_estimate_errors()}
  def get_position_estimate(%Client{} = client, input, options \\ []) do
    url_path = "/position-estimate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Get the event configuration for a particular resource identifier.
  """
  @spec get_resource_event_configuration(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_resource_event_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_event_configuration_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Fetches the log-level override, if any, for a given resource-ID and
  resource-type.

  It
  can be used for a wireless device, wireless gateway or fuota task.
  """
  @spec get_resource_log_level(map(), String.t(), String.t(), list()) ::
          {:ok, get_resource_log_level_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_log_level_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the position information for a given wireless device or a wireless gateway
  resource.

  The position information uses the [ World Geodetic System (WGS84)](https://gisgeography.com/wgs84-world-geodetic-system/).
  """
  @spec get_resource_position(map(), String.t(), String.t(), list()) ::
          {:ok, get_resource_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_position_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the account-specific endpoint for Configuration and Update Server (CUPS)
  protocol
  or LoRaWAN Network Server (LNS) connections.
  """
  @spec get_service_endpoint(map(), String.t() | nil, list()) ::
          {:ok, get_service_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_endpoint_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a service profile.
  """
  @spec get_service_profile(map(), String.t(), list()) ::
          {:ok, get_service_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_profile_errors()}
  def get_service_profile(%Client{} = client, id, options \\ []) do
    url_path = "/service-profiles/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a wireless device.
  """
  @spec get_wireless_device(map(), String.t(), String.t(), list()) ::
          {:ok, get_wireless_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_wireless_device_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get information about an import task and count of device onboarding summary
  information for the import task.
  """
  @spec get_wireless_device_import_task(map(), String.t(), list()) ::
          {:ok, get_wireless_device_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_wireless_device_import_task_errors()}
  def get_wireless_device_import_task(%Client{} = client, id, options \\ []) do
    url_path = "/wireless_device_import_task/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets operating information about a wireless device.
  """
  @spec get_wireless_device_statistics(map(), String.t(), list()) ::
          {:ok, get_wireless_device_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_wireless_device_statistics_errors()}
  def get_wireless_device_statistics(%Client{} = client, wireless_device_id, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(wireless_device_id)}/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a wireless gateway.
  """
  @spec get_wireless_gateway(map(), String.t(), String.t(), list()) ::
          {:ok, get_wireless_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_wireless_gateway_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the ID of the certificate that is currently associated with a wireless
  gateway.
  """
  @spec get_wireless_gateway_certificate(map(), String.t(), list()) ::
          {:ok, get_wireless_gateway_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_wireless_gateway_certificate_errors()}
  def get_wireless_gateway_certificate(%Client{} = client, id, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/certificate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the firmware version and other information about a wireless gateway.
  """
  @spec get_wireless_gateway_firmware_information(map(), String.t(), list()) ::
          {:ok, get_wireless_gateway_firmware_information_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_wireless_gateway_firmware_information_errors()}
  def get_wireless_gateway_firmware_information(%Client{} = client, id, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/firmware-information"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets operating information about a wireless gateway.
  """
  @spec get_wireless_gateway_statistics(map(), String.t(), list()) ::
          {:ok, get_wireless_gateway_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_wireless_gateway_statistics_errors()}
  def get_wireless_gateway_statistics(%Client{} = client, wireless_gateway_id, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(wireless_gateway_id)}/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a wireless gateway task.
  """
  @spec get_wireless_gateway_task(map(), String.t(), list()) ::
          {:ok, get_wireless_gateway_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_wireless_gateway_task_errors()}
  def get_wireless_gateway_task(%Client{} = client, id, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}/tasks"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a wireless gateway task definition.
  """
  @spec get_wireless_gateway_task_definition(map(), String.t(), list()) ::
          {:ok, get_wireless_gateway_task_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_wireless_gateway_task_definition_errors()}
  def get_wireless_gateway_task_definition(%Client{} = client, id, options \\ []) do
    url_path = "/wireless-gateway-task-definitions/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the destinations registered to your AWS account.
  """
  @spec list_destinations(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_destinations_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the device profiles registered to your AWS account.
  """
  @spec list_device_profiles(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_device_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_device_profiles_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the Sidewalk devices in an import task and their onboarding status.
  """
  @spec list_devices_for_wireless_device_import_task(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_devices_for_wireless_device_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_devices_for_wireless_device_import_task_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List event configurations where at least one event topic has been enabled.
  """
  @spec list_event_configurations(map(), String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_event_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_event_configurations_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the FUOTA tasks registered to your AWS account.
  """
  @spec list_fuota_tasks(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_fuota_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fuota_tasks_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the multicast groups registered to your AWS account.
  """
  @spec list_multicast_groups(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_multicast_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_multicast_groups_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all multicast groups associated with a fuota task.
  """
  @spec list_multicast_groups_by_fuota_task(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_multicast_groups_by_fuota_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_multicast_groups_by_fuota_task_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the network analyzer configurations.
  """
  @spec list_network_analyzer_configurations(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_network_analyzer_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_network_analyzer_configurations_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the partner accounts associated with your AWS account.
  """
  @spec list_partner_accounts(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_partner_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_partner_accounts_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List position configurations for a given resource, such as positioning solvers.

  This action is no longer supported. Calls to retrieve position information
  should
  use the
  [GetResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html)
  API operation instead.
  """
  @spec list_position_configurations(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_position_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_position_configurations_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List queued messages in the downlink queue.
  """
  @spec list_queued_messages(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_queued_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_queued_messages_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the service profiles registered to your AWS account.
  """
  @spec list_service_profiles(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_service_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_profiles_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags (metadata) you have assigned to the resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List wireless devices that have been added to an import task.
  """
  @spec list_wireless_device_import_tasks(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_wireless_device_import_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_wireless_device_import_tasks_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the wireless devices registered to your AWS account.
  """
  @spec list_wireless_devices(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_wireless_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_wireless_devices_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the wireless gateway tasks definitions registered to your AWS account.
  """
  @spec list_wireless_gateway_task_definitions(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_wireless_gateway_task_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_wireless_gateway_task_definitions_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the wireless gateways registered to your AWS account.
  """
  @spec list_wireless_gateways(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_wireless_gateways_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_wireless_gateways_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Put position configuration for a given resource.

  This action is no longer supported. Calls to update the position configuration
  should use the
  [UpdateResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_UpdateResourcePosition.html)
  API operation instead.
  """
  @spec put_position_configuration(
          map(),
          String.t(),
          put_position_configuration_request(),
          list()
        ) ::
          {:ok, put_position_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_position_configuration_errors()}
  def put_position_configuration(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/position-configurations/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Sets the log-level override for a resource-ID and resource-type.

  This option can be
  specified for a wireless gateway or a wireless device. A limit of 200 log level
  override
  can be set per account.
  """
  @spec put_resource_log_level(map(), String.t(), put_resource_log_level_request(), list()) ::
          {:ok, put_resource_log_level_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_log_level_errors()}
  def put_resource_log_level(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/log-levels/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes the log-level overrides for all resources; wireless devices, wireless
  gateways, and fuota tasks.
  """
  @spec reset_all_resource_log_levels(map(), reset_all_resource_log_levels_request(), list()) ::
          {:ok, reset_all_resource_log_levels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_all_resource_log_levels_errors()}
  def reset_all_resource_log_levels(%Client{} = client, input, options \\ []) do
    url_path = "/log-levels"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes the log-level override, if any, for a specific resource-ID and
  resource-type.

  It can be used for a wireless device, a wireless gateway, or a fuota task.
  """
  @spec reset_resource_log_level(map(), String.t(), reset_resource_log_level_request(), list()) ::
          {:ok, reset_resource_log_level_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_resource_log_level_errors()}
  def reset_resource_log_level(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/log-levels/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Sends the specified data to a multicast group.
  """
  @spec send_data_to_multicast_group(
          map(),
          String.t(),
          send_data_to_multicast_group_request(),
          list()
        ) ::
          {:ok, send_data_to_multicast_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_data_to_multicast_group_errors()}
  def send_data_to_multicast_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/data"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Sends a decrypted application data frame to a device.
  """
  @spec send_data_to_wireless_device(
          map(),
          String.t(),
          send_data_to_wireless_device_request(),
          list()
        ) ::
          {:ok, send_data_to_wireless_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_data_to_wireless_device_errors()}
  def send_data_to_wireless_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}/data"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Starts a bulk association of all qualifying wireless devices with a multicast
  group.
  """
  @spec start_bulk_associate_wireless_device_with_multicast_group(
          map(),
          String.t(),
          start_bulk_associate_wireless_device_with_multicast_group_request(),
          list()
        ) ::
          {:ok, start_bulk_associate_wireless_device_with_multicast_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_bulk_associate_wireless_device_with_multicast_group_errors()}
  def start_bulk_associate_wireless_device_with_multicast_group(
        %Client{} = client,
        id,
        input,
        options \\ []
      ) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/bulk"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Starts a bulk disassociatin of all qualifying wireless devices from a multicast
  group.
  """
  @spec start_bulk_disassociate_wireless_device_from_multicast_group(
          map(),
          String.t(),
          start_bulk_disassociate_wireless_device_from_multicast_group_request(),
          list()
        ) ::
          {:ok, start_bulk_disassociate_wireless_device_from_multicast_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_bulk_disassociate_wireless_device_from_multicast_group_errors()}
  def start_bulk_disassociate_wireless_device_from_multicast_group(
        %Client{} = client,
        id,
        input,
        options \\ []
      ) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/bulk"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Starts a FUOTA task.
  """
  @spec start_fuota_task(map(), String.t(), start_fuota_task_request(), list()) ::
          {:ok, start_fuota_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_fuota_task_errors()}
  def start_fuota_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Starts a multicast group session.
  """
  @spec start_multicast_group_session(
          map(),
          String.t(),
          start_multicast_group_session_request(),
          list()
        ) ::
          {:ok, start_multicast_group_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_multicast_group_session_errors()}
  def start_multicast_group_session(%Client{} = client, id, input, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}/session"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Start import task for a single wireless device.
  """
  @spec start_single_wireless_device_import_task(
          map(),
          start_single_wireless_device_import_task_request(),
          list()
        ) ::
          {:ok, start_single_wireless_device_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_single_wireless_device_import_task_errors()}
  def start_single_wireless_device_import_task(%Client{} = client, input, options \\ []) do
    url_path = "/wireless_single_device_import_task"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Start import task for provisioning Sidewalk devices in bulk using an S3 CSV
  file.
  """
  @spec start_wireless_device_import_task(
          map(),
          start_wireless_device_import_task_request(),
          list()
        ) ::
          {:ok, start_wireless_device_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_wireless_device_import_task_errors()}
  def start_wireless_device_import_task(%Client{} = client, input, options \\ []) do
    url_path = "/wireless_device_import_task"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Adds a tag to a resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ResourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Simulates a provisioned device by sending an uplink data payload of
  `Hello`.
  """
  @spec test_wireless_device(map(), String.t(), test_wireless_device_request(), list()) ::
          {:ok, test_wireless_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_wireless_device_errors()}
  def test_wireless_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}/test"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes one or more tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []
    custom_headers = []

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
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates properties of a destination.
  """
  @spec update_destination(map(), String.t(), update_destination_request(), list()) ::
          {:ok, update_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_destination_errors()}
  def update_destination(%Client{} = client, name, input, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update the event configuration based on resource types.
  """
  @spec update_event_configuration_by_resource_types(
          map(),
          update_event_configuration_by_resource_types_request(),
          list()
        ) ::
          {:ok, update_event_configuration_by_resource_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_event_configuration_by_resource_types_errors()}
  def update_event_configuration_by_resource_types(%Client{} = client, input, options \\ []) do
    url_path = "/event-configurations-resource-types"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates properties of a FUOTA task.
  """
  @spec update_fuota_task(map(), String.t(), update_fuota_task_request(), list()) ::
          {:ok, update_fuota_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_fuota_task_errors()}
  def update_fuota_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/fuota-tasks/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Set default log level, or log levels by resource types.

  This can be for wireless
  device log options or wireless gateways log options and is used to control the
  log
  messages that'll be displayed in CloudWatch.
  """
  @spec update_log_levels_by_resource_types(
          map(),
          update_log_levels_by_resource_types_request(),
          list()
        ) ::
          {:ok, update_log_levels_by_resource_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_log_levels_by_resource_types_errors()}
  def update_log_levels_by_resource_types(%Client{} = client, input, options \\ []) do
    url_path = "/log-levels"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update the summary metric configuration.
  """
  @spec update_metric_configuration(map(), update_metric_configuration_request(), list()) ::
          {:ok, update_metric_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_metric_configuration_errors()}
  def update_metric_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/metric-configuration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates properties of a multicast group session.
  """
  @spec update_multicast_group(map(), String.t(), update_multicast_group_request(), list()) ::
          {:ok, update_multicast_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_multicast_group_errors()}
  def update_multicast_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/multicast-groups/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update network analyzer configuration.
  """
  @spec update_network_analyzer_configuration(
          map(),
          String.t(),
          update_network_analyzer_configuration_request(),
          list()
        ) ::
          {:ok, update_network_analyzer_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_network_analyzer_configuration_errors()}
  def update_network_analyzer_configuration(
        %Client{} = client,
        configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/network-analyzer-configurations/#{AWS.Util.encode_uri(configuration_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates properties of a partner account.
  """
  @spec update_partner_account(map(), String.t(), update_partner_account_request(), list()) ::
          {:ok, update_partner_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_partner_account_errors()}
  def update_partner_account(%Client{} = client, partner_account_id, input, options \\ []) do
    url_path = "/partner-accounts/#{AWS.Util.encode_uri(partner_account_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"PartnerType", "partnerType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec update_position(map(), String.t(), update_position_request(), list()) ::
          {:ok, update_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_position_errors()}
  def update_position(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/positions/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update the event configuration for a particular resource identifier.
  """
  @spec update_resource_event_configuration(
          map(),
          String.t(),
          update_resource_event_configuration_request(),
          list()
        ) ::
          {:ok, update_resource_event_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resource_event_configuration_errors()}
  def update_resource_event_configuration(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/event-configurations/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    custom_headers = []

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
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec update_resource_position(map(), String.t(), update_resource_position_request(), list()) ::
          {:ok, update_resource_position_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resource_position_errors()}
  def update_resource_position(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/resource-positions/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates properties of a wireless device.
  """
  @spec update_wireless_device(map(), String.t(), update_wireless_device_request(), list()) ::
          {:ok, update_wireless_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_wireless_device_errors()}
  def update_wireless_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-devices/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Update an import task to add more devices to the task.
  """
  @spec update_wireless_device_import_task(
          map(),
          String.t(),
          update_wireless_device_import_task_request(),
          list()
        ) ::
          {:ok, update_wireless_device_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_wireless_device_import_task_errors()}
  def update_wireless_device_import_task(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless_device_import_task/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates properties of a wireless gateway.
  """
  @spec update_wireless_gateway(map(), String.t(), update_wireless_gateway_request(), list()) ::
          {:ok, update_wireless_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_wireless_gateway_errors()}
  def update_wireless_gateway(%Client{} = client, id, input, options \\ []) do
    url_path = "/wireless-gateways/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end
end
