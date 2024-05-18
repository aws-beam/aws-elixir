# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Snowball do
  @moduledoc """
  The Amazon Web Services Snow Family provides a petabyte-scale data transport
  solution that uses
  secure devices to transfer large amounts of data between your on-premises data
  centers and
  Amazon Simple Storage Service (Amazon S3).

  The Snow Family commands described here provide access to the same
  functionality that is available in the Amazon Web Services Snow Family
  Management Console, which enables you to create
  and manage jobs for a Snow Family device. To transfer data locally with a Snow
  Family device,
  you'll need to use the Snowball Edge client or the Amazon S3 API Interface for
  Snowball or OpsHub for Snow Family. For more information, see the [User Guide](https://docs.aws.amazon.com/AWSImportExport/latest/ug/api-reference.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      cancel_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type cancel_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_snowball_usage_result() :: %{
        "SnowballLimit" => integer(),
        "SnowballsInUse" => integer()
      }
      
  """
  @type get_snowball_usage_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_request() :: %{
        required("ClusterId") => String.t()
      }
      
  """
  @type describe_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_manifest_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type get_job_manifest_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shipment() :: %{
        "Status" => String.t(),
        "TrackingNumber" => String.t()
      }
      
  """
  @type shipment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_manifest_result() :: %{
        "ManifestURI" => String.t()
      }
      
  """
  @type get_job_manifest_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_job_result() :: %{
        "JobMetadata" => job_metadata(),
        "SubJobMetadata" => list(job_metadata()())
      }
      
  """
  @type describe_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compatible_images_result() :: %{
        "CompatibleImages" => list(compatible_image()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_compatible_images_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_jobs_result() :: %{
        "JobListEntries" => list(job_list_entry()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_jobs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_trigger_definition() :: %{
        "EventResourceARN" => String.t()
      }
      
  """
  @type event_trigger_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_configuration() :: %{
        "SnowconeDeviceConfiguration" => snowcone_device_configuration()
      }
      
  """
  @type device_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pickup_locations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_pickup_locations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_result() :: %{}
      
  """
  @type update_cluster_result() :: %{}

  @typedoc """

  ## Example:
      
      get_snowball_usage_request() :: %{}
      
  """
  @type get_snowball_usage_request() :: %{}

  @typedoc """

  ## Example:
      
      list_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_long_term_pricing_result() :: %{}
      
  """
  @type update_long_term_pricing_result() :: %{}

  @typedoc """

  ## Example:
      
      data_transfer() :: %{
        "BytesTransferred" => float(),
        "ObjectsTransferred" => float(),
        "TotalBytes" => float(),
        "TotalObjects" => float()
      }
      
  """
  @type data_transfer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snowcone_device_configuration() :: %{
        "WirelessConnection" => wireless_connection()
      }
      
  """
  @type snowcone_device_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_job_shipment_state_result() :: %{}
      
  """
  @type update_job_shipment_state_result() :: %{}

  @typedoc """

  ## Example:
      
      get_software_updates_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type get_software_updates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_ami_resource() :: %{
        "AmiId" => String.t(),
        "SnowballAmiId" => String.t()
      }
      
  """
  @type ec2_ami_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cluster_result() :: %{
        "ClusterMetadata" => cluster_metadata()
      }
      
  """
  @type describe_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_job_request() :: %{
        optional("AddressId") => String.t(),
        optional("ClusterId") => String.t(),
        optional("Description") => String.t(),
        optional("DeviceConfiguration") => device_configuration(),
        optional("ForwardingAddressId") => String.t(),
        optional("ImpactLevel") => list(any()),
        optional("JobType") => list(any()),
        optional("KmsKeyARN") => String.t(),
        optional("LongTermPricingId") => String.t(),
        optional("Notification") => notification(),
        optional("OnDeviceServiceConfiguration") => on_device_service_configuration(),
        optional("PickupDetails") => pickup_details(),
        optional("RemoteManagement") => list(any()),
        optional("Resources") => job_resource(),
        optional("RoleARN") => String.t(),
        optional("ShippingOption") => list(any()),
        optional("SnowballCapacityPreference") => list(any()),
        optional("SnowballType") => list(any()),
        optional("TaxDocuments") => tax_documents()
      }
      
  """
  @type create_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_combination_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_input_combination_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      t_g_w_on_device_service_configuration() :: %{
        "StorageLimit" => integer(),
        "StorageUnit" => list(any())
      }
      
  """
  @type t_g_w_on_device_service_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_long_term_pricing_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_long_term_pricing_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_return_shipping_label_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_return_shipping_label_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_resource() :: %{
        "EventTriggers" => list(event_trigger_definition()()),
        "LambdaArn" => String.t()
      }
      
  """
  @type lambda_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_request() :: %{
        optional("AddressId") => String.t(),
        optional("Description") => String.t(),
        optional("ForwardingAddressId") => String.t(),
        optional("Notification") => notification(),
        optional("OnDeviceServiceConfiguration") => on_device_service_configuration(),
        optional("Resources") => job_resource(),
        optional("RoleARN") => String.t(),
        optional("ShippingOption") => list(any()),
        required("ClusterId") => String.t()
      }
      
  """
  @type update_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_versions_request() :: %{
        optional("DependentServices") => list(dependent_service()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServiceName") => list(any())
      }
      
  """
  @type list_service_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_cluster_request() :: %{
        required("ClusterId") => String.t()
      }
      
  """
  @type cancel_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_metadata() :: %{
        "AddressId" => String.t(),
        "ClusterId" => String.t(),
        "ClusterState" => list(any()),
        "CreationDate" => non_neg_integer(),
        "Description" => String.t(),
        "ForwardingAddressId" => String.t(),
        "JobType" => list(any()),
        "KmsKeyARN" => String.t(),
        "Notification" => notification(),
        "OnDeviceServiceConfiguration" => on_device_service_configuration(),
        "Resources" => job_resource(),
        "RoleARN" => String.t(),
        "ShippingOption" => list(any()),
        "SnowballType" => list(any()),
        "TaxDocuments" => tax_documents()
      }
      
  """
  @type cluster_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_addresses_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_addresses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      i_n_d_tax_documents() :: %{
        "GSTIN" => String.t()
      }
      
  """
  @type i_n_d_tax_documents() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_long_term_pricing_result() :: %{
        "LongTermPricingId" => String.t()
      }
      
  """
  @type create_long_term_pricing_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_resource() :: %{
        "BucketArn" => String.t(),
        "KeyRange" => key_range(),
        "TargetOnDeviceServices" => list(target_on_device_service()())
      }
      
  """
  @type s3_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_request() :: %{
        optional("Description") => String.t(),
        optional("ForceCreateJobs") => boolean(),
        optional("ForwardingAddressId") => String.t(),
        optional("InitialClusterSize") => integer(),
        optional("KmsKeyARN") => String.t(),
        optional("LongTermPricingIds") => list(String.t()()),
        optional("Notification") => notification(),
        optional("OnDeviceServiceConfiguration") => on_device_service_configuration(),
        optional("RemoteManagement") => list(any()),
        optional("Resources") => job_resource(),
        optional("RoleARN") => String.t(),
        optional("SnowballCapacityPreference") => list(any()),
        optional("TaxDocuments") => tax_documents(),
        required("AddressId") => String.t(),
        required("JobType") => list(any()),
        required("ShippingOption") => list(any()),
        required("SnowballType") => list(any())
      }
      
  """
  @type create_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_job_result() :: %{}
      
  """
  @type cancel_job_result() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "ConflictResource" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_list_entry() :: %{
        "CreationDate" => non_neg_integer(),
        "Description" => String.t(),
        "IsMaster" => boolean(),
        "JobId" => String.t(),
        "JobState" => list(any()),
        "JobType" => list(any()),
        "SnowballType" => list(any())
      }
      
  """
  @type job_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_address_result() :: %{
        "AddressId" => String.t()
      }
      
  """
  @type create_address_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compatible_image() :: %{
        "AmiId" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type compatible_image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_return_shipping_label_result() :: %{
        "ExpirationDate" => non_neg_integer(),
        "ReturnShippingLabelURI" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type describe_return_shipping_label_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_job_request() :: %{
        optional("AddressId") => String.t(),
        optional("Description") => String.t(),
        optional("ForwardingAddressId") => String.t(),
        optional("Notification") => notification(),
        optional("OnDeviceServiceConfiguration") => on_device_service_configuration(),
        optional("PickupDetails") => pickup_details(),
        optional("Resources") => job_resource(),
        optional("RoleARN") => String.t(),
        optional("ShippingOption") => list(any()),
        optional("SnowballCapacityPreference") => list(any()),
        required("JobId") => String.t()
      }
      
  """
  @type update_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      nfs_on_device_service_configuration() :: %{
        "StorageLimit" => integer(),
        "StorageUnit" => list(any())
      }
      
  """
  @type nfs_on_device_service_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_result() :: %{
        "ClusterId" => String.t(),
        "JobListEntries" => list(job_list_entry()())
      }
      
  """
  @type create_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_version() :: %{
        "Version" => String.t()
      }
      
  """
  @type service_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_long_term_pricing_result() :: %{
        "LongTermPricingEntries" => list(long_term_pricing_list_entry()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_long_term_pricing_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cluster_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_address_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_address_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compatible_images_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_compatible_images_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_versions_result() :: %{
        "DependentServices" => list(dependent_service()()),
        "NextToken" => String.t(),
        "ServiceName" => list(any()),
        "ServiceVersions" => list(service_version()())
      }
      
  """
  @type list_service_versions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_address_request() :: %{
        required("Address") => address()
      }
      
  """
  @type create_address_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_addresses_result() :: %{
        "Addresses" => list(address()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_addresses_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_address_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_address_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_request_failed_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type kms_request_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_range() :: %{
        "BeginMarker" => String.t(),
        "EndMarker" => String.t()
      }
      
  """
  @type key_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pickup_locations_result() :: %{
        "Addresses" => list(address()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_pickup_locations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_metadata() :: %{
        "AddressId" => String.t(),
        "ClusterId" => String.t(),
        "CreationDate" => non_neg_integer(),
        "DataTransferProgress" => data_transfer(),
        "Description" => String.t(),
        "DeviceConfiguration" => device_configuration(),
        "ForwardingAddressId" => String.t(),
        "ImpactLevel" => list(any()),
        "JobId" => String.t(),
        "JobLogInfo" => job_logs(),
        "JobState" => list(any()),
        "JobType" => list(any()),
        "KmsKeyARN" => String.t(),
        "LongTermPricingId" => String.t(),
        "Notification" => notification(),
        "OnDeviceServiceConfiguration" => on_device_service_configuration(),
        "PickupDetails" => pickup_details(),
        "RemoteManagement" => list(any()),
        "Resources" => job_resource(),
        "RoleARN" => String.t(),
        "ShippingDetails" => shipping_details(),
        "SnowballCapacityPreference" => list(any()),
        "SnowballId" => String.t(),
        "SnowballType" => list(any()),
        "TaxDocuments" => tax_documents()
      }
      
  """
  @type job_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_exception() :: %{
        "Message" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type invalid_resource_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      on_device_service_configuration() :: %{
        "EKSOnDeviceService" => e_k_s_on_device_service_configuration(),
        "NFSOnDeviceService" => nfs_on_device_service_configuration(),
        "S3OnDeviceService" => s3_on_device_service_configuration(),
        "TGWOnDeviceService" => t_g_w_on_device_service_configuration()
      }
      
  """
  @type on_device_service_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_clusters_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_return_shipping_label_result() :: %{
        "Status" => list(any())
      }
      
  """
  @type create_return_shipping_label_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_unlock_code_result() :: %{
        "UnlockCode" => String.t()
      }
      
  """
  @type get_job_unlock_code_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cluster_jobs_result() :: %{
        "JobListEntries" => list(job_list_entry()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_cluster_jobs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      wireless_connection() :: %{
        "IsWifiEnabled" => boolean()
      }
      
  """
  @type wireless_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_address_result() :: %{
        "Address" => address()
      }
      
  """
  @type describe_address_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pickup_details() :: %{
        "DevicePickupId" => String.t(),
        "Email" => String.t(),
        "IdentificationExpirationDate" => non_neg_integer(),
        "IdentificationIssuingOrg" => String.t(),
        "IdentificationNumber" => String.t(),
        "Name" => String.t(),
        "PhoneNumber" => String.t()
      }
      
  """
  @type pickup_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_clusters_result() :: %{
        "ClusterListEntries" => list(cluster_list_entry()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_clusters_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_job_result() :: %{
        "JobId" => String.t()
      }
      
  """
  @type create_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      return_shipping_label_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type return_shipping_label_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_job_shipment_state_request() :: %{
        required("JobId") => String.t(),
        required("ShipmentState") => list(any())
      }
      
  """
  @type update_job_shipment_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_cluster_result() :: %{}
      
  """
  @type cancel_cluster_result() :: %{}

  @typedoc """

  ## Example:
      
      update_job_result() :: %{}
      
  """
  @type update_job_result() :: %{}

  @typedoc """

  ## Example:
      
      ec2_request_failed_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type ec2_request_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dependent_service() :: %{
        "ServiceName" => list(any()),
        "ServiceVersion" => service_version()
      }
      
  """
  @type dependent_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notification() :: %{
        "DevicePickupSnsTopicARN" => String.t(),
        "JobStatesToNotify" => list(list(any())()),
        "NotifyAll" => boolean(),
        "SnsTopicARN" => String.t()
      }
      
  """
  @type notification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_software_updates_result() :: %{
        "UpdatesURI" => String.t()
      }
      
  """
  @type get_software_updates_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_long_term_pricing_request() :: %{
        optional("IsLongTermPricingAutoRenew") => boolean(),
        required("LongTermPricingType") => list(any()),
        required("SnowballType") => list(any())
      }
      
  """
  @type create_long_term_pricing_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tax_documents() :: %{
        "IND" => i_n_d_tax_documents()
      }
      
  """
  @type tax_documents() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_list_entry() :: %{
        "ClusterId" => String.t(),
        "ClusterState" => list(any()),
        "CreationDate" => non_neg_integer(),
        "Description" => String.t()
      }
      
  """
  @type cluster_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shipping_details() :: %{
        "InboundShipment" => shipment(),
        "OutboundShipment" => shipment(),
        "ShippingOption" => list(any())
      }
      
  """
  @type shipping_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_long_term_pricing_request() :: %{
        optional("IsLongTermPricingAutoRenew") => boolean(),
        optional("ReplacementJob") => String.t(),
        required("LongTermPricingId") => String.t()
      }
      
  """
  @type update_long_term_pricing_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      long_term_pricing_list_entry() :: %{
        "CurrentActiveJob" => String.t(),
        "IsLongTermPricingAutoRenew" => boolean(),
        "JobIds" => list(String.t()()),
        "LongTermPricingEndDate" => non_neg_integer(),
        "LongTermPricingId" => String.t(),
        "LongTermPricingStartDate" => non_neg_integer(),
        "LongTermPricingStatus" => String.t(),
        "LongTermPricingType" => list(any()),
        "ReplacementJob" => String.t(),
        "SnowballType" => list(any())
      }
      
  """
  @type long_term_pricing_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      address() :: %{
        "AddressId" => String.t(),
        "City" => String.t(),
        "Company" => String.t(),
        "Country" => String.t(),
        "IsRestricted" => boolean(),
        "Landmark" => String.t(),
        "Name" => String.t(),
        "PhoneNumber" => String.t(),
        "PostalCode" => String.t(),
        "PrefectureOrDistrict" => String.t(),
        "StateOrProvince" => String.t(),
        "Street1" => String.t(),
        "Street2" => String.t(),
        "Street3" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type address() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_k_s_on_device_service_configuration() :: %{
        "EKSAnywhereVersion" => String.t(),
        "KubernetesVersion" => String.t()
      }
      
  """
  @type e_k_s_on_device_service_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cluster_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ClusterId") => String.t()
      }
      
  """
  @type list_cluster_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_resource() :: %{
        "Ec2AmiResources" => list(ec2_ami_resource()()),
        "LambdaResources" => list(lambda_resource()()),
        "S3Resources" => list(s3_resource()())
      }
      
  """
  @type job_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_address_request() :: %{
        required("AddressId") => String.t()
      }
      
  """
  @type describe_address_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_logs() :: %{
        "JobCompletionReportURI" => String.t(),
        "JobFailureLogURI" => String.t(),
        "JobSuccessLogURI" => String.t()
      }
      
  """
  @type job_logs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_unlock_code_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type get_job_unlock_code_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_on_device_service_configuration() :: %{
        "FaultTolerance" => integer(),
        "ServiceSize" => integer(),
        "StorageLimit" => float(),
        "StorageUnit" => list(any())
      }
      
  """
  @type s3_on_device_service_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_return_shipping_label_request() :: %{
        optional("ShippingOption") => list(any()),
        required("JobId") => String.t()
      }
      
  """
  @type create_return_shipping_label_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_job_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_job_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_on_device_service() :: %{
        "ServiceName" => list(any()),
        "TransferOption" => list(any())
      }
      
  """
  @type target_on_device_service() :: %{String.t() => any()}

  @type cancel_cluster_errors() ::
          invalid_job_state_exception()
          | invalid_resource_exception()
          | kms_request_failed_exception()

  @type cancel_job_errors() ::
          invalid_job_state_exception()
          | invalid_resource_exception()
          | kms_request_failed_exception()

  @type create_address_errors() :: unsupported_address_exception() | invalid_address_exception()

  @type create_cluster_errors() ::
          ec2_request_failed_exception()
          | invalid_resource_exception()
          | kms_request_failed_exception()
          | invalid_input_combination_exception()

  @type create_job_errors() ::
          ec2_request_failed_exception()
          | invalid_resource_exception()
          | kms_request_failed_exception()
          | cluster_limit_exceeded_exception()
          | invalid_input_combination_exception()

  @type create_long_term_pricing_errors() :: invalid_resource_exception()

  @type create_return_shipping_label_errors() ::
          invalid_job_state_exception()
          | return_shipping_label_already_exists_exception()
          | invalid_resource_exception()
          | conflict_exception()
          | invalid_input_combination_exception()

  @type describe_address_errors() :: invalid_resource_exception()

  @type describe_addresses_errors() ::
          invalid_resource_exception() | invalid_next_token_exception()

  @type describe_cluster_errors() :: invalid_resource_exception()

  @type describe_job_errors() :: invalid_resource_exception()

  @type describe_return_shipping_label_errors() ::
          invalid_job_state_exception() | invalid_resource_exception() | conflict_exception()

  @type get_job_manifest_errors() :: invalid_job_state_exception() | invalid_resource_exception()

  @type get_job_unlock_code_errors() ::
          invalid_job_state_exception() | invalid_resource_exception()

  @type get_software_updates_errors() ::
          invalid_job_state_exception() | invalid_resource_exception()

  @type list_cluster_jobs_errors() ::
          invalid_resource_exception() | invalid_next_token_exception()

  @type list_clusters_errors() :: invalid_next_token_exception()

  @type list_compatible_images_errors() ::
          ec2_request_failed_exception() | invalid_next_token_exception()

  @type list_jobs_errors() :: invalid_next_token_exception()

  @type list_long_term_pricing_errors() ::
          invalid_resource_exception() | invalid_next_token_exception()

  @type list_pickup_locations_errors() :: invalid_resource_exception()

  @type list_service_versions_errors() ::
          invalid_resource_exception() | invalid_next_token_exception()

  @type update_cluster_errors() ::
          invalid_job_state_exception()
          | ec2_request_failed_exception()
          | invalid_resource_exception()
          | kms_request_failed_exception()
          | invalid_input_combination_exception()

  @type update_job_errors() ::
          invalid_job_state_exception()
          | ec2_request_failed_exception()
          | invalid_resource_exception()
          | kms_request_failed_exception()
          | cluster_limit_exceeded_exception()
          | invalid_input_combination_exception()

  @type update_job_shipment_state_errors() ::
          invalid_job_state_exception() | invalid_resource_exception()

  @type update_long_term_pricing_errors() :: invalid_resource_exception()

  def metadata do
    %{
      api_version: "2016-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "snowball",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Snowball",
      signature_version: "v4",
      signing_name: "snowball",
      target_prefix: "AWSIESnowballJobManagementService"
    }
  end

  @doc """
  Cancels a cluster job.

  You can only cancel a cluster job while it's in the
  `AwaitingQuorum` status. You'll have at least an hour after creating a cluster
  job to cancel it.
  """
  @spec cancel_cluster(map(), cancel_cluster_request(), list()) ::
          {:ok, cancel_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_cluster_errors()}
  def cancel_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelCluster", input, options)
  end

  @doc """
  Cancels the specified job.

  You can only cancel a job before its `JobState`
  value changes to `PreparingAppliance`. Requesting the `ListJobs` or
  `DescribeJob` action returns a job's `JobState` as part of the
  response element data returned.
  """
  @spec cancel_job(map(), cancel_job_request(), list()) ::
          {:ok, cancel_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_job_errors()}
  def cancel_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelJob", input, options)
  end

  @doc """
  Creates an address for a Snow device to be shipped to.

  In most regions,
  addresses are validated at the time of creation. The address you provide must be
  located
  within the serviceable area of your region. If the address is invalid or
  unsupported, then an
  exception is thrown. If providing an address as a JSON file through the
  `cli-input-json` option, include the full file path. For example,
  `--cli-input-json file://create-address.json`.
  """
  @spec create_address(map(), create_address_request(), list()) ::
          {:ok, create_address_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_address_errors()}
  def create_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAddress", input, options)
  end

  @doc """
  Creates an empty cluster.

  Each cluster supports five nodes. You use the `CreateJob` action separately to
  create the jobs for each of these nodes. The
  cluster does not ship until these five node jobs have been created.
  """
  @spec create_cluster(map(), create_cluster_request(), list()) ::
          {:ok, create_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cluster_errors()}
  def create_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCluster", input, options)
  end

  @doc """
  Creates a job to import or export data between Amazon S3 and your on-premises
  data
  center.

  Your Amazon Web Services account must have the right trust policies and
  permissions in
  place to create a job for a Snow device. If you're creating a job for a node in
  a cluster, you
  only need to provide the `clusterId` value; the other job attributes are
  inherited
  from the cluster.

  Only the Snowball; Edge device type is supported when ordering clustered jobs.

  The device capacity is optional.

  Availability of device types differ by Amazon Web Services Region. For more
  information
  about Region availability, see [Amazon Web Services Regional Services](https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/?p=ngi&loc=4).

  ## Snow Family devices and their capacities.

    *
  Device type: ## SNC1_SSD

      *
  Capacity: T14

      *
  Description: Snowcone

    *
  Device type: ## SNC1_HDD

      *
  Capacity: T8

      *
  Description: Snowcone

    *
  Device type: ## EDGE_S

      *
  Capacity: T98

      *
  Description: Snowball Edge Storage Optimized for data transfer only

    *
  Device type: ## EDGE_CG

      *
  Capacity: T42

      *
  Description: Snowball Edge Compute Optimized with GPU

    *
  Device type: ## EDGE_C

      *
  Capacity: T42

      *
  Description: Snowball Edge Compute Optimized without GPU

    *
  Device type: ## EDGE

      *
  Capacity: T100

      *
  Description: Snowball Edge Storage Optimized with EC2 Compute

  This device is replaced with T98.

    *
  Device type: ## STANDARD

      *
  Capacity: T50

      *
  Description: Original Snowball device

  This device is only available in the Ningxia, Beijing, and Singapore Amazon Web
  Services Region

    *
  Device type: ## STANDARD

      *
  Capacity: T80

      *
  Description: Original Snowball device

  This device is only available in the Ningxia, Beijing, and Singapore Amazon Web
  Services Region.

    *
  Snow Family device type: ## RACK_5U_C

      *
  Capacity: T13

      *
  Description: Snowblade.

    *
  Device type: ## V3_5S

      *
  Capacity: T240

      *
  Description: Snowball Edge Storage Optimized 210TB
  """
  @spec create_job(map(), create_job_request(), list()) ::
          {:ok, create_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_job_errors()}
  def create_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateJob", input, options)
  end

  @doc """
  Creates a job with the long-term usage option for a device.

  The long-term usage is a
  1-year or 3-year long-term pricing type for the device. You are billed upfront,
  and Amazon Web Services provides discounts for long-term pricing.
  """
  @spec create_long_term_pricing(map(), create_long_term_pricing_request(), list()) ::
          {:ok, create_long_term_pricing_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_long_term_pricing_errors()}
  def create_long_term_pricing(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLongTermPricing", input, options)
  end

  @doc """
  Creates a shipping label that will be used to return the Snow device to Amazon
  Web Services.
  """
  @spec create_return_shipping_label(map(), create_return_shipping_label_request(), list()) ::
          {:ok, create_return_shipping_label_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_return_shipping_label_errors()}
  def create_return_shipping_label(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReturnShippingLabel", input, options)
  end

  @doc """
  Takes an `AddressId` and returns specific details about that address in the
  form of an `Address` object.
  """
  @spec describe_address(map(), describe_address_request(), list()) ::
          {:ok, describe_address_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_address_errors()}
  def describe_address(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAddress", input, options)
  end

  @doc """
  Returns a specified number of `ADDRESS` objects.

  Calling this API in one of
  the US regions will return addresses from the list of all addresses associated
  with this
  account in all US regions.
  """
  @spec describe_addresses(map(), describe_addresses_request(), list()) ::
          {:ok, describe_addresses_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_addresses_errors()}
  def describe_addresses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAddresses", input, options)
  end

  @doc """
  Returns information about a specific cluster including shipping information,
  cluster
  status, and other important metadata.
  """
  @spec describe_cluster(map(), describe_cluster_request(), list()) ::
          {:ok, describe_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_cluster_errors()}
  def describe_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCluster", input, options)
  end

  @doc """
  Returns information about a specific job including shipping information, job
  status,
  and other important metadata.
  """
  @spec describe_job(map(), describe_job_request(), list()) ::
          {:ok, describe_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_job_errors()}
  def describe_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeJob", input, options)
  end

  @doc """
  Information on the shipping label of a Snow device that is being returned to
  Amazon Web Services.
  """
  @spec describe_return_shipping_label(map(), describe_return_shipping_label_request(), list()) ::
          {:ok, describe_return_shipping_label_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_return_shipping_label_errors()}
  def describe_return_shipping_label(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReturnShippingLabel", input, options)
  end

  @doc """
  Returns a link to an Amazon S3 presigned URL for the manifest file associated
  with the
  specified `JobId` value.

  You can access the manifest file for up to 60 minutes
  after this request has been made. To access the manifest file after 60 minutes
  have passed,
  you'll have to make another call to the `GetJobManifest` action.

  The manifest is an encrypted file that you can download after your job enters
  the
  `WithCustomer` status. This is the only valid status for calling this API as the
  manifest and `UnlockCode` code value are used for securing your device and
  should
  only be used when you have the device. The manifest is decrypted by using the
  `UnlockCode` code value, when you pass both values to the Snow device through
  the
  Snowball client when the client is started for the first time.

  As a best practice, we recommend that you don't save a copy of an
  `UnlockCode` value in the same location as the manifest file for that job.
  Saving
  these separately helps prevent unauthorized parties from gaining access to the
  Snow device
  associated with that job.

  The credentials of a given job, including its manifest file and unlock code,
  expire 360
  days after the job is created.
  """
  @spec get_job_manifest(map(), get_job_manifest_request(), list()) ::
          {:ok, get_job_manifest_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_job_manifest_errors()}
  def get_job_manifest(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobManifest", input, options)
  end

  @doc """
  Returns the `UnlockCode` code value for the specified job.

  A particular
  `UnlockCode` value can be accessed for up to 360 days after the associated job
  has been created.

  The `UnlockCode` value is a 29-character code with 25 alphanumeric
  characters and 4 hyphens. This code is used to decrypt the manifest file when it
  is passed
  along with the manifest to the Snow device through the Snowball client when the
  client is
  started for the first time. The only valid status for calling this API is
  `WithCustomer` as the manifest and `Unlock` code values are used for
  securing your device and should only be used when you have the device.

  As a best practice, we recommend that you don't save a copy of the
  `UnlockCode` in the same location as the manifest file for that job. Saving
  these
  separately helps prevent unauthorized parties from gaining access to the Snow
  device
  associated with that job.
  """
  @spec get_job_unlock_code(map(), get_job_unlock_code_request(), list()) ::
          {:ok, get_job_unlock_code_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_job_unlock_code_errors()}
  def get_job_unlock_code(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobUnlockCode", input, options)
  end

  @doc """
  Returns information about the Snow Family service limit for your account, and
  also the
  number of Snow devices your account has in use.

  The default service limit for the number of Snow devices that you can have at
  one time
  is 1. If you want to increase your service limit, contact Amazon Web Services
  Support.
  """
  @spec get_snowball_usage(map(), get_snowball_usage_request(), list()) ::
          {:ok, get_snowball_usage_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_snowball_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSnowballUsage", input, options)
  end

  @doc """
  Returns an Amazon S3 presigned URL for an update file associated with a
  specified
  `JobId`.
  """
  @spec get_software_updates(map(), get_software_updates_request(), list()) ::
          {:ok, get_software_updates_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_software_updates_errors()}
  def get_software_updates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSoftwareUpdates", input, options)
  end

  @doc """
  Returns an array of `JobListEntry` objects of the specified length.

  Each
  `JobListEntry` object is for a job in the specified cluster and contains a job's
  state, a job's ID, and other information.
  """
  @spec list_cluster_jobs(map(), list_cluster_jobs_request(), list()) ::
          {:ok, list_cluster_jobs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_cluster_jobs_errors()}
  def list_cluster_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListClusterJobs", input, options)
  end

  @doc """
  Returns an array of `ClusterListEntry` objects of the specified length.

  Each
  `ClusterListEntry` object contains a cluster's state, a cluster's ID, and other
  important status information.
  """
  @spec list_clusters(map(), list_clusters_request(), list()) ::
          {:ok, list_clusters_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_clusters_errors()}
  def list_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListClusters", input, options)
  end

  @doc """
  This action returns a list of the different Amazon EC2-compatible Amazon Machine
  Images (AMIs)
  that are owned by your Amazon Web Services accountthat would be supported for
  use on a Snow
  device.

  Currently, supported AMIs are based on the Amazon Linux-2, Ubuntu 20.04 LTS -
  Focal, or Ubuntu 22.04 LTS - Jammy images, available on the
  Amazon Web Services Marketplace. Ubuntu 16.04 LTS - Xenial (HVM) images are no
  longer supported in the Market, but still supported for use on devices through
  Amazon EC2 VM Import/Export and running locally in AMIs.
  """
  @spec list_compatible_images(map(), list_compatible_images_request(), list()) ::
          {:ok, list_compatible_images_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_compatible_images_errors()}
  def list_compatible_images(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCompatibleImages", input, options)
  end

  @doc """
  Returns an array of `JobListEntry` objects of the specified length.

  Each
  `JobListEntry` object contains a job's state, a job's ID, and a value that
  indicates whether the job is a job part, in the case of export jobs. Calling
  this API action
  in one of the US regions will return jobs from the list of all jobs associated
  with this
  account in all US regions.
  """
  @spec list_jobs(map(), list_jobs_request(), list()) ::
          {:ok, list_jobs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_jobs_errors()}
  def list_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListJobs", input, options)
  end

  @doc """
  Lists all long-term pricing types.
  """
  @spec list_long_term_pricing(map(), list_long_term_pricing_request(), list()) ::
          {:ok, list_long_term_pricing_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_long_term_pricing_errors()}
  def list_long_term_pricing(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLongTermPricing", input, options)
  end

  @doc """
  A list of locations from which the customer can choose to pickup a device.
  """
  @spec list_pickup_locations(map(), list_pickup_locations_request(), list()) ::
          {:ok, list_pickup_locations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pickup_locations_errors()}
  def list_pickup_locations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPickupLocations", input, options)
  end

  @doc """
  Lists all supported versions for Snow on-device services.

  Returns an
  array of `ServiceVersion` object containing the supported versions for a
  particular service.
  """
  @spec list_service_versions(map(), list_service_versions_request(), list()) ::
          {:ok, list_service_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_versions_errors()}
  def list_service_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceVersions", input, options)
  end

  @doc """
  While a cluster's `ClusterState` value is in the `AwaitingQuorum`
  state, you can update some of the information associated with a cluster.

  Once the cluster
  changes to a different job state, usually 60 minutes after the cluster being
  created, this
  action is no longer available.
  """
  @spec update_cluster(map(), update_cluster_request(), list()) ::
          {:ok, update_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_cluster_errors()}
  def update_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCluster", input, options)
  end

  @doc """
  While a job's `JobState` value is `New`, you can update some of
  the information associated with a job.

  Once the job changes to a different job state, usually
  within 60 minutes of the job being created, this action is no longer available.
  """
  @spec update_job(map(), update_job_request(), list()) ::
          {:ok, update_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_job_errors()}
  def update_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateJob", input, options)
  end

  @doc """
  Updates the state when a shipment state changes to a different state.
  """
  @spec update_job_shipment_state(map(), update_job_shipment_state_request(), list()) ::
          {:ok, update_job_shipment_state_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_job_shipment_state_errors()}
  def update_job_shipment_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateJobShipmentState", input, options)
  end

  @doc """
  Updates the long-term pricing type.
  """
  @spec update_long_term_pricing(map(), update_long_term_pricing_request(), list()) ::
          {:ok, update_long_term_pricing_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_long_term_pricing_errors()}
  def update_long_term_pricing(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLongTermPricing", input, options)
  end
end
