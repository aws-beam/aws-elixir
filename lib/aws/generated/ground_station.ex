# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GroundStation do
  @moduledoc """
  Welcome to the AWS Ground Station API Reference.

  AWS Ground Station is a fully managed service that
  enables you to control satellite communications, downlink and process satellite
  data, and
  scale your satellite operations efficiently and cost-effectively without having
  to build or manage your own ground station infrastructure.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_configs_request() :: %{
        "maxResults" => integer(),
        "nextToken" => String.t()
      }

  """
  @type list_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_agent_response() :: %{
        optional("agentId") => String.t()
      }

  """
  @type register_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      antenna_downlink_demod_decode_config() :: %{
        "decodeConfig" => decode_config(),
        "demodulationConfig" => demodulation_config(),
        "spectrumConfig" => spectrum_config()
      }

  """
  @type antenna_downlink_demod_decode_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_status_data() :: %{
        "bytesReceived" => [float()],
        "bytesSent" => [float()],
        "capabilityArn" => String.t(),
        "componentType" => String.t(),
        "dataflowId" => String.t(),
        "packetsDropped" => [float()],
        "status" => String.t()
      }

  """
  @type component_status_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_config_request() :: %{
        "configData" => list(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type create_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_minute_usage_request() :: %{
        "month" => integer(),
        "year" => integer()
      }

  """
  @type get_minute_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configs_response() :: %{
        "configList" => list(config_list_item()()),
        "nextToken" => String.t()
      }

  """
  @type list_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dependency_exception() :: %{
        "message" => [String.t()],
        "parameterName" => [String.t()]
      }

  """
  @type dependency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        "tags" => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataflow_endpoint_config() :: %{
        "dataflowEndpointName" => [String.t()],
        "dataflowEndpointRegion" => [String.t()]
      }

  """
  @type dataflow_endpoint_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_satellite_request() :: %{}

  """
  @type get_satellite_request() :: %{}

  @typedoc """

  ## Example:

      describe_contact_request() :: %{}

  """
  @type describe_contact_request() :: %{}

  @typedoc """

  ## Example:

      get_agent_configuration_response() :: %{
        optional("agentId") => String.t(),
        optional("taskingDocument") => [String.t()]
      }

  """
  @type get_agent_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataflow_detail() :: %{
        "destination" => destination(),
        "errorMessage" => [String.t()],
        "source" => source()
      }

  """
  @type dataflow_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_config_request() :: %{}

  """
  @type get_config_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      describe_contact_response() :: %{
        "contactId" => String.t(),
        "contactStatus" => String.t(),
        "dataflowList" => list(dataflow_detail()()),
        "endTime" => [non_neg_integer()],
        "errorMessage" => [String.t()],
        "groundStation" => [String.t()],
        "maximumElevation" => elevation(),
        "missionProfileArn" => String.t(),
        "postPassEndTime" => [non_neg_integer()],
        "prePassStartTime" => [non_neg_integer()],
        "region" => [String.t()],
        "satelliteArn" => String.t(),
        "startTime" => [non_neg_integer()],
        "tags" => map(),
        "visibilityEndTime" => [non_neg_integer()],
        "visibilityStartTime" => [non_neg_integer()]
      }

  """
  @type describe_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_config_request() :: %{
        "configData" => list(),
        "name" => String.t()
      }

  """
  @type update_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_agent_request() :: %{
        required("agentDetails") => agent_details(),
        required("discoveryData") => discovery_data()
      }

  """
  @type register_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tracking_config() :: %{
        "autotrack" => String.t()
      }

  """
  @type tracking_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ephemeris_description() :: %{
        "ephemerisData" => String.t(),
        "sourceS3Object" => s3_object()
      }

  """
  @type ephemeris_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spectrum_config() :: %{
        "bandwidth" => frequency_bandwidth(),
        "centerFrequency" => frequency(),
        "polarization" => String.t()
      }

  """
  @type spectrum_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      socket_address() :: %{
        "name" => [String.t()],
        "port" => [integer()]
      }

  """
  @type socket_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint_details() :: %{
        "awsGroundStationAgentEndpoint" => aws_ground_station_agent_endpoint(),
        "endpoint" => dataflow_endpoint(),
        "healthReasons" => list(String.t()()),
        "healthStatus" => String.t(),
        "securityDetails" => security_details()
      }

  """
  @type endpoint_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_config_response() :: %{
        "configArn" => String.t(),
        "configData" => list(),
        "configId" => [String.t()],
        "configType" => String.t(),
        "name" => [String.t()],
        "tags" => map()
      }

  """
  @type get_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ephemeris_item() :: %{
        "creationTime" => [non_neg_integer()],
        "enabled" => [boolean()],
        "ephemerisId" => String.t(),
        "name" => String.t(),
        "priority" => integer(),
        "sourceS3Object" => s3_object(),
        "status" => String.t()
      }

  """
  @type ephemeris_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ranged_socket_address() :: %{
        "name" => String.t(),
        "portRange" => integer_range()
      }

  """
  @type ranged_socket_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      antenna_uplink_config() :: %{
        "spectrumConfig" => uplink_spectrum_config(),
        "targetEirp" => eirp(),
        "transmitDisabled" => [boolean()]
      }

  """
  @type antenna_uplink_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ephemeris_meta_data() :: %{
        "ephemerisId" => String.t(),
        "epoch" => [non_neg_integer()],
        "name" => String.t(),
        "source" => String.t()
      }

  """
  @type ephemeris_meta_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      uplink_echo_config() :: %{
        "antennaUplinkConfigArn" => String.t(),
        "enabled" => [boolean()]
      }

  """
  @type uplink_echo_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ranged_connection_details() :: %{
        "mtu" => [integer()],
        "socketAddress" => ranged_socket_address()
      }

  """
  @type ranged_connection_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_object() :: %{
        "bucket" => String.t(),
        "key" => String.t(),
        "version" => String.t()
      }

  """
  @type s3_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      config_list_item() :: %{
        "configArn" => String.t(),
        "configId" => [String.t()],
        "configType" => String.t(),
        "name" => [String.t()]
      }

  """
  @type config_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_contact_request() :: %{}

  """
  @type cancel_contact_request() :: %{}

  @typedoc """

  ## Example:

      agent_details() :: %{
        "agentCpuCores" => list([integer()]()),
        "agentVersion" => String.t(),
        "componentVersions" => list(component_version()()),
        "instanceId" => String.t(),
        "instanceType" => String.t(),
        "reservedCpuCores" => list([integer()]())
      }

  """
  @type agent_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      decode_config() :: %{
        "unvalidatedJSON" => String.t()
      }

  """
  @type decode_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reserve_contact_request() :: %{
        "endTime" => [non_neg_integer()],
        "groundStation" => String.t(),
        "missionProfileArn" => String.t(),
        "satelliteArn" => String.t(),
        "startTime" => [non_neg_integer()],
        "tags" => map()
      }

  """
  @type reserve_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        "tagKeys" => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_ground_station_agent_endpoint() :: %{
        "agentStatus" => String.t(),
        "auditResults" => String.t(),
        "egressAddress" => connection_details(),
        "ingressAddress" => ranged_connection_details(),
        "name" => String.t()
      }

  """
  @type aws_ground_station_agent_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_config_request() :: %{}

  """
  @type delete_config_request() :: %{}

  @typedoc """

  ## Example:

      list_dataflow_endpoint_groups_response() :: %{
        "dataflowEndpointGroupList" => list(dataflow_endpoint_list_item()()),
        "nextToken" => String.t()
      }

  """
  @type list_dataflow_endpoint_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      satellite_list_item() :: %{
        "currentEphemeris" => ephemeris_meta_data(),
        "groundStations" => list(String.t()()),
        "noradSatelliteID" => integer(),
        "satelliteArn" => String.t(),
        "satelliteId" => String.t()
      }

  """
  @type satellite_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      config_id_response() :: %{
        "configArn" => String.t(),
        "configId" => [String.t()],
        "configType" => String.t()
      }

  """
  @type config_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataflow_endpoint_list_item() :: %{
        "dataflowEndpointGroupArn" => String.t(),
        "dataflowEndpointGroupId" => String.t()
      }

  """
  @type dataflow_endpoint_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frequency() :: %{
        "units" => String.t(),
        "value" => [float()]
      }

  """
  @type frequency() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      integer_range() :: %{
        "maximum" => [integer()],
        "minimum" => [integer()]
      }

  """
  @type integer_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mission_profile_id_response() :: %{
        "missionProfileId" => String.t()
      }

  """
  @type mission_profile_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_mission_profiles_response() :: %{
        "missionProfileList" => list(mission_profile_list_item()()),
        "nextToken" => String.t()
      }

  """
  @type list_mission_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_mission_profiles_request() :: %{
        "maxResults" => integer(),
        "nextToken" => String.t()
      }

  """
  @type list_mission_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_agent_status_response() :: %{
        required("agentId") => String.t()
      }

  """
  @type update_agent_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_data() :: %{
        "contactId" => String.t(),
        "contactStatus" => String.t(),
        "endTime" => [non_neg_integer()],
        "errorMessage" => [String.t()],
        "groundStation" => [String.t()],
        "maximumElevation" => elevation(),
        "missionProfileArn" => String.t(),
        "postPassEndTime" => [non_neg_integer()],
        "prePassStartTime" => [non_neg_integer()],
        "region" => [String.t()],
        "satelliteArn" => String.t(),
        "startTime" => [non_neg_integer()],
        "tags" => map(),
        "visibilityEndTime" => [non_neg_integer()],
        "visibilityStartTime" => [non_neg_integer()]
      }

  """
  @type contact_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ground_station_data() :: %{
        "groundStationId" => String.t(),
        "groundStationName" => String.t(),
        "region" => String.t()
      }

  """
  @type ground_station_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_mission_profile_request() :: %{}

  """
  @type get_mission_profile_request() :: %{}

  @typedoc """

  ## Example:

      resource_limit_exceeded_exception() :: %{
        "message" => [String.t()],
        "parameterName" => [String.t()]
      }

  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      demodulation_config() :: %{
        "unvalidatedJSON" => String.t()
      }

  """
  @type demodulation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_id_response() :: %{
        "contactId" => String.t()
      }

  """
  @type contact_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_agent_status_request() :: %{
        required("aggregateStatus") => aggregate_status(),
        required("componentStatuses") => list(component_status_data()()),
        required("taskId") => String.t()
      }

  """
  @type update_agent_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dataflow_endpoint_group_response() :: %{
        "contactPostPassDurationSeconds" => integer(),
        "contactPrePassDurationSeconds" => integer(),
        "dataflowEndpointGroupArn" => String.t(),
        "dataflowEndpointGroupId" => String.t(),
        "endpointsDetails" => list(endpoint_details()()),
        "tags" => map()
      }

  """
  @type get_dataflow_endpoint_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregate_status() :: %{
        "signatureMap" => map(),
        "status" => String.t()
      }

  """
  @type aggregate_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ephemeris_request() :: %{
        optional("name") => String.t(),
        optional("priority") => integer(),
        required("enabled") => [boolean()]
      }

  """
  @type update_ephemeris_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ephemeris_id_response() :: %{
        optional("ephemerisId") => String.t()
      }

  """
  @type ephemeris_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataflow_endpoint() :: %{
        "address" => socket_address(),
        "mtu" => [integer()],
        "name" => String.t(),
        "status" => String.t()
      }

  """
  @type dataflow_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_minute_usage_response() :: %{
        "estimatedMinutesRemaining" => [integer()],
        "isReservedMinutesCustomer" => [boolean()],
        "totalReservedMinuteAllocation" => [integer()],
        "totalScheduledMinutes" => [integer()],
        "upcomingMinutesScheduled" => [integer()]
      }

  """
  @type get_minute_usage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ephemeris_request() :: %{
        optional("enabled") => [boolean()],
        optional("ephemeris") => list(),
        optional("expirationTime") => [non_neg_integer()],
        optional("kmsKeyArn") => String.t(),
        optional("priority") => integer(),
        optional("tags") => map(),
        required("name") => String.t(),
        required("satelliteId") => String.t()
      }

  """
  @type create_ephemeris_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataflow_endpoint_group_id_response() :: %{
        "dataflowEndpointGroupId" => String.t()
      }

  """
  @type dataflow_endpoint_group_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_version() :: %{
        "componentType" => String.t(),
        "versions" => list(String.t()())
      }

  """
  @type component_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ground_stations_request() :: %{
        "maxResults" => integer(),
        "nextToken" => String.t(),
        "satelliteId" => String.t()
      }

  """
  @type list_ground_stations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ephemerides_response() :: %{
        optional("ephemerides") => list(ephemeris_item()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_ephemerides_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source() :: %{
        "configDetails" => list(),
        "configId" => [String.t()],
        "configType" => String.t(),
        "dataflowSourceRegion" => [String.t()]
      }

  """
  @type source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_contacts_request() :: %{
        "endTime" => [non_neg_integer()],
        "groundStation" => String.t(),
        "maxResults" => integer(),
        "missionProfileArn" => String.t(),
        "nextToken" => String.t(),
        "satelliteArn" => String.t(),
        "startTime" => [non_neg_integer()],
        "statusList" => list(String.t()())
      }

  """
  @type list_contacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ephemeris_request() :: %{}

  """
  @type delete_ephemeris_request() :: %{}

  @typedoc """

  ## Example:

      mission_profile_list_item() :: %{
        "missionProfileArn" => String.t(),
        "missionProfileId" => String.t(),
        "name" => String.t(),
        "region" => String.t()
      }

  """
  @type mission_profile_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      o_e_m_ephemeris() :: %{
        "oemData" => String.t(),
        "s3Object" => s3_object()
      }

  """
  @type o_e_m_ephemeris() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      uplink_spectrum_config() :: %{
        "centerFrequency" => frequency(),
        "polarization" => String.t()
      }

  """
  @type uplink_spectrum_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_mission_profile_request() :: %{}

  """
  @type delete_mission_profile_request() :: %{}

  @typedoc """

  ## Example:

      list_contacts_response() :: %{
        "contactList" => list(contact_data()()),
        "nextToken" => String.t()
      }

  """
  @type list_contacts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dataflow_endpoint_group_request() :: %{}

  """
  @type delete_dataflow_endpoint_group_request() :: %{}

  @typedoc """

  ## Example:

      time_range() :: %{
        "endTime" => [non_neg_integer()],
        "startTime" => [non_neg_integer()]
      }

  """
  @type time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "message" => [String.t()],
        "parameterName" => [String.t()]
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_satellite_response() :: %{
        "currentEphemeris" => ephemeris_meta_data(),
        "groundStations" => list(String.t()()),
        "noradSatelliteID" => integer(),
        "satelliteArn" => String.t(),
        "satelliteId" => String.t()
      }

  """
  @type get_satellite_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_satellites_response() :: %{
        "nextToken" => String.t(),
        "satellites" => list(satellite_list_item()())
      }

  """
  @type list_satellites_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_ephemeris_request() :: %{}

  """
  @type describe_ephemeris_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      destination() :: %{
        "configDetails" => list(),
        "configId" => String.t(),
        "configType" => String.t(),
        "dataflowDestinationRegion" => [String.t()]
      }

  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      t_l_e_ephemeris() :: %{
        "s3Object" => s3_object(),
        "tleData" => list(t_l_e_data()())
      }

  """
  @type t_l_e_ephemeris() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      security_details() :: %{
        "roleArn" => String.t(),
        "securityGroupIds" => list([String.t()]()),
        "subnetIds" => list([String.t()]())
      }

  """
  @type security_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_recording_config() :: %{
        "bucketArn" => String.t(),
        "prefix" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type s3_recording_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ephemerides_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("statusList") => list(String.t()()),
        required("endTime") => [non_neg_integer()],
        required("satelliteId") => String.t(),
        required("startTime") => [non_neg_integer()]
      }

  """
  @type list_ephemerides_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_recording_details() :: %{
        "bucketArn" => String.t(),
        "keyTemplate" => [String.t()]
      }

  """
  @type s3_recording_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      antenna_demod_decode_details() :: %{
        "outputNode" => [String.t()]
      }

  """
  @type antenna_demod_decode_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      t_l_e_data() :: %{
        "tleLine1" => String.t(),
        "tleLine2" => String.t(),
        "validTimeRange" => time_range()
      }

  """
  @type t_l_e_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frequency_bandwidth() :: %{
        "units" => String.t(),
        "value" => [float()]
      }

  """
  @type frequency_bandwidth() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      antenna_downlink_config() :: %{
        "spectrumConfig" => spectrum_config()
      }

  """
  @type antenna_downlink_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dataflow_endpoint_groups_request() :: %{
        "maxResults" => integer(),
        "nextToken" => String.t()
      }

  """
  @type list_dataflow_endpoint_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eirp() :: %{
        "units" => String.t(),
        "value" => [float()]
      }

  """
  @type eirp() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ground_stations_response() :: %{
        "groundStationList" => list(ground_station_data()()),
        "nextToken" => String.t()
      }

  """
  @type list_ground_stations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_mission_profile_response() :: %{
        "contactPostPassDurationSeconds" => integer(),
        "contactPrePassDurationSeconds" => integer(),
        "dataflowEdges" => list(list(String.t()())()),
        "minimumViableContactDurationSeconds" => integer(),
        "missionProfileArn" => String.t(),
        "missionProfileId" => String.t(),
        "name" => String.t(),
        "region" => String.t(),
        "streamsKmsKey" => list(),
        "streamsKmsRole" => String.t(),
        "tags" => map(),
        "trackingConfigArn" => String.t()
      }

  """
  @type get_mission_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_details() :: %{
        "mtu" => [integer()],
        "socketAddress" => socket_address()
      }

  """
  @type connection_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      discovery_data() :: %{
        "capabilityArns" => list(String.t()()),
        "privateIpAddresses" => list(String.t()()),
        "publicIpAddresses" => list(String.t()())
      }

  """
  @type discovery_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_ephemeris_response() :: %{
        "creationTime" => [non_neg_integer()],
        "enabled" => [boolean()],
        "ephemerisId" => String.t(),
        "invalidReason" => String.t(),
        "name" => String.t(),
        "priority" => integer(),
        "satelliteId" => String.t(),
        "status" => String.t(),
        "suppliedData" => list(),
        "tags" => map()
      }

  """
  @type describe_ephemeris_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_satellites_request() :: %{
        "maxResults" => integer(),
        "nextToken" => String.t()
      }

  """
  @type list_satellites_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dataflow_endpoint_group_request() :: %{
        "contactPostPassDurationSeconds" => integer(),
        "contactPrePassDurationSeconds" => integer(),
        "endpointDetails" => list(endpoint_details()()),
        "tags" => map()
      }

  """
  @type create_dataflow_endpoint_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      elevation() :: %{
        "unit" => String.t(),
        "value" => [float()]
      }

  """
  @type elevation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dataflow_endpoint_group_request() :: %{}

  """
  @type get_dataflow_endpoint_group_request() :: %{}

  @typedoc """

  ## Example:

      get_agent_configuration_request() :: %{}

  """
  @type get_agent_configuration_request() :: %{}

  @typedoc """

  ## Example:

      create_mission_profile_request() :: %{
        "contactPostPassDurationSeconds" => integer(),
        "contactPrePassDurationSeconds" => integer(),
        "dataflowEdges" => list(list(String.t()())()),
        "minimumViableContactDurationSeconds" => integer(),
        "name" => String.t(),
        "streamsKmsKey" => list(),
        "streamsKmsRole" => String.t(),
        "tags" => map(),
        "trackingConfigArn" => String.t()
      }

  """
  @type create_mission_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_mission_profile_request() :: %{
        "contactPostPassDurationSeconds" => integer(),
        "contactPrePassDurationSeconds" => integer(),
        "dataflowEdges" => list(list(String.t()())()),
        "minimumViableContactDurationSeconds" => integer(),
        "name" => String.t(),
        "streamsKmsKey" => list(),
        "streamsKmsRole" => String.t(),
        "trackingConfigArn" => String.t()
      }

  """
  @type update_mission_profile_request() :: %{String.t() => any()}

  @type cancel_contact_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type create_config_errors() ::
          invalid_parameter_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()
          | dependency_exception()

  @type create_dataflow_endpoint_group_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type create_ephemeris_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type create_mission_profile_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type delete_config_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type delete_dataflow_endpoint_group_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type delete_ephemeris_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type delete_mission_profile_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type describe_contact_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type describe_ephemeris_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type get_agent_configuration_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type get_config_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type get_dataflow_endpoint_group_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type get_minute_usage_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type get_mission_profile_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type get_satellite_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_configs_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_contacts_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_dataflow_endpoint_groups_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_ephemerides_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_ground_stations_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_mission_profiles_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_satellites_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type list_tags_for_resource_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type register_agent_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type reserve_contact_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type tag_resource_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type untag_resource_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type update_agent_status_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type update_config_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type update_ephemeris_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  @type update_mission_profile_errors() ::
          invalid_parameter_exception() | resource_not_found_exception() | dependency_exception()

  def metadata do
    %{
      api_version: "2019-05-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "groundstation",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "GroundStation",
      signature_version: "v4",
      signing_name: "groundstation",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a contact with a specified contact ID.
  """
  @spec cancel_contact(map(), String.t(), cancel_contact_request(), list()) ::
          {:ok, contact_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_contact_errors()}
  def cancel_contact(%Client{} = client, contact_id, input, options \\ []) do
    url_path = "/contact/#{AWS.Util.encode_uri(contact_id)}"
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
      200
    )
  end

  @doc """
  Creates a `Config` with the specified `configData` parameters.

  Only one type of `configData` can be specified.
  """
  @spec create_config(map(), create_config_request(), list()) ::
          {:ok, config_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_config_errors()}
  def create_config(%Client{} = client, input, options \\ []) do
    url_path = "/config"
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
  Creates a `DataflowEndpoint` group containing the specified list of
  `DataflowEndpoint` objects.

  The `name` field in each endpoint is used in your mission profile
  `DataflowEndpointConfig`
  to specify which endpoints to use during a contact.

  When a contact uses multiple `DataflowEndpointConfig` objects, each `Config`
  must match a `DataflowEndpoint` in the same group.
  """
  @spec create_dataflow_endpoint_group(map(), create_dataflow_endpoint_group_request(), list()) ::
          {:ok, dataflow_endpoint_group_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dataflow_endpoint_group_errors()}
  def create_dataflow_endpoint_group(%Client{} = client, input, options \\ []) do
    url_path = "/dataflowEndpointGroup"
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
  Creates an Ephemeris with the specified `EphemerisData`.
  """
  @spec create_ephemeris(map(), create_ephemeris_request(), list()) ::
          {:ok, ephemeris_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ephemeris_errors()}
  def create_ephemeris(%Client{} = client, input, options \\ []) do
    url_path = "/ephemeris"
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
  Creates a mission profile.

  `dataflowEdges` is a list of lists of strings. Each lower level list of strings
  has two elements: a *from* ARN and a *to* ARN.
  """
  @spec create_mission_profile(map(), create_mission_profile_request(), list()) ::
          {:ok, mission_profile_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_mission_profile_errors()}
  def create_mission_profile(%Client{} = client, input, options \\ []) do
    url_path = "/missionprofile"
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
  Deletes a `Config`.
  """
  @spec delete_config(map(), String.t(), String.t(), delete_config_request(), list()) ::
          {:ok, config_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_config_errors()}
  def delete_config(%Client{} = client, config_id, config_type, input, options \\ []) do
    url_path = "/config/#{AWS.Util.encode_uri(config_type)}/#{AWS.Util.encode_uri(config_id)}"
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
      200
    )
  end

  @doc """
  Deletes a dataflow endpoint group.
  """
  @spec delete_dataflow_endpoint_group(
          map(),
          String.t(),
          delete_dataflow_endpoint_group_request(),
          list()
        ) ::
          {:ok, dataflow_endpoint_group_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dataflow_endpoint_group_errors()}
  def delete_dataflow_endpoint_group(
        %Client{} = client,
        dataflow_endpoint_group_id,
        input,
        options \\ []
      ) do
    url_path = "/dataflowEndpointGroup/#{AWS.Util.encode_uri(dataflow_endpoint_group_id)}"
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
      200
    )
  end

  @doc """
  Deletes an ephemeris
  """
  @spec delete_ephemeris(map(), String.t(), delete_ephemeris_request(), list()) ::
          {:ok, ephemeris_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ephemeris_errors()}
  def delete_ephemeris(%Client{} = client, ephemeris_id, input, options \\ []) do
    url_path = "/ephemeris/#{AWS.Util.encode_uri(ephemeris_id)}"
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
      200
    )
  end

  @doc """
  Deletes a mission profile.
  """
  @spec delete_mission_profile(map(), String.t(), delete_mission_profile_request(), list()) ::
          {:ok, mission_profile_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_mission_profile_errors()}
  def delete_mission_profile(%Client{} = client, mission_profile_id, input, options \\ []) do
    url_path = "/missionprofile/#{AWS.Util.encode_uri(mission_profile_id)}"
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
      200
    )
  end

  @doc """
  Describes an existing contact.
  """
  @spec describe_contact(map(), String.t(), list()) ::
          {:ok, describe_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_contact_errors()}
  def describe_contact(%Client{} = client, contact_id, options \\ []) do
    url_path = "/contact/#{AWS.Util.encode_uri(contact_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing ephemeris.
  """
  @spec describe_ephemeris(map(), String.t(), list()) ::
          {:ok, describe_ephemeris_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_ephemeris_errors()}
  def describe_ephemeris(%Client{} = client, ephemeris_id, options \\ []) do
    url_path = "/ephemeris/#{AWS.Util.encode_uri(ephemeris_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  For use by AWS Ground Station Agent and shouldn't be called directly.

  Gets the latest configuration information for a registered agent.
  """
  @spec get_agent_configuration(map(), String.t(), list()) ::
          {:ok, get_agent_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_agent_configuration_errors()}
  def get_agent_configuration(%Client{} = client, agent_id, options \\ []) do
    url_path = "/agent/#{AWS.Util.encode_uri(agent_id)}/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns `Config` information.

  Only one `Config` response can be returned.
  """
  @spec get_config(map(), String.t(), String.t(), list()) ::
          {:ok, get_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_config_errors()}
  def get_config(%Client{} = client, config_id, config_type, options \\ []) do
    url_path = "/config/#{AWS.Util.encode_uri(config_type)}/#{AWS.Util.encode_uri(config_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the dataflow endpoint group.
  """
  @spec get_dataflow_endpoint_group(map(), String.t(), list()) ::
          {:ok, get_dataflow_endpoint_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_dataflow_endpoint_group_errors()}
  def get_dataflow_endpoint_group(%Client{} = client, dataflow_endpoint_group_id, options \\ []) do
    url_path = "/dataflowEndpointGroup/#{AWS.Util.encode_uri(dataflow_endpoint_group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the number of reserved minutes used by account.
  """
  @spec get_minute_usage(map(), get_minute_usage_request(), list()) ::
          {:ok, get_minute_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_minute_usage_errors()}
  def get_minute_usage(%Client{} = client, input, options \\ []) do
    url_path = "/minute-usage"
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
  Returns a mission profile.
  """
  @spec get_mission_profile(map(), String.t(), list()) ::
          {:ok, get_mission_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_mission_profile_errors()}
  def get_mission_profile(%Client{} = client, mission_profile_id, options \\ []) do
    url_path = "/missionprofile/#{AWS.Util.encode_uri(mission_profile_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a satellite.
  """
  @spec get_satellite(map(), String.t(), list()) ::
          {:ok, get_satellite_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_satellite_errors()}
  def get_satellite(%Client{} = client, satellite_id, options \\ []) do
    url_path = "/satellite/#{AWS.Util.encode_uri(satellite_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of `Config` objects.
  """
  @spec list_configs(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configs_errors()}
  def list_configs(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/config"
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
  Returns a list of contacts.

  If `statusList` contains AVAILABLE, the request must include
  `groundStation`, `missionprofileArn`, and `satelliteArn`.
  """
  @spec list_contacts(map(), list_contacts_request(), list()) ::
          {:ok, list_contacts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_contacts_errors()}
  def list_contacts(%Client{} = client, input, options \\ []) do
    url_path = "/contacts"
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
  Returns a list of `DataflowEndpoint` groups.
  """
  @spec list_dataflow_endpoint_groups(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_dataflow_endpoint_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dataflow_endpoint_groups_errors()}
  def list_dataflow_endpoint_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/dataflowEndpointGroup"
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
  List existing ephemerides.
  """
  @spec list_ephemerides(map(), list_ephemerides_request(), list()) ::
          {:ok, list_ephemerides_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ephemerides_errors()}
  def list_ephemerides(%Client{} = client, input, options \\ []) do
    url_path = "/ephemerides"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
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
      200
    )
  end

  @doc """
  Returns a list of ground stations.
  """
  @spec list_ground_stations(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_ground_stations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ground_stations_errors()}
  def list_ground_stations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        satellite_id \\ nil,
        options \\ []
      ) do
    url_path = "/groundstation"
    headers = []
    query_params = []

    query_params =
      if !is_nil(satellite_id) do
        [{"satelliteId", satellite_id} | query_params]
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
  Returns a list of mission profiles.
  """
  @spec list_mission_profiles(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_mission_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_mission_profiles_errors()}
  def list_mission_profiles(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/missionprofile"
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
  Returns a list of satellites.
  """
  @spec list_satellites(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_satellites_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_satellites_errors()}
  def list_satellites(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/satellite"
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
  Returns a list of tags for a specified resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  For use by AWS Ground Station Agent and shouldn't be called directly.

  Registers a new agent with AWS Ground Station.
  """
  @spec register_agent(map(), register_agent_request(), list()) ::
          {:ok, register_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_agent_errors()}
  def register_agent(%Client{} = client, input, options \\ []) do
    url_path = "/agent"
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
  Reserves a contact using specified parameters.
  """
  @spec reserve_contact(map(), reserve_contact_request(), list()) ::
          {:ok, contact_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reserve_contact_errors()}
  def reserve_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact"
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
  Assigns a tag to a resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Deassigns a resource tag.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
      200
    )
  end

  @doc """

  For use by AWS Ground Station Agent and shouldn't be called directly.

  Update the status of the agent.
  """
  @spec update_agent_status(map(), String.t(), update_agent_status_request(), list()) ::
          {:ok, update_agent_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_agent_status_errors()}
  def update_agent_status(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agent/#{AWS.Util.encode_uri(agent_id)}"
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
  Updates the `Config` used when scheduling contacts.

  Updating a `Config` will not update the execution parameters
  for existing future contacts scheduled with this `Config`.
  """
  @spec update_config(map(), String.t(), String.t(), update_config_request(), list()) ::
          {:ok, config_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_config_errors()}
  def update_config(%Client{} = client, config_id, config_type, input, options \\ []) do
    url_path = "/config/#{AWS.Util.encode_uri(config_type)}/#{AWS.Util.encode_uri(config_id)}"
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
  Updates an existing ephemeris
  """
  @spec update_ephemeris(map(), String.t(), update_ephemeris_request(), list()) ::
          {:ok, ephemeris_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_ephemeris_errors()}
  def update_ephemeris(%Client{} = client, ephemeris_id, input, options \\ []) do
    url_path = "/ephemeris/#{AWS.Util.encode_uri(ephemeris_id)}"
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
  Updates a mission profile.

  Updating a mission profile will not update the execution parameters
  for existing future contacts.
  """
  @spec update_mission_profile(map(), String.t(), update_mission_profile_request(), list()) ::
          {:ok, mission_profile_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_mission_profile_errors()}
  def update_mission_profile(%Client{} = client, mission_profile_id, input, options \\ []) do
    url_path = "/missionprofile/#{AWS.Util.encode_uri(mission_profile_id)}"
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
end
