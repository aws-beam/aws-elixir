# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaConnect do
  @moduledoc """
  Welcome to the Elemental MediaConnect API reference.

  MediaConnect is a service that lets you ingest live video content into the cloud
  and distribute it to destinations all over the world, both inside and outside
  the Amazon Web Services cloud. This API reference provides descriptions, syntax,
  and usage examples for each of the actions and data types that are supported by
  MediaConnect.

  Use the following links to get started with the MediaConnect API:

    *
  [Actions](https://docs.aws.amazon.com/mediaconnect/latest/api/API_Operations.html): An alphabetical list of all MediaConnect API operations.

    * [Data
  types](https://docs.aws.amazon.com/mediaconnect/latest/api/API_Types.html): An
  alphabetical list of all MediaConnect data types.

    * [Common parameters](https://docs.aws.amazon.com/mediaconnect/latest/api/CommonParameters.html):
  Parameters that all operations can use.

    * [Common errors](https://docs.aws.amazon.com/mediaconnect/latest/api/CommonErrors.html):
  Client and server errors that all operations can return.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      deregister_gateway_instance_response() :: %{
        "GatewayInstanceArn" => [String.t() | Atom.t()],
        "InstanceState" => list(any())
      }

  """
  @type deregister_gateway_instance_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_flow_request() :: %{
        optional("Maintenance") => update_maintenance(),
        optional("NdiConfig") => ndi_config(),
        optional("SourceFailoverConfig") => update_failover_config(),
        optional("SourceMonitoringConfig") => monitoring_config()
      }

  """
  @type update_flow_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_flow_source_thumbnail_response() :: %{
        "ThumbnailDetails" => thumbnail_details()
      }

  """
  @type describe_flow_source_thumbnail_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_flow_vpc_interface_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "NonDeletedNetworkInterfaceIds" => list([String.t() | Atom.t()]()),
        "VpcInterfaceName" => [String.t() | Atom.t()]
      }

  """
  @type remove_flow_vpc_interface_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      media_stream_output_configuration_request() :: %{
        "DestinationConfigurations" => list(destination_configuration_request()),
        "EncodingName" => list(any()),
        "EncodingParameters" => encoding_parameters_request(),
        "MediaStreamName" => [String.t() | Atom.t()]
      }

  """
  @type media_stream_output_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_flow_sources_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "Sources" => list(source())
      }

  """
  @type add_flow_sources_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      listed_entitlement() :: %{
        "DataTransferSubscriberFeePercent" => [integer()],
        "EntitlementArn" => [String.t() | Atom.t()],
        "EntitlementName" => [String.t() | Atom.t()]
      }

  """
  @type listed_entitlement() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      transport_stream_program() :: %{
        "PcrPid" => [integer()],
        "ProgramName" => [String.t() | Atom.t()],
        "ProgramNumber" => [integer()],
        "ProgramPid" => [integer()],
        "Streams" => list(transport_stream())
      }

  """
  @type transport_stream_program() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_flow_source_metadata_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "Messages" => list(message_detail()),
        "Timestamp" => [non_neg_integer()],
        "TransportMediaInfo" => transport_media_info()
      }

  """
  @type describe_flow_source_metadata_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      grant_flow_entitlements_request() :: %{
        required("Entitlements") => list(grant_entitlement_request())
      }

  """
  @type grant_flow_entitlements_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_gateway_instance_request() :: %{}

  """
  @type describe_gateway_instance_request() :: %{}

  @typedoc """

  ## Example:

      describe_flow_source_metadata_request() :: %{}

  """
  @type describe_flow_source_metadata_request() :: %{}

  @typedoc """

  ## Example:

      fmtp_request() :: %{
        "ChannelOrder" => [String.t() | Atom.t()],
        "Colorimetry" => list(any()),
        "ExactFramerate" => [String.t() | Atom.t()],
        "Par" => [String.t() | Atom.t()],
        "Range" => list(any()),
        "ScanMode" => list(any()),
        "Tcs" => list(any())
      }

  """
  @type fmtp_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_flow_request() :: %{
        optional("AvailabilityZone") => [String.t() | Atom.t()],
        optional("Entitlements") => list(grant_entitlement_request()),
        optional("FlowSize") => list(any()),
        optional("Maintenance") => add_maintenance(),
        optional("MediaStreams") => list(add_media_stream_request()),
        optional("NdiConfig") => ndi_config(),
        optional("Outputs") => list(add_output_request()),
        optional("Source") => set_source_request(),
        optional("SourceFailoverConfig") => failover_config(),
        optional("SourceMonitoringConfig") => monitoring_config(),
        optional("Sources") => list(set_source_request()),
        optional("VpcInterfaces") => list(vpc_interface_request()),
        required("Name") => [String.t() | Atom.t()]
      }

  """
  @type create_flow_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_bridge_state_request() :: %{
        required("DesiredState") => list(any())
      }

  """
  @type update_bridge_state_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_gateway_instances_response() :: %{
        "Instances" => list(listed_gateway_instance()),
        "NextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_gateway_instances_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      media_stream_source_configuration_request() :: %{
        "EncodingName" => list(any()),
        "InputConfigurations" => list(input_configuration_request()),
        "MediaStreamName" => [String.t() | Atom.t()]
      }

  """
  @type media_stream_source_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_egress_gateway_bridge_request() :: %{
        "MaxBitrate" => [integer()]
      }

  """
  @type update_egress_gateway_bridge_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_bridge_sources_response() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "Sources" => list(bridge_source())
      }

  """
  @type add_bridge_sources_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_gateway_response() :: %{
        "Gateway" => gateway()
      }

  """
  @type create_gateway_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_gateways_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_gateways_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_flow_media_streams_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "MediaStreams" => list(media_stream())
      }

  """
  @type add_flow_media_streams_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_flow_outputs_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "Outputs" => list(output())
      }

  """
  @type add_flow_outputs_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_flow_source_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "Source" => source()
      }

  """
  @type update_flow_source_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type forbidden_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_reservations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_reservations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_bridge_output_request() :: %{
        optional("NetworkOutput") => update_bridge_network_output_request()
      }

  """
  @type update_bridge_output_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_offerings_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_offerings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_bridges_request() :: %{
        optional("FilterArn") => [String.t() | Atom.t()],
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_bridges_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      interface_request() :: %{
        "Name" => [String.t() | Atom.t()]
      }

  """
  @type interface_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bridge_flow_source() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "FlowVpcInterfaceAttachment" => vpc_interface_attachment(),
        "Name" => [String.t() | Atom.t()],
        "OutputArn" => [String.t() | Atom.t()]
      }

  """
  @type bridge_flow_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_offerings_response() :: %{
        "NextToken" => [String.t() | Atom.t()],
        "Offerings" => list(offering())
      }

  """
  @type list_offerings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      frozen_frames() :: %{
        "State" => list(any()),
        "ThresholdSeconds" => [integer()]
      }

  """
  @type frozen_frames() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_bridge_source_request() :: %{}

  """
  @type remove_bridge_source_request() :: %{}

  @typedoc """

  ## Example:

      describe_gateway_instance_response() :: %{
        "GatewayInstance" => gateway_instance()
      }

  """
  @type describe_gateway_instance_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_maintenance() :: %{
        "MaintenanceDay" => list(any()),
        "MaintenanceScheduledDate" => [String.t() | Atom.t()],
        "MaintenanceStartHour" => [String.t() | Atom.t()]
      }

  """
  @type update_maintenance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_bridge_source_request() :: %{
        "FlowSource" => add_bridge_flow_source_request(),
        "NetworkSource" => add_bridge_network_source_request()
      }

  """
  @type add_bridge_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_ingress_gateway_bridge_request() :: %{
        "MaxBitrate" => [integer()],
        "MaxOutputs" => [integer()]
      }

  """
  @type update_ingress_gateway_bridge_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_gateway_response() :: %{
        "GatewayArn" => [String.t() | Atom.t()]
      }

  """
  @type delete_gateway_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_flow_request() :: %{}

  """
  @type delete_flow_request() :: %{}

  @typedoc """

  ## Example:

      create_flow420_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type create_flow420_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      listed_flow() :: %{
        "AvailabilityZone" => [String.t() | Atom.t()],
        "Description" => [String.t() | Atom.t()],
        "FlowArn" => [String.t() | Atom.t()],
        "Maintenance" => maintenance(),
        "Name" => [String.t() | Atom.t()],
        "SourceType" => list(any()),
        "Status" => list(any())
      }

  """
  @type listed_flow() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      thumbnail_details() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "Thumbnail" => [String.t() | Atom.t()],
        "ThumbnailMessages" => list(message_detail()),
        "Timecode" => [String.t() | Atom.t()],
        "Timestamp" => [non_neg_integer()]
      }

  """
  @type thumbnail_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_gateway_instance_request() :: %{
        optional("BridgePlacement") => list(any())
      }

  """
  @type update_gateway_instance_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      media_stream() :: %{
        "Attributes" => media_stream_attributes(),
        "ClockRate" => [integer()],
        "Description" => [String.t() | Atom.t()],
        "Fmt" => [integer()],
        "MediaStreamId" => [integer()],
        "MediaStreamName" => [String.t() | Atom.t()],
        "MediaStreamType" => list(any()),
        "VideoFormat" => [String.t() | Atom.t()]
      }

  """
  @type media_stream() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_flow_response() :: %{
        "Flow" => flow()
      }

  """
  @type create_flow_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_flow_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "Status" => list(any())
      }

  """
  @type delete_flow_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_flow_media_stream_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "MediaStreamName" => [String.t() | Atom.t()]
      }

  """
  @type remove_flow_media_stream_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list([String.t() | Atom.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type too_many_requests_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_bridge_source_response() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "SourceName" => [String.t() | Atom.t()]
      }

  """
  @type remove_bridge_source_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_bridge_flow_source_request() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "FlowVpcInterfaceAttachment" => vpc_interface_attachment()
      }

  """
  @type update_bridge_flow_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      encoding_parameters_request() :: %{
        "CompressionFactor" => [float()],
        "EncoderProfile" => list(any())
      }

  """
  @type encoding_parameters_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_bridge_response() :: %{
        "Bridge" => bridge()
      }

  """
  @type create_bridge_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      gateway() :: %{
        "EgressCidrBlocks" => list([String.t() | Atom.t()]()),
        "GatewayArn" => [String.t() | Atom.t()],
        "GatewayMessages" => list(message_detail()),
        "GatewayState" => list(any()),
        "Name" => [String.t() | Atom.t()],
        "Networks" => list(gateway_network())
      }

  """
  @type gateway() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_flow_media_stream_request() :: %{
        optional("Attributes") => media_stream_attributes_request(),
        optional("ClockRate") => [integer()],
        optional("Description") => [String.t() | Atom.t()],
        optional("MediaStreamType") => list(any()),
        optional("VideoFormat") => [String.t() | Atom.t()]
      }

  """
  @type update_flow_media_stream_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_media_stream_request() :: %{
        "Attributes" => media_stream_attributes_request(),
        "ClockRate" => [integer()],
        "Description" => [String.t() | Atom.t()],
        "MediaStreamId" => [integer()],
        "MediaStreamName" => [String.t() | Atom.t()],
        "MediaStreamType" => list(any()),
        "VideoFormat" => [String.t() | Atom.t()]
      }

  """
  @type add_media_stream_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ingress_gateway_bridge() :: %{
        "InstanceId" => [String.t() | Atom.t()],
        "MaxBitrate" => [integer()],
        "MaxOutputs" => [integer()]
      }

  """
  @type ingress_gateway_bridge() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bridge_network_output() :: %{
        "IpAddress" => [String.t() | Atom.t()],
        "Name" => [String.t() | Atom.t()],
        "NetworkName" => [String.t() | Atom.t()],
        "Port" => [integer()],
        "Protocol" => list(any()),
        "Ttl" => [integer()]
      }

  """
  @type bridge_network_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      message_detail() :: %{
        "Code" => [String.t() | Atom.t()],
        "Message" => [String.t() | Atom.t()],
        "ResourceName" => [String.t() | Atom.t()]
      }

  """
  @type message_detail() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      media_stream_attributes_request() :: %{
        "Fmtp" => fmtp_request(),
        "Lang" => [String.t() | Atom.t()]
      }

  """
  @type media_stream_attributes_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_bridge420_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type create_bridge420_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      gateway_network() :: %{
        "CidrBlock" => [String.t() | Atom.t()],
        "Name" => [String.t() | Atom.t()]
      }

  """
  @type gateway_network() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_bridge_request() :: %{
        optional("EgressGatewayBridge") => update_egress_gateway_bridge_request(),
        optional("IngressGatewayBridge") => update_ingress_gateway_bridge_request(),
        optional("SourceFailoverConfig") => update_failover_config()
      }

  """
  @type update_bridge_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      egress_gateway_bridge() :: %{
        "InstanceId" => [String.t() | Atom.t()],
        "MaxBitrate" => [integer()]
      }

  """
  @type egress_gateway_bridge() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_flow_source_request() :: %{
        optional("Decryption") => update_encryption(),
        optional("Description") => [String.t() | Atom.t()],
        optional("EntitlementArn") => [String.t() | Atom.t()],
        optional("GatewayBridgeSource") => update_gateway_bridge_source_request(),
        optional("IngestPort") => [integer()],
        optional("MaxBitrate") => [integer()],
        optional("MaxLatency") => [integer()],
        optional("MaxSyncBuffer") => [integer()],
        optional("MediaStreamSourceConfigurations") => list(media_stream_source_configuration_request()),
        optional("MinLatency") => [integer()],
        optional("Protocol") => list(any()),
        optional("SenderControlPort") => [integer()],
        optional("SenderIpAddress") => [String.t() | Atom.t()],
        optional("SourceListenerAddress") => [String.t() | Atom.t()],
        optional("SourceListenerPort") => [integer()],
        optional("StreamId") => [String.t() | Atom.t()],
        optional("VpcInterfaceName") => [String.t() | Atom.t()],
        optional("WhitelistCidr") => [String.t() | Atom.t()]
      }

  """
  @type update_flow_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_flows_response() :: %{
        "Flows" => list(listed_flow()),
        "NextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_flows_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_egress_gateway_bridge_request() :: %{
        "MaxBitrate" => [integer()]
      }

  """
  @type add_egress_gateway_bridge_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      listed_gateway() :: %{
        "GatewayArn" => [String.t() | Atom.t()],
        "GatewayState" => list(any()),
        "Name" => [String.t() | Atom.t()]
      }

  """
  @type listed_gateway() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_flow_outputs420_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type add_flow_outputs420_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_bridge_request() :: %{}

  """
  @type delete_bridge_request() :: %{}

  @typedoc """

  ## Example:

      bridge_output() :: %{
        "FlowOutput" => bridge_flow_output(),
        "NetworkOutput" => bridge_network_output()
      }

  """
  @type bridge_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_bridge_response() :: %{
        "BridgeArn" => [String.t() | Atom.t()]
      }

  """
  @type delete_bridge_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      transport() :: %{
        "CidrAllowList" => list([String.t() | Atom.t()]()),
        "MaxBitrate" => [integer()],
        "MaxLatency" => [integer()],
        "MaxSyncBuffer" => [integer()],
        "MinLatency" => [integer()],
        "NdiProgramName" => [String.t() | Atom.t()],
        "NdiSpeedHqQuality" => [integer()],
        "Protocol" => list(any()),
        "RemoteId" => [String.t() | Atom.t()],
        "SenderControlPort" => [integer()],
        "SenderIpAddress" => [String.t() | Atom.t()],
        "SmoothingLatency" => [integer()],
        "SourceListenerAddress" => [String.t() | Atom.t()],
        "SourceListenerPort" => [integer()],
        "StreamId" => [String.t() | Atom.t()]
      }

  """
  @type transport() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_flow_request() :: %{}

  """
  @type start_flow_request() :: %{}

  @typedoc """

  ## Example:

      create_bridge_request() :: %{
        optional("EgressGatewayBridge") => add_egress_gateway_bridge_request(),
        optional("IngressGatewayBridge") => add_ingress_gateway_bridge_request(),
        optional("Outputs") => list(add_bridge_output_request()),
        optional("SourceFailoverConfig") => failover_config(),
        required("Name") => [String.t() | Atom.t()],
        required("PlacementArn") => [String.t() | Atom.t()],
        required("Sources") => list(add_bridge_source_request())
      }

  """
  @type create_bridge_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_flow_vpc_interfaces_request() :: %{
        required("VpcInterfaces") => list(vpc_interface_request())
      }

  """
  @type add_flow_vpc_interfaces_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      maintenance() :: %{
        "MaintenanceDay" => list(any()),
        "MaintenanceDeadline" => [String.t() | Atom.t()],
        "MaintenanceScheduledDate" => [String.t() | Atom.t()],
        "MaintenanceStartHour" => [String.t() | Atom.t()]
      }

  """
  @type maintenance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      vpc_interface() :: %{
        "Name" => [String.t() | Atom.t()],
        "NetworkInterfaceIds" => list([String.t() | Atom.t()]()),
        "NetworkInterfaceType" => list(any()),
        "RoleArn" => [String.t() | Atom.t()],
        "SecurityGroupIds" => list([String.t() | Atom.t()]()),
        "SubnetId" => [String.t() | Atom.t()]
      }

  """
  @type vpc_interface() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_flow_source_thumbnail_request() :: %{}

  """
  @type describe_flow_source_thumbnail_request() :: %{}

  @typedoc """

  ## Example:

      remove_bridge_output_response() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "OutputName" => [String.t() | Atom.t()]
      }

  """
  @type remove_bridge_output_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      fmtp() :: %{
        "ChannelOrder" => [String.t() | Atom.t()],
        "Colorimetry" => list(any()),
        "ExactFramerate" => [String.t() | Atom.t()],
        "Par" => [String.t() | Atom.t()],
        "Range" => list(any()),
        "ScanMode" => list(any()),
        "Tcs" => list(any())
      }

  """
  @type fmtp() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_gateway420_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type create_gateway420_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      source_priority() :: %{
        "PrimarySource" => [String.t() | Atom.t()]
      }

  """
  @type source_priority() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      set_gateway_bridge_source_request() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "VpcInterfaceAttachment" => vpc_interface_attachment()
      }

  """
  @type set_gateway_bridge_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      silent_audio() :: %{
        "State" => list(any()),
        "ThresholdSeconds" => [integer()]
      }

  """
  @type silent_audio() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_bridge_network_source_request() :: %{
        "MulticastIp" => [String.t() | Atom.t()],
        "MulticastSourceSettings" => multicast_source_settings(),
        "Name" => [String.t() | Atom.t()],
        "NetworkName" => [String.t() | Atom.t()],
        "Port" => [integer()],
        "Protocol" => list(any())
      }

  """
  @type add_bridge_network_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_flow_request() :: %{}

  """
  @type describe_flow_request() :: %{}

  @typedoc """

  ## Example:

      multicast_source_settings() :: %{
        "MulticastSourceIp" => [String.t() | Atom.t()]
      }

  """
  @type multicast_source_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_flow_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "Status" => list(any())
      }

  """
  @type start_flow_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_flow_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "Status" => list(any())
      }

  """
  @type stop_flow_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      encryption() :: %{
        "Algorithm" => list(any()),
        "ConstantInitializationVector" => [String.t() | Atom.t()],
        "DeviceId" => [String.t() | Atom.t()],
        "KeyType" => list(any()),
        "Region" => [String.t() | Atom.t()],
        "ResourceId" => [String.t() | Atom.t()],
        "RoleArn" => [String.t() | Atom.t()],
        "SecretArn" => [String.t() | Atom.t()],
        "Url" => [String.t() | Atom.t()]
      }

  """
  @type encryption() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bridge() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "BridgeMessages" => list(message_detail()),
        "BridgeState" => list(any()),
        "EgressGatewayBridge" => egress_gateway_bridge(),
        "IngressGatewayBridge" => ingress_gateway_bridge(),
        "Name" => [String.t() | Atom.t()],
        "Outputs" => list(bridge_output()),
        "PlacementArn" => [String.t() | Atom.t()],
        "SourceFailoverConfig" => failover_config(),
        "Sources" => list(bridge_source())
      }

  """
  @type bridge() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_bridge_network_output_request() :: %{
        "IpAddress" => [String.t() | Atom.t()],
        "NetworkName" => [String.t() | Atom.t()],
        "Port" => [integer()],
        "Protocol" => list(any()),
        "Ttl" => [integer()]
      }

  """
  @type update_bridge_network_output_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      grant_flow_entitlements420_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type grant_flow_entitlements420_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      encoding_parameters() :: %{
        "CompressionFactor" => [float()],
        "EncoderProfile" => list(any())
      }

  """
  @type encoding_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      audio_monitoring_setting() :: %{
        "SilentAudio" => silent_audio()
      }

  """
  @type audio_monitoring_setting() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_specification() :: %{
        "ReservedBitrate" => [integer()],
        "ResourceType" => list(any())
      }

  """
  @type resource_specification() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_bridge_output_request() :: %{}

  """
  @type remove_bridge_output_request() :: %{}

  @typedoc """

  ## Example:

      update_bridge_state_response() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "DesiredState" => list(any())
      }

  """
  @type update_bridge_state_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      reservation() :: %{
        "CurrencyCode" => [String.t() | Atom.t()],
        "Duration" => [integer()],
        "DurationUnits" => list(any()),
        "End" => [String.t() | Atom.t()],
        "OfferingArn" => [String.t() | Atom.t()],
        "OfferingDescription" => [String.t() | Atom.t()],
        "PricePerUnit" => [String.t() | Atom.t()],
        "PriceUnits" => list(any()),
        "ReservationArn" => [String.t() | Atom.t()],
        "ReservationName" => [String.t() | Atom.t()],
        "ReservationState" => list(any()),
        "ResourceSpecification" => resource_specification(),
        "Start" => [String.t() | Atom.t()]
      }

  """
  @type reservation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type service_unavailable_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      input_configuration() :: %{
        "InputIp" => [String.t() | Atom.t()],
        "InputPort" => [integer()],
        "Interface" => interface()
      }

  """
  @type input_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_entitlements_response() :: %{
        "Entitlements" => list(listed_entitlement()),
        "NextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_entitlements_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_flow_sources_request() :: %{
        required("Sources") => list(set_source_request())
      }

  """
  @type add_flow_sources_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      media_stream_attributes() :: %{
        "Fmtp" => fmtp(),
        "Lang" => [String.t() | Atom.t()]
      }

  """
  @type media_stream_attributes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_flows_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_flows_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_bridge_source_response() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "Source" => bridge_source()
      }

  """
  @type update_bridge_source_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_bridge_outputs_response() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "Outputs" => list(bridge_output())
      }

  """
  @type add_bridge_outputs_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_flow_source_request() :: %{}

  """
  @type remove_flow_source_request() :: %{}

  @typedoc """

  ## Example:

      describe_bridge_request() :: %{}

  """
  @type describe_bridge_request() :: %{}

  @typedoc """

  ## Example:

      remove_flow_source_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "SourceArn" => [String.t() | Atom.t()]
      }

  """
  @type remove_flow_source_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bridge_network_source() :: %{
        "MulticastIp" => [String.t() | Atom.t()],
        "MulticastSourceSettings" => multicast_source_settings(),
        "Name" => [String.t() | Atom.t()],
        "NetworkName" => [String.t() | Atom.t()],
        "Port" => [integer()],
        "Protocol" => list(any())
      }

  """
  @type bridge_network_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      media_stream_output_configuration() :: %{
        "DestinationConfigurations" => list(destination_configuration()),
        "EncodingName" => list(any()),
        "EncodingParameters" => encoding_parameters(),
        "MediaStreamName" => [String.t() | Atom.t()]
      }

  """
  @type media_stream_output_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_ingress_gateway_bridge_request() :: %{
        "MaxBitrate" => [integer()],
        "MaxOutputs" => [integer()]
      }

  """
  @type add_ingress_gateway_bridge_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      source() :: %{
        "DataTransferSubscriberFeePercent" => [integer()],
        "Decryption" => encryption(),
        "Description" => [String.t() | Atom.t()],
        "EntitlementArn" => [String.t() | Atom.t()],
        "GatewayBridgeSource" => gateway_bridge_source(),
        "IngestIp" => [String.t() | Atom.t()],
        "IngestPort" => [integer()],
        "MediaStreamSourceConfigurations" => list(media_stream_source_configuration()),
        "Name" => [String.t() | Atom.t()],
        "PeerIpAddress" => [String.t() | Atom.t()],
        "SenderControlPort" => [integer()],
        "SenderIpAddress" => [String.t() | Atom.t()],
        "SourceArn" => [String.t() | Atom.t()],
        "Transport" => transport(),
        "VpcInterfaceName" => [String.t() | Atom.t()],
        "WhitelistCidr" => [String.t() | Atom.t()]
      }

  """
  @type source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_bridge_flow_source_request() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "FlowVpcInterfaceAttachment" => vpc_interface_attachment(),
        "Name" => [String.t() | Atom.t()]
      }

  """
  @type add_bridge_flow_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_gateway_instance_response() :: %{
        "BridgePlacement" => list(any()),
        "GatewayInstanceArn" => [String.t() | Atom.t()]
      }

  """
  @type update_gateway_instance_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_failover_config() :: %{
        "FailoverMode" => list(any()),
        "RecoveryWindow" => [integer()],
        "SourcePriority" => source_priority(),
        "State" => list(any())
      }

  """
  @type update_failover_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_flow_output_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "OutputArn" => [String.t() | Atom.t()]
      }

  """
  @type remove_flow_output_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_bridge_response() :: %{
        "Bridge" => bridge()
      }

  """
  @type update_bridge_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_gateway_request() :: %{
        required("EgressCidrBlocks") => list([String.t() | Atom.t()]()),
        required("Name") => [String.t() | Atom.t()],
        required("Networks") => list(gateway_network())
      }

  """
  @type create_gateway_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      grant_flow_entitlements_response() :: %{
        "Entitlements" => list(entitlement()),
        "FlowArn" => [String.t() | Atom.t()]
      }

  """
  @type grant_flow_entitlements_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_bridge_outputs_request() :: %{
        required("Outputs") => list(add_bridge_output_request())
      }

  """
  @type add_bridge_outputs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_maintenance() :: %{
        "MaintenanceDay" => list(any()),
        "MaintenanceStartHour" => [String.t() | Atom.t()]
      }

  """
  @type add_maintenance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      entitlement() :: %{
        "DataTransferSubscriberFeePercent" => [integer()],
        "Description" => [String.t() | Atom.t()],
        "Encryption" => encryption(),
        "EntitlementArn" => [String.t() | Atom.t()],
        "EntitlementStatus" => list(any()),
        "Name" => [String.t() | Atom.t()],
        "Subscribers" => list([String.t() | Atom.t()]())
      }

  """
  @type entitlement() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_encryption() :: %{
        "Algorithm" => list(any()),
        "ConstantInitializationVector" => [String.t() | Atom.t()],
        "DeviceId" => [String.t() | Atom.t()],
        "KeyType" => list(any()),
        "Region" => [String.t() | Atom.t()],
        "ResourceId" => [String.t() | Atom.t()],
        "RoleArn" => [String.t() | Atom.t()],
        "SecretArn" => [String.t() | Atom.t()],
        "Url" => [String.t() | Atom.t()]
      }

  """
  @type update_encryption() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_bridge_network_source_request() :: %{
        "MulticastIp" => [String.t() | Atom.t()],
        "MulticastSourceSettings" => multicast_source_settings(),
        "NetworkName" => [String.t() | Atom.t()],
        "Port" => [integer()],
        "Protocol" => list(any())
      }

  """
  @type update_bridge_network_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ndi_config() :: %{
        "MachineName" => [String.t() | Atom.t()],
        "NdiDiscoveryServers" => list(ndi_discovery_server_config()),
        "NdiState" => list(any())
      }

  """
  @type ndi_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_reservations_response() :: %{
        "NextToken" => [String.t() | Atom.t()],
        "Reservations" => list(reservation())
      }

  """
  @type list_reservations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      input_configuration_request() :: %{
        "InputPort" => [integer()],
        "Interface" => interface_request()
      }

  """
  @type input_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      messages() :: %{
        "Errors" => list([String.t() | Atom.t()]())
      }

  """
  @type messages() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_reservation_response() :: %{
        "Reservation" => reservation()
      }

  """
  @type describe_reservation_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      destination_configuration_request() :: %{
        "DestinationIp" => [String.t() | Atom.t()],
        "DestinationPort" => [integer()],
        "Interface" => interface_request()
      }

  """
  @type destination_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      interface() :: %{
        "Name" => [String.t() | Atom.t()]
      }

  """
  @type interface() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      transport_media_info() :: %{
        "Programs" => list(transport_stream_program())
      }

  """
  @type transport_media_info() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      vpc_interface_request() :: %{
        "Name" => [String.t() | Atom.t()],
        "NetworkInterfaceType" => list(any()),
        "RoleArn" => [String.t() | Atom.t()],
        "SecurityGroupIds" => list([String.t() | Atom.t()]()),
        "SubnetId" => [String.t() | Atom.t()]
      }

  """
  @type vpc_interface_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_gateway_request() :: %{}

  """
  @type delete_gateway_request() :: %{}

  @typedoc """

  ## Example:

      describe_gateway_request() :: %{}

  """
  @type describe_gateway_request() :: %{}

  @typedoc """

  ## Example:

      list_entitlements_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_entitlements_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      describe_reservation_request() :: %{}

  """
  @type describe_reservation_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type internal_server_error_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_flow_vpc_interface_request() :: %{}

  """
  @type remove_flow_vpc_interface_request() :: %{}

  @typedoc """

  ## Example:

      frame_resolution() :: %{
        "FrameHeight" => [integer()],
        "FrameWidth" => [integer()]
      }

  """
  @type frame_resolution() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      gateway_bridge_source() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "VpcInterfaceAttachment" => vpc_interface_attachment()
      }

  """
  @type gateway_bridge_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      revoke_flow_entitlement_request() :: %{}

  """
  @type revoke_flow_entitlement_request() :: %{}

  @typedoc """

  ## Example:

      monitoring_config() :: %{
        "AudioMonitoringSettings" => list(audio_monitoring_setting()),
        "ContentQualityAnalysisState" => list(any()),
        "ThumbnailState" => list(any()),
        "VideoMonitoringSettings" => list(video_monitoring_setting())
      }

  """
  @type monitoring_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_gateway_response() :: %{
        "Gateway" => gateway()
      }

  """
  @type describe_gateway_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_bridge_output_request() :: %{
        "NetworkOutput" => add_bridge_network_output_request()
      }

  """
  @type add_bridge_output_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_gateway_instances_request() :: %{
        optional("FilterArn") => [String.t() | Atom.t()],
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_gateway_instances_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_bridge_source_request() :: %{
        optional("FlowSource") => update_bridge_flow_source_request(),
        optional("NetworkSource") => update_bridge_network_source_request()
      }

  """
  @type update_bridge_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      offering() :: %{
        "CurrencyCode" => [String.t() | Atom.t()],
        "Duration" => [integer()],
        "DurationUnits" => list(any()),
        "OfferingArn" => [String.t() | Atom.t()],
        "OfferingDescription" => [String.t() | Atom.t()],
        "PricePerUnit" => [String.t() | Atom.t()],
        "PriceUnits" => list(any()),
        "ResourceSpecification" => resource_specification()
      }

  """
  @type offering() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ndi_discovery_server_config() :: %{
        "DiscoveryServerAddress" => [String.t() | Atom.t()],
        "DiscoveryServerPort" => [integer()],
        "VpcInterfaceAdapter" => [String.t() | Atom.t()]
      }

  """
  @type ndi_discovery_server_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      video_monitoring_setting() :: %{
        "BlackFrames" => black_frames(),
        "FrozenFrames" => frozen_frames()
      }

  """
  @type video_monitoring_setting() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_flow_media_stream_request() :: %{}

  """
  @type remove_flow_media_stream_request() :: %{}

  @typedoc """

  ## Example:

      grant_entitlement_request() :: %{
        "DataTransferSubscriberFeePercent" => [integer()],
        "Description" => [String.t() | Atom.t()],
        "Encryption" => encryption(),
        "EntitlementStatus" => list(any()),
        "Name" => [String.t() | Atom.t()],
        "Subscribers" => list([String.t() | Atom.t()]())
      }

  """
  @type grant_entitlement_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_bridge_response() :: %{
        "Bridge" => bridge()
      }

  """
  @type describe_bridge_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_flow_output_request() :: %{
        optional("CidrAllowList") => list([String.t() | Atom.t()]()),
        optional("Description") => [String.t() | Atom.t()],
        optional("Destination") => [String.t() | Atom.t()],
        optional("Encryption") => update_encryption(),
        optional("MaxLatency") => [integer()],
        optional("MediaStreamOutputConfigurations") => list(media_stream_output_configuration_request()),
        optional("MinLatency") => [integer()],
        optional("NdiProgramName") => [String.t() | Atom.t()],
        optional("NdiSpeedHqQuality") => [integer()],
        optional("OutputStatus") => list(any()),
        optional("Port") => [integer()],
        optional("Protocol") => list(any()),
        optional("RemoteId") => [String.t() | Atom.t()],
        optional("SenderControlPort") => [integer()],
        optional("SenderIpAddress") => [String.t() | Atom.t()],
        optional("SmoothingLatency") => [integer()],
        optional("StreamId") => [String.t() | Atom.t()],
        optional("VpcInterfaceAttachment") => vpc_interface_attachment()
      }

  """
  @type update_flow_output_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      gateway_instance() :: %{
        "BridgePlacement" => list(any()),
        "ConnectionStatus" => list(any()),
        "GatewayArn" => [String.t() | Atom.t()],
        "GatewayInstanceArn" => [String.t() | Atom.t()],
        "InstanceId" => [String.t() | Atom.t()],
        "InstanceMessages" => list(message_detail()),
        "InstanceState" => list(any()),
        "RunningBridgeCount" => [integer()]
      }

  """
  @type gateway_instance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_flow_output_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "Output" => output()
      }

  """
  @type update_flow_output_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type bad_request_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_bridge_sources_request() :: %{
        required("Sources") => list(add_bridge_source_request())
      }

  """
  @type add_bridge_sources_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_gateway_bridge_source_request() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "VpcInterfaceAttachment" => vpc_interface_attachment()
      }

  """
  @type update_gateway_bridge_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_flow_entitlement_response() :: %{
        "Entitlement" => entitlement(),
        "FlowArn" => [String.t() | Atom.t()]
      }

  """
  @type update_flow_entitlement_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      listed_bridge() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "BridgeState" => list(any()),
        "BridgeType" => [String.t() | Atom.t()],
        "Name" => [String.t() | Atom.t()],
        "PlacementArn" => [String.t() | Atom.t()]
      }

  """
  @type listed_bridge() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_flow_response() :: %{
        "Flow" => flow()
      }

  """
  @type update_flow_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      transport_stream() :: %{
        "Channels" => [integer()],
        "Codec" => [String.t() | Atom.t()],
        "FrameRate" => [String.t() | Atom.t()],
        "FrameResolution" => frame_resolution(),
        "Pid" => [integer()],
        "SampleRate" => [integer()],
        "SampleSize" => [integer()],
        "StreamType" => [String.t() | Atom.t()]
      }

  """
  @type transport_stream() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      revoke_flow_entitlement_response() :: %{
        "EntitlementArn" => [String.t() | Atom.t()],
        "FlowArn" => [String.t() | Atom.t()]
      }

  """
  @type revoke_flow_entitlement_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bridge_flow_output() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "FlowSourceArn" => [String.t() | Atom.t()],
        "Name" => [String.t() | Atom.t()]
      }

  """
  @type bridge_flow_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_flow_media_stream_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "MediaStream" => media_stream()
      }

  """
  @type update_flow_media_stream_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_flow_outputs_request() :: %{
        required("Outputs") => list(add_output_request())
      }

  """
  @type add_flow_outputs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_flow_response() :: %{
        "Flow" => flow(),
        "Messages" => messages()
      }

  """
  @type describe_flow_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      flow() :: %{
        "AvailabilityZone" => [String.t() | Atom.t()],
        "Description" => [String.t() | Atom.t()],
        "EgressIp" => [String.t() | Atom.t()],
        "Entitlements" => list(entitlement()),
        "FlowArn" => [String.t() | Atom.t()],
        "FlowSize" => list(any()),
        "Maintenance" => maintenance(),
        "MediaStreams" => list(media_stream()),
        "Name" => [String.t() | Atom.t()],
        "NdiConfig" => ndi_config(),
        "Outputs" => list(output()),
        "Source" => source(),
        "SourceFailoverConfig" => failover_config(),
        "SourceMonitoringConfig" => monitoring_config(),
        "Sources" => list(source()),
        "Status" => list(any()),
        "VpcInterfaces" => list(vpc_interface())
      }

  """
  @type flow() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      set_source_request() :: %{
        "Decryption" => encryption(),
        "Description" => [String.t() | Atom.t()],
        "EntitlementArn" => [String.t() | Atom.t()],
        "GatewayBridgeSource" => set_gateway_bridge_source_request(),
        "IngestPort" => [integer()],
        "MaxBitrate" => [integer()],
        "MaxLatency" => [integer()],
        "MaxSyncBuffer" => [integer()],
        "MediaStreamSourceConfigurations" => list(media_stream_source_configuration_request()),
        "MinLatency" => [integer()],
        "Name" => [String.t() | Atom.t()],
        "Protocol" => list(any()),
        "SenderControlPort" => [integer()],
        "SenderIpAddress" => [String.t() | Atom.t()],
        "SourceListenerAddress" => [String.t() | Atom.t()],
        "SourceListenerPort" => [integer()],
        "StreamId" => [String.t() | Atom.t()],
        "VpcInterfaceName" => [String.t() | Atom.t()],
        "WhitelistCidr" => [String.t() | Atom.t()]
      }

  """
  @type set_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      listed_gateway_instance() :: %{
        "GatewayArn" => [String.t() | Atom.t()],
        "GatewayInstanceArn" => [String.t() | Atom.t()],
        "InstanceId" => [String.t() | Atom.t()],
        "InstanceState" => list(any())
      }

  """
  @type listed_gateway_instance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_gateways_response() :: %{
        "Gateways" => list(listed_gateway()),
        "NextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_gateways_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      deregister_gateway_instance_request() :: %{
        optional("Force") => [boolean()]
      }

  """
  @type deregister_gateway_instance_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      failover_config() :: %{
        "FailoverMode" => list(any()),
        "RecoveryWindow" => [integer()],
        "SourcePriority" => source_priority(),
        "State" => list(any())
      }

  """
  @type failover_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_bridge_network_output_request() :: %{
        "IpAddress" => [String.t() | Atom.t()],
        "Name" => [String.t() | Atom.t()],
        "NetworkName" => [String.t() | Atom.t()],
        "Port" => [integer()],
        "Protocol" => list(any()),
        "Ttl" => [integer()]
      }

  """
  @type add_bridge_network_output_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      black_frames() :: %{
        "State" => list(any()),
        "ThresholdSeconds" => [integer()]
      }

  """
  @type black_frames() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_offering_response() :: %{
        "Offering" => offering()
      }

  """
  @type describe_offering_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_flow_vpc_interfaces_response() :: %{
        "FlowArn" => [String.t() | Atom.t()],
        "VpcInterfaces" => list(vpc_interface())
      }

  """
  @type add_flow_vpc_interfaces_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_bridges_response() :: %{
        "Bridges" => list(listed_bridge()),
        "NextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_bridges_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_flow_request() :: %{}

  """
  @type stop_flow_request() :: %{}

  @typedoc """

  ## Example:

      remove_flow_output_request() :: %{}

  """
  @type remove_flow_output_request() :: %{}

  @typedoc """

  ## Example:

      update_flow_entitlement_request() :: %{
        optional("Description") => [String.t() | Atom.t()],
        optional("Encryption") => update_encryption(),
        optional("EntitlementStatus") => list(any()),
        optional("Subscribers") => list([String.t() | Atom.t()]())
      }

  """
  @type update_flow_entitlement_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_flow_media_streams_request() :: %{
        required("MediaStreams") => list(add_media_stream_request())
      }

  """
  @type add_flow_media_streams_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_offering_request() :: %{}

  """
  @type describe_offering_request() :: %{}

  @typedoc """

  ## Example:

      vpc_interface_attachment() :: %{
        "VpcInterfaceName" => [String.t() | Atom.t()]
      }

  """
  @type vpc_interface_attachment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      output() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "BridgePorts" => list([integer()]()),
        "DataTransferSubscriberFeePercent" => [integer()],
        "Description" => [String.t() | Atom.t()],
        "Destination" => [String.t() | Atom.t()],
        "Encryption" => encryption(),
        "EntitlementArn" => [String.t() | Atom.t()],
        "ListenerAddress" => [String.t() | Atom.t()],
        "MediaLiveInputArn" => [String.t() | Atom.t()],
        "MediaStreamOutputConfigurations" => list(media_stream_output_configuration()),
        "Name" => [String.t() | Atom.t()],
        "OutputArn" => [String.t() | Atom.t()],
        "OutputStatus" => list(any()),
        "PeerIpAddress" => [String.t() | Atom.t()],
        "Port" => [integer()],
        "Transport" => transport(),
        "VpcInterfaceAttachment" => vpc_interface_attachment()
      }

  """
  @type output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      purchase_offering_response() :: %{
        "Reservation" => reservation()
      }

  """
  @type purchase_offering_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      destination_configuration() :: %{
        "DestinationIp" => [String.t() | Atom.t()],
        "DestinationPort" => [integer()],
        "Interface" => interface(),
        "OutboundIp" => [String.t() | Atom.t()]
      }

  """
  @type destination_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      purchase_offering_request() :: %{
        required("ReservationName") => [String.t() | Atom.t()],
        required("Start") => [String.t() | Atom.t()]
      }

  """
  @type purchase_offering_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_bridge_output_response() :: %{
        "BridgeArn" => [String.t() | Atom.t()],
        "Output" => bridge_output()
      }

  """
  @type update_bridge_output_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      media_stream_source_configuration() :: %{
        "EncodingName" => list(any()),
        "InputConfigurations" => list(input_configuration()),
        "MediaStreamName" => [String.t() | Atom.t()]
      }

  """
  @type media_stream_source_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bridge_source() :: %{
        "FlowSource" => bridge_flow_source(),
        "NetworkSource" => bridge_network_source()
      }

  """
  @type bridge_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      add_output_request() :: %{
        "CidrAllowList" => list([String.t() | Atom.t()]()),
        "Description" => [String.t() | Atom.t()],
        "Destination" => [String.t() | Atom.t()],
        "Encryption" => encryption(),
        "MaxLatency" => [integer()],
        "MediaStreamOutputConfigurations" => list(media_stream_output_configuration_request()),
        "MinLatency" => [integer()],
        "Name" => [String.t() | Atom.t()],
        "NdiProgramName" => [String.t() | Atom.t()],
        "NdiSpeedHqQuality" => [integer()],
        "OutputStatus" => list(any()),
        "Port" => [integer()],
        "Protocol" => list(any()),
        "RemoteId" => [String.t() | Atom.t()],
        "SenderControlPort" => [integer()],
        "SmoothingLatency" => [integer()],
        "StreamId" => [String.t() | Atom.t()],
        "VpcInterfaceAttachment" => vpc_interface_attachment()
      }

  """
  @type add_output_request() :: %{String.t() | Atom.t() => any()}

  @type add_bridge_outputs_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type add_bridge_sources_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type add_flow_media_streams_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type add_flow_outputs_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | add_flow_outputs420_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type add_flow_sources_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type add_flow_vpc_interfaces_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_bridge_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | create_bridge420_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_flow_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | too_many_requests_exception()
          | create_flow420_exception()
          | forbidden_exception()

  @type create_gateway_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | create_gateway420_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_bridge_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_flow_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_gateway_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type deregister_gateway_instance_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_bridge_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_flow_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_flow_source_metadata_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_flow_source_thumbnail_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_gateway_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_gateway_instance_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_offering_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type describe_reservation_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type grant_flow_entitlements_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | grant_flow_entitlements420_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_bridges_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type list_entitlements_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | too_many_requests_exception()

  @type list_flows_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | too_many_requests_exception()

  @type list_gateway_instances_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type list_gateways_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type list_offerings_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | too_many_requests_exception()

  @type list_reservations_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | too_many_requests_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | internal_server_error_exception() | not_found_exception()

  @type purchase_offering_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type remove_bridge_output_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type remove_bridge_source_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type remove_flow_media_stream_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type remove_flow_output_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type remove_flow_source_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type remove_flow_vpc_interface_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type revoke_flow_entitlement_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type start_flow_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type stop_flow_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type tag_resource_errors() ::
          bad_request_exception() | internal_server_error_exception() | not_found_exception()

  @type untag_resource_errors() ::
          bad_request_exception() | internal_server_error_exception() | not_found_exception()

  @type update_bridge_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_bridge_output_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_bridge_source_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_bridge_state_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_flow_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_flow_entitlement_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_flow_media_stream_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_flow_output_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_flow_source_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_gateway_instance_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2018-11-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediaconnect",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MediaConnect",
      signature_version: "v4",
      signing_name: "mediaconnect",
      target_prefix: nil
    }
  end

  @doc """
  Adds outputs to an existing bridge.
  """
  @spec add_bridge_outputs(map(), String.t() | Atom.t(), add_bridge_outputs_request(), list()) ::
          {:ok, add_bridge_outputs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_bridge_outputs_errors()}
  def add_bridge_outputs(%Client{} = client, bridge_arn, input, options \\ []) do
    url_path = "/v1/bridges/#{AWS.Util.encode_uri(bridge_arn)}/outputs"
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
  Adds sources to an existing bridge.
  """
  @spec add_bridge_sources(map(), String.t() | Atom.t(), add_bridge_sources_request(), list()) ::
          {:ok, add_bridge_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_bridge_sources_errors()}
  def add_bridge_sources(%Client{} = client, bridge_arn, input, options \\ []) do
    url_path = "/v1/bridges/#{AWS.Util.encode_uri(bridge_arn)}/sources"
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
  Adds media streams to an existing flow.

  After you add a media stream to a flow, you can associate it with a source
  and/or an output that uses the ST 2110 JPEG XS or CDI protocol.
  """
  @spec add_flow_media_streams(
          map(),
          String.t() | Atom.t(),
          add_flow_media_streams_request(),
          list()
        ) ::
          {:ok, add_flow_media_streams_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_flow_media_streams_errors()}
  def add_flow_media_streams(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/mediaStreams"
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
  Adds outputs to an existing flow.

  You can create up to 50 outputs per flow.
  """
  @spec add_flow_outputs(map(), String.t() | Atom.t(), add_flow_outputs_request(), list()) ::
          {:ok, add_flow_outputs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_flow_outputs_errors()}
  def add_flow_outputs(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/outputs"
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
  Adds sources to a flow.
  """
  @spec add_flow_sources(map(), String.t() | Atom.t(), add_flow_sources_request(), list()) ::
          {:ok, add_flow_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_flow_sources_errors()}
  def add_flow_sources(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/source"
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
  Adds VPC interfaces to a flow.
  """
  @spec add_flow_vpc_interfaces(
          map(),
          String.t() | Atom.t(),
          add_flow_vpc_interfaces_request(),
          list()
        ) ::
          {:ok, add_flow_vpc_interfaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_flow_vpc_interfaces_errors()}
  def add_flow_vpc_interfaces(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/vpcInterfaces"
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
  Creates a new bridge.

  The request must include one source.
  """
  @spec create_bridge(map(), create_bridge_request(), list()) ::
          {:ok, create_bridge_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_bridge_errors()}
  def create_bridge(%Client{} = client, input, options \\ []) do
    url_path = "/v1/bridges"
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
  Creates a new flow.

  The request must include one source. The request optionally can include outputs
  (up to 50) and entitlements (up to 50).
  """
  @spec create_flow(map(), create_flow_request(), list()) ::
          {:ok, create_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_flow_errors()}
  def create_flow(%Client{} = client, input, options \\ []) do
    url_path = "/v1/flows"
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
  Creates a new gateway.

  The request must include at least one network (up to four).
  """
  @spec create_gateway(map(), create_gateway_request(), list()) ::
          {:ok, create_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_gateway_errors()}
  def create_gateway(%Client{} = client, input, options \\ []) do
    url_path = "/v1/gateways"
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
  Deletes a bridge.

  Before you can delete a bridge, you must stop the bridge.
  """
  @spec delete_bridge(map(), String.t() | Atom.t(), delete_bridge_request(), list()) ::
          {:ok, delete_bridge_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bridge_errors()}
  def delete_bridge(%Client{} = client, bridge_arn, input, options \\ []) do
    url_path = "/v1/bridges/#{AWS.Util.encode_uri(bridge_arn)}"
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
  Deletes a flow.

  Before you can delete a flow, you must stop the flow.
  """
  @spec delete_flow(map(), String.t() | Atom.t(), delete_flow_request(), list()) ::
          {:ok, delete_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_flow_errors()}
  def delete_flow(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}"
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
      202
    )
  end

  @doc """
  Deletes a gateway.

  Before you can delete a gateway, you must deregister its instances and delete
  its bridges.
  """
  @spec delete_gateway(map(), String.t() | Atom.t(), delete_gateway_request(), list()) ::
          {:ok, delete_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_gateway_errors()}
  def delete_gateway(%Client{} = client, gateway_arn, input, options \\ []) do
    url_path = "/v1/gateways/#{AWS.Util.encode_uri(gateway_arn)}"
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
  Deregisters an instance.

  Before you deregister an instance, all bridges running on the instance must be
  stopped. If you want to deregister an instance without stopping the bridges, you
  must use the --force option.
  """
  @spec deregister_gateway_instance(
          map(),
          String.t() | Atom.t(),
          deregister_gateway_instance_request(),
          list()
        ) ::
          {:ok, deregister_gateway_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_gateway_instance_errors()}
  def deregister_gateway_instance(%Client{} = client, gateway_instance_arn, input, options \\ []) do
    url_path = "/v1/gateway-instances/#{AWS.Util.encode_uri(gateway_instance_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Force", "force"}
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
      202
    )
  end

  @doc """
  Displays the details of a bridge.
  """
  @spec describe_bridge(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_bridge_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bridge_errors()}
  def describe_bridge(%Client{} = client, bridge_arn, options \\ []) do
    url_path = "/v1/bridges/#{AWS.Util.encode_uri(bridge_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays the details of a flow.

  The response includes the flow Amazon Resource Name (ARN), name, and
  Availability Zone, as well as details about the source, outputs, and
  entitlements.
  """
  @spec describe_flow(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_flow_errors()}
  def describe_flow(%Client{} = client, flow_arn, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `DescribeFlowSourceMetadata` API is used to view information about the
  flow's source transport stream and programs.

  This API displays status messages about the flow's source as well as details
  about the program's video, audio, and other data.
  """
  @spec describe_flow_source_metadata(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_flow_source_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_flow_source_metadata_errors()}
  def describe_flow_source_metadata(%Client{} = client, flow_arn, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/source-metadata"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the thumbnail for the flow source.
  """
  @spec describe_flow_source_thumbnail(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_flow_source_thumbnail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_flow_source_thumbnail_errors()}
  def describe_flow_source_thumbnail(%Client{} = client, flow_arn, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/source-thumbnail"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays the details of a gateway.

  The response includes the gateway Amazon Resource Name (ARN), name, and CIDR
  blocks, as well as details about the networks.
  """
  @spec describe_gateway(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_gateway_errors()}
  def describe_gateway(%Client{} = client, gateway_arn, options \\ []) do
    url_path = "/v1/gateways/#{AWS.Util.encode_uri(gateway_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays the details of an instance.
  """
  @spec describe_gateway_instance(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_gateway_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_gateway_instance_errors()}
  def describe_gateway_instance(%Client{} = client, gateway_instance_arn, options \\ []) do
    url_path = "/v1/gateway-instances/#{AWS.Util.encode_uri(gateway_instance_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays the details of an offering.

  The response includes the offering description, duration, outbound bandwidth,
  price, and Amazon Resource Name (ARN).
  """
  @spec describe_offering(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_offering_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_offering_errors()}
  def describe_offering(%Client{} = client, offering_arn, options \\ []) do
    url_path = "/v1/offerings/#{AWS.Util.encode_uri(offering_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays the details of a reservation.

  The response includes the reservation name, state, start date and time, and the
  details of the offering that make up the rest of the reservation (such as price,
  duration, and outbound bandwidth).
  """
  @spec describe_reservation(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_reservation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_reservation_errors()}
  def describe_reservation(%Client{} = client, reservation_arn, options \\ []) do
    url_path = "/v1/reservations/#{AWS.Util.encode_uri(reservation_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants entitlements to an existing flow.
  """
  @spec grant_flow_entitlements(
          map(),
          String.t() | Atom.t(),
          grant_flow_entitlements_request(),
          list()
        ) ::
          {:ok, grant_flow_entitlements_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, grant_flow_entitlements_errors()}
  def grant_flow_entitlements(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/entitlements"
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
  Displays a list of bridges that are associated with this account and an
  optionally specified Amazon Resource Name (ARN).

  This request returns a paginated result.
  """
  @spec list_bridges(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_bridges_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bridges_errors()}
  def list_bridges(
        %Client{} = client,
        filter_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/bridges"
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
      if !is_nil(filter_arn) do
        [{"filterArn", filter_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays a list of all entitlements that have been granted to this account.

  This request returns 20 results per page.
  """
  @spec list_entitlements(map(), String.t() | Atom.t() | nil, String.t() | Atom.t() | nil, list()) ::
          {:ok, list_entitlements_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_entitlements_errors()}
  def list_entitlements(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/entitlements"
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
  Displays a list of flows that are associated with this account.

  This request returns a paginated result.
  """
  @spec list_flows(map(), String.t() | Atom.t() | nil, String.t() | Atom.t() | nil, list()) ::
          {:ok, list_flows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_flows_errors()}
  def list_flows(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/flows"
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
  Displays a list of instances associated with the Amazon Web Services account.

  This request returns a paginated result. You can use the filterArn property to
  display only the instances associated with the selected Gateway Amazon Resource
  Name (ARN).
  """
  @spec list_gateway_instances(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_gateway_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_gateway_instances_errors()}
  def list_gateway_instances(
        %Client{} = client,
        filter_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/gateway-instances"
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
      if !is_nil(filter_arn) do
        [{"filterArn", filter_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays a list of gateways that are associated with this account.

  This request returns a paginated result.
  """
  @spec list_gateways(map(), String.t() | Atom.t() | nil, String.t() | Atom.t() | nil, list()) ::
          {:ok, list_gateways_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_gateways_errors()}
  def list_gateways(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/gateways"
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
  Displays a list of all offerings that are available to this account in the
  current Amazon Web Services Region.

  If you have an active reservation (which means you've purchased an offering that
  has already started and hasn't expired yet), your account isn't eligible for
  other offerings.
  """
  @spec list_offerings(map(), String.t() | Atom.t() | nil, String.t() | Atom.t() | nil, list()) ::
          {:ok, list_offerings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_offerings_errors()}
  def list_offerings(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/offerings"
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
  Displays a list of all reservations that have been purchased by this account in
  the current Amazon Web Services Region.

  This list includes all reservations in all states (such as active and expired).
  """
  @spec list_reservations(map(), String.t() | Atom.t() | nil, String.t() | Atom.t() | nil, list()) ::
          {:ok, list_reservations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_reservations_errors()}
  def list_reservations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/reservations"
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
  List all tags on a MediaConnect resource.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
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
  Submits a request to purchase an offering.

  If you already have an active reservation, you can't purchase another offering.
  """
  @spec purchase_offering(map(), String.t() | Atom.t(), purchase_offering_request(), list()) ::
          {:ok, purchase_offering_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, purchase_offering_errors()}
  def purchase_offering(%Client{} = client, offering_arn, input, options \\ []) do
    url_path = "/v1/offerings/#{AWS.Util.encode_uri(offering_arn)}"
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
  Removes an output from a bridge.
  """
  @spec remove_bridge_output(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          remove_bridge_output_request(),
          list()
        ) ::
          {:ok, remove_bridge_output_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_bridge_output_errors()}
  def remove_bridge_output(%Client{} = client, bridge_arn, output_name, input, options \\ []) do
    url_path =
      "/v1/bridges/#{AWS.Util.encode_uri(bridge_arn)}/outputs/#{AWS.Util.encode_uri(output_name)}"

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
      202
    )
  end

  @doc """
  Removes a source from a bridge.
  """
  @spec remove_bridge_source(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          remove_bridge_source_request(),
          list()
        ) ::
          {:ok, remove_bridge_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_bridge_source_errors()}
  def remove_bridge_source(%Client{} = client, bridge_arn, source_name, input, options \\ []) do
    url_path =
      "/v1/bridges/#{AWS.Util.encode_uri(bridge_arn)}/sources/#{AWS.Util.encode_uri(source_name)}"

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
      202
    )
  end

  @doc """
  Removes a media stream from a flow.

  This action is only available if the media stream is not associated with a
  source or output.
  """
  @spec remove_flow_media_stream(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          remove_flow_media_stream_request(),
          list()
        ) ::
          {:ok, remove_flow_media_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_flow_media_stream_errors()}
  def remove_flow_media_stream(
        %Client{} = client,
        flow_arn,
        media_stream_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/mediaStreams/#{AWS.Util.encode_uri(media_stream_name)}"

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
  Removes an output from an existing flow.

  This request can be made only on an output that does not have an entitlement
  associated with it. If the output has an entitlement, you must revoke the
  entitlement instead. When an entitlement is revoked from a flow, the service
  automatically removes the associated output.
  """
  @spec remove_flow_output(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          remove_flow_output_request(),
          list()
        ) ::
          {:ok, remove_flow_output_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_flow_output_errors()}
  def remove_flow_output(%Client{} = client, flow_arn, output_arn, input, options \\ []) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/outputs/#{AWS.Util.encode_uri(output_arn)}"

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
      202
    )
  end

  @doc """
  Removes a source from an existing flow.

  This request can be made only if there is more than one source on the flow.
  """
  @spec remove_flow_source(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          remove_flow_source_request(),
          list()
        ) ::
          {:ok, remove_flow_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_flow_source_errors()}
  def remove_flow_source(%Client{} = client, flow_arn, source_arn, input, options \\ []) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/source/#{AWS.Util.encode_uri(source_arn)}"

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
      202
    )
  end

  @doc """
  Removes a VPC Interface from an existing flow.

  This request can be made only on a VPC interface that does not have a Source or
  Output associated with it. If the VPC interface is referenced by a Source or
  Output, you must first delete or update the Source or Output to no longer
  reference the VPC interface.
  """
  @spec remove_flow_vpc_interface(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          remove_flow_vpc_interface_request(),
          list()
        ) ::
          {:ok, remove_flow_vpc_interface_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_flow_vpc_interface_errors()}
  def remove_flow_vpc_interface(
        %Client{} = client,
        flow_arn,
        vpc_interface_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/vpcInterfaces/#{AWS.Util.encode_uri(vpc_interface_name)}"

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
  Revokes an entitlement from a flow.

  Once an entitlement is revoked, the content becomes unavailable to the
  subscriber and the associated output is removed.
  """
  @spec revoke_flow_entitlement(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          revoke_flow_entitlement_request(),
          list()
        ) ::
          {:ok, revoke_flow_entitlement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_flow_entitlement_errors()}
  def revoke_flow_entitlement(%Client{} = client, entitlement_arn, flow_arn, input, options \\ []) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/entitlements/#{AWS.Util.encode_uri(entitlement_arn)}"

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
      202
    )
  end

  @doc """
  Starts a flow.
  """
  @spec start_flow(map(), String.t() | Atom.t(), start_flow_request(), list()) ::
          {:ok, start_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_flow_errors()}
  def start_flow(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/start/#{AWS.Util.encode_uri(flow_arn)}"
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
  Stops a flow.
  """
  @spec stop_flow(map(), String.t() | Atom.t(), stop_flow_request(), list()) ::
          {:ok, stop_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_flow_errors()}
  def stop_flow(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/stop/#{AWS.Util.encode_uri(flow_arn)}"
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
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource are not specified in the request parameters, they
  are not changed. When a resource is deleted, the tags associated with that
  resource are deleted as well.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
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
      204
    )
  end

  @doc """
  Deletes specified tags from a resource.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
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
  Updates the bridge.
  """
  @spec update_bridge(map(), String.t() | Atom.t(), update_bridge_request(), list()) ::
          {:ok, update_bridge_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bridge_errors()}
  def update_bridge(%Client{} = client, bridge_arn, input, options \\ []) do
    url_path = "/v1/bridges/#{AWS.Util.encode_uri(bridge_arn)}"
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
      202
    )
  end

  @doc """
  Updates an existing bridge output.
  """
  @spec update_bridge_output(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_bridge_output_request(),
          list()
        ) ::
          {:ok, update_bridge_output_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bridge_output_errors()}
  def update_bridge_output(%Client{} = client, bridge_arn, output_name, input, options \\ []) do
    url_path =
      "/v1/bridges/#{AWS.Util.encode_uri(bridge_arn)}/outputs/#{AWS.Util.encode_uri(output_name)}"

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
      202
    )
  end

  @doc """
  Updates an existing bridge source.
  """
  @spec update_bridge_source(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_bridge_source_request(),
          list()
        ) ::
          {:ok, update_bridge_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bridge_source_errors()}
  def update_bridge_source(%Client{} = client, bridge_arn, source_name, input, options \\ []) do
    url_path =
      "/v1/bridges/#{AWS.Util.encode_uri(bridge_arn)}/sources/#{AWS.Util.encode_uri(source_name)}"

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
      202
    )
  end

  @doc """
  Updates the bridge state.
  """
  @spec update_bridge_state(map(), String.t() | Atom.t(), update_bridge_state_request(), list()) ::
          {:ok, update_bridge_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bridge_state_errors()}
  def update_bridge_state(%Client{} = client, bridge_arn, input, options \\ []) do
    url_path = "/v1/bridges/#{AWS.Util.encode_uri(bridge_arn)}/state"
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
      202
    )
  end

  @doc """
  Updates an existing flow.
  """
  @spec update_flow(map(), String.t() | Atom.t(), update_flow_request(), list()) ::
          {:ok, update_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_flow_errors()}
  def update_flow(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}"
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
      202
    )
  end

  @doc """
  Updates an entitlement.

  You can change an entitlement's description, subscribers, and encryption. If you
  change the subscribers, the service will remove the outputs that are are used by
  the subscribers that are removed.
  """
  @spec update_flow_entitlement(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_flow_entitlement_request(),
          list()
        ) ::
          {:ok, update_flow_entitlement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_flow_entitlement_errors()}
  def update_flow_entitlement(%Client{} = client, entitlement_arn, flow_arn, input, options \\ []) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/entitlements/#{AWS.Util.encode_uri(entitlement_arn)}"

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
      202
    )
  end

  @doc """
  Updates an existing media stream.
  """
  @spec update_flow_media_stream(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_flow_media_stream_request(),
          list()
        ) ::
          {:ok, update_flow_media_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_flow_media_stream_errors()}
  def update_flow_media_stream(
        %Client{} = client,
        flow_arn,
        media_stream_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/mediaStreams/#{AWS.Util.encode_uri(media_stream_name)}"

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
      202
    )
  end

  @doc """
  Updates an existing flow output.
  """
  @spec update_flow_output(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_flow_output_request(),
          list()
        ) ::
          {:ok, update_flow_output_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_flow_output_errors()}
  def update_flow_output(%Client{} = client, flow_arn, output_arn, input, options \\ []) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/outputs/#{AWS.Util.encode_uri(output_arn)}"

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
      202
    )
  end

  @doc """
  Updates the source of a flow.
  """
  @spec update_flow_source(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_flow_source_request(),
          list()
        ) ::
          {:ok, update_flow_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_flow_source_errors()}
  def update_flow_source(%Client{} = client, flow_arn, source_arn, input, options \\ []) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/source/#{AWS.Util.encode_uri(source_arn)}"

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
      202
    )
  end

  @doc """
  Updates an existing gateway instance.
  """
  @spec update_gateway_instance(
          map(),
          String.t() | Atom.t(),
          update_gateway_instance_request(),
          list()
        ) ::
          {:ok, update_gateway_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_gateway_instance_errors()}
  def update_gateway_instance(%Client{} = client, gateway_instance_arn, input, options \\ []) do
    url_path = "/v1/gateway-instances/#{AWS.Util.encode_uri(gateway_instance_arn)}"
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
