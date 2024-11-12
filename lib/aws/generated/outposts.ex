# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Outposts do
  @moduledoc """
  Amazon Web Services Outposts is a fully managed service that extends Amazon Web
  Services infrastructure, APIs, and tools to
  customer premises.

  By providing local access to Amazon Web Services managed infrastructure, Amazon
  Web Services Outposts enables
  customers to build and run applications on premises using the same programming
  interfaces as
  in Amazon Web Services Regions, while using local compute and storage resources
  for lower latency and local
  data processing needs.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_connection_request() :: %{}

  """
  @type get_connection_request() :: %{}

  @typedoc """

  ## Example:

      get_outpost_supported_instance_types_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OrderId") => String.t()
      }

  """
  @type get_outpost_supported_instance_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_outpost_instance_types_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type get_outpost_instance_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_type_item() :: %{
        "InstanceType" => String.t(),
        "VCPUs" => integer()
      }

  """
  @type instance_type_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      blocking_instance() :: %{
        "AccountId" => String.t(),
        "AwsServiceName" => list(any()),
        "InstanceId" => String.t()
      }

  """
  @type blocking_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_connection_response() :: %{
        "ConnectionId" => String.t(),
        "UnderlayIpAddress" => String.t()
      }

  """
  @type start_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assets_input() :: %{
        optional("HostIdFilter") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StatusFilter") => list(list(any())())
      }

  """
  @type list_assets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_instances_input() :: %{
        optional("AccountIdFilter") => list(String.t()()),
        optional("AssetIdFilter") => list(String.t()()),
        optional("AwsServiceFilter") => list(list(any())()),
        optional("InstanceTypeFilter") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_asset_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_location() :: %{
        "RackElevation" => float()
      }

  """
  @type asset_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_order_input() :: %{}

  """
  @type get_order_input() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_capacity_tasks_output() :: %{
        "CapacityTasks" => list(capacity_task_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_capacity_tasks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connection_response() :: %{
        "ConnectionDetails" => connection_details(),
        "ConnectionId" => String.t()
      }

  """
  @type get_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_outpost_supported_instance_types_output() :: %{
        "InstanceTypes" => list(instance_type_item()()),
        "NextToken" => String.t()
      }

  """
  @type get_outpost_supported_instance_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_item_asset_information() :: %{
        "AssetId" => String.t(),
        "MacAddressList" => list(String.t()())
      }

  """
  @type line_item_asset_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_orders_output() :: %{
        "NextToken" => String.t(),
        "Orders" => list(order_summary()())
      }

  """
  @type list_orders_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_connection_request() :: %{
        optional("DeviceSerialNumber") => String.t(),
        required("AssetId") => String.t(),
        required("ClientPublicKey") => String.t(),
        required("NetworkInterfaceDeviceIndex") => integer()
      }

  """
  @type start_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_site_output() :: %{
        "Site" => site()
      }

  """
  @type get_site_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_site_input() :: %{
        optional("Description") => String.t(),
        optional("Notes") => String.t(),
        optional("OperatingAddress") => address(),
        optional("RackPhysicalProperties") => rack_physical_properties(),
        optional("ShippingAddress") => address(),
        optional("Tags") => map(),
        required("Name") => String.t()
      }

  """
  @type create_site_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_outposts_input() :: %{
        optional("AvailabilityZoneFilter") => list(String.t()()),
        optional("AvailabilityZoneIdFilter") => list(String.t()()),
        optional("LifeCycleStatusFilter") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_outposts_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      catalog_item() :: %{
        "CatalogItemId" => String.t(),
        "EC2Capacities" => list(ec2_capacity()()),
        "ItemStatus" => list(any()),
        "PowerKva" => float(),
        "SupportedStorage" => list(list(any())()),
        "SupportedUplinkGbps" => list(integer()()),
        "WeightLbs" => integer()
      }

  """
  @type catalog_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_site_address_input() :: %{
        required("AddressType") => list(any())
      }

  """
  @type get_site_address_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_site_output() :: %{
        "Site" => site()
      }

  """
  @type create_site_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_site_address_input() :: %{
        required("Address") => address(),
        required("AddressType") => list(any())
      }

  """
  @type update_site_address_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_outpost_input() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("SupportedHardwareType") => list(any())
      }

  """
  @type update_outpost_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rack_physical_properties() :: %{
        "FiberOpticCableType" => list(any()),
        "MaximumSupportedWeightLbs" => list(any()),
        "OpticalStandard" => list(any()),
        "PowerConnector" => list(any()),
        "PowerDrawKva" => list(any()),
        "PowerFeedDrop" => list(any()),
        "PowerPhase" => list(any()),
        "UplinkCount" => list(any()),
        "UplinkGbps" => list(any())
      }

  """
  @type rack_physical_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_site_rack_physical_properties_input() :: %{
        optional("FiberOpticCableType") => list(any()),
        optional("MaximumSupportedWeightLbs") => list(any()),
        optional("OpticalStandard") => list(any()),
        optional("PowerConnector") => list(any()),
        optional("PowerDrawKva") => list(any()),
        optional("PowerFeedDrop") => list(any()),
        optional("PowerPhase") => list(any()),
        optional("UplinkCount") => list(any()),
        optional("UplinkGbps") => list(any())
      }

  """
  @type update_site_rack_physical_properties_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_site_address_output() :: %{
        "Address" => address(),
        "AddressType" => list(any())
      }

  """
  @type update_site_address_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_orders_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OutpostIdentifierFilter") => String.t()
      }

  """
  @type list_orders_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_capacity_task_input() :: %{}

  """
  @type get_capacity_task_input() :: %{}

  @typedoc """

  ## Example:

      list_asset_instances_output() :: %{
        "AssetInstances" => list(asset_instance()()),
        "NextToken" => String.t()
      }

  """
  @type list_asset_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_instance_type_capacity() :: %{
        "Count" => integer(),
        "InstanceType" => String.t()
      }

  """
  @type asset_instance_type_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_catalog_item_input() :: %{}

  """
  @type get_catalog_item_input() :: %{}

  @typedoc """

  ## Example:

      create_order_output() :: %{
        "Order" => order()
      }

  """
  @type create_order_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_outpost_input() :: %{}

  """
  @type get_outpost_input() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_site_output() :: %{
        "Site" => site()
      }

  """
  @type update_site_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      site() :: %{
        "AccountId" => String.t(),
        "Description" => String.t(),
        "Name" => String.t(),
        "Notes" => String.t(),
        "OperatingAddressCity" => String.t(),
        "OperatingAddressCountryCode" => String.t(),
        "OperatingAddressStateOrRegion" => String.t(),
        "RackPhysicalProperties" => rack_physical_properties(),
        "SiteArn" => String.t(),
        "SiteId" => String.t(),
        "Tags" => map()
      }

  """
  @type site() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sites_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OperatingAddressCityFilter") => list(String.t()()),
        optional("OperatingAddressCountryCodeFilter") => list(String.t()()),
        optional("OperatingAddressStateOrRegionFilter") => list(String.t()())
      }

  """
  @type list_sites_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_blocking_instances_for_capacity_task_output() :: %{
        "BlockingInstances" => list(blocking_instance()()),
        "NextToken" => String.t()
      }

  """
  @type list_blocking_instances_for_capacity_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_type_capacity() :: %{
        "Count" => integer(),
        "InstanceType" => String.t()
      }

  """
  @type instance_type_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_outpost_output() :: %{
        "Outpost" => outpost()
      }

  """
  @type get_outpost_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_order_output() :: %{
        "Order" => order()
      }

  """
  @type get_order_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_order_input() :: %{
        optional("PaymentTerm") => list(any()),
        required("LineItems") => list(line_item_request()()),
        required("OutpostIdentifier") => String.t(),
        required("PaymentOption") => list(any())
      }

  """
  @type create_order_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_catalog_item_output() :: %{
        "CatalogItem" => catalog_item()
      }

  """
  @type get_catalog_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_capacity_task_output() :: %{}

  """
  @type cancel_capacity_task_output() :: %{}

  @typedoc """

  ## Example:

      ec2_capacity() :: %{
        "Family" => String.t(),
        "MaxSize" => String.t(),
        "Quantity" => String.t()
      }

  """
  @type ec2_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_capacity_task_output() :: %{
        "CapacityTaskId" => String.t(),
        "CapacityTaskStatus" => list(any()),
        "CompletionDate" => non_neg_integer(),
        "CreationDate" => non_neg_integer(),
        "DryRun" => boolean(),
        "Failed" => capacity_task_failure(),
        "InstancesToExclude" => instances_to_exclude(),
        "LastModifiedDate" => non_neg_integer(),
        "OrderId" => String.t(),
        "OutpostId" => String.t(),
        "RequestedInstancePools" => list(instance_type_capacity()()),
        "TaskActionOnBlockingInstances" => list(any())
      }

  """
  @type start_capacity_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sites_output() :: %{
        "NextToken" => String.t(),
        "Sites" => list(site()())
      }

  """
  @type list_sites_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_capacity_task_input() :: %{
        optional("DryRun") => boolean(),
        optional("InstancesToExclude") => instances_to_exclude(),
        optional("OrderId") => String.t(),
        optional("TaskActionOnBlockingInstances") => list(any()),
        required("InstancePools") => list(instance_type_capacity()())
      }

  """
  @type start_capacity_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      order() :: %{
        "LineItems" => list(line_item()()),
        "OrderFulfilledDate" => non_neg_integer(),
        "OrderId" => String.t(),
        "OrderSubmissionDate" => non_neg_integer(),
        "OrderType" => list(any()),
        "OutpostId" => String.t(),
        "PaymentOption" => list(any()),
        "PaymentTerm" => list(any()),
        "Status" => list(any())
      }

  """
  @type order() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_order_input() :: %{}

  """
  @type cancel_order_input() :: %{}

  @typedoc """

  ## Example:

      capacity_task_failure() :: %{
        "Reason" => String.t(),
        "Type" => list(any())
      }

  """
  @type capacity_task_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      compute_attributes() :: %{
        "HostId" => String.t(),
        "InstanceFamilies" => list(String.t()()),
        "InstanceTypeCapacities" => list(asset_instance_type_capacity()()),
        "MaxVcpus" => integer(),
        "State" => list(any())
      }

  """
  @type compute_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assets_output() :: %{
        "Assets" => list(asset_info()()),
        "NextToken" => String.t()
      }

  """
  @type list_assets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_site_output() :: %{}

  """
  @type delete_site_output() :: %{}

  @typedoc """

  ## Example:

      delete_outpost_output() :: %{}

  """
  @type delete_outpost_output() :: %{}

  @typedoc """

  ## Example:

      cancel_order_output() :: %{}

  """
  @type cancel_order_output() :: %{}

  @typedoc """

  ## Example:

      get_outpost_instance_types_output() :: %{
        "InstanceTypes" => list(instance_type_item()()),
        "NextToken" => String.t(),
        "OutpostArn" => String.t(),
        "OutpostId" => String.t()
      }

  """
  @type get_outpost_instance_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instances_to_exclude() :: %{
        "AccountIds" => list(String.t()()),
        "Instances" => list(String.t()()),
        "Services" => list(list(any())())
      }

  """
  @type instances_to_exclude() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_site_input() :: %{}

  """
  @type delete_site_input() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_site_input() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("Notes") => String.t()
      }

  """
  @type update_site_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_site_input() :: %{}

  """
  @type get_site_input() :: %{}

  @typedoc """

  ## Example:

      list_outposts_output() :: %{
        "NextToken" => String.t(),
        "Outposts" => list(outpost()())
      }

  """
  @type list_outposts_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_outpost_input() :: %{}

  """
  @type delete_outpost_input() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      order_summary() :: %{
        "LineItemCountsByStatus" => map(),
        "OrderFulfilledDate" => non_neg_integer(),
        "OrderId" => String.t(),
        "OrderSubmissionDate" => non_neg_integer(),
        "OrderType" => list(any()),
        "OutpostId" => String.t(),
        "Status" => list(any())
      }

  """
  @type order_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_capacity_tasks_input() :: %{
        optional("CapacityTaskStatusFilter") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OutpostIdentifierFilter") => String.t()
      }

  """
  @type list_capacity_tasks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_blocking_instances_for_capacity_task_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_blocking_instances_for_capacity_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_outpost_output() :: %{
        "Outpost" => outpost()
      }

  """
  @type create_outpost_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_site_address_output() :: %{
        "Address" => address(),
        "AddressType" => list(any()),
        "SiteId" => String.t()
      }

  """
  @type get_site_address_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_info() :: %{
        "AssetId" => String.t(),
        "AssetLocation" => asset_location(),
        "AssetType" => list(any()),
        "ComputeAttributes" => compute_attributes(),
        "RackId" => String.t()
      }

  """
  @type asset_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_catalog_items_input() :: %{
        optional("EC2FamilyFilter") => list(String.t()()),
        optional("ItemClassFilter") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SupportedStorageFilter") => list(list(any())())
      }

  """
  @type list_catalog_items_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_outpost_output() :: %{
        "Outpost" => outpost()
      }

  """
  @type update_outpost_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_item_request() :: %{
        "CatalogItemId" => String.t(),
        "Quantity" => integer()
      }

  """
  @type line_item_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_details() :: %{
        "AllowedIps" => list(String.t()()),
        "ClientPublicKey" => String.t(),
        "ClientTunnelAddress" => String.t(),
        "ServerEndpoint" => String.t(),
        "ServerPublicKey" => String.t(),
        "ServerTunnelAddress" => String.t()
      }

  """
  @type connection_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      outpost() :: %{
        "AvailabilityZone" => String.t(),
        "AvailabilityZoneId" => String.t(),
        "Description" => String.t(),
        "LifeCycleStatus" => String.t(),
        "Name" => String.t(),
        "OutpostArn" => String.t(),
        "OutpostId" => String.t(),
        "OwnerId" => String.t(),
        "SiteArn" => String.t(),
        "SiteId" => String.t(),
        "SupportedHardwareType" => list(any()),
        "Tags" => map()
      }

  """
  @type outpost() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      address() :: %{
        "AddressLine1" => String.t(),
        "AddressLine2" => String.t(),
        "AddressLine3" => String.t(),
        "City" => String.t(),
        "ContactName" => String.t(),
        "ContactPhoneNumber" => String.t(),
        "CountryCode" => String.t(),
        "DistrictOrCounty" => String.t(),
        "Municipality" => String.t(),
        "PostalCode" => String.t(),
        "StateOrRegion" => String.t()
      }

  """
  @type address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      capacity_task_summary() :: %{
        "CapacityTaskId" => String.t(),
        "CapacityTaskStatus" => list(any()),
        "CompletionDate" => non_neg_integer(),
        "CreationDate" => non_neg_integer(),
        "LastModifiedDate" => non_neg_integer(),
        "OrderId" => String.t(),
        "OutpostId" => String.t()
      }

  """
  @type capacity_task_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_catalog_items_output() :: %{
        "CatalogItems" => list(catalog_item()()),
        "NextToken" => String.t()
      }

  """
  @type list_catalog_items_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_instance() :: %{
        "AccountId" => String.t(),
        "AssetId" => String.t(),
        "AwsServiceName" => list(any()),
        "InstanceId" => String.t(),
        "InstanceType" => String.t()
      }

  """
  @type asset_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_site_rack_physical_properties_output() :: %{
        "Site" => site()
      }

  """
  @type update_site_rack_physical_properties_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      line_item() :: %{
        "AssetInformationList" => list(line_item_asset_information()()),
        "CatalogItemId" => String.t(),
        "LineItemId" => String.t(),
        "PreviousLineItemId" => String.t(),
        "PreviousOrderId" => String.t(),
        "Quantity" => integer(),
        "ShipmentInformation" => shipment_information(),
        "Status" => list(any())
      }

  """
  @type line_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_capacity_task_input() :: %{}

  """
  @type cancel_capacity_task_input() :: %{}

  @typedoc """

  ## Example:

      shipment_information() :: %{
        "ShipmentCarrier" => list(any()),
        "ShipmentTrackingNumber" => String.t()
      }

  """
  @type shipment_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_capacity_task_output() :: %{
        "CapacityTaskId" => String.t(),
        "CapacityTaskStatus" => list(any()),
        "CompletionDate" => non_neg_integer(),
        "CreationDate" => non_neg_integer(),
        "DryRun" => boolean(),
        "Failed" => capacity_task_failure(),
        "InstancesToExclude" => instances_to_exclude(),
        "LastModifiedDate" => non_neg_integer(),
        "OrderId" => String.t(),
        "OutpostId" => String.t(),
        "RequestedInstancePools" => list(instance_type_capacity()()),
        "TaskActionOnBlockingInstances" => list(any())
      }

  """
  @type get_capacity_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_outpost_input() :: %{
        optional("AvailabilityZone") => String.t(),
        optional("AvailabilityZoneId") => String.t(),
        optional("Description") => String.t(),
        optional("SupportedHardwareType") => list(any()),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("SiteId") => String.t()
      }

  """
  @type create_outpost_input() :: %{String.t() => any()}

  @type cancel_capacity_task_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type cancel_order_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type create_order_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_outpost_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_site_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_outpost_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type delete_site_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type get_capacity_task_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type get_catalog_item_errors() ::
          validation_exception() | internal_server_exception() | not_found_exception()

  @type get_connection_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type get_order_errors() ::
          validation_exception() | internal_server_exception() | not_found_exception()

  @type get_outpost_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type get_outpost_instance_types_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type get_outpost_supported_instance_types_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type get_site_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type get_site_address_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type list_asset_instances_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type list_assets_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type list_blocking_instances_for_capacity_task_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type list_capacity_tasks_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type list_catalog_items_errors() ::
          validation_exception() | internal_server_exception() | not_found_exception()

  @type list_orders_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type list_outposts_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_sites_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | not_found_exception()

  @type start_capacity_task_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type start_connection_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | not_found_exception()

  @type update_outpost_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type update_site_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type update_site_address_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type update_site_rack_physical_properties_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2019-12-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "outposts",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Outposts",
      signature_version: "v4",
      signing_name: "outposts",
      target_prefix: nil
    }
  end

  @doc """
  Cancels the capacity task.
  """
  @spec cancel_capacity_task(map(), String.t(), String.t(), cancel_capacity_task_input(), list()) ::
          {:ok, cancel_capacity_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_capacity_task_errors()}
  def cancel_capacity_task(
        %Client{} = client,
        capacity_task_id,
        outpost_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/capacity/#{AWS.Util.encode_uri(capacity_task_id)}"

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
      200
    )
  end

  @doc """
  Cancels the specified order for an Outpost.
  """
  @spec cancel_order(map(), String.t(), cancel_order_input(), list()) ::
          {:ok, cancel_order_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_order_errors()}
  def cancel_order(%Client{} = client, order_id, input, options \\ []) do
    url_path = "/orders/#{AWS.Util.encode_uri(order_id)}/cancel"
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
      200
    )
  end

  @doc """
  Creates an order for an Outpost.
  """
  @spec create_order(map(), create_order_input(), list()) ::
          {:ok, create_order_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_order_errors()}
  def create_order(%Client{} = client, input, options \\ []) do
    url_path = "/orders"
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
      200
    )
  end

  @doc """
  Creates an Outpost.

  You can specify either an Availability one or an AZ ID.
  """
  @spec create_outpost(map(), create_outpost_input(), list()) ::
          {:ok, create_outpost_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_outpost_errors()}
  def create_outpost(%Client{} = client, input, options \\ []) do
    url_path = "/outposts"
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
      200
    )
  end

  @doc """
  Creates a site for an Outpost.
  """
  @spec create_site(map(), create_site_input(), list()) ::
          {:ok, create_site_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_site_errors()}
  def create_site(%Client{} = client, input, options \\ []) do
    url_path = "/sites"
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
      200
    )
  end

  @doc """
  Deletes the specified Outpost.
  """
  @spec delete_outpost(map(), String.t(), delete_outpost_input(), list()) ::
          {:ok, delete_outpost_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_outpost_errors()}
  def delete_outpost(%Client{} = client, outpost_id, input, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}"
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
      200
    )
  end

  @doc """
  Deletes the specified site.
  """
  @spec delete_site(map(), String.t(), delete_site_input(), list()) ::
          {:ok, delete_site_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_site_errors()}
  def delete_site(%Client{} = client, site_id, input, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}"
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
      200
    )
  end

  @doc """
  Gets details of the specified capacity task.
  """
  @spec get_capacity_task(map(), String.t(), String.t(), list()) ::
          {:ok, get_capacity_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_capacity_task_errors()}
  def get_capacity_task(%Client{} = client, capacity_task_id, outpost_identifier, options \\ []) do
    url_path =
      "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/capacity/#{AWS.Util.encode_uri(capacity_task_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified catalog item.
  """
  @spec get_catalog_item(map(), String.t(), list()) ::
          {:ok, get_catalog_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_catalog_item_errors()}
  def get_catalog_item(%Client{} = client, catalog_item_id, options \\ []) do
    url_path = "/catalog/item/#{AWS.Util.encode_uri(catalog_item_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """


  Amazon Web Services uses this action to install Outpost servers.

  Gets information about the specified connection.

  Use CloudTrail to monitor this action or Amazon Web Services managed policy for
  Amazon Web Services Outposts to secure it. For
  more information, see [
  Amazon Web Services managed policies for Amazon Web Services
  Outposts](https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html)
  and [
  Logging Amazon Web Services Outposts API calls with Amazon Web Services
  CloudTrail](https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html)
  in the *Amazon Web Services Outposts User Guide*.
  """
  @spec get_connection(map(), String.t(), list()) ::
          {:ok, get_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connection_errors()}
  def get_connection(%Client{} = client, connection_id, options \\ []) do
    url_path = "/connections/#{AWS.Util.encode_uri(connection_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified order.
  """
  @spec get_order(map(), String.t(), list()) ::
          {:ok, get_order_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_order_errors()}
  def get_order(%Client{} = client, order_id, options \\ []) do
    url_path = "/orders/#{AWS.Util.encode_uri(order_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified Outpost.
  """
  @spec get_outpost(map(), String.t(), list()) ::
          {:ok, get_outpost_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_outpost_errors()}
  def get_outpost(%Client{} = client, outpost_id, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the instance types for the specified Outpost.
  """
  @spec get_outpost_instance_types(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_outpost_instance_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_outpost_instance_types_errors()}
  def get_outpost_instance_types(
        %Client{} = client,
        outpost_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}/instanceTypes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the instance types that an Outpost can support in `InstanceTypeCapacity`.

  This will generally include instance types that are not currently configured and
  therefore
  cannot be launched with the current Outpost capacity configuration.
  """
  @spec get_outpost_supported_instance_types(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_outpost_supported_instance_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_outpost_supported_instance_types_errors()}
  def get_outpost_supported_instance_types(
        %Client{} = client,
        outpost_identifier,
        max_results \\ nil,
        next_token \\ nil,
        order_id \\ nil,
        options \\ []
      ) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/supportedInstanceTypes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(order_id) do
        [{"OrderId", order_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified Outpost site.
  """
  @spec get_site(map(), String.t(), list()) ::
          {:ok, get_site_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_site_errors()}
  def get_site(%Client{} = client, site_id, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the site address of the specified site.
  """
  @spec get_site_address(map(), String.t(), String.t(), list()) ::
          {:ok, get_site_address_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_site_address_errors()}
  def get_site_address(%Client{} = client, site_id, address_type, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}/address"
    headers = []
    query_params = []

    query_params =
      if !is_nil(address_type) do
        [{"AddressType", address_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A list of Amazon EC2 instances, belonging to all accounts, running on the
  specified Outpost.

  Does not include Amazon EBS or Amazon S3 instances.
  """
  @spec list_asset_instances(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_asset_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_asset_instances_errors()}
  def list_asset_instances(
        %Client{} = client,
        outpost_identifier,
        account_id_filter \\ nil,
        asset_id_filter \\ nil,
        aws_service_filter \\ nil,
        instance_type_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/assetInstances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(instance_type_filter) do
        [{"InstanceTypeFilter", instance_type_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_service_filter) do
        [{"AwsServiceFilter", aws_service_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_id_filter) do
        [{"AssetIdFilter", asset_id_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(account_id_filter) do
        [{"AccountIdFilter", account_id_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the hardware assets for the specified Outpost.

  Use filters to return specific results. If you specify multiple filters, the
  results include only the resources that match
  all of the specified filters. For a filter where you can specify multiple
  values, the results include
  items that match any of the values that you specify for the filter.
  """
  @spec list_assets(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_assets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assets_errors()}
  def list_assets(
        %Client{} = client,
        outpost_identifier,
        host_id_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        status_filter \\ nil,
        options \\ []
      ) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/assets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_filter) do
        [{"StatusFilter", status_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(host_id_filter) do
        [{"HostIdFilter", host_id_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A list of Amazon EC2 instances running on the Outpost and belonging to the
  account that
  initiated the capacity task.

  Use this list to specify the instances you cannot stop to free up
  capacity to run the capacity task.
  """
  @spec list_blocking_instances_for_capacity_task(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_blocking_instances_for_capacity_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_blocking_instances_for_capacity_task_errors()}
  def list_blocking_instances_for_capacity_task(
        %Client{} = client,
        capacity_task_id,
        outpost_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/capacity/#{AWS.Util.encode_uri(capacity_task_id)}/blockingInstances"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the capacity tasks for your Amazon Web Services account.

  Use filters to return specific results. If you specify multiple filters, the
  results include only the resources that match
  all of the specified filters. For a filter where you can specify multiple
  values, the results include
  items that match any of the values that you specify for the filter.
  """
  @spec list_capacity_tasks(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_capacity_tasks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_capacity_tasks_errors()}
  def list_capacity_tasks(
        %Client{} = client,
        capacity_task_status_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        outpost_identifier_filter \\ nil,
        options \\ []
      ) do
    url_path = "/capacity/tasks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(outpost_identifier_filter) do
        [{"OutpostIdentifierFilter", outpost_identifier_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(capacity_task_status_filter) do
        [{"CapacityTaskStatusFilter", capacity_task_status_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the items in the catalog.

  Use filters to return specific results. If you specify multiple filters, the
  results include only the resources that match
  all of the specified filters. For a filter where you can specify multiple
  values, the results include
  items that match any of the values that you specify for the filter.
  """
  @spec list_catalog_items(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_catalog_items_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_catalog_items_errors()}
  def list_catalog_items(
        %Client{} = client,
        ec2_family_filter \\ nil,
        item_class_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        supported_storage_filter \\ nil,
        options \\ []
      ) do
    url_path = "/catalog/items"
    headers = []
    query_params = []

    query_params =
      if !is_nil(supported_storage_filter) do
        [{"SupportedStorageFilter", supported_storage_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(item_class_filter) do
        [{"ItemClassFilter", item_class_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ec2_family_filter) do
        [{"EC2FamilyFilter", ec2_family_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Outpost orders for your Amazon Web Services account.
  """
  @spec list_orders(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_orders_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_orders_errors()}
  def list_orders(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        outpost_identifier_filter \\ nil,
        options \\ []
      ) do
    url_path = "/list-orders"
    headers = []
    query_params = []

    query_params =
      if !is_nil(outpost_identifier_filter) do
        [{"OutpostIdentifierFilter", outpost_identifier_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Outposts for your Amazon Web Services account.

  Use filters to return specific results. If you specify multiple filters, the
  results include only the resources that match
  all of the specified filters. For a filter where you can specify multiple
  values, the results include
  items that match any of the values that you specify for the filter.
  """
  @spec list_outposts(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_outposts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_outposts_errors()}
  def list_outposts(
        %Client{} = client,
        availability_zone_filter \\ nil,
        availability_zone_id_filter \\ nil,
        life_cycle_status_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/outposts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(life_cycle_status_filter) do
        [{"LifeCycleStatusFilter", life_cycle_status_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(availability_zone_id_filter) do
        [{"AvailabilityZoneIdFilter", availability_zone_id_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(availability_zone_filter) do
        [{"AvailabilityZoneFilter", availability_zone_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Outpost sites for your Amazon Web Services account.

  Use filters to return specific
  results.

  Use filters to return specific results. If you specify multiple filters, the
  results include only the resources that match
  all of the specified filters. For a filter where you can specify multiple
  values, the results include
  items that match any of the values that you specify for the filter.
  """
  @spec list_sites(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_sites_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sites_errors()}
  def list_sites(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        operating_address_city_filter \\ nil,
        operating_address_country_code_filter \\ nil,
        operating_address_state_or_region_filter \\ nil,
        options \\ []
      ) do
    url_path = "/sites"
    headers = []
    query_params = []

    query_params =
      if !is_nil(operating_address_state_or_region_filter) do
        [
          {"OperatingAddressStateOrRegionFilter", operating_address_state_or_region_filter}
          | query_params
        ]
      else
        query_params
      end

    query_params =
      if !is_nil(operating_address_country_code_filter) do
        [
          {"OperatingAddressCountryCodeFilter", operating_address_country_code_filter}
          | query_params
        ]
      else
        query_params
      end

    query_params =
      if !is_nil(operating_address_city_filter) do
        [{"OperatingAddressCityFilter", operating_address_city_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts the specified capacity task.

  You can have one active capacity task per order or Outpost.
  """
  @spec start_capacity_task(map(), String.t(), start_capacity_task_input(), list()) ::
          {:ok, start_capacity_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_capacity_task_errors()}
  def start_capacity_task(%Client{} = client, outpost_identifier, input, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_identifier)}/capacity"
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
      200
    )
  end

  @doc """


  Amazon Web Services uses this action to install Outpost servers.

  Starts the connection required for Outpost server installation.

  Use CloudTrail to monitor this action or Amazon Web Services managed policy for
  Amazon Web Services Outposts to secure it. For
  more information, see [
  Amazon Web Services managed policies for Amazon Web Services
  Outposts](https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html)
  and [
  Logging Amazon Web Services Outposts API calls with Amazon Web Services
  CloudTrail](https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html)
  in the *Amazon Web Services Outposts User Guide*.
  """
  @spec start_connection(map(), start_connection_request(), list()) ::
          {:ok, start_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_connection_errors()}
  def start_connection(%Client{} = client, input, options \\ []) do
    url_path = "/connections"
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
      200
    )
  end

  @doc """
  Adds tags to the specified resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Removes tags from the specified resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an Outpost.
  """
  @spec update_outpost(map(), String.t(), update_outpost_input(), list()) ::
          {:ok, update_outpost_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_outpost_errors()}
  def update_outpost(%Client{} = client, outpost_id, input, options \\ []) do
    url_path = "/outposts/#{AWS.Util.encode_uri(outpost_id)}"
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
      200
    )
  end

  @doc """
  Updates the specified site.
  """
  @spec update_site(map(), String.t(), update_site_input(), list()) ::
          {:ok, update_site_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_site_errors()}
  def update_site(%Client{} = client, site_id, input, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}"
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
      200
    )
  end

  @doc """
  Updates the address of the specified site.

  You can't update a site address if there is an order in progress. You must wait
  for the
  order to complete or cancel the order.

  You can update the operating address before you place an order at the site, or
  after all
  Outposts that belong to the site have been deactivated.
  """
  @spec update_site_address(map(), String.t(), update_site_address_input(), list()) ::
          {:ok, update_site_address_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_site_address_errors()}
  def update_site_address(%Client{} = client, site_id, input, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}/address"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update the physical and logistical details for a rack at a site.

  For more information
  about hardware requirements for racks, see [Network readiness
  checklist](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist)
  in the Amazon Web Services Outposts User Guide.

  To update a rack at a site with an order of `IN_PROGRESS`, you must wait for
  the order to complete or cancel the order.
  """
  @spec update_site_rack_physical_properties(
          map(),
          String.t(),
          update_site_rack_physical_properties_input(),
          list()
        ) ::
          {:ok, update_site_rack_physical_properties_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_site_rack_physical_properties_errors()}
  def update_site_rack_physical_properties(%Client{} = client, site_id, input, options \\ []) do
    url_path = "/sites/#{AWS.Util.encode_uri(site_id)}/rackPhysicalProperties"
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
      200
    )
  end
end
