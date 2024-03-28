# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTFleetWise do
  @moduledoc """
  Amazon Web Services IoT FleetWise is a fully managed service that you can use to
  collect, model, and transfer
  vehicle data to the Amazon Web Services cloud at scale.

  With Amazon Web Services IoT FleetWise, you can standardize all of
  your vehicle data models, independent of the in-vehicle communication
  architecture, and
  define data collection rules to transfer only high-value data to the cloud.

  For more information, see [What is Amazon Web Services IoT FleetWise?](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/) in
  the
  *Amazon Web Services IoT FleetWise Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      branch() :: %{
        "comment" => String.t(),
        "deprecationMessage" => String.t(),
        "description" => String.t(),
        "fullyQualifiedName" => String.t()
      }
      
  """
  @type branch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fleets_for_vehicle_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_fleets_for_vehicle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iam_registration_response() :: %{
        "errorMessage" => String.t(),
        "registrationStatus" => list(any()),
        "roleArn" => String.t()
      }
      
  """
  @type iam_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vehicle_request_item() :: %{
        "associationBehavior" => list(any()),
        "attributes" => map(),
        "decoderManifestArn" => String.t(),
        "modelManifestArn" => String.t(),
        "tags" => list(tag()()),
        "vehicleName" => String.t()
      }
      
  """
  @type create_vehicle_request_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_model_manifest_response() :: %{
        optional("description") => String.t(),
        optional("signalCatalogArn") => String.t(),
        optional("status") => list(any()),
        required("arn") => String.t(),
        required("creationTime") => non_neg_integer(),
        required("lastModificationTime") => non_neg_integer(),
        required("name") => String.t()
      }
      
  """
  @type get_model_manifest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_counts() :: %{
        "totalActuators" => integer(),
        "totalAttributes" => integer(),
        "totalBranches" => integer(),
        "totalNodes" => integer(),
        "totalProperties" => integer(),
        "totalSensors" => integer(),
        "totalStructs" => integer()
      }
      
  """
  @type node_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vehicle_error() :: %{
        "code" => integer(),
        "message" => String.t(),
        "vehicleName" => String.t()
      }
      
  """
  @type update_vehicle_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vehicle_status() :: %{
        "campaignName" => String.t(),
        "status" => list(any()),
        "vehicleName" => String.t()
      }
      
  """
  @type vehicle_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_based_collection_scheme() :: %{
        "periodMs" => float()
      }
      
  """
  @type time_based_collection_scheme() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_campaign_response() :: %{
        optional("arn") => String.t(),
        optional("name") => String.t(),
        optional("status") => list(any())
      }
      
  """
  @type update_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_signal_catalog_response() :: %{
        required("arn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_signal_catalog_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_manifest_response() :: %{
        required("arn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_model_manifest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_request() :: %{}
      
  """
  @type delete_fleet_request() :: %{}

  @typedoc """

  ## Example:
      
      create_decoder_manifest_request() :: %{
        optional("description") => String.t(),
        optional("networkInterfaces") => list(network_interface()()),
        optional("signalDecoders") => list(signal_decoder()()),
        optional("tags") => list(tag()()),
        required("modelManifestArn") => String.t()
      }
      
  """
  @type create_decoder_manifest_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_campaign_request() :: %{}
      
  """
  @type get_campaign_request() :: %{}

  @typedoc """

  ## Example:
      
      message_signal() :: %{
        "structuredMessage" => list(),
        "topicName" => String.t()
      }
      
  """
  @type message_signal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signal_decoder() :: %{
        "canSignal" => can_signal(),
        "fullyQualifiedName" => String.t(),
        "interfaceId" => String.t(),
        "messageSignal" => message_signal(),
        "obdSignal" => obd_signal(),
        "type" => list(any())
      }
      
  """
  @type signal_decoder() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vehicles_request() :: %{
        optional("maxResults") => integer(),
        optional("modelManifestArn") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_vehicles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_signal_catalog_response() :: %{
        required("arn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type delete_signal_catalog_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vehicles_in_fleet_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_vehicles_in_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iam_resources() :: %{
        "roleArn" => String.t()
      }
      
  """
  @type iam_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fleets_for_vehicle_response() :: %{
        optional("fleets") => list(String.t()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_fleets_for_vehicle_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      obd_interface() :: %{
        "dtcRequestIntervalSeconds" => integer(),
        "hasTransmissionEcu" => [boolean()],
        "name" => String.t(),
        "obdStandard" => String.t(),
        "pidRequestIntervalSeconds" => integer(),
        "requestMessageId" => integer(),
        "useExtendedIds" => [boolean()]
      }
      
  """
  @type obd_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_signal() :: %{
        "name" => String.t(),
        "reason" => String.t()
      }
      
  """
  @type invalid_signal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_account_response() :: %{
        optional("timestreamResources") => timestream_resources(),
        required("creationTime") => non_neg_integer(),
        required("iamResources") => iam_resources(),
        required("lastModificationTime") => non_neg_integer(),
        required("registerAccountStatus") => list(any())
      }
      
  """
  @type register_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_register_account_status_request() :: %{}
      
  """
  @type get_register_account_status_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_model_manifest_request() :: %{}
      
  """
  @type delete_model_manifest_request() :: %{}

  @typedoc """

  ## Example:
      
      register_account_request() :: %{
        optional("iamResources") => iam_resources(),
        optional("timestreamResources") => timestream_resources()
      }
      
  """
  @type register_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_request() :: %{
        optional("description") => String.t(),
        optional("tags") => list(tag()()),
        required("signalCatalogArn") => String.t()
      }
      
  """
  @type create_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_vehicle_request() :: %{
        required("vehicles") => list(update_vehicle_request_item()())
      }
      
  """
  @type batch_update_vehicle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_logging_options_response() :: %{}
      
  """
  @type put_logging_options_response() :: %{}

  @typedoc """

  ## Example:
      
      import_decoder_manifest_request() :: %{
        required("networkFileDefinitions") => list(list()())
      }
      
  """
  @type import_decoder_manifest_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timestream_config() :: %{
        "executionRoleArn" => String.t(),
        "timestreamTableArn" => String.t()
      }
      
  """
  @type timestream_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_network_interface() :: %{
        "interfaceId" => String.t(),
        "reason" => list(any())
      }
      
  """
  @type invalid_network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_response() :: %{
        optional("arn") => String.t(),
        optional("id") => String.t()
      }
      
  """
  @type delete_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      structured_message_field_name_and_data_type_pair() :: %{
        "dataType" => list(),
        "fieldName" => String.t()
      }
      
  """
  @type structured_message_field_name_and_data_type_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vehicle_request() :: %{}
      
  """
  @type get_vehicle_request() :: %{}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "canInterface" => can_interface(),
        "interfaceId" => String.t(),
        "obdInterface" => obd_interface(),
        "type" => list(any()),
        "vehicleMiddleware" => vehicle_middleware()
      }
      
  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_manifests_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("signalCatalogArn") => String.t()
      }
      
  """
  @type list_model_manifests_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      model_manifest_summary() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "lastModificationTime" => non_neg_integer(),
        "name" => String.t(),
        "signalCatalogArn" => String.t(),
        "status" => list(any())
      }
      
  """
  @type model_manifest_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_decoder_manifest_response() :: %{
        required("arn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type delete_decoder_manifest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vehicle_middleware() :: %{
        "name" => String.t(),
        "protocolName" => list(any())
      }
      
  """
  @type vehicle_middleware() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fleets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_fleets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_decoder_manifests_request() :: %{
        optional("maxResults") => integer(),
        optional("modelManifestArn") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_decoder_manifests_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_campaigns_response() :: %{
        optional("campaignSummaries") => list(campaign_summary()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_campaigns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_campaign_request() :: %{}
      
  """
  @type delete_campaign_request() :: %{}

  @typedoc """

  ## Example:
      
      put_encryption_configuration_response() :: %{
        "encryptionStatus" => list(any()),
        "encryptionType" => list(any()),
        "kmsKeyId" => [String.t()]
      }
      
  """
  @type put_encryption_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_signal_catalog_request() :: %{
        optional("description") => String.t(),
        optional("tags") => list(tag()()),
        optional("vss") => list()
      }
      
  """
  @type import_signal_catalog_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fleets_response() :: %{
        optional("fleetSummaries") => list(fleet_summary()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_fleets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_vehicle_request() :: %{
        required("vehicles") => list(create_vehicle_request_item()())
      }
      
  """
  @type batch_create_vehicle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timestream_resources() :: %{
        "timestreamDatabaseName" => String.t(),
        "timestreamTableName" => String.t()
      }
      
  """
  @type timestream_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vehicle_error() :: %{
        "code" => String.t(),
        "message" => String.t(),
        "vehicleName" => String.t()
      }
      
  """
  @type create_vehicle_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_signal_catalog_response() :: %{
        required("arn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type update_signal_catalog_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_encryption_configuration_request() :: %{}
      
  """
  @type get_encryption_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      put_encryption_configuration_request() :: %{
        optional("kmsKeyId") => [String.t()],
        required("encryptionType") => list(any())
      }
      
  """
  @type put_encryption_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      r_o_s2_primitive_message_definition() :: %{
        "offset" => float(),
        "primitiveType" => list(any()),
        "scaling" => float(),
        "upperBound" => float()
      }
      
  """
  @type r_o_s2_primitive_message_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_signal_catalog_nodes_response() :: %{
        optional("nextToken") => String.t(),
        optional("nodes") => list(list()())
      }
      
  """
  @type list_signal_catalog_nodes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_campaigns_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => String.t()
      }
      
  """
  @type list_campaigns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_decoder_manifest_response() :: %{
        required("arn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type import_decoder_manifest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vehicle_response() :: %{
        required("arn") => String.t(),
        required("vehicleName") => String.t()
      }
      
  """
  @type delete_vehicle_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t(),
        "resource" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_decoder_manifest_request() :: %{
        optional("description") => String.t(),
        optional("networkInterfacesToAdd") => list(network_interface()()),
        optional("networkInterfacesToRemove") => list(String.t()()),
        optional("networkInterfacesToUpdate") => list(network_interface()()),
        optional("signalDecodersToAdd") => list(signal_decoder()()),
        optional("signalDecodersToRemove") => list(String.t()()),
        optional("signalDecodersToUpdate") => list(signal_decoder()()),
        optional("status") => list(any())
      }
      
  """
  @type update_decoder_manifest_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_campaign_response() :: %{
        optional("arn") => String.t(),
        optional("name") => String.t()
      }
      
  """
  @type delete_campaign_response() :: %{String.t() => any()}

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
      
      disassociate_vehicle_fleet_response() :: %{}
      
  """
  @type disassociate_vehicle_fleet_response() :: %{}

  @typedoc """

  ## Example:
      
      update_fleet_request() :: %{
        optional("description") => String.t()
      }
      
  """
  @type update_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vehicle_status_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_vehicle_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_fleet_request() :: %{}
      
  """
  @type get_fleet_request() :: %{}

  @typedoc """

  ## Example:
      
      s3_config() :: %{
        "bucketArn" => String.t(),
        "dataFormat" => list(any()),
        "prefix" => String.t(),
        "storageCompressionFormat" => list(any())
      }
      
  """
  @type s3_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_logging_options_response() :: %{
        required("cloudWatchLogDelivery") => cloud_watch_log_delivery_options()
      }
      
  """
  @type get_logging_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_register_account_status_response() :: %{
        optional("timestreamRegistrationResponse") => timestream_registration_response(),
        required("accountStatus") => list(any()),
        required("creationTime") => non_neg_integer(),
        required("customerAccountId") => String.t(),
        required("iamRegistrationResponse") => iam_registration_response(),
        required("lastModificationTime") => non_neg_integer()
      }
      
  """
  @type get_register_account_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_signal_catalog_response() :: %{
        optional("description") => String.t(),
        optional("nodeCounts") => node_counts(),
        required("arn") => String.t(),
        required("creationTime") => non_neg_integer(),
        required("lastModificationTime") => non_neg_integer(),
        required("name") => String.t()
      }
      
  """
  @type get_signal_catalog_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_summary() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastModificationTime" => non_neg_integer(),
        "signalCatalogArn" => String.t()
      }
      
  """
  @type fleet_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_decoder_manifest_signals_response() :: %{
        optional("nextToken") => String.t(),
        optional("signalDecoders") => list(signal_decoder()())
      }
      
  """
  @type list_decoder_manifest_signals_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_signal_catalogs_response() :: %{
        optional("nextToken") => String.t(),
        optional("summaries") => list(signal_catalog_summary()())
      }
      
  """
  @type list_signal_catalogs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_vehicle_response() :: %{
        optional("errors") => list(update_vehicle_error()()),
        optional("vehicles") => list(update_vehicle_response_item()())
      }
      
  """
  @type batch_update_vehicle_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      actuator() :: %{
        "allowedValues" => list(String.t()()),
        "assignedValue" => String.t(),
        "comment" => String.t(),
        "dataType" => list(any()),
        "deprecationMessage" => String.t(),
        "description" => String.t(),
        "fullyQualifiedName" => String.t(),
        "max" => float(),
        "min" => float(),
        "structFullyQualifiedName" => String.t(),
        "unit" => String.t()
      }
      
  """
  @type actuator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_decoder_manifest_request() :: %{}
      
  """
  @type delete_decoder_manifest_request() :: %{}

  @typedoc """

  ## Example:
      
      list_model_manifest_nodes_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_model_manifest_nodes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vehicles_in_fleet_response() :: %{
        optional("nextToken") => String.t(),
        optional("vehicles") => list(String.t()())
      }
      
  """
  @type list_vehicles_in_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vehicle_request() :: %{}
      
  """
  @type delete_vehicle_request() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_vehicle_fleet_request() :: %{
        required("fleetId") => String.t()
      }
      
  """
  @type disassociate_vehicle_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vehicle_response() :: %{
        optional("arn") => String.t(),
        optional("thingArn") => String.t(),
        optional("vehicleName") => String.t()
      }
      
  """
  @type create_vehicle_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_decoder_manifest_request() :: %{}
      
  """
  @type get_decoder_manifest_request() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        optional("Tags") => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_decoder_manifest_response() :: %{
        optional("description") => String.t(),
        optional("message") => String.t(),
        optional("modelManifestArn") => String.t(),
        optional("status") => list(any()),
        required("arn") => String.t(),
        required("creationTime") => non_neg_integer(),
        required("lastModificationTime") => non_neg_integer(),
        required("name") => String.t()
      }
      
  """
  @type get_decoder_manifest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_vehicle_fleet_response() :: %{}
      
  """
  @type associate_vehicle_fleet_response() :: %{}

  @typedoc """

  ## Example:
      
      update_vehicle_request_item() :: %{
        "attributeUpdateMode" => list(any()),
        "attributes" => map(),
        "decoderManifestArn" => String.t(),
        "modelManifestArn" => String.t(),
        "vehicleName" => String.t()
      }
      
  """
  @type update_vehicle_request_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_model_manifest_request() :: %{
        optional("description") => String.t(),
        optional("tags") => list(tag()()),
        required("nodes") => list(String.t()()),
        required("signalCatalogArn") => String.t()
      }
      
  """
  @type create_model_manifest_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      can_signal() :: %{
        "factor" => float(),
        "isBigEndian" => [boolean()],
        "isSigned" => [boolean()],
        "length" => integer(),
        "messageId" => integer(),
        "name" => String.t(),
        "offset" => float(),
        "startBit" => integer()
      }
      
  """
  @type can_signal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_signal_catalog_nodes_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("signalNodeType") => list(any())
      }
      
  """
  @type list_signal_catalog_nodes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vehicle_response_item() :: %{
        "arn" => String.t(),
        "thingArn" => String.t(),
        "vehicleName" => String.t()
      }
      
  """
  @type create_vehicle_response_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_response() :: %{
        optional("arn") => String.t(),
        optional("id") => String.t()
      }
      
  """
  @type update_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_signal_catalogs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_signal_catalogs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_decoder_manifest_signals_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_decoder_manifest_signals_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      condition_based_collection_scheme() :: %{
        "conditionLanguageVersion" => integer(),
        "expression" => String.t(),
        "minimumTriggerIntervalMs" => float(),
        "triggerMode" => list(any())
      }
      
  """
  @type condition_based_collection_scheme() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_node_exception() :: %{
        "invalidNodes" => list(list()()),
        "message" => String.t(),
        "reason" => String.t()
      }
      
  """
  @type invalid_node_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => integer()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_decoder_manifest_response() :: %{
        required("arn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_decoder_manifest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_signal_catalog_request() :: %{
        optional("description") => String.t(),
        optional("nodes") => list(list()()),
        optional("tags") => list(tag()())
      }
      
  """
  @type create_signal_catalog_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      can_dbc_definition() :: %{
        "canDbcFiles" => list(binary()()),
        "networkInterface" => String.t(),
        "signalsMap" => map()
      }
      
  """
  @type can_dbc_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_signal_catalog_request() :: %{}
      
  """
  @type get_signal_catalog_request() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_campaign_request() :: %{
        optional("compression") => list(any()),
        optional("dataDestinationConfigs") => list(list()()),
        optional("dataExtraDimensions") => list(String.t()()),
        optional("description") => String.t(),
        optional("diagnosticsMode") => list(any()),
        optional("expiryTime") => non_neg_integer(),
        optional("postTriggerCollectionDuration") => float(),
        optional("priority") => integer(),
        optional("signalsToCollect") => list(signal_information()()),
        optional("spoolingMode") => list(any()),
        optional("startTime") => non_neg_integer(),
        optional("tags") => list(tag()()),
        required("collectionScheme") => list(),
        required("signalCatalogArn") => String.t(),
        required("targetArn") => String.t()
      }
      
  """
  @type create_campaign_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_logging_options_request() :: %{
        required("cloudWatchLogDelivery") => cloud_watch_log_delivery_options()
      }
      
  """
  @type put_logging_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vehicle_status_response() :: %{
        optional("campaigns") => list(vehicle_status()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_vehicle_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_decoder_manifest_response() :: %{
        required("arn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type update_decoder_manifest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_encryption_configuration_response() :: %{
        "creationTime" => non_neg_integer(),
        "encryptionStatus" => list(any()),
        "encryptionType" => list(any()),
        "errorMessage" => String.t(),
        "kmsKeyId" => [String.t()],
        "lastModificationTime" => non_neg_integer()
      }
      
  """
  @type get_encryption_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      obd_signal() :: %{
        "bitMaskLength" => integer(),
        "bitRightShift" => integer(),
        "byteLength" => integer(),
        "offset" => float(),
        "pid" => integer(),
        "pidResponseLength" => integer(),
        "scaling" => float(),
        "serviceMode" => integer(),
        "startByte" => integer()
      }
      
  """
  @type obd_signal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_model_manifest_request() :: %{}
      
  """
  @type get_model_manifest_request() :: %{}

  @typedoc """

  ## Example:
      
      custom_property() :: %{
        "comment" => String.t(),
        "dataEncoding" => list(any()),
        "dataType" => list(any()),
        "deprecationMessage" => String.t(),
        "description" => String.t(),
        "fullyQualifiedName" => String.t(),
        "structFullyQualifiedName" => String.t()
      }
      
  """
  @type custom_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signal_information() :: %{
        "maxSampleCount" => float(),
        "minimumSamplingIntervalMs" => float(),
        "name" => String.t()
      }
      
  """
  @type signal_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_manifests_response() :: %{
        optional("nextToken") => String.t(),
        optional("summaries") => list(model_manifest_summary()())
      }
      
  """
  @type list_model_manifests_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_manifest_response() :: %{
        required("arn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type update_model_manifest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_signals_exception() :: %{
        "invalidSignals" => list(invalid_signal()()),
        "message" => String.t()
      }
      
  """
  @type invalid_signals_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "retryAfterSeconds" => integer(),
        "serviceCode" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_campaign_response() :: %{
        optional("arn") => String.t(),
        optional("collectionScheme") => list(),
        optional("compression") => list(any()),
        optional("creationTime") => non_neg_integer(),
        optional("dataDestinationConfigs") => list(list()()),
        optional("dataExtraDimensions") => list(String.t()()),
        optional("description") => String.t(),
        optional("diagnosticsMode") => list(any()),
        optional("expiryTime") => non_neg_integer(),
        optional("lastModificationTime") => non_neg_integer(),
        optional("name") => String.t(),
        optional("postTriggerCollectionDuration") => float(),
        optional("priority") => integer(),
        optional("signalCatalogArn") => String.t(),
        optional("signalsToCollect") => list(signal_information()()),
        optional("spoolingMode") => list(any()),
        optional("startTime") => non_neg_integer(),
        optional("status") => list(any()),
        optional("targetArn") => String.t()
      }
      
  """
  @type get_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sensor() :: %{
        "allowedValues" => list(String.t()()),
        "comment" => String.t(),
        "dataType" => list(any()),
        "deprecationMessage" => String.t(),
        "description" => String.t(),
        "fullyQualifiedName" => String.t(),
        "max" => float(),
        "min" => float(),
        "structFullyQualifiedName" => String.t(),
        "unit" => String.t()
      }
      
  """
  @type sensor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vehicle_response() :: %{
        optional("arn") => String.t(),
        optional("vehicleName") => String.t()
      }
      
  """
  @type update_vehicle_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vehicle_request() :: %{
        optional("attributeUpdateMode") => list(any()),
        optional("attributes") => map(),
        optional("decoderManifestArn") => String.t(),
        optional("modelManifestArn") => String.t()
      }
      
  """
  @type update_vehicle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute() :: %{
        "allowedValues" => list(String.t()()),
        "assignedValue" => String.t(),
        "comment" => String.t(),
        "dataType" => list(any()),
        "defaultValue" => String.t(),
        "deprecationMessage" => String.t(),
        "description" => String.t(),
        "fullyQualifiedName" => String.t(),
        "max" => float(),
        "min" => float(),
        "unit" => String.t()
      }
      
  """
  @type attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_decoder_manifests_response() :: %{
        optional("nextToken") => String.t(),
        optional("summaries") => list(decoder_manifest_summary()())
      }
      
  """
  @type list_decoder_manifests_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_struct() :: %{
        "comment" => String.t(),
        "deprecationMessage" => String.t(),
        "description" => String.t(),
        "fullyQualifiedName" => String.t()
      }
      
  """
  @type custom_struct() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_signal_catalog_response() :: %{
        required("arn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type import_signal_catalog_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_signal_catalog_request() :: %{
        optional("description") => String.t(),
        optional("nodesToAdd") => list(list()()),
        optional("nodesToRemove") => list(String.t()()),
        optional("nodesToUpdate") => list(list()())
      }
      
  """
  @type update_signal_catalog_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_signal_decoder() :: %{
        "hint" => String.t(),
        "name" => String.t(),
        "reason" => list(any())
      }
      
  """
  @type invalid_signal_decoder() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_logging_options_request() :: %{}
      
  """
  @type get_logging_options_request() :: %{}

  @typedoc """

  ## Example:
      
      list_decoder_manifest_network_interfaces_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_decoder_manifest_network_interfaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_log_delivery_options() :: %{
        "logGroupName" => String.t(),
        "logType" => list(any())
      }
      
  """
  @type cloud_watch_log_delivery_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vehicles_response() :: %{
        optional("nextToken") => String.t(),
        optional("vehicleSummaries") => list(vehicle_summary()())
      }
      
  """
  @type list_vehicles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_campaign_request() :: %{
        optional("dataExtraDimensions") => list(String.t()()),
        optional("description") => String.t(),
        required("action") => list(any())
      }
      
  """
  @type update_campaign_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_vehicle_response() :: %{
        optional("errors") => list(create_vehicle_error()()),
        optional("vehicles") => list(create_vehicle_response_item()())
      }
      
  """
  @type batch_create_vehicle_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_vehicle_fleet_request() :: %{
        required("fleetId") => String.t()
      }
      
  """
  @type associate_vehicle_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decoder_manifest_summary() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "lastModificationTime" => non_neg_integer(),
        "message" => String.t(),
        "modelManifestArn" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type decoder_manifest_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_model_manifest_response() :: %{
        required("arn") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type delete_model_manifest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_decoder_manifest_network_interfaces_response() :: %{
        optional("networkInterfaces") => list(network_interface()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_decoder_manifest_network_interfaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_response() :: %{
        required("arn") => String.t(),
        required("id") => String.t()
      }
      
  """
  @type create_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_campaign_response() :: %{
        optional("arn") => String.t(),
        optional("name") => String.t()
      }
      
  """
  @type create_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vehicle_summary() :: %{
        "arn" => String.t(),
        "attributes" => map(),
        "creationTime" => non_neg_integer(),
        "decoderManifestArn" => String.t(),
        "lastModificationTime" => non_neg_integer(),
        "modelManifestArn" => String.t(),
        "vehicleName" => String.t()
      }
      
  """
  @type vehicle_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_fleet_response() :: %{
        optional("description") => String.t(),
        required("arn") => String.t(),
        required("creationTime") => non_neg_integer(),
        required("id") => String.t(),
        required("lastModificationTime") => non_neg_integer(),
        required("signalCatalogArn") => String.t()
      }
      
  """
  @type get_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      can_interface() :: %{
        "name" => String.t(),
        "protocolName" => String.t(),
        "protocolVersion" => String.t()
      }
      
  """
  @type can_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      structured_message_list_definition() :: %{
        "capacity" => integer(),
        "listType" => list(any()),
        "memberType" => list(),
        "name" => String.t()
      }
      
  """
  @type structured_message_list_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_model_manifest_nodes_response() :: %{
        optional("nextToken") => String.t(),
        optional("nodes") => list(list()())
      }
      
  """
  @type list_model_manifest_nodes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vehicle_request() :: %{
        optional("associationBehavior") => list(any()),
        optional("attributes") => map(),
        optional("tags") => list(tag()()),
        required("decoderManifestArn") => String.t(),
        required("modelManifestArn") => String.t()
      }
      
  """
  @type create_vehicle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_signal_catalog_request() :: %{}
      
  """
  @type delete_signal_catalog_request() :: %{}

  @typedoc """

  ## Example:
      
      update_vehicle_response_item() :: %{
        "arn" => String.t(),
        "vehicleName" => String.t()
      }
      
  """
  @type update_vehicle_response_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      campaign_summary() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "lastModificationTime" => non_neg_integer(),
        "name" => String.t(),
        "signalCatalogArn" => String.t(),
        "status" => list(any()),
        "targetArn" => String.t()
      }
      
  """
  @type campaign_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vehicle_response() :: %{
        optional("arn") => String.t(),
        optional("attributes") => map(),
        optional("creationTime") => non_neg_integer(),
        optional("decoderManifestArn") => String.t(),
        optional("lastModificationTime") => non_neg_integer(),
        optional("modelManifestArn") => String.t(),
        optional("vehicleName") => String.t()
      }
      
  """
  @type get_vehicle_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signal_catalog_summary() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "lastModificationTime" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type signal_catalog_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timestream_registration_response() :: %{
        "errorMessage" => String.t(),
        "registrationStatus" => list(any()),
        "timestreamDatabaseArn" => String.t(),
        "timestreamDatabaseName" => String.t(),
        "timestreamTableArn" => String.t(),
        "timestreamTableName" => String.t()
      }
      
  """
  @type timestream_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decoder_manifest_validation_exception() :: %{
        "invalidNetworkInterfaces" => list(invalid_network_interface()()),
        "invalidSignals" => list(invalid_signal_decoder()()),
        "message" => String.t()
      }
      
  """
  @type decoder_manifest_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_model_manifest_request() :: %{
        optional("description") => String.t(),
        optional("nodesToAdd") => list(String.t()()),
        optional("nodesToRemove") => list(String.t()()),
        optional("status") => list(any())
      }
      
  """
  @type update_model_manifest_request() :: %{String.t() => any()}

  @type associate_vehicle_fleet_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_create_vehicle_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type batch_update_vehicle_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type create_campaign_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_decoder_manifest_errors() ::
          decoder_manifest_validation_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_fleet_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_model_manifest_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_signals_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_signal_catalog_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_signals_exception()
          | validation_exception()
          | access_denied_exception()
          | invalid_node_exception()
          | conflict_exception()

  @type create_vehicle_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_decoder_manifest_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_fleet_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_model_manifest_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_signal_catalog_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_vehicle_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type disassociate_vehicle_fleet_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_decoder_manifest_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_encryption_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_fleet_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_logging_options_errors() :: throttling_exception() | access_denied_exception()

  @type get_model_manifest_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_register_account_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_signal_catalog_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_vehicle_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_vehicle_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type import_decoder_manifest_errors() ::
          decoder_manifest_validation_exception()
          | throttling_exception()
          | invalid_signals_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type import_signal_catalog_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_signals_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_campaigns_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_decoder_manifest_network_interfaces_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_decoder_manifest_signals_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_decoder_manifests_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_fleets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_fleets_for_vehicle_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_model_manifest_nodes_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_model_manifests_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_signal_catalog_nodes_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_signal_catalogs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_vehicles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_vehicles_in_fleet_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_encryption_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_logging_options_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type register_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_decoder_manifest_errors() ::
          decoder_manifest_validation_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_fleet_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_model_manifest_errors() ::
          throttling_exception()
          | invalid_signals_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_signal_catalog_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_signals_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_node_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_vehicle_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-06-17",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "iotfleetwise",
      global?: false,
      protocol: "json",
      service_id: "IoTFleetWise",
      signature_version: "v4",
      signing_name: "iotfleetwise",
      target_prefix: "IoTAutobahnControlPlane"
    }
  end

  @doc """
  Adds, or associates, a vehicle with a fleet.
  """
  @spec associate_vehicle_fleet(map(), associate_vehicle_fleet_request(), list()) ::
          {:ok, associate_vehicle_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_vehicle_fleet_errors()}
  def associate_vehicle_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateVehicleFleet", input, options)
  end

  @doc """
  Creates a group, or batch, of vehicles.

  You must specify a decoder manifest and a vehicle model (model manifest) for
  each
  vehicle.

  For more information, see [Create multiple vehicles (AWS
  CLI)](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicles-cli.html)
  in the *Amazon Web Services IoT FleetWise Developer Guide*.
  """
  @spec batch_create_vehicle(map(), batch_create_vehicle_request(), list()) ::
          {:ok, batch_create_vehicle_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_vehicle_errors()}
  def batch_create_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchCreateVehicle", input, options)
  end

  @doc """
  Updates a group, or batch, of vehicles.

  You must specify a decoder manifest and a vehicle model (model manifest) for
  each
  vehicle.

  For more information, see [Update multiple vehicles (AWS
  CLI)](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/update-vehicles-cli.html)
  in the *Amazon Web Services IoT FleetWise Developer Guide*.
  """
  @spec batch_update_vehicle(map(), batch_update_vehicle_request(), list()) ::
          {:ok, batch_update_vehicle_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_vehicle_errors()}
  def batch_update_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchUpdateVehicle", input, options)
  end

  @doc """
  Creates an orchestration of data collection rules.

  The Amazon Web Services IoT FleetWise Edge Agent software
  running in vehicles uses campaigns to decide how to collect and transfer data to
  the
  cloud. You create campaigns in the cloud. After you or your team approve
  campaigns,
  Amazon Web Services IoT FleetWise automatically deploys them to vehicles.

  For more information, see [Collect and transfer data with
  campaigns](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/campaigns.html)
  in the *Amazon Web Services IoT FleetWise Developer Guide*.
  """
  @spec create_campaign(map(), create_campaign_request(), list()) ::
          {:ok, create_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_campaign_errors()}
  def create_campaign(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCampaign", input, options)
  end

  @doc """
  Creates the decoder manifest associated with a model manifest.

  To create a decoder
  manifest, the following must be true:

    *
  Every signal decoder has a unique name.

    *
  Each signal decoder is associated with a network interface.

    *
  Each network interface has a unique ID.

    *
  The signal decoders are specified in the model manifest.
  """
  @spec create_decoder_manifest(map(), create_decoder_manifest_request(), list()) ::
          {:ok, create_decoder_manifest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_decoder_manifest_errors()}
  def create_decoder_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDecoderManifest", input, options)
  end

  @doc """
  Creates a fleet that represents a group of vehicles.

  You must create both a signal catalog and vehicles before you can create a
  fleet.

  For more information, see
  [Fleets](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleets.html)
  in the
  *Amazon Web Services IoT FleetWise Developer Guide*.
  """
  @spec create_fleet(map(), create_fleet_request(), list()) ::
          {:ok, create_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fleet_errors()}
  def create_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFleet", input, options)
  end

  @doc """
  Creates a vehicle model (model manifest) that specifies signals (attributes,
  branches, sensors, and actuators).

  For more information, see [Vehicle models](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/vehicle-models.html)
  in the *Amazon Web Services IoT FleetWise Developer Guide*.
  """
  @spec create_model_manifest(map(), create_model_manifest_request(), list()) ::
          {:ok, create_model_manifest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_manifest_errors()}
  def create_model_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateModelManifest", input, options)
  end

  @doc """
  Creates a collection of standardized signals that can be reused to create
  vehicle
  models.
  """
  @spec create_signal_catalog(map(), create_signal_catalog_request(), list()) ::
          {:ok, create_signal_catalog_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_signal_catalog_errors()}
  def create_signal_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSignalCatalog", input, options)
  end

  @doc """
  Creates a vehicle, which is an instance of a vehicle model (model manifest).

  Vehicles
  created from the same vehicle model consist of the same signals inherited from
  the
  vehicle model.

  If you have an existing Amazon Web Services IoT thing, you can use Amazon Web
  Services IoT FleetWise to create a
  vehicle and collect data from your thing.

  For more information, see [Create a vehicle (AWS
  CLI)](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicle-cli.html)
  in the *Amazon Web Services IoT FleetWise Developer Guide*.
  """
  @spec create_vehicle(map(), create_vehicle_request(), list()) ::
          {:ok, create_vehicle_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vehicle_errors()}
  def create_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVehicle", input, options)
  end

  @doc """
  Deletes a data collection campaign.

  Deleting a campaign suspends all data collection
  and removes it from any vehicles.
  """
  @spec delete_campaign(map(), delete_campaign_request(), list()) ::
          {:ok, delete_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_campaign_errors()}
  def delete_campaign(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCampaign", input, options)
  end

  @doc """
  Deletes a decoder manifest.

  You can't delete a decoder manifest if it has vehicles
  associated with it.

  If the decoder manifest is successfully deleted, Amazon Web Services IoT
  FleetWise sends back an HTTP 200
  response with an empty body.
  """
  @spec delete_decoder_manifest(map(), delete_decoder_manifest_request(), list()) ::
          {:ok, delete_decoder_manifest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_decoder_manifest_errors()}
  def delete_decoder_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDecoderManifest", input, options)
  end

  @doc """
  Deletes a fleet.

  Before you delete a fleet, all vehicles must be
  dissociated from the fleet. For more information, see [Delete a fleet (AWS CLI)](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/delete-fleet-cli.html)
  in the *Amazon Web Services IoT FleetWise Developer Guide*.

  If the fleet is successfully deleted, Amazon Web Services IoT FleetWise sends
  back an HTTP 200 response
  with an empty body.
  """
  @spec delete_fleet(map(), delete_fleet_request(), list()) ::
          {:ok, delete_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fleet_errors()}
  def delete_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFleet", input, options)
  end

  @doc """
  Deletes a vehicle model (model manifest).

  If the vehicle model is successfully deleted, Amazon Web Services IoT FleetWise
  sends back an HTTP 200
  response with an empty body.
  """
  @spec delete_model_manifest(map(), delete_model_manifest_request(), list()) ::
          {:ok, delete_model_manifest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_manifest_errors()}
  def delete_model_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteModelManifest", input, options)
  end

  @doc """
  Deletes a signal catalog.

  If the signal catalog is successfully deleted, Amazon Web Services IoT FleetWise
  sends back an HTTP 200
  response with an empty body.
  """
  @spec delete_signal_catalog(map(), delete_signal_catalog_request(), list()) ::
          {:ok, delete_signal_catalog_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_signal_catalog_errors()}
  def delete_signal_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSignalCatalog", input, options)
  end

  @doc """
  Deletes a vehicle and removes it from any campaigns.

  If the vehicle is successfully deleted, Amazon Web Services IoT FleetWise sends
  back an HTTP 200 response
  with an empty body.
  """
  @spec delete_vehicle(map(), delete_vehicle_request(), list()) ::
          {:ok, delete_vehicle_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vehicle_errors()}
  def delete_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVehicle", input, options)
  end

  @doc """
  Removes, or disassociates, a vehicle from a fleet.

  Disassociating a vehicle from a
  fleet doesn't delete the vehicle.

  If the vehicle is successfully dissociated from a fleet, Amazon Web Services IoT
  FleetWise sends back an
  HTTP 200 response with an empty body.
  """
  @spec disassociate_vehicle_fleet(map(), disassociate_vehicle_fleet_request(), list()) ::
          {:ok, disassociate_vehicle_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_vehicle_fleet_errors()}
  def disassociate_vehicle_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateVehicleFleet", input, options)
  end

  @doc """
  Retrieves information about a campaign.
  """
  @spec get_campaign(map(), get_campaign_request(), list()) ::
          {:ok, get_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_campaign_errors()}
  def get_campaign(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCampaign", input, options)
  end

  @doc """
  Retrieves information about a created decoder manifest.
  """
  @spec get_decoder_manifest(map(), get_decoder_manifest_request(), list()) ::
          {:ok, get_decoder_manifest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_decoder_manifest_errors()}
  def get_decoder_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDecoderManifest", input, options)
  end

  @doc """
  Retrieves the encryption configuration for resources and data in Amazon Web
  Services IoT FleetWise.
  """
  @spec get_encryption_configuration(map(), get_encryption_configuration_request(), list()) ::
          {:ok, get_encryption_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_encryption_configuration_errors()}
  def get_encryption_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEncryptionConfiguration", input, options)
  end

  @doc """
  Retrieves information about a fleet.
  """
  @spec get_fleet(map(), get_fleet_request(), list()) ::
          {:ok, get_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_fleet_errors()}
  def get_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetFleet", input, options)
  end

  @doc """
  Retrieves the logging options.
  """
  @spec get_logging_options(map(), get_logging_options_request(), list()) ::
          {:ok, get_logging_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_logging_options_errors()}
  def get_logging_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLoggingOptions", input, options)
  end

  @doc """
  Retrieves information about a vehicle model (model manifest).
  """
  @spec get_model_manifest(map(), get_model_manifest_request(), list()) ::
          {:ok, get_model_manifest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_model_manifest_errors()}
  def get_model_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetModelManifest", input, options)
  end

  @doc """
  Retrieves information about the status of registering your Amazon Web Services
  account, IAM, and
  Amazon Timestream resources so that Amazon Web Services IoT FleetWise can
  transfer your vehicle data to the Amazon Web Services
  Cloud.

  For more information, including step-by-step procedures, see [Setting up Amazon Web Services IoT
  FleetWise](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html).

  This API operation doesn't require input parameters.
  """
  @spec get_register_account_status(map(), get_register_account_status_request(), list()) ::
          {:ok, get_register_account_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_register_account_status_errors()}
  def get_register_account_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRegisterAccountStatus", input, options)
  end

  @doc """
  Retrieves information about a signal catalog.
  """
  @spec get_signal_catalog(map(), get_signal_catalog_request(), list()) ::
          {:ok, get_signal_catalog_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_signal_catalog_errors()}
  def get_signal_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSignalCatalog", input, options)
  end

  @doc """
  Retrieves information about a vehicle.
  """
  @spec get_vehicle(map(), get_vehicle_request(), list()) ::
          {:ok, get_vehicle_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_vehicle_errors()}
  def get_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetVehicle", input, options)
  end

  @doc """
  Retrieves information about the status of a vehicle with any associated
  campaigns.
  """
  @spec get_vehicle_status(map(), get_vehicle_status_request(), list()) ::
          {:ok, get_vehicle_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_vehicle_status_errors()}
  def get_vehicle_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetVehicleStatus", input, options)
  end

  @doc """
  Creates a decoder manifest using your existing CAN DBC file from your local
  device.
  """
  @spec import_decoder_manifest(map(), import_decoder_manifest_request(), list()) ::
          {:ok, import_decoder_manifest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_decoder_manifest_errors()}
  def import_decoder_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportDecoderManifest", input, options)
  end

  @doc """
  Creates a signal catalog using your existing VSS formatted content from your
  local
  device.
  """
  @spec import_signal_catalog(map(), import_signal_catalog_request(), list()) ::
          {:ok, import_signal_catalog_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_signal_catalog_errors()}
  def import_signal_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportSignalCatalog", input, options)
  end

  @doc """
  Lists information about created campaigns.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  @spec list_campaigns(map(), list_campaigns_request(), list()) ::
          {:ok, list_campaigns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_campaigns_errors()}
  def list_campaigns(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCampaigns", input, options)
  end

  @doc """
  Lists the network interfaces specified in a decoder manifest.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  @spec list_decoder_manifest_network_interfaces(
          map(),
          list_decoder_manifest_network_interfaces_request(),
          list()
        ) ::
          {:ok, list_decoder_manifest_network_interfaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_decoder_manifest_network_interfaces_errors()}
  def list_decoder_manifest_network_interfaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDecoderManifestNetworkInterfaces", input, options)
  end

  @doc """
  A list of information about signal decoders specified in a decoder manifest.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  @spec list_decoder_manifest_signals(map(), list_decoder_manifest_signals_request(), list()) ::
          {:ok, list_decoder_manifest_signals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_decoder_manifest_signals_errors()}
  def list_decoder_manifest_signals(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDecoderManifestSignals", input, options)
  end

  @doc """
  Lists decoder manifests.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  @spec list_decoder_manifests(map(), list_decoder_manifests_request(), list()) ::
          {:ok, list_decoder_manifests_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_decoder_manifests_errors()}
  def list_decoder_manifests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDecoderManifests", input, options)
  end

  @doc """
  Retrieves information for each created fleet in an Amazon Web Services account.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  @spec list_fleets(map(), list_fleets_request(), list()) ::
          {:ok, list_fleets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fleets_errors()}
  def list_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFleets", input, options)
  end

  @doc """
  Retrieves a list of IDs for all fleets that the vehicle is associated with.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  @spec list_fleets_for_vehicle(map(), list_fleets_for_vehicle_request(), list()) ::
          {:ok, list_fleets_for_vehicle_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fleets_for_vehicle_errors()}
  def list_fleets_for_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFleetsForVehicle", input, options)
  end

  @doc """
  Lists information about nodes specified in a vehicle model (model manifest).

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  @spec list_model_manifest_nodes(map(), list_model_manifest_nodes_request(), list()) ::
          {:ok, list_model_manifest_nodes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_model_manifest_nodes_errors()}
  def list_model_manifest_nodes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelManifestNodes", input, options)
  end

  @doc """
  Retrieves a list of vehicle models (model manifests).

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  @spec list_model_manifests(map(), list_model_manifests_request(), list()) ::
          {:ok, list_model_manifests_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_model_manifests_errors()}
  def list_model_manifests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelManifests", input, options)
  end

  @doc """
  Lists of information about the signals (nodes) specified in a signal catalog.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  @spec list_signal_catalog_nodes(map(), list_signal_catalog_nodes_request(), list()) ::
          {:ok, list_signal_catalog_nodes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_signal_catalog_nodes_errors()}
  def list_signal_catalog_nodes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSignalCatalogNodes", input, options)
  end

  @doc """
  Lists all the created signal catalogs in an Amazon Web Services account.

  You can use to list information about
  each signal (node) specified in a signal catalog.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  @spec list_signal_catalogs(map(), list_signal_catalogs_request(), list()) ::
          {:ok, list_signal_catalogs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_signal_catalogs_errors()}
  def list_signal_catalogs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSignalCatalogs", input, options)
  end

  @doc """
  Lists the tags (metadata) you have assigned to the resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Retrieves a list of summaries of created vehicles.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  @spec list_vehicles(map(), list_vehicles_request(), list()) ::
          {:ok, list_vehicles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vehicles_errors()}
  def list_vehicles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVehicles", input, options)
  end

  @doc """
  Retrieves a list of summaries of all vehicles associated with a fleet.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  @spec list_vehicles_in_fleet(map(), list_vehicles_in_fleet_request(), list()) ::
          {:ok, list_vehicles_in_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vehicles_in_fleet_errors()}
  def list_vehicles_in_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVehiclesInFleet", input, options)
  end

  @doc """
  Creates or updates the encryption configuration.

  Amazon Web Services IoT FleetWise can encrypt your data and resources using an
  Amazon Web Services managed key. Or, you can use a KMS key that you own and
  manage. For more information, see [Data encryption](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/data-encryption.html)
  in the *Amazon Web Services IoT FleetWise Developer Guide*.
  """
  @spec put_encryption_configuration(map(), put_encryption_configuration_request(), list()) ::
          {:ok, put_encryption_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_encryption_configuration_errors()}
  def put_encryption_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutEncryptionConfiguration", input, options)
  end

  @doc """
  Creates or updates the logging option.
  """
  @spec put_logging_options(map(), put_logging_options_request(), list()) ::
          {:ok, put_logging_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_logging_options_errors()}
  def put_logging_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutLoggingOptions", input, options)
  end

  @doc """

  This API operation contains deprecated parameters.

  Register your account again without the Timestream resources parameter so that
  Amazon Web Services IoT FleetWise can remove the Timestream metadata stored. You
  should then pass the data destination into the
  [CreateCampaign](https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_CreateCampaign.html) API operation.

  You must delete any existing campaigns that include an empty data destination
  before you register your account again. For more information, see the
  [DeleteCampaign](https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_DeleteCampaign.html)
  API operation.

  If you want to delete the Timestream inline policy from the service-linked role,
  such as to mitigate an overly permissive policy, you must first delete any
  existing campaigns. Then delete the service-linked role and register your
  account again to enable CloudWatch metrics. For more information, see
  [DeleteServiceLinkedRole](https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteServiceLinkedRole.html) in the *Identity and Access Management API Reference*.

  Registers your Amazon Web Services account, IAM, and Amazon Timestream resources
  so Amazon Web Services IoT FleetWise can
  transfer your vehicle data to the Amazon Web Services Cloud. For more
  information, including
  step-by-step procedures, see [Setting up
  Amazon Web Services IoT
  FleetWise](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html).

  An Amazon Web Services account is **not** the same thing as a "user." An [Amazon Web Services
  user](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction_identity-management.html#intro-identity-users)
  is an identity that you create using Identity and Access Management (IAM) and
  takes the form of either an [IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html) or an [IAM role, both
  with
  credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html). A
  single Amazon Web Services account can, and typically does,
  contain many users and roles.
  """
  @spec register_account(map(), register_account_request(), list()) ::
          {:ok, register_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_account_errors()}
  def register_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterAccount", input, options)
  end

  @doc """
  Adds to or modifies the tags of the given resource.

  Tags are metadata which can be
  used to manage a resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the given tags (metadata) from the resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a campaign.
  """
  @spec update_campaign(map(), update_campaign_request(), list()) ::
          {:ok, update_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_campaign_errors()}
  def update_campaign(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCampaign", input, options)
  end

  @doc """
  Updates a decoder manifest.

  A decoder manifest can only be updated when the status is `DRAFT`. Only
  `ACTIVE` decoder manifests can be associated with vehicles.
  """
  @spec update_decoder_manifest(map(), update_decoder_manifest_request(), list()) ::
          {:ok, update_decoder_manifest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_decoder_manifest_errors()}
  def update_decoder_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDecoderManifest", input, options)
  end

  @doc """
  Updates the description of an existing fleet.

  If the fleet is successfully updated, Amazon Web Services IoT FleetWise sends
  back an HTTP 200 response
  with an empty HTTP body.
  """
  @spec update_fleet(map(), update_fleet_request(), list()) ::
          {:ok, update_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_fleet_errors()}
  def update_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFleet", input, options)
  end

  @doc """
  Updates a vehicle model (model manifest).

  If created vehicles are associated with a
  vehicle model, it can't be updated.
  """
  @spec update_model_manifest(map(), update_model_manifest_request(), list()) ::
          {:ok, update_model_manifest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_model_manifest_errors()}
  def update_model_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateModelManifest", input, options)
  end

  @doc """
  Updates a signal catalog.
  """
  @spec update_signal_catalog(map(), update_signal_catalog_request(), list()) ::
          {:ok, update_signal_catalog_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_signal_catalog_errors()}
  def update_signal_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSignalCatalog", input, options)
  end

  @doc """
  Updates a vehicle.
  """
  @spec update_vehicle(map(), update_vehicle_request(), list()) ::
          {:ok, update_vehicle_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vehicle_errors()}
  def update_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateVehicle", input, options)
  end
end
