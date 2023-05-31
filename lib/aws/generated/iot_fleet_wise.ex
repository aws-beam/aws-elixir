# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTFleetWise do
  @moduledoc """
  Amazon Web Services IoT FleetWise is a fully managed service that you can use to
  collect, model, and transfer vehicle data to the Amazon Web Services cloud at
  scale.

  With Amazon Web Services IoT FleetWise, you can standardize all of your vehicle
  data models, independent of the in-vehicle communication architecture, and
  define data collection rules to transfer only high-value data to the cloud.

  For more information, see [What is Amazon Web Services IoT FleetWise?](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/) in
  the *Amazon Web Services IoT FleetWise Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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
  def associate_vehicle_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateVehicleFleet", input, options)
  end

  @doc """
  Creates a group, or batch, of vehicles.

  You must specify a decoder manifest and a vehicle model (model manifest) for
  each vehicle.

  For more information, see [Create multiple vehicles (AWS CLI)](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicles-cli.html)
  in the *Amazon Web Services IoT FleetWise Developer Guide*.
  """
  def batch_create_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchCreateVehicle", input, options)
  end

  @doc """
  Updates a group, or batch, of vehicles.

  You must specify a decoder manifest and a vehicle model (model manifest) for
  each vehicle.

  For more information, see [Update multiple vehicles (AWS CLI)](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/update-vehicles-cli.html)
  in the *Amazon Web Services IoT FleetWise Developer Guide*.
  """
  def batch_update_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchUpdateVehicle", input, options)
  end

  @doc """
  Creates an orchestration of data collection rules.

  The Amazon Web Services IoT FleetWise Edge Agent software running in vehicles
  uses campaigns to decide how to collect and transfer data to the cloud. You
  create campaigns in the cloud. After you or your team approve campaigns, Amazon
  Web Services IoT FleetWise automatically deploys them to vehicles.

  For more information, see [Collect and transfer data with campaigns](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/campaigns.html)
  in the *Amazon Web Services IoT FleetWise Developer Guide*.
  """
  def create_campaign(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCampaign", input, options)
  end

  @doc """
  Creates the decoder manifest associated with a model manifest.

  To create a decoder manifest, the following must be true:

    * Every signal decoder has a unique name.

    * Each signal decoder is associated with a network interface.

    * Each network interface has a unique ID.

    * The signal decoders are specified in the model manifest.
  """
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
  in the *Amazon Web Services IoT FleetWise Developer Guide*.
  """
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
  def create_model_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateModelManifest", input, options)
  end

  @doc """
  Creates a collection of standardized signals that can be reused to create
  vehicle models.
  """
  def create_signal_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSignalCatalog", input, options)
  end

  @doc """
  Creates a vehicle, which is an instance of a vehicle model (model manifest).

  Vehicles created from the same vehicle model consist of the same signals
  inherited from the vehicle model.

  If you have an existing Amazon Web Services IoT thing, you can use Amazon Web
  Services IoT FleetWise to create a vehicle and collect data from your thing.

  For more information, see [Create a vehicle (AWS CLI)](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicle-cli.html)
  in the *Amazon Web Services IoT FleetWise Developer Guide*.
  """
  def create_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVehicle", input, options)
  end

  @doc """
  Deletes a data collection campaign.

  Deleting a campaign suspends all data collection and removes it from any
  vehicles.
  """
  def delete_campaign(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCampaign", input, options)
  end

  @doc """
  Deletes a decoder manifest.

  You can't delete a decoder manifest if it has vehicles associated with it.

  If the decoder manifest is successfully deleted, Amazon Web Services IoT
  FleetWise sends back an HTTP 200 response with an empty body.
  """
  def delete_decoder_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDecoderManifest", input, options)
  end

  @doc """
  Deletes a fleet.

  Before you delete a fleet, all vehicles must be dissociated from the fleet. For
  more information, see [Delete a fleet (AWS CLI)](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/delete-fleet-cli.html)
  in the *Amazon Web Services IoT FleetWise Developer Guide*.

  If the fleet is successfully deleted, Amazon Web Services IoT FleetWise sends
  back an HTTP 200 response with an empty body.
  """
  def delete_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFleet", input, options)
  end

  @doc """
  Deletes a vehicle model (model manifest).

  If the vehicle model is successfully deleted, Amazon Web Services IoT FleetWise
  sends back an HTTP 200 response with an empty body.
  """
  def delete_model_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteModelManifest", input, options)
  end

  @doc """
  Deletes a signal catalog.

  If the signal catalog is successfully deleted, Amazon Web Services IoT FleetWise
  sends back an HTTP 200 response with an empty body.
  """
  def delete_signal_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSignalCatalog", input, options)
  end

  @doc """
  Deletes a vehicle and removes it from any campaigns.

  If the vehicle is successfully deleted, Amazon Web Services IoT FleetWise sends
  back an HTTP 200 response with an empty body.
  """
  def delete_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVehicle", input, options)
  end

  @doc """
  Removes, or disassociates, a vehicle from a fleet.

  Disassociating a vehicle from a fleet doesn't delete the vehicle.

  If the vehicle is successfully dissociated from a fleet, Amazon Web Services IoT
  FleetWise sends back an HTTP 200 response with an empty body.
  """
  def disassociate_vehicle_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateVehicleFleet", input, options)
  end

  @doc """
  Retrieves information about a campaign.
  """
  def get_campaign(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCampaign", input, options)
  end

  @doc """
  Retrieves information about a created decoder manifest.
  """
  def get_decoder_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDecoderManifest", input, options)
  end

  @doc """
  Retrieves information about a fleet.
  """
  def get_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetFleet", input, options)
  end

  @doc """
  Retrieves the logging options.
  """
  def get_logging_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLoggingOptions", input, options)
  end

  @doc """
  Retrieves information about a vehicle model (model manifest).
  """
  def get_model_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetModelManifest", input, options)
  end

  @doc """
  Retrieves information about the status of registering your Amazon Web Services
  account, IAM, and Amazon Timestream resources so that Amazon Web Services IoT
  FleetWise can transfer your vehicle data to the Amazon Web Services Cloud.

  For more information, including step-by-step procedures, see [Setting up Amazon Web Services IoT
  FleetWise](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html).

  This API operation doesn't require input parameters.
  """
  def get_register_account_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRegisterAccountStatus", input, options)
  end

  @doc """
  Retrieves information about a signal catalog.
  """
  def get_signal_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSignalCatalog", input, options)
  end

  @doc """
  Retrieves information about a vehicle.
  """
  def get_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetVehicle", input, options)
  end

  @doc """
  Retrieves information about the status of a vehicle with any associated
  campaigns.
  """
  def get_vehicle_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetVehicleStatus", input, options)
  end

  @doc """
  Creates a decoder manifest using your existing CAN DBC file from your local
  device.
  """
  def import_decoder_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportDecoderManifest", input, options)
  end

  @doc """
  Creates a signal catalog using your existing VSS formatted content from your
  local device.
  """
  def import_signal_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportSignalCatalog", input, options)
  end

  @doc """
  Lists information about created campaigns.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  def list_campaigns(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCampaigns", input, options)
  end

  @doc """
  Lists the network interfaces specified in a decoder manifest.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  def list_decoder_manifest_network_interfaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDecoderManifestNetworkInterfaces", input, options)
  end

  @doc """
  A list of information about signal decoders specified in a decoder manifest.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  def list_decoder_manifest_signals(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDecoderManifestSignals", input, options)
  end

  @doc """
  Lists decoder manifests.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  def list_decoder_manifests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDecoderManifests", input, options)
  end

  @doc """
  Retrieves information for each created fleet in an Amazon Web Services account.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  def list_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFleets", input, options)
  end

  @doc """
  Retrieves a list of IDs for all fleets that the vehicle is associated with.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  def list_fleets_for_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFleetsForVehicle", input, options)
  end

  @doc """
  Lists information about nodes specified in a vehicle model (model manifest).

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  def list_model_manifest_nodes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelManifestNodes", input, options)
  end

  @doc """
  Retrieves a list of vehicle models (model manifests).

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  def list_model_manifests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelManifests", input, options)
  end

  @doc """
  Lists of information about the signals (nodes) specified in a signal catalog.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  def list_signal_catalog_nodes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSignalCatalogNodes", input, options)
  end

  @doc """
  Lists all the created signal catalogs in an Amazon Web Services account.

  You can use to list information about each signal (node) specified in a signal
  catalog.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  def list_signal_catalogs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSignalCatalogs", input, options)
  end

  @doc """
  Lists the tags (metadata) you have assigned to the resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Retrieves a list of summaries of created vehicles.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  def list_vehicles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVehicles", input, options)
  end

  @doc """
  Retrieves a list of summaries of all vehicles associated with a fleet.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  request to return more results.
  """
  def list_vehicles_in_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVehiclesInFleet", input, options)
  end

  @doc """
  Creates or updates the logging option.
  """
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

  ` Registers your Amazon Web Services account, IAM, and Amazon Timestream
  resources so Amazon Web Services IoT FleetWise can transfer your vehicle data to
  the Amazon Web Services Cloud. For more information, including step-by-step
  procedures, see [Setting up Amazon Web Services IoT
  FleetWise](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html).

  An Amazon Web Services account is **not** the same thing as a "user." An [Amazon Web Services
  user](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction_identity-management.html#intro-identity-users)
  is an identity that you create using Identity and Access Management (IAM) and
  takes the form of either an [IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html) or an [IAM role, both with
  credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html). A
  single Amazon Web Services account can, and typically does, contain many users
  and roles.

  `
  """
  def register_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterAccount", input, options)
  end

  @doc """
  Adds to or modifies the tags of the given resource.

  Tags are metadata which can be used to manage a resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the given tags (metadata) from the resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a campaign.
  """
  def update_campaign(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCampaign", input, options)
  end

  @doc """
  Updates a decoder manifest.

  A decoder manifest can only be updated when the status is `DRAFT`. Only `ACTIVE`
  decoder manifests can be associated with vehicles.
  """
  def update_decoder_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDecoderManifest", input, options)
  end

  @doc """
  Updates the description of an existing fleet.

  If the fleet is successfully updated, Amazon Web Services IoT FleetWise sends
  back an HTTP 200 response with an empty HTTP body.
  """
  def update_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFleet", input, options)
  end

  @doc """
  Updates a vehicle model (model manifest).

  If created vehicles are associated with a vehicle model, it can't be updated.
  """
  def update_model_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateModelManifest", input, options)
  end

  @doc """
  Updates a signal catalog.
  """
  def update_signal_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSignalCatalog", input, options)
  end

  @doc """
  Updates a vehicle.
  """
  def update_vehicle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateVehicle", input, options)
  end
end
