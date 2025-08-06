# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Lightsail do
  @moduledoc """
  Amazon Lightsail is the easiest way to get started with Amazon Web Services
  (Amazon Web Services) for developers who need to build websites or web
  applications.

  It includes
  everything you need to launch your project quickly - instances (virtual private
  servers),
  container services, storage buckets, managed databases, SSD-based block storage,
  static IP
  addresses, load balancers, content delivery network (CDN) distributions, DNS
  management of
  registered domains, and resource snapshots (backups) - for a low, predictable
  monthly
  price.

  You can manage your Lightsail resources using the Lightsail console, Lightsail
  API,
  Command Line Interface (CLI), or SDKs. For more information about Lightsail
  concepts and tasks, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/lightsail-how-to-set-up-and-configure-aws-cli).

  This API Reference provides detailed information about the actions, data types,
  parameters, and errors of the Lightsail service. For more information about the
  supported
  Amazon Web Services Regions, endpoints, and service quotas of the Lightsail
  service, see
  [Amazon Lightsail Endpoints and Quotas](https://docs.aws.amazon.com/general/latest/gr/lightsail.html) in the
  *Amazon Web Services General Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      attach_disk_request() :: %{
        optional("autoMounting") => boolean(),
        required("diskName") => String.t() | atom(),
        required("diskPath") => String.t() | atom(),
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type attach_disk_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_instances_from_snapshot_request() :: %{
        optional("addOns") => list(add_on_request()),
        optional("attachedDiskMapping") => map(),
        optional("instanceSnapshotName") => String.t() | atom(),
        optional("ipAddressType") => list(any()),
        optional("keyPairName") => String.t() | atom(),
        optional("restoreDate") => String.t() | atom(),
        optional("sourceInstanceName") => String.t() | atom(),
        optional("tags") => list(tag()),
        optional("useLatestRestorableAutoSnapshot") => boolean(),
        optional("userData") => String.t() | atom(),
        required("availabilityZone") => String.t() | atom(),
        required("bundleId") => String.t() | atom(),
        required("instanceNames") => list(String.t() | atom())
      }
      
  """
  @type create_instances_from_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_bucket_bundle_request() :: %{
        required("bucketName") => String.t() | atom(),
        required("bundleId") => String.t() | atom()
      }
      
  """
  @type update_bucket_bundle_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_container_service_request() :: %{}
      
  """
  @type delete_container_service_request() :: %{}

  @typedoc """

  ## Example:
      
      operation() :: %{
        "createdAt" => non_neg_integer(),
        "errorCode" => String.t() | atom(),
        "errorDetails" => String.t() | atom(),
        "id" => String.t() | atom(),
        "isTerminal" => boolean(),
        "location" => resource_location(),
        "operationDetails" => String.t() | atom(),
        "operationType" => list(any()),
        "resourceName" => String.t() | atom(),
        "resourceType" => list(any()),
        "status" => list(any()),
        "statusChangedAt" => non_neg_integer()
      }
      
  """
  @type operation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_container_service_deployment_request() :: %{
        optional("containers") => map(),
        optional("publicEndpoint") => endpoint_request()
      }
      
  """
  @type create_container_service_deployment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_distribution_latest_cache_reset_request() :: %{
        optional("distributionName") => String.t() | atom()
      }
      
  """
  @type get_distribution_latest_cache_reset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disable_add_on_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type disable_add_on_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_service_registry_login() :: %{
        "expiresAt" => non_neg_integer(),
        "password" => String.t() | atom(),
        "registry" => String.t() | atom(),
        "username" => String.t() | atom()
      }
      
  """
  @type container_service_registry_login() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      distribution_bundle() :: %{
        "bundleId" => String.t() | atom(),
        "isActive" => boolean(),
        "name" => String.t() | atom(),
        "price" => float(),
        "transferPerMonthInGb" => integer()
      }
      
  """
  @type distribution_bundle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_disk_snapshot_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_disk_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_container_image_request() :: %{
        required("digest") => String.t() | atom(),
        required("label") => String.t() | atom()
      }
      
  """
  @type register_container_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pending_maintenance_action() :: %{
        "action" => String.t() | atom(),
        "currentApplyDate" => non_neg_integer(),
        "description" => String.t() | atom()
      }
      
  """
  @type pending_maintenance_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_domain_request() :: %{
        required("domainName") => String.t() | atom()
      }
      
  """
  @type get_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_resource_access_for_bucket_request() :: %{
        required("access") => list(any()),
        required("bucketName") => String.t() | atom(),
        required("resourceName") => String.t() | atom()
      }
      
  """
  @type set_resource_access_for_bucket_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_contact_method_request() :: %{
        required("protocol") => list(any())
      }
      
  """
  @type delete_contact_method_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_regions_result() :: %{
        "regions" => list(region())
      }
      
  """
  @type get_regions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_alarm_request() :: %{
        required("alarmName") => String.t() | atom(),
        required("state") => list(any())
      }
      
  """
  @type test_alarm_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      contact_method() :: %{
        "arn" => String.t() | atom(),
        "contactEndpoint" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "protocol" => list(any()),
        "resourceType" => list(any()),
        "status" => list(any()),
        "supportCode" => String.t() | atom()
      }
      
  """
  @type contact_method() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enable_add_on_request() :: %{
        required("addOnRequest") => add_on_request(),
        required("resourceName") => String.t() | atom()
      }
      
  """
  @type enable_add_on_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disk_snapshot_info() :: %{
        "sizeInGb" => integer()
      }
      
  """
  @type disk_snapshot_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dns_record_creation_state() :: %{
        "code" => list(any()),
        "message" => String.t() | atom()
      }
      
  """
  @type dns_record_creation_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_load_balancer_result() :: %{
        "loadBalancer" => load_balancer()
      }
      
  """
  @type get_load_balancer_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        optional("resourceArn") => String.t() | atom(),
        required("resourceName") => String.t() | atom(),
        required("tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_static_ip_result() :: %{
        "staticIp" => static_ip()
      }
      
  """
  @type get_static_ip_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_instance_public_ports_request() :: %{
        required("instanceName") => String.t() | atom(),
        required("portInfos") => list(port_info())
      }
      
  """
  @type put_instance_public_ports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_export_snapshot_records_result() :: %{
        "exportSnapshotRecords" => list(export_snapshot_record()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_export_snapshot_records_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_tls_policy() :: %{
        "ciphers" => list(String.t() | atom()),
        "description" => String.t() | atom(),
        "isDefault" => boolean(),
        "name" => String.t() | atom(),
        "protocols" => list(String.t() | atom())
      }
      
  """
  @type load_balancer_tls_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_rules() :: %{
        "allowPublicOverrides" => boolean(),
        "getObject" => list(any())
      }
      
  """
  @type access_rules() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container() :: %{
        "command" => list(String.t() | atom()),
        "environment" => map(),
        "image" => String.t() | atom(),
        "ports" => map()
      }
      
  """
  @type container() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      domain_validation_record() :: %{
        "dnsRecordCreationState" => dns_record_creation_state(),
        "domainName" => String.t() | atom(),
        "resourceRecord" => resource_record(),
        "validationStatus" => list(any())
      }
      
  """
  @type domain_validation_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_container_service_registry_login_result() :: %{
        "registryLogin" => container_service_registry_login()
      }
      
  """
  @type create_container_service_registry_login_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_instances_to_load_balancer_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type attach_instances_to_load_balancer_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_instance_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type start_instance_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      send_contact_method_verification_request() :: %{
        required("protocol") => list(any())
      }
      
  """
  @type send_contact_method_verification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      availability_zone() :: %{
        "state" => String.t() | atom(),
        "zoneName" => String.t() | atom()
      }
      
  """
  @type availability_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_alarm_request() :: %{
        optional("contactProtocols") => list(list(any())()),
        optional("datapointsToAlarm") => integer(),
        optional("notificationEnabled") => boolean(),
        optional("notificationTriggers") => list(list(any())()),
        optional("treatMissingData") => list(any()),
        required("alarmName") => String.t() | atom(),
        required("comparisonOperator") => list(any()),
        required("evaluationPeriods") => integer(),
        required("metricName") => list(any()),
        required("monitoredResourceName") => String.t() | atom(),
        required("threshold") => float()
      }
      
  """
  @type put_alarm_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_on() :: %{
        "duration" => String.t() | atom(),
        "name" => String.t() | atom(),
        "nextSnapshotTimeOfDay" => String.t() | atom(),
        "snapshotTimeOfDay" => String.t() | atom(),
        "status" => String.t() | atom(),
        "threshold" => String.t() | atom()
      }
      
  """
  @type add_on() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_load_balancer_tls_certificate_request() :: %{
        optional("force") => boolean(),
        required("certificateName") => String.t() | atom(),
        required("loadBalancerName") => String.t() | atom()
      }
      
  """
  @type delete_load_balancer_tls_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_instances_from_snapshot_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_instances_from_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_load_balancer_request() :: %{
        required("loadBalancerName") => String.t() | atom()
      }
      
  """
  @type get_load_balancer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_regions_request() :: %{
        optional("includeAvailabilityZones") => boolean(),
        optional("includeRelationalDatabaseAvailabilityZones") => boolean()
      }
      
  """
  @type get_regions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      region_setup_in_progress_exception() :: %{
        "code" => String.t() | atom(),
        "docs" => String.t() | atom(),
        "message" => String.t() | atom(),
        "tip" => String.t() | atom()
      }
      
  """
  @type region_setup_in_progress_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type untag_resource_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_port_states_result() :: %{
        "portStates" => list(instance_port_state())
      }
      
  """
  @type get_instance_port_states_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_master_user_password_result() :: %{
        "createdAt" => non_neg_integer(),
        "masterUserPassword" => String.t() | atom()
      }
      
  """
  @type get_relational_database_master_user_password_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_relational_database_request() :: %{
        optional("applyImmediately") => boolean(),
        optional("caCertificateIdentifier") => String.t() | atom(),
        optional("disableBackupRetention") => boolean(),
        optional("enableBackupRetention") => boolean(),
        optional("masterUserPassword") => String.t() | atom(),
        optional("preferredBackupWindow") => String.t() | atom(),
        optional("preferredMaintenanceWindow") => String.t() | atom(),
        optional("publiclyAccessible") => boolean(),
        optional("relationalDatabaseBlueprintId") => String.t() | atom(),
        optional("rotateMasterUserPassword") => boolean(),
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type update_relational_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_service_health_check_config() :: %{
        "healthyThreshold" => integer(),
        "intervalSeconds" => integer(),
        "path" => String.t() | atom(),
        "successCodes" => String.t() | atom(),
        "timeoutSeconds" => integer(),
        "unhealthyThreshold" => integer()
      }
      
  """
  @type container_service_health_check_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detach_instances_from_load_balancer_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type detach_instances_from_load_balancer_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_bucket_bundles_result() :: %{
        "bundles" => list(bucket_bundle())
      }
      
  """
  @type get_bucket_bundles_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_load_balancer_attribute_request() :: %{
        required("attributeName") => list(any()),
        required("attributeValue") => String.t() | atom(),
        required("loadBalancerName") => String.t() | atom()
      }
      
  """
  @type update_load_balancer_attribute_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_certificate_result() :: %{
        "certificate" => certificate_summary(),
        "operations" => list(operation())
      }
      
  """
  @type create_certificate_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_tls_certificate_domain_validation_record() :: %{
        "dnsRecordCreationState" => load_balancer_tls_certificate_dns_record_creation_state(),
        "domainName" => String.t() | atom(),
        "name" => String.t() | atom(),
        "type" => String.t() | atom(),
        "validationStatus" => list(any()),
        "value" => String.t() | atom()
      }
      
  """
  @type load_balancer_tls_certificate_domain_validation_record() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      lightsail_distribution() :: %{
        "ableToUpdateBundle" => boolean(),
        "alternativeDomainNames" => list(String.t() | atom()),
        "arn" => String.t() | atom(),
        "bundleId" => String.t() | atom(),
        "cacheBehaviorSettings" => cache_settings(),
        "cacheBehaviors" => list(cache_behavior_per_path()),
        "certificateName" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "defaultCacheBehavior" => cache_behavior(),
        "domainName" => String.t() | atom(),
        "ipAddressType" => list(any()),
        "isEnabled" => boolean(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "origin" => origin(),
        "originPublicDNS" => String.t() | atom(),
        "resourceType" => list(any()),
        "status" => String.t() | atom(),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag()),
        "viewerMinimumTlsProtocolVersion" => String.t() | atom()
      }
      
  """
  @type lightsail_distribution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_service_e_c_r_image_puller_role_request() :: %{
        "isActive" => boolean()
      }
      
  """
  @type container_service_e_c_r_image_puller_role_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_services_request() :: %{
        optional("serviceName") => String.t() | atom()
      }
      
  """
  @type get_container_services_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_formation_stack_record_source_info() :: %{
        "arn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceType" => list(any())
      }
      
  """
  @type cloud_formation_stack_record_source_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_tls_certificate() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "domainName" => String.t() | atom(),
        "domainValidationRecords" => list(load_balancer_tls_certificate_domain_validation_record()),
        "failureReason" => list(any()),
        "isAttached" => boolean(),
        "issuedAt" => non_neg_integer(),
        "issuer" => String.t() | atom(),
        "keyAlgorithm" => String.t() | atom(),
        "loadBalancerName" => String.t() | atom(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "notAfter" => non_neg_integer(),
        "notBefore" => non_neg_integer(),
        "renewalSummary" => load_balancer_tls_certificate_renewal_summary(),
        "resourceType" => list(any()),
        "revocationReason" => list(any()),
        "revokedAt" => non_neg_integer(),
        "serial" => String.t() | atom(),
        "signatureAlgorithm" => String.t() | atom(),
        "status" => list(any()),
        "subject" => String.t() | atom(),
        "subjectAlternativeNames" => list(String.t() | atom()),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag())
      }
      
  """
  @type load_balancer_tls_certificate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_instance_request() :: %{
        optional("force") => boolean(),
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type stop_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_bucket_bundles_request() :: %{
        optional("includeInactive") => boolean()
      }
      
  """
  @type get_bucket_bundles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_distribution_result() :: %{
        "operation" => operation()
      }
      
  """
  @type delete_distribution_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_load_balancer_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_load_balancer_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_instance_snapshot_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_instance_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_alarm_request() :: %{
        required("alarmName") => String.t() | atom()
      }
      
  """
  @type delete_alarm_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_events_request() :: %{
        optional("durationInMinutes") => integer(),
        optional("pageToken") => String.t() | atom(),
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type get_relational_database_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_instance_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type stop_instance_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_load_balancer_tls_certificate_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_load_balancer_tls_certificate_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_disk_snapshot_request() :: %{
        optional("diskName") => String.t() | atom(),
        optional("instanceName") => String.t() | atom(),
        optional("tags") => list(tag()),
        required("diskSnapshotName") => String.t() | atom()
      }
      
  """
  @type create_disk_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      relational_database() :: %{
        "arn" => String.t() | atom(),
        "backupRetentionEnabled" => boolean(),
        "caCertificateIdentifier" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "engine" => String.t() | atom(),
        "engineVersion" => String.t() | atom(),
        "hardware" => relational_database_hardware(),
        "latestRestorableTime" => non_neg_integer(),
        "location" => resource_location(),
        "masterDatabaseName" => String.t() | atom(),
        "masterEndpoint" => relational_database_endpoint(),
        "masterUsername" => String.t() | atom(),
        "name" => String.t() | atom(),
        "parameterApplyStatus" => String.t() | atom(),
        "pendingMaintenanceActions" => list(pending_maintenance_action()),
        "pendingModifiedValues" => pending_modified_relational_database_values(),
        "preferredBackupWindow" => String.t() | atom(),
        "preferredMaintenanceWindow" => String.t() | atom(),
        "publiclyAccessible" => boolean(),
        "relationalDatabaseBlueprintId" => String.t() | atom(),
        "relationalDatabaseBundleId" => String.t() | atom(),
        "resourceType" => list(any()),
        "secondaryAvailabilityZone" => String.t() | atom(),
        "state" => String.t() | atom(),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag())
      }
      
  """
  @type relational_database() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_g_ui_session_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type stop_g_ui_session_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_snapshots_result() :: %{
        "instanceSnapshots" => list(instance_snapshot()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_instance_snapshots_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_bucket_access_key_request() :: %{
        required("bucketName") => String.t() | atom()
      }
      
  """
  @type create_bucket_access_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_disk_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_disk_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_distributions_request() :: %{
        optional("distributionName") => String.t() | atom(),
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_distributions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      alarm() :: %{
        "arn" => String.t() | atom(),
        "comparisonOperator" => list(any()),
        "contactProtocols" => list(list(any())()),
        "createdAt" => non_neg_integer(),
        "datapointsToAlarm" => integer(),
        "evaluationPeriods" => integer(),
        "location" => resource_location(),
        "metricName" => list(any()),
        "monitoredResourceInfo" => monitored_resource_info(),
        "name" => String.t() | atom(),
        "notificationEnabled" => boolean(),
        "notificationTriggers" => list(list(any())()),
        "period" => integer(),
        "resourceType" => list(any()),
        "state" => list(any()),
        "statistic" => list(any()),
        "supportCode" => String.t() | atom(),
        "threshold" => float(),
        "treatMissingData" => list(any()),
        "unit" => list(any())
      }
      
  """
  @type alarm() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_operations_result() :: %{
        "nextPageToken" => String.t() | atom(),
        "operations" => list(operation())
      }
      
  """
  @type get_operations_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cost_estimate_request() :: %{
        required("endTime") => non_neg_integer(),
        required("resourceName") => String.t() | atom(),
        required("startTime") => non_neg_integer()
      }
      
  """
  @type get_cost_estimate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_relational_database_request() :: %{
        optional("finalRelationalDatabaseSnapshotName") => String.t() | atom(),
        optional("skipFinalSnapshot") => boolean(),
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type delete_relational_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_static_ip_request() :: %{
        required("staticIpName") => String.t() | atom()
      }
      
  """
  @type get_static_ip_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unauthenticated_exception() :: %{
        "code" => String.t() | atom(),
        "docs" => String.t() | atom(),
        "message" => String.t() | atom(),
        "tip" => String.t() | atom()
      }
      
  """
  @type unauthenticated_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_container_service_request() :: %{
        optional("deployment") => container_service_deployment_request(),
        optional("privateRegistryAccess") => private_registry_access_request(),
        optional("publicDomainNames") => map(),
        optional("tags") => list(tag()),
        required("power") => list(any()),
        required("scale") => integer(),
        required("serviceName") => String.t() | atom()
      }
      
  """
  @type create_container_service_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_relational_database_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type stop_relational_database_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_port_state() :: %{
        "cidrListAliases" => list(String.t() | atom()),
        "cidrs" => list(String.t() | atom()),
        "fromPort" => integer(),
        "ipv6Cidrs" => list(String.t() | atom()),
        "protocol" => list(any()),
        "state" => list(any()),
        "toPort" => integer()
      }
      
  """
  @type instance_port_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_domain_result() :: %{
        "domain" => domain()
      }
      
  """
  @type get_domain_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_auto_snapshots_result() :: %{
        "autoSnapshots" => list(auto_snapshot_details()),
        "resourceName" => String.t() | atom(),
        "resourceType" => list(any())
      }
      
  """
  @type get_auto_snapshots_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_instance_snapshot_request() :: %{
        optional("tags") => list(tag()),
        required("instanceName") => String.t() | atom(),
        required("instanceSnapshotName") => String.t() | atom()
      }
      
  """
  @type create_instance_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_key_pair_result() :: %{
        "keyPair" => key_pair()
      }
      
  """
  @type get_key_pair_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_key_pair_result() :: %{
        "operation" => operation()
      }
      
  """
  @type delete_key_pair_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      setup_history() :: %{
        "executionDetails" => list(setup_execution_details()),
        "operationId" => String.t() | atom(),
        "request" => setup_request(),
        "resource" => setup_history_resource(),
        "status" => list(any())
      }
      
  """
  @type setup_history() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_service_deployment_request() :: %{
        "containers" => map(),
        "publicEndpoint" => endpoint_request()
      }
      
  """
  @type container_service_deployment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_auto_snapshots_request() :: %{
        required("resourceName") => String.t() | atom()
      }
      
  """
  @type get_auto_snapshots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_relational_database_snapshot_request() :: %{
        required("relationalDatabaseSnapshotName") => String.t() | atom()
      }
      
  """
  @type delete_relational_database_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_service_metric_data_result() :: %{
        "metricData" => list(metric_datapoint()),
        "metricName" => list(any())
      }
      
  """
  @type get_container_service_metric_data_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      send_contact_method_verification_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type send_contact_method_verification_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_api_metadata_result() :: %{
        "metadata" => list(map())
      }
      
  """
  @type get_container_api_metadata_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_ip_address_type_request() :: %{
        optional("acceptBundleUpdate") => boolean(),
        required("ipAddressType") => list(any()),
        required("resourceName") => String.t() | atom(),
        required("resourceType") => list(any())
      }
      
  """
  @type set_ip_address_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_g_ui_session_request() :: %{
        required("resourceName") => String.t() | atom()
      }
      
  """
  @type stop_g_ui_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      domain() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "domainEntries" => list(domain_entry()),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "registeredDomainDelegationInfo" => registered_domain_delegation_info(),
        "resourceType" => list(any()),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag())
      }
      
  """
  @type domain() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_load_balancer_request() :: %{
        required("loadBalancerName") => String.t() | atom()
      }
      
  """
  @type delete_load_balancer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_buckets_request() :: %{
        optional("bucketName") => String.t() | atom(),
        optional("includeConnectedResources") => boolean(),
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_buckets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bucket_state() :: %{
        "code" => String.t() | atom(),
        "message" => String.t() | atom()
      }
      
  """
  @type bucket_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_disk_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type attach_disk_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_relational_database_request() :: %{
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type start_relational_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_bucket_bundle_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type update_bucket_bundle_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_instance_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type reboot_instance_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_disk_snapshots_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_disk_snapshots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reset_distribution_cache_request() :: %{
        optional("distributionName") => String.t() | atom()
      }
      
  """
  @type reset_distribution_cache_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_service_power() :: %{
        "cpuCount" => float(),
        "isActive" => boolean(),
        "name" => String.t() | atom(),
        "powerId" => String.t() | atom(),
        "price" => float(),
        "ramSizeInGb" => float()
      }
      
  """
  @type container_service_power() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_behavior_per_path() :: %{
        "behavior" => list(any()),
        "path" => String.t() | atom()
      }
      
  """
  @type cache_behavior_per_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_buckets_result() :: %{
        "accountLevelBpaSync" => account_level_bpa_sync(),
        "buckets" => list(bucket()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_buckets_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_domain_result() :: %{
        "operation" => operation()
      }
      
  """
  @type create_domain_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_relational_database_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_relational_database_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_load_balancer_tls_certificate_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type attach_load_balancer_tls_certificate_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_disk_request() :: %{
        optional("forceDeleteAddOns") => boolean(),
        required("diskName") => String.t() | atom()
      }
      
  """
  @type delete_disk_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reset_distribution_cache_result() :: %{
        "createTime" => non_neg_integer(),
        "operation" => operation(),
        "status" => String.t() | atom()
      }
      
  """
  @type reset_distribution_cache_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_load_balancer_tls_certificates_result() :: %{
        "tlsCertificates" => list(load_balancer_tls_certificate())
      }
      
  """
  @type get_load_balancer_tls_certificates_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_level_bpa_sync() :: %{
        "bpaImpactsLightsail" => boolean(),
        "lastSyncedAt" => non_neg_integer(),
        "message" => list(any()),
        "status" => list(any())
      }
      
  """
  @type account_level_bpa_sync() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_contact_method_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_contact_method_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_relational_database_request() :: %{
        optional("availabilityZone") => String.t() | atom(),
        optional("masterUserPassword") => String.t() | atom(),
        optional("preferredBackupWindow") => String.t() | atom(),
        optional("preferredMaintenanceWindow") => String.t() | atom(),
        optional("publiclyAccessible") => boolean(),
        optional("tags") => list(tag()),
        required("masterDatabaseName") => String.t() | atom(),
        required("masterUsername") => String.t() | atom(),
        required("relationalDatabaseBlueprintId") => String.t() | atom(),
        required("relationalDatabaseBundleId") => String.t() | atom(),
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type create_relational_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_log_events_result() :: %{
        "nextBackwardToken" => String.t() | atom(),
        "nextForwardToken" => String.t() | atom(),
        "resourceLogEvents" => list(log_event())
      }
      
  """
  @type get_relational_database_log_events_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      renewal_summary() :: %{
        "domainValidationRecords" => list(domain_validation_record()),
        "renewalStatus" => list(any()),
        "renewalStatusReason" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type renewal_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_distribution_request() :: %{
        optional("cacheBehaviorSettings") => cache_settings(),
        optional("cacheBehaviors") => list(cache_behavior_per_path()),
        optional("certificateName") => String.t() | atom(),
        optional("ipAddressType") => list(any()),
        optional("tags") => list(tag()),
        optional("viewerMinimumTlsProtocolVersion") => list(any()),
        required("bundleId") => String.t() | atom(),
        required("defaultCacheBehavior") => cache_behavior(),
        required("distributionName") => String.t() | atom(),
        required("origin") => input_origin()
      }
      
  """
  @type create_distribution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_instances_request() :: %{
        optional("addOns") => list(add_on_request()),
        optional("customImageName") => String.t() | atom(),
        optional("ipAddressType") => list(any()),
        optional("keyPairName") => String.t() | atom(),
        optional("tags") => list(tag()),
        optional("userData") => String.t() | atom(),
        required("availabilityZone") => String.t() | atom(),
        required("blueprintId") => String.t() | atom(),
        required("bundleId") => String.t() | atom(),
        required("instanceNames") => list(String.t() | atom())
      }
      
  """
  @type create_instances_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      relational_database_hardware() :: %{
        "cpuCount" => integer(),
        "diskSizeInGb" => integer(),
        "ramSizeInGb" => float()
      }
      
  """
  @type relational_database_hardware() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_instance_snapshot_request() :: %{
        required("instanceSnapshotName") => String.t() | atom()
      }
      
  """
  @type delete_instance_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_certificate_request() :: %{
        optional("subjectAlternativeNames") => list(String.t() | atom()),
        optional("tags") => list(tag()),
        required("certificateName") => String.t() | atom(),
        required("domainName") => String.t() | atom()
      }
      
  """
  @type create_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_service_powers_result() :: %{
        "powers" => list(container_service_power())
      }
      
  """
  @type get_container_service_powers_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_request() :: %{
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type get_relational_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        optional("resourceArn") => String.t() | atom(),
        required("resourceName") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_distribution_metric_data_request() :: %{
        required("distributionName") => String.t() | atom(),
        required("endTime") => non_neg_integer(),
        required("metricName") => list(any()),
        required("period") => integer(),
        required("startTime") => non_neg_integer(),
        required("statistics") => list(list(any())()),
        required("unit") => list(any())
      }
      
  """
  @type get_distribution_metric_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_hardware() :: %{
        "cpuCount" => integer(),
        "disks" => list(disk()),
        "ramSizeInGb" => float()
      }
      
  """
  @type instance_hardware() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_snapshot_result() :: %{
        "relationalDatabaseSnapshot" => relational_database_snapshot()
      }
      
  """
  @type get_relational_database_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_snapshots_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_instance_snapshots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_bundles_result() :: %{
        "bundles" => list(bundle()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_bundles_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_load_balancer_tls_policies_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_load_balancer_tls_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_period() :: %{
        "end" => non_neg_integer(),
        "start" => non_neg_integer()
      }
      
  """
  @type time_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_known_host_keys_request() :: %{
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type delete_known_host_keys_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_disk_snapshot_result() :: %{
        "diskSnapshot" => disk_snapshot()
      }
      
  """
  @type get_disk_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_relational_database_from_snapshot_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_relational_database_from_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_key_pair_request() :: %{
        optional("expectedFingerprint") => String.t() | atom(),
        required("keyPairName") => String.t() | atom()
      }
      
  """
  @type delete_key_pair_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_tls_certificate_domain_validation_option() :: %{
        "domainName" => String.t() | atom(),
        "validationStatus" => list(any())
      }
      
  """
  @type load_balancer_tls_certificate_domain_validation_option() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      get_instance_request() :: %{
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type get_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_disk_snapshot_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_disk_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bundle() :: %{
        "bundleId" => String.t() | atom(),
        "cpuCount" => integer(),
        "diskSizeInGb" => integer(),
        "instanceType" => String.t() | atom(),
        "isActive" => boolean(),
        "name" => String.t() | atom(),
        "power" => integer(),
        "price" => float(),
        "publicIpv4AddressCount" => integer(),
        "ramSizeInGb" => float(),
        "supportedAppCategories" => list(list(any())()),
        "supportedPlatforms" => list(list(any())()),
        "transferPerMonthInGb" => integer()
      }
      
  """
  @type bundle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_snapshot() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "fromAttachedDisks" => list(disk()),
        "fromBlueprintId" => String.t() | atom(),
        "fromBundleId" => String.t() | atom(),
        "fromInstanceArn" => String.t() | atom(),
        "fromInstanceName" => String.t() | atom(),
        "isFromAutoSnapshot" => boolean(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "progress" => String.t() | atom(),
        "resourceType" => list(any()),
        "sizeInGb" => integer(),
        "state" => list(any()),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag())
      }
      
  """
  @type instance_snapshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_g_ui_session_access_details_request() :: %{
        required("resourceName") => String.t() | atom()
      }
      
  """
  @type create_g_ui_session_access_details_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_location() :: %{
        "availabilityZone" => String.t() | atom(),
        "regionName" => list(any())
      }
      
  """
  @type resource_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_metric_data_request() :: %{
        required("endTime") => non_neg_integer(),
        required("metricName") => list(any()),
        required("period") => integer(),
        required("relationalDatabaseName") => String.t() | atom(),
        required("startTime") => non_neg_integer(),
        required("statistics") => list(list(any())()),
        required("unit") => list(any())
      }
      
  """
  @type get_relational_database_metric_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_contact_method_request() :: %{
        required("contactEndpoint") => String.t() | atom(),
        required("protocol") => list(any())
      }
      
  """
  @type create_contact_method_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auto_snapshot_details() :: %{
        "createdAt" => non_neg_integer(),
        "date" => String.t() | atom(),
        "fromAttachedDisks" => list(attached_disk()),
        "status" => list(any())
      }
      
  """
  @type auto_snapshot_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate_summary() :: %{
        "certificateArn" => String.t() | atom(),
        "certificateDetail" => certificate(),
        "certificateName" => String.t() | atom(),
        "domainName" => String.t() | atom(),
        "tags" => list(tag())
      }
      
  """
  @type certificate_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_export_snapshot_records_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_export_snapshot_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bucket_bundle() :: %{
        "bundleId" => String.t() | atom(),
        "isActive" => boolean(),
        "name" => String.t() | atom(),
        "price" => float(),
        "storagePerMonthInGb" => integer(),
        "transferPerMonthInGb" => integer()
      }
      
  """
  @type bucket_bundle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_load_balancer_request() :: %{
        optional("certificateAlternativeNames") => list(String.t() | atom()),
        optional("certificateDomainName") => String.t() | atom(),
        optional("certificateName") => String.t() | atom(),
        optional("healthCheckPath") => String.t() | atom(),
        optional("ipAddressType") => list(any()),
        optional("tags") => list(tag()),
        optional("tlsPolicyName") => String.t() | atom(),
        required("instancePort") => integer(),
        required("loadBalancerName") => String.t() | atom()
      }
      
  """
  @type create_load_balancer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      relational_database_snapshot() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "engine" => String.t() | atom(),
        "engineVersion" => String.t() | atom(),
        "fromRelationalDatabaseArn" => String.t() | atom(),
        "fromRelationalDatabaseBlueprintId" => String.t() | atom(),
        "fromRelationalDatabaseBundleId" => String.t() | atom(),
        "fromRelationalDatabaseName" => String.t() | atom(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "resourceType" => list(any()),
        "sizeInGb" => integer(),
        "state" => String.t() | atom(),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag())
      }
      
  """
  @type relational_database_snapshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_request() :: %{
        optional("forceDelete") => boolean(),
        required("bucketName") => String.t() | atom()
      }
      
  """
  @type delete_bucket_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_ip_address_type_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type set_ip_address_type_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      name_servers_update_state() :: %{
        "code" => list(any()),
        "message" => String.t() | atom()
      }
      
  """
  @type name_servers_update_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_instance_request() :: %{
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type reboot_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_networking() :: %{
        "monthlyTransfer" => monthly_transfer(),
        "ports" => list(instance_port_info())
      }
      
  """
  @type instance_networking() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_active_names_result() :: %{
        "activeNames" => list(String.t() | atom()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_active_names_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_relational_database_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type reboot_relational_database_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      setup_instance_https_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type setup_instance_https_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_bucket_metric_data_request() :: %{
        required("bucketName") => String.t() | atom(),
        required("endTime") => non_neg_integer(),
        required("metricName") => list(any()),
        required("period") => integer(),
        required("startTime") => non_neg_integer(),
        required("statistics") => list(list(any())()),
        required("unit") => list(any())
      }
      
  """
  @type get_bucket_metric_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_domain_request() :: %{
        required("domainName") => String.t() | atom()
      }
      
  """
  @type delete_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_snapshot_request() :: %{
        required("instanceSnapshotName") => String.t() | atom()
      }
      
  """
  @type get_instance_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_service_deployment() :: %{
        "containers" => map(),
        "createdAt" => non_neg_integer(),
        "publicEndpoint" => container_service_endpoint(),
        "state" => list(any()),
        "version" => integer()
      }
      
  """
  @type container_service_deployment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_health_summary() :: %{
        "instanceHealth" => list(any()),
        "instanceHealthReason" => list(any()),
        "instanceName" => String.t() | atom()
      }
      
  """
  @type instance_health_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_relational_database_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_relational_database_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      region() :: %{
        "availabilityZones" => list(availability_zone()),
        "continentCode" => String.t() | atom(),
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "name" => list(any()),
        "relationalDatabaseAvailabilityZones" => list(availability_zone())
      }
      
  """
  @type region() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_parameters_request() :: %{
        optional("pageToken") => String.t() | atom(),
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type get_relational_database_parameters_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      export_snapshot_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type export_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_key_pairs_request() :: %{
        optional("includeDefaultKeyPair") => boolean(),
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_key_pairs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_static_ips_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_static_ips_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_instance_metadata_options_result() :: %{
        "operation" => operation()
      }
      
  """
  @type update_instance_metadata_options_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detach_static_ip_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type detach_static_ip_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      destination_info() :: %{
        "id" => String.t() | atom(),
        "service" => String.t() | atom()
      }
      
  """
  @type destination_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_distribution_metric_data_result() :: %{
        "metricData" => list(metric_datapoint()),
        "metricName" => list(any())
      }
      
  """
  @type get_distribution_metric_data_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_operations_for_resource_request() :: %{
        optional("pageToken") => String.t() | atom(),
        required("resourceName") => String.t() | atom()
      }
      
  """
  @type get_operations_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      monthly_transfer() :: %{
        "gbPerMonthAllocated" => integer()
      }
      
  """
  @type monthly_transfer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_load_balancer_tls_policies_result() :: %{
        "nextPageToken" => String.t() | atom(),
        "tlsPolicies" => list(load_balancer_tls_policy())
      }
      
  """
  @type get_load_balancer_tls_policies_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_budget_estimate() :: %{
        "costEstimates" => list(cost_estimate()),
        "endTime" => non_neg_integer(),
        "resourceName" => String.t() | atom(),
        "resourceType" => list(any()),
        "startTime" => non_neg_integer()
      }
      
  """
  @type resource_budget_estimate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_metric_data_result() :: %{
        "metricData" => list(metric_datapoint()),
        "metricName" => list(any())
      }
      
  """
  @type get_relational_database_metric_data_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_distribution_bundle_result() :: %{
        "operation" => operation()
      }
      
  """
  @type update_distribution_bundle_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_disk_from_snapshot_request() :: %{
        optional("addOns") => list(add_on_request()),
        optional("diskSnapshotName") => String.t() | atom(),
        optional("restoreDate") => String.t() | atom(),
        optional("sourceDiskName") => String.t() | atom(),
        optional("tags") => list(tag()),
        optional("useLatestRestorableAutoSnapshot") => boolean(),
        required("availabilityZone") => String.t() | atom(),
        required("diskName") => String.t() | atom(),
        required("sizeInGb") => integer()
      }
      
  """
  @type create_disk_from_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_certificate_to_distribution_request() :: %{
        required("certificateName") => String.t() | atom(),
        required("distributionName") => String.t() | atom()
      }
      
  """
  @type attach_certificate_to_distribution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_domain_request() :: %{
        optional("tags") => list(tag()),
        required("domainName") => String.t() | atom()
      }
      
  """
  @type create_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_alarm_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type test_alarm_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_access_details_result() :: %{
        "accessDetails" => instance_access_details()
      }
      
  """
  @type get_instance_access_details_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cloud_formation_stack_request() :: %{
        required("instances") => list(instance_entry())
      }
      
  """
  @type create_cloud_formation_stack_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_known_host_keys_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_known_host_keys_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      setup_request() :: %{
        "certificateProvider" => list(any()),
        "domainNames" => list(String.t() | atom()),
        "instanceName" => String.t() | atom()
      }
      
  """
  @type setup_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_relational_database_request() :: %{
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type reboot_relational_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      allocate_static_ip_request() :: %{
        required("staticIpName") => String.t() | atom()
      }
      
  """
  @type allocate_static_ip_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_alarm_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type put_alarm_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      close_instance_public_ports_result() :: %{
        "operation" => operation()
      }
      
  """
  @type close_instance_public_ports_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_container_service_deployment_result() :: %{
        "containerService" => container_service()
      }
      
  """
  @type create_container_service_deployment_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_distribution_request() :: %{
        optional("cacheBehaviorSettings") => cache_settings(),
        optional("cacheBehaviors") => list(cache_behavior_per_path()),
        optional("certificateName") => String.t() | atom(),
        optional("defaultCacheBehavior") => cache_behavior(),
        optional("isEnabled") => boolean(),
        optional("origin") => input_origin(),
        optional("useDefaultCertificate") => boolean(),
        optional("viewerMinimumTlsProtocolVersion") => list(any()),
        required("distributionName") => String.t() | atom()
      }
      
  """
  @type update_distribution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_domain_entry_result() :: %{
        "operation" => operation()
      }
      
  """
  @type delete_domain_entry_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      setup_history_resource() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "resourceType" => list(any())
      }
      
  """
  @type setup_history_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attached_disk() :: %{
        "path" => String.t() | atom(),
        "sizeInGb" => integer()
      }
      
  """
  @type attached_disk() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_operation_request() :: %{
        required("operationId") => String.t() | atom()
      }
      
  """
  @type get_operation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_service() :: %{
        "arn" => String.t() | atom(),
        "containerServiceName" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "currentDeployment" => container_service_deployment(),
        "isDisabled" => boolean(),
        "location" => resource_location(),
        "nextDeployment" => container_service_deployment(),
        "power" => list(any()),
        "powerId" => String.t() | atom(),
        "principalArn" => String.t() | atom(),
        "privateDomainName" => String.t() | atom(),
        "privateRegistryAccess" => private_registry_access(),
        "publicDomainNames" => map(),
        "resourceType" => list(any()),
        "scale" => integer(),
        "state" => list(any()),
        "stateDetail" => container_service_state_detail(),
        "tags" => list(tag()),
        "url" => String.t() | atom()
      }
      
  """
  @type container_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_bundles_result() :: %{
        "bundles" => list(relational_database_bundle()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_relational_database_bundles_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_key() :: %{
        "accessKeyId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "lastUsed" => access_key_last_used(),
        "secretAccessKey" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type access_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_bucket_request() :: %{
        optional("accessLogConfig") => bucket_access_log_config(),
        optional("accessRules") => access_rules(),
        optional("readonlyAccessAccounts") => list(String.t() | atom()),
        optional("versioning") => String.t() | atom(),
        required("bucketName") => String.t() | atom()
      }
      
  """
  @type update_bucket_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_domain_result() :: %{
        "operation" => operation()
      }
      
  """
  @type delete_domain_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_instance_snapshot_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_instance_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_instances_to_load_balancer_request() :: %{
        required("instanceNames") => list(String.t() | atom()),
        required("loadBalancerName") => String.t() | atom()
      }
      
  """
  @type attach_instances_to_load_balancer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_disk_request() :: %{
        optional("addOns") => list(add_on_request()),
        optional("tags") => list(tag()),
        required("availabilityZone") => String.t() | atom(),
        required("diskName") => String.t() | atom(),
        required("sizeInGb") => integer()
      }
      
  """
  @type create_disk_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      release_static_ip_request() :: %{
        required("staticIpName") => String.t() | atom()
      }
      
  """
  @type release_static_ip_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      is_vpc_peered_result() :: %{
        "isPeered" => boolean()
      }
      
  """
  @type is_vpc_peered_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_port_states_request() :: %{
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type get_instance_port_states_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disable_add_on_request() :: %{
        required("addOnType") => list(any()),
        required("resourceName") => String.t() | atom()
      }
      
  """
  @type disable_add_on_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_relational_database_snapshot_request() :: %{
        optional("tags") => list(tag()),
        required("relationalDatabaseName") => String.t() | atom(),
        required("relationalDatabaseSnapshotName") => String.t() | atom()
      }
      
  """
  @type create_relational_database_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      monitored_resource_info() :: %{
        "arn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceType" => list(any())
      }
      
  """
  @type monitored_resource_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_contact_methods_request() :: %{
        optional("protocols") => list(list(any())())
      }
      
  """
  @type get_contact_methods_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_tls_certificate_renewal_summary() :: %{
        "domainValidationOptions" => list(load_balancer_tls_certificate_domain_validation_option()),
        "renewalStatus" => list(any())
      }
      
  """
  @type load_balancer_tls_certificate_renewal_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_snapshot_info() :: %{
        "fromBlueprintId" => String.t() | atom(),
        "fromBundleId" => String.t() | atom(),
        "fromDiskInfo" => list(disk_info())
      }
      
  """
  @type instance_snapshot_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "code" => String.t() | atom(),
        "docs" => String.t() | atom(),
        "message" => String.t() | atom(),
        "tip" => String.t() | atom()
      }
      
  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cost_estimate_result() :: %{
        "resourcesBudgetEstimate" => list(resource_budget_estimate())
      }
      
  """
  @type get_cost_estimate_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      r53_hosted_zone_deletion_state() :: %{
        "code" => list(any()),
        "message" => String.t() | atom()
      }
      
  """
  @type r53_hosted_zone_deletion_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_image() :: %{
        "createdAt" => non_neg_integer(),
        "digest" => String.t() | atom(),
        "image" => String.t() | atom()
      }
      
  """
  @type container_image() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_domain_entry_request() :: %{
        required("domainEntry") => domain_entry(),
        required("domainName") => String.t() | atom()
      }
      
  """
  @type create_domain_entry_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_receiving_access() :: %{
        "name" => String.t() | atom(),
        "resourceType" => String.t() | atom()
      }
      
  """
  @type resource_receiving_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_exception() :: %{
        "code" => String.t() | atom(),
        "docs" => String.t() | atom(),
        "message" => String.t() | atom(),
        "tip" => String.t() | atom()
      }
      
  """
  @type service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      peer_vpc_result() :: %{
        "operation" => operation()
      }
      
  """
  @type peer_vpc_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_distribution_bundles_request() :: %{}
      
  """
  @type get_distribution_bundles_request() :: %{}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "code" => String.t() | atom(),
        "docs" => String.t() | atom(),
        "message" => String.t() | atom(),
        "tip" => String.t() | atom()
      }
      
  """
  @type invalid_input_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_disk_from_snapshot_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_disk_from_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_operation_result() :: %{
        "operation" => operation()
      }
      
  """
  @type get_operation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_log_streams_request() :: %{
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type get_relational_database_log_streams_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_domains_result() :: %{
        "domains" => list(domain()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_domains_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_bucket_access_keys_result() :: %{
        "accessKeys" => list(access_key())
      }
      
  """
  @type get_bucket_access_keys_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disk_snapshot() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "fromDiskArn" => String.t() | atom(),
        "fromDiskName" => String.t() | atom(),
        "fromInstanceArn" => String.t() | atom(),
        "fromInstanceName" => String.t() | atom(),
        "isFromAutoSnapshot" => boolean(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "progress" => String.t() | atom(),
        "resourceType" => list(any()),
        "sizeInGb" => integer(),
        "state" => list(any()),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag())
      }
      
  """
  @type disk_snapshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_bucket_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_access_details() :: %{
        "certKey" => String.t() | atom(),
        "expiresAt" => non_neg_integer(),
        "hostKeys" => list(host_key_attributes()),
        "instanceName" => String.t() | atom(),
        "ipAddress" => String.t() | atom(),
        "ipv6Addresses" => list(String.t() | atom()),
        "password" => String.t() | atom(),
        "passwordData" => password_data(),
        "privateKey" => String.t() | atom(),
        "protocol" => list(any()),
        "username" => String.t() | atom()
      }
      
  """
  @type instance_access_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_key_pairs_result() :: %{
        "keyPairs" => list(key_pair()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_key_pairs_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_service_log_event() :: %{
        "createdAt" => non_neg_integer(),
        "message" => String.t() | atom()
      }
      
  """
  @type container_service_log_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_container_image_request() :: %{}
      
  """
  @type delete_container_image_request() :: %{}

  @typedoc """

  ## Example:
      
      blueprint() :: %{
        "appCategory" => list(any()),
        "blueprintId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "group" => String.t() | atom(),
        "isActive" => boolean(),
        "licenseUrl" => String.t() | atom(),
        "minPower" => integer(),
        "name" => String.t() | atom(),
        "platform" => list(any()),
        "productUrl" => String.t() | atom(),
        "type" => list(any()),
        "version" => String.t() | atom(),
        "versionCode" => String.t() | atom()
      }
      
  """
  @type blueprint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_metric_data_request() :: %{
        required("endTime") => non_neg_integer(),
        required("instanceName") => String.t() | atom(),
        required("metricName") => list(any()),
        required("period") => integer(),
        required("startTime") => non_neg_integer(),
        required("statistics") => list(list(any())()),
        required("unit") => list(any())
      }
      
  """
  @type get_instance_metric_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_load_balancer_attribute_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type update_load_balancer_attribute_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_access_key_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_bucket_access_key_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_blueprints_request() :: %{
        optional("appCategory") => list(any()),
        optional("includeInactive") => boolean(),
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_blueprints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_metric_data_result() :: %{
        "metricData" => list(metric_datapoint()),
        "metricName" => list(any())
      }
      
  """
  @type get_instance_metric_data_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      password_data() :: %{
        "ciphertext" => String.t() | atom(),
        "keyPairName" => String.t() | atom()
      }
      
  """
  @type password_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_disk_request() :: %{
        required("diskName") => String.t() | atom()
      }
      
  """
  @type get_disk_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      static_ip() :: %{
        "arn" => String.t() | atom(),
        "attachedTo" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "ipAddress" => String.t() | atom(),
        "isAttached" => boolean(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "resourceType" => list(any()),
        "supportCode" => String.t() | atom()
      }
      
  """
  @type static_ip() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_load_balancer_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_load_balancer_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instances_result() :: %{
        "instances" => list(instance()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_instances_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_bucket_result() :: %{
        "bucket" => bucket(),
        "operations" => list(operation())
      }
      
  """
  @type update_bucket_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_instance_public_ports_result() :: %{
        "operation" => operation()
      }
      
  """
  @type put_instance_public_ports_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_domain_entry_request() :: %{
        required("domainEntry") => domain_entry(),
        required("domainName") => String.t() | atom()
      }
      
  """
  @type delete_domain_entry_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detach_static_ip_request() :: %{
        required("staticIpName") => String.t() | atom()
      }
      
  """
  @type detach_static_ip_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detach_disk_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type detach_disk_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      session() :: %{
        "isPrimary" => boolean(),
        "name" => String.t() | atom(),
        "url" => String.t() | atom()
      }
      
  """
  @type session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_distributions_result() :: %{
        "distributions" => list(lightsail_distribution()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_distributions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      key_pair() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "fingerprint" => String.t() | atom(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "resourceType" => list(any()),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag())
      }
      
  """
  @type key_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_databases_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_relational_databases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_instance_on_idle_request() :: %{
        "duration" => String.t() | atom(),
        "threshold" => String.t() | atom()
      }
      
  """
  @type stop_instance_on_idle_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_state() :: %{
        "code" => integer(),
        "name" => String.t() | atom()
      }
      
  """
  @type instance_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      export_snapshot_request() :: %{
        required("sourceSnapshotName") => String.t() | atom()
      }
      
  """
  @type export_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_bucket_result() :: %{
        "bucket" => bucket(),
        "operations" => list(operation())
      }
      
  """
  @type create_bucket_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_disk_snapshot_request() :: %{
        required("diskSnapshotName") => String.t() | atom()
      }
      
  """
  @type delete_disk_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_service_deployments_request() :: %{}
      
  """
  @type get_container_service_deployments_request() :: %{}

  @typedoc """

  ## Example:
      
      allocate_static_ip_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type allocate_static_ip_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_snapshot_result() :: %{
        "instanceSnapshot" => instance_snapshot()
      }
      
  """
  @type get_instance_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_tls_certificate_dns_record_creation_state() :: %{
        "code" => list(any()),
        "message" => String.t() | atom()
      }
      
  """
  @type load_balancer_tls_certificate_dns_record_creation_state() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      download_default_key_pair_request() :: %{}
      
  """
  @type download_default_key_pair_request() :: %{}

  @typedoc """

  ## Example:
      
      pending_modified_relational_database_values() :: %{
        "backupRetentionEnabled" => boolean(),
        "engineVersion" => String.t() | atom(),
        "masterUserPassword" => String.t() | atom()
      }
      
  """
  @type pending_modified_relational_database_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_load_balancer_tls_certificates_request() :: %{
        required("loadBalancerName") => String.t() | atom()
      }
      
  """
  @type get_load_balancer_tls_certificates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_tls_certificate_summary() :: %{
        "isAttached" => boolean(),
        "name" => String.t() | atom()
      }
      
  """
  @type load_balancer_tls_certificate_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_snapshot_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type copy_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_log_events_request() :: %{
        optional("endTime") => non_neg_integer(),
        optional("pageToken") => String.t() | atom(),
        optional("startFromHead") => boolean(),
        optional("startTime") => non_neg_integer(),
        required("logStreamName") => String.t() | atom(),
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type get_relational_database_log_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_service_state_detail() :: %{
        "code" => list(any()),
        "message" => String.t() | atom()
      }
      
  """
  @type container_service_state_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      setup_instance_https_request() :: %{
        required("certificateProvider") => list(any()),
        required("domainNames") => list(String.t() | atom()),
        required("emailAddress") => String.t() | atom(),
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type setup_instance_https_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_service_e_c_r_image_puller_role() :: %{
        "isActive" => boolean(),
        "principalArn" => String.t() | atom()
      }
      
  """
  @type container_service_e_c_r_image_puller_role() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_log_streams_result() :: %{
        "logStreams" => list(String.t() | atom())
      }
      
  """
  @type get_relational_database_log_streams_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_distribution_bundles_result() :: %{
        "bundles" => list(distribution_bundle())
      }
      
  """
  @type get_distribution_bundles_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_auto_snapshot_request() :: %{
        required("date") => String.t() | atom(),
        required("resourceName") => String.t() | atom()
      }
      
  """
  @type delete_auto_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_snapshots_result() :: %{
        "nextPageToken" => String.t() | atom(),
        "relationalDatabaseSnapshots" => list(relational_database_snapshot())
      }
      
  """
  @type get_relational_database_snapshots_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_services_list_result() :: %{
        "containerServices" => list(container_service())
      }
      
  """
  @type container_services_list_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_container_image_result() :: %{}
      
  """
  @type delete_container_image_result() :: %{}

  @typedoc """

  ## Example:
      
      certificate() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "domainName" => String.t() | atom(),
        "domainValidationRecords" => list(domain_validation_record()),
        "eligibleToRenew" => String.t() | atom(),
        "inUseResourceCount" => integer(),
        "issuedAt" => non_neg_integer(),
        "issuerCA" => String.t() | atom(),
        "keyAlgorithm" => String.t() | atom(),
        "name" => String.t() | atom(),
        "notAfter" => non_neg_integer(),
        "notBefore" => non_neg_integer(),
        "renewalSummary" => renewal_summary(),
        "requestFailureReason" => String.t() | atom(),
        "revocationReason" => String.t() | atom(),
        "revokedAt" => non_neg_integer(),
        "serialNumber" => String.t() | atom(),
        "status" => list(any()),
        "subjectAlternativeNames" => list(String.t() | atom()),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag())
      }
      
  """
  @type certificate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_domain_entry_request() :: %{
        required("domainEntry") => domain_entry(),
        required("domainName") => String.t() | atom()
      }
      
  """
  @type update_domain_entry_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enable_add_on_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type enable_add_on_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_key_pair_result() :: %{
        "operation" => operation()
      }
      
  """
  @type import_key_pair_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_domains_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_domains_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_domain_entry_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type update_domain_entry_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_bucket_metric_data_result() :: %{
        "metricData" => list(metric_datapoint()),
        "metricName" => list(any())
      }
      
  """
  @type get_bucket_metric_data_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_container_service_result() :: %{}
      
  """
  @type delete_container_service_result() :: %{}

  @typedoc """

  ## Example:
      
      bucket() :: %{
        "ableToUpdateBundle" => boolean(),
        "accessLogConfig" => bucket_access_log_config(),
        "accessRules" => access_rules(),
        "arn" => String.t() | atom(),
        "bundleId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "objectVersioning" => String.t() | atom(),
        "readonlyAccessAccounts" => list(String.t() | atom()),
        "resourceType" => String.t() | atom(),
        "resourcesReceivingAccess" => list(resource_receiving_access()),
        "state" => bucket_state(),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag()),
        "url" => String.t() | atom()
      }
      
  """
  @type bucket() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_images_request() :: %{}
      
  """
  @type get_container_images_request() :: %{}

  @typedoc """

  ## Example:
      
      create_bucket_request() :: %{
        optional("enableObjectVersioning") => boolean(),
        optional("tags") => list(tag()),
        required("bucketName") => String.t() | atom(),
        required("bundleId") => String.t() | atom()
      }
      
  """
  @type create_bucket_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_origin() :: %{
        "name" => String.t() | atom(),
        "protocolPolicy" => list(any()),
        "regionName" => list(any()),
        "responseTimeout" => integer()
      }
      
  """
  @type input_origin() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disk_map() :: %{
        "newDiskName" => String.t() | atom(),
        "originalDiskPath" => String.t() | atom()
      }
      
  """
  @type disk_map() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_distribution_result() :: %{
        "distribution" => lightsail_distribution(),
        "operation" => operation()
      }
      
  """
  @type create_distribution_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_bundles_request() :: %{
        optional("appCategory") => list(any()),
        optional("includeInactive") => boolean(),
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_bundles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "addOns" => list(add_on()),
        "arn" => String.t() | atom(),
        "blueprintId" => String.t() | atom(),
        "blueprintName" => String.t() | atom(),
        "bundleId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "hardware" => instance_hardware(),
        "ipAddressType" => list(any()),
        "ipv6Addresses" => list(String.t() | atom()),
        "isStaticIp" => boolean(),
        "location" => resource_location(),
        "metadataOptions" => instance_metadata_options(),
        "name" => String.t() | atom(),
        "networking" => instance_networking(),
        "privateIpAddress" => String.t() | atom(),
        "publicIpAddress" => String.t() | atom(),
        "resourceType" => list(any()),
        "sshKeyName" => String.t() | atom(),
        "state" => instance_state(),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag()),
        "username" => String.t() | atom()
      }
      
  """
  @type instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_metadata_options() :: %{
        "httpEndpoint" => list(any()),
        "httpProtocolIpv6" => list(any()),
        "httpPutResponseHopLimit" => integer(),
        "httpTokens" => list(any()),
        "state" => list(any())
      }
      
  """
  @type instance_metadata_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "code" => String.t() | atom(),
        "docs" => String.t() | atom(),
        "message" => String.t() | atom(),
        "tip" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_key_pair_request() :: %{
        required("keyPairName") => String.t() | atom(),
        required("publicKeyBase64") => String.t() | atom()
      }
      
  """
  @type import_key_pair_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_instances_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_instances_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_on_request() :: %{
        "addOnType" => list(any()),
        "autoSnapshotAddOnRequest" => auto_snapshot_add_on_request(),
        "stopInstanceOnIdleRequest" => stop_instance_on_idle_request()
      }
      
  """
  @type add_on_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_certificate_request() :: %{
        required("certificateName") => String.t() | atom()
      }
      
  """
  @type delete_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_active_names_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_active_names_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_key_pair_request() :: %{
        optional("tags") => list(tag()),
        required("keyPairName") => String.t() | atom()
      }
      
  """
  @type create_key_pair_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_load_balancer_tls_certificate_request() :: %{
        required("certificateName") => String.t() | atom(),
        required("loadBalancerName") => String.t() | atom()
      }
      
  """
  @type attach_load_balancer_tls_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_log_request() :: %{
        optional("endTime") => non_neg_integer(),
        optional("filterPattern") => String.t() | atom(),
        optional("pageToken") => String.t() | atom(),
        optional("startTime") => non_neg_integer()
      }
      
  """
  @type get_container_log_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_setup_history_result() :: %{
        "nextPageToken" => String.t() | atom(),
        "setupHistory" => list(setup_history())
      }
      
  """
  @type get_setup_history_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      origin() :: %{
        "name" => String.t() | atom(),
        "protocolPolicy" => list(any()),
        "regionName" => list(any()),
        "resourceType" => list(any()),
        "responseTimeout" => integer()
      }
      
  """
  @type origin() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_disk_snapshot_request() :: %{
        required("diskSnapshotName") => String.t() | atom()
      }
      
  """
  @type get_disk_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_relational_database_parameters_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type update_relational_database_parameters_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_instance_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_instance_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_bucket_access_keys_request() :: %{
        required("bucketName") => String.t() | atom()
      }
      
  """
  @type get_bucket_access_keys_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      port_info() :: %{
        "cidrListAliases" => list(String.t() | atom()),
        "cidrs" => list(String.t() | atom()),
        "fromPort" => integer(),
        "ipv6Cidrs" => list(String.t() | atom()),
        "protocol" => list(any()),
        "toPort" => integer()
      }
      
  """
  @type port_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      download_default_key_pair_result() :: %{
        "createdAt" => non_neg_integer(),
        "privateKeyBase64" => String.t() | atom(),
        "publicKeyBase64" => String.t() | atom()
      }
      
  """
  @type download_default_key_pair_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_relational_database_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type update_relational_database_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_load_balancer_metric_data_request() :: %{
        required("endTime") => non_neg_integer(),
        required("loadBalancerName") => String.t() | atom(),
        required("metricName") => list(any()),
        required("period") => integer(),
        required("startTime") => non_neg_integer(),
        required("statistics") => list(list(any())()),
        required("unit") => list(any())
      }
      
  """
  @type get_load_balancer_metric_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_snapshot_request() :: %{
        required("relationalDatabaseSnapshotName") => String.t() | atom()
      }
      
  """
  @type get_relational_database_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_instance_metadata_options_request() :: %{
        optional("httpEndpoint") => list(any()),
        optional("httpProtocolIpv6") => list(any()),
        optional("httpPutResponseHopLimit") => integer(),
        optional("httpTokens") => list(any()),
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type update_instance_metadata_options_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_certificate_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_certificate_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_snapshot_request() :: %{
        optional("restoreDate") => String.t() | atom(),
        optional("sourceResourceName") => String.t() | atom(),
        optional("sourceSnapshotName") => String.t() | atom(),
        optional("useLatestRestorableAutoSnapshot") => boolean(),
        required("sourceRegion") => list(any()),
        required("targetSnapshotName") => String.t() | atom()
      }
      
  """
  @type copy_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detach_disk_request() :: %{
        required("diskName") => String.t() | atom()
      }
      
  """
  @type detach_disk_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      peer_vpc_request() :: %{}
      
  """
  @type peer_vpc_request() :: %{}

  @typedoc """

  ## Example:
      
      load_balancer() :: %{
        "arn" => String.t() | atom(),
        "configurationOptions" => map(),
        "createdAt" => non_neg_integer(),
        "dnsName" => String.t() | atom(),
        "healthCheckPath" => String.t() | atom(),
        "httpsRedirectionEnabled" => boolean(),
        "instanceHealthSummary" => list(instance_health_summary()),
        "instancePort" => integer(),
        "ipAddressType" => list(any()),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "protocol" => list(any()),
        "publicPorts" => list(integer()),
        "resourceType" => list(any()),
        "state" => list(any()),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag()),
        "tlsCertificateSummaries" => list(load_balancer_tls_certificate_summary()),
        "tlsPolicyName" => String.t() | atom()
      }
      
  """
  @type load_balancer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_bundles_request() :: %{
        optional("includeInactive") => boolean(),
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_relational_database_bundles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disk() :: %{
        "addOns" => list(add_on()),
        "arn" => String.t() | atom(),
        "attachedTo" => String.t() | atom(),
        "attachmentState" => String.t() | atom(),
        "autoMountStatus" => list(any()),
        "createdAt" => non_neg_integer(),
        "gbInUse" => integer(),
        "iops" => integer(),
        "isAttached" => boolean(),
        "isSystemDisk" => boolean(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "path" => String.t() | atom(),
        "resourceType" => list(any()),
        "sizeInGb" => integer(),
        "state" => list(any()),
        "supportCode" => String.t() | atom(),
        "tags" => list(tag())
      }
      
  """
  @type disk() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cloud_formation_stack_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_cloud_formation_stack_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_formation_stack_record() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "destinationInfo" => destination_info(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "resourceType" => list(any()),
        "sourceInfo" => list(cloud_formation_stack_record_source_info()),
        "state" => list(any())
      }
      
  """
  @type cloud_formation_stack_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_relational_database_snapshot_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_relational_database_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_load_balancer_tls_certificate_request() :: %{
        optional("certificateAlternativeNames") => list(String.t() | atom()),
        optional("tags") => list(tag()),
        required("certificateDomainName") => String.t() | atom(),
        required("certificateName") => String.t() | atom(),
        required("loadBalancerName") => String.t() | atom()
      }
      
  """
  @type create_load_balancer_tls_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_parameters_result() :: %{
        "nextPageToken" => String.t() | atom(),
        "parameters" => list(relational_database_parameter())
      }
      
  """
  @type get_relational_database_parameters_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_key_pair_request() :: %{
        required("keyPairName") => String.t() | atom()
      }
      
  """
  @type get_key_pair_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_settings() :: %{
        "allowedHTTPMethods" => String.t() | atom(),
        "cachedHTTPMethods" => String.t() | atom(),
        "defaultTTL" => float(),
        "forwardedCookies" => cookie_object(),
        "forwardedHeaders" => header_object(),
        "forwardedQueryStrings" => query_string_object(),
        "maximumTTL" => float(),
        "minimumTTL" => float()
      }
      
  """
  @type cache_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_access_details_request() :: %{
        optional("protocol") => list(any()),
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type get_instance_access_details_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_static_ip_request() :: %{
        required("instanceName") => String.t() | atom(),
        required("staticIpName") => String.t() | atom()
      }
      
  """
  @type attach_static_ip_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      private_registry_access_request() :: %{
        "ecrImagePullerRole" => container_service_e_c_r_image_puller_role_request()
      }
      
  """
  @type private_registry_access_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unpeer_vpc_result() :: %{
        "operation" => operation()
      }
      
  """
  @type unpeer_vpc_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instances_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_instances_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_alarms_result() :: %{
        "alarms" => list(alarm()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_alarms_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      endpoint_request() :: %{
        "containerName" => String.t() | atom(),
        "containerPort" => integer(),
        "healthCheck" => container_service_health_check_config()
      }
      
  """
  @type endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_port_info() :: %{
        "accessDirection" => list(any()),
        "accessFrom" => String.t() | atom(),
        "accessType" => list(any()),
        "cidrListAliases" => list(String.t() | atom()),
        "cidrs" => list(String.t() | atom()),
        "commonName" => String.t() | atom(),
        "fromPort" => integer(),
        "ipv6Cidrs" => list(String.t() | atom()),
        "protocol" => list(any()),
        "toPort" => integer()
      }
      
  """
  @type instance_port_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_events_result() :: %{
        "nextPageToken" => String.t() | atom(),
        "relationalDatabaseEvents" => list(relational_database_event())
      }
      
  """
  @type get_relational_database_events_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_log_result() :: %{
        "logEvents" => list(container_service_log_event()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_container_log_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_load_balancers_result() :: %{
        "loadBalancers" => list(load_balancer()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_load_balancers_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_instance_request() :: %{
        optional("forceDeleteAddOns") => boolean(),
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type delete_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_certificates_result() :: %{
        "certificates" => list(certificate_summary()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_certificates_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_relational_database_parameters_request() :: %{
        required("parameters") => list(relational_database_parameter()),
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type update_relational_database_parameters_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_service_metric_data_request() :: %{
        required("endTime") => non_neg_integer(),
        required("metricName") => list(any()),
        required("period") => integer(),
        required("startTime") => non_neg_integer(),
        required("statistics") => list(list(any())())
      }
      
  """
  @type get_container_service_metric_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_alarms_request() :: %{
        optional("alarmName") => String.t() | atom(),
        optional("monitoredResourceName") => String.t() | atom(),
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_alarms_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      open_instance_public_ports_result() :: %{
        "operation" => operation()
      }
      
  """
  @type open_instance_public_ports_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detach_instances_from_load_balancer_request() :: %{
        required("instanceNames") => list(String.t() | atom()),
        required("loadBalancerName") => String.t() | atom()
      }
      
  """
  @type detach_instances_from_load_balancer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_container_service_request() :: %{
        optional("isDisabled") => boolean(),
        optional("power") => list(any()),
        optional("privateRegistryAccess") => private_registry_access_request(),
        optional("publicDomainNames") => map(),
        optional("scale") => integer()
      }
      
  """
  @type update_container_service_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_g_ui_session_request() :: %{
        required("resourceName") => String.t() | atom()
      }
      
  """
  @type start_g_ui_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_distribution_result() :: %{
        "operation" => operation()
      }
      
  """
  @type update_distribution_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_images_result() :: %{
        "containerImages" => list(container_image())
      }
      
  """
  @type get_container_images_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_container_service_registry_login_request() :: %{}
      
  """
  @type create_container_service_registry_login_request() :: %{}

  @typedoc """

  ## Example:
      
      create_g_ui_session_access_details_result() :: %{
        "failureReason" => String.t() | atom(),
        "percentageComplete" => integer(),
        "resourceName" => String.t() | atom(),
        "sessions" => list(session()),
        "status" => list(any())
      }
      
  """
  @type create_g_ui_session_access_details_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_load_balancers_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_load_balancers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      is_vpc_peered_request() :: %{}
      
  """
  @type is_vpc_peered_request() :: %{}

  @typedoc """

  ## Example:
      
      get_disks_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_disks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_operations_for_resource_result() :: %{
        "nextPageCount" => String.t() | atom(),
        "nextPageToken" => String.t() | atom(),
        "operations" => list(operation())
      }
      
  """
  @type get_operations_for_resource_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_distribution_latest_cache_reset_result() :: %{
        "createTime" => non_neg_integer(),
        "status" => String.t() | atom()
      }
      
  """
  @type get_distribution_latest_cache_reset_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_bucket_access_key_result() :: %{
        "accessKey" => access_key(),
        "operations" => list(operation())
      }
      
  """
  @type create_bucket_access_key_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type tag_resource_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_state_result() :: %{
        "state" => instance_state()
      }
      
  """
  @type get_instance_state_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unpeer_vpc_request() :: %{}
      
  """
  @type unpeer_vpc_request() :: %{}

  @typedoc """

  ## Example:
      
      open_instance_public_ports_request() :: %{
        required("instanceName") => String.t() | atom(),
        required("portInfo") => port_info()
      }
      
  """
  @type open_instance_public_ports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cloud_formation_stack_records_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_cloud_formation_stack_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_distribution_bundle_request() :: %{
        optional("bundleId") => String.t() | atom(),
        optional("distributionName") => String.t() | atom()
      }
      
  """
  @type update_distribution_bundle_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_operations_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_operations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_databases_result() :: %{
        "nextPageToken" => String.t() | atom(),
        "relationalDatabases" => list(relational_database())
      }
      
  """
  @type get_relational_databases_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_distribution_request() :: %{
        optional("distributionName") => String.t() | atom()
      }
      
  """
  @type delete_distribution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_blueprints_result() :: %{
        "blueprints" => list(relational_database_blueprint()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_relational_database_blueprints_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_key_pair_result() :: %{
        "keyPair" => key_pair(),
        "operation" => operation(),
        "privateKeyBase64" => String.t() | atom(),
        "publicKeyBase64" => String.t() | atom()
      }
      
  """
  @type create_key_pair_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_static_ip_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type attach_static_ip_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_result() :: %{
        "relationalDatabase" => relational_database()
      }
      
  """
  @type get_relational_database_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      metric_datapoint() :: %{
        "average" => float(),
        "maximum" => float(),
        "minimum" => float(),
        "sampleCount" => float(),
        "sum" => float(),
        "timestamp" => non_neg_integer(),
        "unit" => list(any())
      }
      
  """
  @type metric_datapoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_g_ui_session_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type start_g_ui_session_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_load_balancer_tls_certificate_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_load_balancer_tls_certificate_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      relational_database_parameter() :: %{
        "allowedValues" => String.t() | atom(),
        "applyMethod" => String.t() | atom(),
        "applyType" => String.t() | atom(),
        "dataType" => String.t() | atom(),
        "description" => String.t() | atom(),
        "isModifiable" => boolean(),
        "parameterName" => String.t() | atom(),
        "parameterValue" => String.t() | atom()
      }
      
  """
  @type relational_database_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_setup_history_request() :: %{
        optional("pageToken") => String.t() | atom(),
        required("resourceName") => String.t() | atom()
      }
      
  """
  @type get_setup_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_static_ips_result() :: %{
        "nextPageToken" => String.t() | atom(),
        "staticIps" => list(static_ip())
      }
      
  """
  @type get_static_ips_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cloud_formation_stack_records_result() :: %{
        "cloudFormationStackRecords" => list(cloud_formation_stack_record()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_cloud_formation_stack_records_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_master_user_password_request() :: %{
        optional("passwordVersion") => list(any()),
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type get_relational_database_master_user_password_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      get_relational_database_snapshots_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_relational_database_snapshots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      export_snapshot_record_source_info() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "diskSnapshotInfo" => disk_snapshot_info(),
        "fromResourceArn" => String.t() | atom(),
        "fromResourceName" => String.t() | atom(),
        "instanceSnapshotInfo" => instance_snapshot_info(),
        "name" => String.t() | atom(),
        "resourceType" => list(any())
      }
      
  """
  @type export_snapshot_record_source_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_disks_result() :: %{
        "disks" => list(disk()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_disks_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_result() :: %{
        "instance" => instance()
      }
      
  """
  @type get_instance_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_state_request() :: %{
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type get_instance_state_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_load_balancer_metric_data_result() :: %{
        "metricData" => list(metric_datapoint()),
        "metricName" => list(any())
      }
      
  """
  @type get_load_balancer_metric_data_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_bucket_access_key_request() :: %{
        required("accessKeyId") => String.t() | atom(),
        required("bucketName") => String.t() | atom()
      }
      
  """
  @type delete_bucket_access_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_blueprints_result() :: %{
        "blueprints" => list(blueprint()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_blueprints_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_string_object() :: %{
        "option" => boolean(),
        "queryStringsAllowList" => list(String.t() | atom())
      }
      
  """
  @type query_string_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detach_certificate_from_distribution_request() :: %{
        required("distributionName") => String.t() | atom()
      }
      
  """
  @type detach_certificate_from_distribution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_instance_request() :: %{
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type start_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_disk_result() :: %{
        "disk" => disk()
      }
      
  """
  @type get_disk_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      domain_entry() :: %{
        "id" => String.t() | atom(),
        "isAlias" => boolean(),
        "name" => String.t() | atom(),
        "options" => map(),
        "target" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type domain_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disk_info() :: %{
        "isSystemDisk" => boolean(),
        "name" => String.t() | atom(),
        "path" => String.t() | atom(),
        "sizeInGb" => integer()
      }
      
  """
  @type disk_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_domain_entry_result() :: %{
        "operation" => operation()
      }
      
  """
  @type create_domain_entry_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_record() :: %{
        "name" => String.t() | atom(),
        "type" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type resource_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      registered_domain_delegation_info() :: %{
        "nameServersUpdateState" => name_servers_update_state(),
        "r53HostedZoneDeletionState" => r53_hosted_zone_deletion_state()
      }
      
  """
  @type registered_domain_delegation_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      header_object() :: %{
        "headersAllowList" => list(list(any())()),
        "option" => list(any())
      }
      
  """
  @type header_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_certificates_request() :: %{
        optional("certificateName") => String.t() | atom(),
        optional("certificateStatuses") => list(list(any())()),
        optional("includeCertificateDetails") => boolean(),
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_certificates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      host_key_attributes() :: %{
        "algorithm" => String.t() | atom(),
        "fingerprintSHA1" => String.t() | atom(),
        "fingerprintSHA256" => String.t() | atom(),
        "notValidAfter" => non_neg_integer(),
        "notValidBefore" => non_neg_integer(),
        "publicKey" => String.t() | atom(),
        "witnessedAt" => non_neg_integer()
      }
      
  """
  @type host_key_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_behavior() :: %{
        "behavior" => list(any())
      }
      
  """
  @type cache_behavior() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_key_last_used() :: %{
        "lastUsedDate" => non_neg_integer(),
        "region" => String.t() | atom(),
        "serviceName" => String.t() | atom()
      }
      
  """
  @type access_key_last_used() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      relational_database_endpoint() :: %{
        "address" => String.t() | atom(),
        "port" => integer()
      }
      
  """
  @type relational_database_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_api_metadata_request() :: %{}
      
  """
  @type get_container_api_metadata_request() :: %{}

  @typedoc """

  ## Example:
      
      stop_relational_database_request() :: %{
        optional("relationalDatabaseSnapshotName") => String.t() | atom(),
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type stop_relational_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_container_service_result() :: %{
        "containerService" => container_service()
      }
      
  """
  @type create_container_service_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_service_endpoint() :: %{
        "containerName" => String.t() | atom(),
        "containerPort" => integer(),
        "healthCheck" => container_service_health_check_config()
      }
      
  """
  @type container_service_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      estimate_by_time() :: %{
        "currency" => list(any()),
        "pricingUnit" => list(any()),
        "timePeriod" => time_period(),
        "unit" => float(),
        "usageCost" => float()
      }
      
  """
  @type estimate_by_time() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_estimate() :: %{
        "resultsByTime" => list(estimate_by_time()),
        "usageType" => String.t() | atom()
      }
      
  """
  @type cost_estimate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      relational_database_bundle() :: %{
        "bundleId" => String.t() | atom(),
        "cpuCount" => integer(),
        "diskSizeInGb" => integer(),
        "isActive" => boolean(),
        "isEncrypted" => boolean(),
        "name" => String.t() | atom(),
        "price" => float(),
        "ramSizeInGb" => float(),
        "transferPerMonthInGb" => integer()
      }
      
  """
  @type relational_database_bundle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_disk_snapshots_result() :: %{
        "diskSnapshots" => list(disk_snapshot()),
        "nextPageToken" => String.t() | atom()
      }
      
  """
  @type get_disk_snapshots_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_service_powers_request() :: %{}
      
  """
  @type get_container_service_powers_request() :: %{}

  @typedoc """

  ## Example:
      
      detach_certificate_from_distribution_result() :: %{
        "operation" => operation()
      }
      
  """
  @type detach_certificate_from_distribution_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_relational_database_from_snapshot_request() :: %{
        optional("availabilityZone") => String.t() | atom(),
        optional("publiclyAccessible") => boolean(),
        optional("relationalDatabaseBundleId") => String.t() | atom(),
        optional("relationalDatabaseSnapshotName") => String.t() | atom(),
        optional("restoreTime") => non_neg_integer(),
        optional("sourceRelationalDatabaseName") => String.t() | atom(),
        optional("tags") => list(tag()),
        optional("useLatestRestorableTime") => boolean(),
        required("relationalDatabaseName") => String.t() | atom()
      }
      
  """
  @type create_relational_database_from_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relational_database_blueprints_request() :: %{
        optional("pageToken") => String.t() | atom()
      }
      
  """
  @type get_relational_database_blueprints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_entry() :: %{
        "availabilityZone" => String.t() | atom(),
        "instanceType" => String.t() | atom(),
        "portInfoSource" => list(any()),
        "sourceName" => String.t() | atom(),
        "userData" => String.t() | atom()
      }
      
  """
  @type instance_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_resource_access_for_bucket_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type set_resource_access_for_bucket_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cookie_object() :: %{
        "cookiesAllowList" => list(String.t() | atom()),
        "option" => list(any())
      }
      
  """
  @type cookie_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_auto_snapshot_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_auto_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      relational_database_blueprint() :: %{
        "blueprintId" => String.t() | atom(),
        "engine" => list(any()),
        "engineDescription" => String.t() | atom(),
        "engineVersion" => String.t() | atom(),
        "engineVersionDescription" => String.t() | atom(),
        "isEngineDefault" => boolean()
      }
      
  """
  @type relational_database_blueprint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_alarm_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_alarm_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_certificate_to_distribution_result() :: %{
        "operation" => operation()
      }
      
  """
  @type attach_certificate_to_distribution_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auto_snapshot_add_on_request() :: %{
        "snapshotTimeOfDay" => String.t() | atom()
      }
      
  """
  @type auto_snapshot_add_on_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_container_service_result() :: %{
        "containerService" => container_service()
      }
      
  """
  @type update_container_service_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      export_snapshot_record() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "destinationInfo" => destination_info(),
        "location" => resource_location(),
        "name" => String.t() | atom(),
        "resourceType" => list(any()),
        "sourceInfo" => export_snapshot_record_source_info(),
        "state" => list(any())
      }
      
  """
  @type export_snapshot_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      private_registry_access() :: %{
        "ecrImagePullerRole" => container_service_e_c_r_image_puller_role()
      }
      
  """
  @type private_registry_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      close_instance_public_ports_request() :: %{
        required("instanceName") => String.t() | atom(),
        required("portInfo") => port_info()
      }
      
  """
  @type close_instance_public_ports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_contact_method_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_contact_method_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_relational_database_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type start_relational_database_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_relational_database_snapshot_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type delete_relational_database_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_setup_in_progress_exception() :: %{
        "code" => String.t() | atom(),
        "docs" => String.t() | atom(),
        "message" => String.t() | atom(),
        "tip" => String.t() | atom()
      }
      
  """
  @type account_setup_in_progress_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bucket_access_log_config() :: %{
        "destination" => String.t() | atom(),
        "enabled" => boolean(),
        "prefix" => String.t() | atom()
      }
      
  """
  @type bucket_access_log_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_disk_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type create_disk_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      relational_database_event() :: %{
        "createdAt" => non_neg_integer(),
        "eventCategories" => list(String.t() | atom()),
        "message" => String.t() | atom(),
        "resource" => String.t() | atom()
      }
      
  """
  @type relational_database_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      release_static_ip_result() :: %{
        "operations" => list(operation())
      }
      
  """
  @type release_static_ip_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_service_deployments_result() :: %{
        "deployments" => list(container_service_deployment())
      }
      
  """
  @type get_container_service_deployments_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_failure_exception() :: %{
        "code" => String.t() | atom(),
        "docs" => String.t() | atom(),
        "message" => String.t() | atom(),
        "tip" => String.t() | atom()
      }
      
  """
  @type operation_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      log_event() :: %{
        "createdAt" => non_neg_integer(),
        "message" => String.t() | atom()
      }
      
  """
  @type log_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      setup_execution_details() :: %{
        "command" => String.t() | atom(),
        "dateTime" => non_neg_integer(),
        "name" => String.t() | atom(),
        "standardError" => String.t() | atom(),
        "standardOutput" => String.t() | atom(),
        "status" => list(any()),
        "version" => String.t() | atom()
      }
      
  """
  @type setup_execution_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_contact_methods_result() :: %{
        "contactMethods" => list(contact_method())
      }
      
  """
  @type get_contact_methods_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_container_image_result() :: %{
        "containerImage" => container_image()
      }
      
  """
  @type register_container_image_result() :: %{(String.t() | atom()) => any()}

  @type allocate_static_ip_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type attach_certificate_to_distribution_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()

  @type attach_disk_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type attach_instances_to_load_balancer_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type attach_load_balancer_tls_certificate_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type attach_static_ip_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type close_instance_public_ports_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type copy_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_bucket_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_bucket_access_key_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_certificate_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_cloud_formation_stack_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_contact_method_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_container_service_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_container_service_deployment_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_container_service_registry_login_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_disk_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_disk_from_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_disk_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_distribution_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()

  @type create_domain_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_domain_entry_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_g_ui_session_access_details_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_instance_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_instances_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_instances_from_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_key_pair_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_load_balancer_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_load_balancer_tls_certificate_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_relational_database_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_relational_database_from_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type create_relational_database_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_alarm_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_auto_snapshot_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_bucket_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_bucket_access_key_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_certificate_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_contact_method_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_container_image_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_container_service_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_disk_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_disk_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_distribution_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()

  @type delete_domain_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_domain_entry_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_instance_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_instance_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_key_pair_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_known_host_keys_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_load_balancer_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_load_balancer_tls_certificate_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_relational_database_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type delete_relational_database_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type detach_certificate_from_distribution_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()

  @type detach_disk_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type detach_instances_from_load_balancer_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type detach_static_ip_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type disable_add_on_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type download_default_key_pair_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type enable_add_on_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type export_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_active_names_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_alarms_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_auto_snapshots_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_blueprints_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_bucket_access_keys_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_bucket_bundles_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_bucket_metric_data_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_buckets_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_bundles_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_certificates_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_cloud_formation_stack_records_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_contact_methods_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_container_api_metadata_errors() ::
          access_denied_exception()
          | service_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_container_images_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_container_log_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_container_service_deployments_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_container_service_metric_data_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_container_service_powers_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_container_services_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_cost_estimate_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_disk_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_disk_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_disk_snapshots_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_disks_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_distribution_bundles_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()

  @type get_distribution_latest_cache_reset_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()

  @type get_distribution_metric_data_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()

  @type get_distributions_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()

  @type get_domain_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_domains_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_export_snapshot_records_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_instance_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_instance_access_details_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_instance_metric_data_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_instance_port_states_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_instance_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_instance_snapshots_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_instance_state_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_instances_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_key_pair_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_key_pairs_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_load_balancer_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_load_balancer_metric_data_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_load_balancer_tls_certificates_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_load_balancer_tls_policies_errors() ::
          account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_load_balancers_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_operation_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_operations_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_operations_for_resource_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_regions_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_relational_database_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_relational_database_blueprints_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_relational_database_bundles_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_relational_database_events_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_relational_database_log_events_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_relational_database_log_streams_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_relational_database_master_user_password_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_relational_database_metric_data_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_relational_database_parameters_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_relational_database_snapshot_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_relational_database_snapshots_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_relational_databases_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_setup_history_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_static_ip_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type get_static_ips_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type import_key_pair_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type is_vpc_peered_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type open_instance_public_ports_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type peer_vpc_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type put_alarm_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type put_instance_public_ports_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type reboot_instance_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type reboot_relational_database_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type register_container_image_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type release_static_ip_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type reset_distribution_cache_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()

  @type send_contact_method_verification_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type set_ip_address_type_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type set_resource_access_for_bucket_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type setup_instance_https_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type start_g_ui_session_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type start_instance_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type start_relational_database_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type stop_g_ui_session_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type stop_instance_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type stop_relational_database_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type tag_resource_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type test_alarm_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type unpeer_vpc_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type untag_resource_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type update_bucket_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type update_bucket_bundle_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type update_container_service_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type update_distribution_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()

  @type update_distribution_bundle_errors() ::
          operation_failure_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()

  @type update_domain_entry_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type update_instance_metadata_options_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type update_load_balancer_attribute_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type update_relational_database_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  @type update_relational_database_parameters_errors() ::
          operation_failure_exception()
          | account_setup_in_progress_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | service_exception()
          | not_found_exception()
          | unauthenticated_exception()
          | region_setup_in_progress_exception()

  def metadata do
    %{
      api_version: "2016-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lightsail",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Lightsail",
      signature_version: "v4",
      signing_name: "lightsail",
      target_prefix: "Lightsail_20161128"
    }
  end

  @doc """
  Allocates a static IP address.
  """
  @spec allocate_static_ip(map(), allocate_static_ip_request(), list()) ::
          {:ok, allocate_static_ip_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, allocate_static_ip_errors()}
  def allocate_static_ip(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AllocateStaticIp", input, options)
  end

  @doc """
  Attaches an SSL/TLS certificate to your Amazon Lightsail content delivery
  network (CDN)
  distribution.

  After the certificate is attached, your distribution accepts HTTPS traffic for
  all of the
  domains that are associated with the certificate.

  Use the `CreateCertificate` action to create a certificate that you can attach
  to your distribution.

  Only certificates created in the `us-east-1`
  Amazon Web Services Region can be attached to Lightsail distributions. Lightsail
  distributions are global resources that can reference an origin in any Amazon
  Web Services
  Region, and distribute its content globally. However, all distributions are
  located in the
  `us-east-1` Region.
  """
  @spec attach_certificate_to_distribution(
          map(),
          attach_certificate_to_distribution_request(),
          list()
        ) ::
          {:ok, attach_certificate_to_distribution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_certificate_to_distribution_errors()}
  def attach_certificate_to_distribution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AttachCertificateToDistribution", input, options)
  end

  @doc """
  Attaches a block storage disk to a running or stopped Lightsail instance and
  exposes it
  to the instance with the specified disk name.

  The `attach disk` operation supports tag-based access control via resource tags
  applied to the resource identified by `disk name`. For more information, see the
  [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec attach_disk(map(), attach_disk_request(), list()) ::
          {:ok, attach_disk_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_disk_errors()}
  def attach_disk(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AttachDisk", input, options)
  end

  @doc """
  Attaches one or more Lightsail instances to a load balancer.

  After some time, the instances are attached to the load balancer and the health
  check
  status is available.

  The `attach instances to load balancer` operation supports tag-based access
  control via resource tags applied to the resource identified by

  ```
  load balancer
  name
  ```

  . For more information, see the [Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec attach_instances_to_load_balancer(
          map(),
          attach_instances_to_load_balancer_request(),
          list()
        ) ::
          {:ok, attach_instances_to_load_balancer_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_instances_to_load_balancer_errors()}
  def attach_instances_to_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AttachInstancesToLoadBalancer", input, options)
  end

  @doc """
  Attaches a Transport Layer Security (TLS) certificate to your load balancer.

  TLS is just
  an updated, more secure version of Secure Socket Layer (SSL).

  Once you create and validate your certificate, you can attach it to your load
  balancer.
  You can also use this API to rotate the certificates on your account. Use the
  `AttachLoadBalancerTlsCertificate` action with the non-attached certificate, and
  it will replace the existing one and become the attached certificate.

  The `AttachLoadBalancerTlsCertificate` operation supports tag-based access
  control via resource tags applied to the resource identified by

  ```
  load balancer
  name
  ```

  . For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec attach_load_balancer_tls_certificate(
          map(),
          attach_load_balancer_tls_certificate_request(),
          list()
        ) ::
          {:ok, attach_load_balancer_tls_certificate_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_load_balancer_tls_certificate_errors()}
  def attach_load_balancer_tls_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AttachLoadBalancerTlsCertificate", input, options)
  end

  @doc """
  Attaches a static IP address to a specific Amazon Lightsail instance.
  """
  @spec attach_static_ip(map(), attach_static_ip_request(), list()) ::
          {:ok, attach_static_ip_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_static_ip_errors()}
  def attach_static_ip(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AttachStaticIp", input, options)
  end

  @doc """
  Closes ports for a specific Amazon Lightsail instance.

  The `CloseInstancePublicPorts` action supports tag-based access control via
  resource tags applied to the resource identified by `instanceName`. For more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec close_instance_public_ports(map(), close_instance_public_ports_request(), list()) ::
          {:ok, close_instance_public_ports_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, close_instance_public_ports_errors()}
  def close_instance_public_ports(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CloseInstancePublicPorts", input, options)
  end

  @doc """
  Copies a manual snapshot of an instance or disk as another manual snapshot, or
  copies an
  automatic snapshot of an instance or disk as a manual snapshot.

  This operation can also be
  used to copy a manual or automatic snapshot of an instance or a disk from one
  Amazon Web Services Region to another in Amazon Lightsail.

  When copying a *manual snapshot*, be sure to define the

  ```
  source
  region
  ```

  , `source snapshot name`, and `target snapshot name`
  parameters.

  When copying an *automatic snapshot*, be sure to define the
  `source region`, `source resource name`,

  ```
  target snapshot
  name
  ```

  , and either the `restore date` or the

  ```
  use latest restorable
  auto snapshot
  ```

  parameters.
  """
  @spec copy_snapshot(map(), copy_snapshot_request(), list()) ::
          {:ok, copy_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_snapshot_errors()}
  def copy_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CopySnapshot", input, options)
  end

  @doc """
  Creates an Amazon Lightsail bucket.

  A bucket is a cloud storage resource available in the Lightsail object storage
  service.
  Use buckets to store objects such as data and its descriptive metadata. For more
  information
  about buckets, see [Buckets in Amazon Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/buckets-in-amazon-lightsail)
  in the *Amazon Lightsail Developer
  Guide*.
  """
  @spec create_bucket(map(), create_bucket_request(), list()) ::
          {:ok, create_bucket_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_bucket_errors()}
  def create_bucket(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBucket", input, options)
  end

  @doc """
  Creates a new access key for the specified Amazon Lightsail bucket.

  Access keys consist of
  an access key ID and corresponding secret access key.

  Access keys grant full programmatic access to the specified bucket and its
  objects. You
  can have a maximum of two access keys per bucket. Use the
  [GetBucketAccessKeys](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketAccessKeys.html) action to get a list of current access keys for a specific bucket. For more
  information about access keys, see [Creating access keys for a bucket in Amazon
  Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-creating-bucket-access-keys)
  in the
  *Amazon Lightsail Developer Guide*.

  The `secretAccessKey` value is returned only in response to the
  `CreateBucketAccessKey` action. You can get a secret access key only when you
  first create an access key; you cannot get the secret access key later. If you
  lose the
  secret access key, you must create a new access key.
  """
  @spec create_bucket_access_key(map(), create_bucket_access_key_request(), list()) ::
          {:ok, create_bucket_access_key_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_bucket_access_key_errors()}
  def create_bucket_access_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBucketAccessKey", input, options)
  end

  @doc """
  Creates an SSL/TLS certificate for an Amazon Lightsail content delivery network
  (CDN)
  distribution and a container service.

  After the certificate is valid, use the `AttachCertificateToDistribution`
  action to use the certificate and its domains with your distribution. Or use the
  `UpdateContainerService` action to use the certificate and its domains with your
  container service.

  Only certificates created in the `us-east-1`
  Amazon Web Services Region can be attached to Lightsail distributions. Lightsail
  distributions are global resources that can reference an origin in any Amazon
  Web Services
  Region, and distribute its content globally. However, all distributions are
  located in the
  `us-east-1` Region.
  """
  @spec create_certificate(map(), create_certificate_request(), list()) ::
          {:ok, create_certificate_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_certificate_errors()}
  def create_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCertificate", input, options)
  end

  @doc """
  Creates an AWS CloudFormation stack, which creates a new Amazon EC2 instance
  from an exported
  Amazon Lightsail snapshot.

  This operation results in a CloudFormation stack record that can be
  used to track the AWS CloudFormation stack created. Use the

  ```
  get cloud formation stack
  records
  ```

  operation to get a list of the CloudFormation stacks created.

  Wait until after your new Amazon EC2 instance is created before running the

  ```
  create
  cloud formation stack
  ```

  operation again with the same export snapshot record.
  """
  @spec create_cloud_formation_stack(map(), create_cloud_formation_stack_request(), list()) ::
          {:ok, create_cloud_formation_stack_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cloud_formation_stack_errors()}
  def create_cloud_formation_stack(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCloudFormationStack", input, options)
  end

  @doc """
  Creates an email or SMS text message contact method.

  A contact method is used to send you notifications about your Amazon Lightsail
  resources.
  You can add one email address and one mobile phone number contact method in each
  Amazon Web Services Region. However, SMS text messaging is not supported in some
  Amazon Web Services
  Regions, and SMS text messages cannot be sent to some countries/regions. For
  more information,
  see [Notifications in Amazon Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications).
  """
  @spec create_contact_method(map(), create_contact_method_request(), list()) ::
          {:ok, create_contact_method_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_contact_method_errors()}
  def create_contact_method(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateContactMethod", input, options)
  end

  @doc """
  Creates an Amazon Lightsail container service.

  A Lightsail container service is a compute resource to which you can deploy
  containers.
  For more information, see [Container services in Amazon Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-services)
  in the *Lightsail Dev
  Guide*.
  """
  @spec create_container_service(map(), create_container_service_request(), list()) ::
          {:ok, create_container_service_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_container_service_errors()}
  def create_container_service(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateContainerService", input, options)
  end

  @doc """
  Creates a deployment for your Amazon Lightsail container service.

  A deployment specifies the containers that will be launched on the container
  service and
  their settings, such as the ports to open, the environment variables to apply,
  and the launch
  command to run. It also specifies the container that will serve as the public
  endpoint of the
  deployment and its settings, such as the HTTP or HTTPS port to use, and the
  health check
  configuration.

  You can deploy containers to your container service using container images from
  a public
  registry such as Amazon ECR Public, or from your local machine. For more
  information, see
  [Creating container images for your Amazon Lightsail container services](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-creating-container-images)
  in the
  *Amazon Lightsail Developer Guide*.
  """
  @spec create_container_service_deployment(
          map(),
          create_container_service_deployment_request(),
          list()
        ) ::
          {:ok, create_container_service_deployment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_container_service_deployment_errors()}
  def create_container_service_deployment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateContainerServiceDeployment", input, options)
  end

  @doc """
  Creates a temporary set of log in credentials that you can use to log in to the
  Docker
  process on your local machine.

  After you're logged in, you can use the native Docker commands
  to push your local container images to the container image registry of your
  Amazon Lightsail
  account so that you can use them with your Lightsail container service. The log
  in
  credentials expire 12 hours after they are created, at which point you will need
  to create a
  new set of log in credentials.

  You can only push container images to the container service registry of your
  Lightsail
  account. You cannot pull container images or perform any other container image
  management
  actions on the container service registry.

  After you push your container images to the container image registry of your
  Lightsail
  account, use the `RegisterContainerImage` action to register the pushed images
  to a
  specific Lightsail container service.

  This action is not required if you install and use the Lightsail Control
  (lightsailctl) plugin to push container images to your Lightsail container
  service. For
  more information, see [Pushing and managing container images on your Amazon Lightsail container
  services](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-pushing-container-images)
  in the *Amazon Lightsail Developer Guide*.
  """
  @spec create_container_service_registry_login(
          map(),
          create_container_service_registry_login_request(),
          list()
        ) ::
          {:ok, create_container_service_registry_login_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_container_service_registry_login_errors()}
  def create_container_service_registry_login(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateContainerServiceRegistryLogin", input, options)
  end

  @doc """
  Creates a block storage disk that can be attached to an Amazon Lightsail
  instance in the
  same Availability Zone (`us-east-2a`).

  The `create disk` operation supports tag-based access control via request tags.
  For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_disk(map(), create_disk_request(), list()) ::
          {:ok, create_disk_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_disk_errors()}
  def create_disk(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDisk", input, options)
  end

  @doc """
  Creates a block storage disk from a manual or automatic snapshot of a disk.

  The resulting
  disk can be attached to an Amazon Lightsail instance in the same Availability
  Zone
  (`us-east-2a`).

  The `create disk from snapshot` operation supports tag-based access control via
  request tags and resource tags applied to the resource identified by

  ```
  disk snapshot
  name
  ```

  . For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_disk_from_snapshot(map(), create_disk_from_snapshot_request(), list()) ::
          {:ok, create_disk_from_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_disk_from_snapshot_errors()}
  def create_disk_from_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDiskFromSnapshot", input, options)
  end

  @doc """
  Creates a snapshot of a block storage disk.

  You can use snapshots for backups, to make
  copies of disks, and to save data before shutting down a Lightsail instance.

  You can take a snapshot of an attached disk that is in use; however, snapshots
  only
  capture data that has been written to your disk at the time the snapshot command
  is issued.
  This may exclude any data that has been cached by any applications or the
  operating system. If
  you can pause any file systems on the disk long enough to take a snapshot, your
  snapshot
  should be complete. Nevertheless, if you cannot pause all file writes to the
  disk, you should
  unmount the disk from within the Lightsail instance, issue the create disk
  snapshot command,
  and then remount the disk to ensure a consistent and complete snapshot. You may
  remount and
  use your disk while the snapshot status is pending.

  You can also use this operation to create a snapshot of an instance's system
  volume. You
  might want to do this, for example, to recover data from the system volume of a
  botched
  instance or to create a backup of the system volume like you would for a block
  storage disk.
  To create a snapshot of a system volume, just define the `instance name`
  parameter
  when issuing the snapshot command, and a snapshot of the defined instance's
  system volume will
  be created. After the snapshot is available, you can create a block storage disk
  from the
  snapshot and attach it to a running instance to access the data on the disk.

  The `create disk snapshot` operation supports tag-based access control via
  request tags. For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_disk_snapshot(map(), create_disk_snapshot_request(), list()) ::
          {:ok, create_disk_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_disk_snapshot_errors()}
  def create_disk_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDiskSnapshot", input, options)
  end

  @doc """
  Creates an Amazon Lightsail content delivery network (CDN) distribution.

  A distribution is a globally distributed network of caching servers that improve
  the
  performance of your website or web application hosted on a Lightsail instance.
  For more
  information, see [Content delivery networks in Amazon Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-content-delivery-network-distributions).
  """
  @spec create_distribution(map(), create_distribution_request(), list()) ::
          {:ok, create_distribution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_distribution_errors()}
  def create_distribution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDistribution", input, options)
  end

  @doc """
  Creates a domain resource for the specified domain (example.com).

  The `create domain` operation supports tag-based access control via request
  tags. For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_domain(map(), create_domain_request(), list()) ::
          {:ok, create_domain_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDomain", input, options)
  end

  @doc """
  Creates one of the following domain name system (DNS) records in a domain DNS
  zone:
  Address (A), canonical name (CNAME), mail exchanger (MX), name server (NS),
  start of authority
  (SOA), service locator (SRV), or text (TXT).

  The `create domain entry` operation supports tag-based access control via
  resource tags applied to the resource identified by `domain name`. For more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_domain_entry(map(), create_domain_entry_request(), list()) ::
          {:ok, create_domain_entry_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_entry_errors()}
  def create_domain_entry(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDomainEntry", input, options)
  end

  @doc """
  Creates two URLs that are used to access a virtual computer’s graphical user
  interface
  (GUI) session.

  The primary URL initiates a web-based Amazon DCV session to the virtual
  computer's application. The secondary URL initiates a web-based Amazon DCV
  session to the
  virtual computer's operating session.

  Use `StartGUISession` to open the session.
  """
  @spec create_g_ui_session_access_details(
          map(),
          create_g_ui_session_access_details_request(),
          list()
        ) ::
          {:ok, create_g_ui_session_access_details_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_g_ui_session_access_details_errors()}
  def create_g_ui_session_access_details(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGUISessionAccessDetails", input, options)
  end

  @doc """
  Creates a snapshot of a specific virtual private server, or *instance*.

  You can use a snapshot to create a new instance that is based on that snapshot.

  The `create instance snapshot` operation supports tag-based access control via
  request tags. For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_instance_snapshot(map(), create_instance_snapshot_request(), list()) ::
          {:ok, create_instance_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_instance_snapshot_errors()}
  def create_instance_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateInstanceSnapshot", input, options)
  end

  @doc """
  Creates one or more Amazon Lightsail instances.

  The `create instances` operation supports tag-based access control via request
  tags. For more information, see the [Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_instances(map(), create_instances_request(), list()) ::
          {:ok, create_instances_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_instances_errors()}
  def create_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateInstances", input, options)
  end

  @doc """
  Creates one or more new instances from a manual or automatic snapshot of an
  instance.

  The `create instances from snapshot` operation supports tag-based access
  control via request tags and resource tags applied to the resource identified by
  `instance snapshot name`. For more information, see the [Amazon Lightsail Developer
  Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_instances_from_snapshot(map(), create_instances_from_snapshot_request(), list()) ::
          {:ok, create_instances_from_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_instances_from_snapshot_errors()}
  def create_instances_from_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateInstancesFromSnapshot", input, options)
  end

  @doc """
  Creates a custom SSH key pair that you can use with an Amazon Lightsail
  instance.

  Use the
  [DownloadDefaultKeyPair](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_DownloadDefaultKeyPair.html) action to create a Lightsail default key
  pair in an Amazon Web Services Region where a default key pair does not
  currently
  exist.

  The `create key pair` operation supports tag-based access control via request
  tags. For more information, see the [Amazon Lightsail Developer
  Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_key_pair(map(), create_key_pair_request(), list()) ::
          {:ok, create_key_pair_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_key_pair_errors()}
  def create_key_pair(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateKeyPair", input, options)
  end

  @doc """
  Creates a Lightsail load balancer.

  To learn more about deciding whether to load balance
  your application, see [Configure your Lightsail instances for load balancing](https://docs.aws.amazon.com/lightsail/latest/userguide/configure-lightsail-instances-for-load-balancing).
  You can create up to 5
  load balancers per AWS Region in your account.

  When you create a load balancer, you can specify a unique name and port
  settings. To
  change additional load balancer settings, use the `UpdateLoadBalancerAttribute`
  operation.

  The `create load balancer` operation supports tag-based access control via
  request tags. For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_load_balancer(map(), create_load_balancer_request(), list()) ::
          {:ok, create_load_balancer_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_load_balancer_errors()}
  def create_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLoadBalancer", input, options)
  end

  @doc """
  Creates an SSL/TLS certificate for an Amazon Lightsail load balancer.

  TLS is just an updated, more secure version of Secure Socket Layer (SSL).

  The `CreateLoadBalancerTlsCertificate` operation supports tag-based access
  control via resource tags applied to the resource identified by

  ```
  load balancer
  name
  ```

  . For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_load_balancer_tls_certificate(
          map(),
          create_load_balancer_tls_certificate_request(),
          list()
        ) ::
          {:ok, create_load_balancer_tls_certificate_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_load_balancer_tls_certificate_errors()}
  def create_load_balancer_tls_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLoadBalancerTlsCertificate", input, options)
  end

  @doc """
  Creates a new database in Amazon Lightsail.

  The `create relational database` operation supports tag-based access control
  via request tags. For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_relational_database(map(), create_relational_database_request(), list()) ::
          {:ok, create_relational_database_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_relational_database_errors()}
  def create_relational_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRelationalDatabase", input, options)
  end

  @doc """
  Creates a new database from an existing database snapshot in Amazon Lightsail.

  You can create a new database from a snapshot in if something goes wrong with
  your
  original database, or to change it to a different plan, such as a high
  availability or
  standard plan.

  The `create relational database from snapshot` operation supports tag-based
  access control via request tags and resource tags applied to the resource
  identified by
  relationalDatabaseSnapshotName. For more information, see the [Amazon Lightsail Developer
  Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_relational_database_from_snapshot(
          map(),
          create_relational_database_from_snapshot_request(),
          list()
        ) ::
          {:ok, create_relational_database_from_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_relational_database_from_snapshot_errors()}
  def create_relational_database_from_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRelationalDatabaseFromSnapshot", input, options)
  end

  @doc """
  Creates a snapshot of your database in Amazon Lightsail.

  You can use snapshots for backups,
  to make copies of a database, and to save data before deleting a database.

  The `create relational database snapshot` operation supports tag-based access
  control via request tags. For more information, see the [Amazon Lightsail Developer
  Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec create_relational_database_snapshot(
          map(),
          create_relational_database_snapshot_request(),
          list()
        ) ::
          {:ok, create_relational_database_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_relational_database_snapshot_errors()}
  def create_relational_database_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRelationalDatabaseSnapshot", input, options)
  end

  @doc """
  Deletes an alarm.

  An alarm is used to monitor a single metric for one of your resources. When a
  metric
  condition is met, the alarm can notify you by email, SMS text message, and a
  banner displayed
  on the Amazon Lightsail console. For more information, see [Alarms in Amazon
  Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms).
  """
  @spec delete_alarm(map(), delete_alarm_request(), list()) ::
          {:ok, delete_alarm_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_alarm_errors()}
  def delete_alarm(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAlarm", input, options)
  end

  @doc """
  Deletes an automatic snapshot of an instance or disk.

  For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots).
  """
  @spec delete_auto_snapshot(map(), delete_auto_snapshot_request(), list()) ::
          {:ok, delete_auto_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_auto_snapshot_errors()}
  def delete_auto_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAutoSnapshot", input, options)
  end

  @doc """
  Deletes a Amazon Lightsail bucket.

  When you delete your bucket, the bucket name is released and can be reused for a
  new
  bucket in your account or another Amazon Web Services account.
  """
  @spec delete_bucket(map(), delete_bucket_request(), list()) ::
          {:ok, delete_bucket_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bucket_errors()}
  def delete_bucket(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBucket", input, options)
  end

  @doc """
  Deletes an access key for the specified Amazon Lightsail bucket.

  We recommend that you delete an access key if the secret access key is
  compromised.

  For more information about access keys, see [Creating access keys for a bucket in Amazon
  Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-creating-bucket-access-keys)
  in the
  *Amazon Lightsail Developer Guide*.
  """
  @spec delete_bucket_access_key(map(), delete_bucket_access_key_request(), list()) ::
          {:ok, delete_bucket_access_key_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bucket_access_key_errors()}
  def delete_bucket_access_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBucketAccessKey", input, options)
  end

  @doc """
  Deletes an SSL/TLS certificate for your Amazon Lightsail content delivery
  network (CDN)
  distribution.

  Certificates that are currently attached to a distribution cannot be deleted.
  Use the
  `DetachCertificateFromDistribution` action to detach a certificate from a
  distribution.
  """
  @spec delete_certificate(map(), delete_certificate_request(), list()) ::
          {:ok, delete_certificate_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_certificate_errors()}
  def delete_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCertificate", input, options)
  end

  @doc """
  Deletes a contact method.

  A contact method is used to send you notifications about your Amazon Lightsail
  resources.
  You can add one email address and one mobile phone number contact method in each
  Amazon Web Services Region. However, SMS text messaging is not supported in some
  Amazon Web Services
  Regions, and SMS text messages cannot be sent to some countries/regions. For
  more information,
  see [Notifications in Amazon Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications).
  """
  @spec delete_contact_method(map(), delete_contact_method_request(), list()) ::
          {:ok, delete_contact_method_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_contact_method_errors()}
  def delete_contact_method(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteContactMethod", input, options)
  end

  @doc """
  Deletes a container image that is registered to your Amazon Lightsail container
  service.
  """
  @spec delete_container_image(map(), delete_container_image_request(), list()) ::
          {:ok, delete_container_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_container_image_errors()}
  def delete_container_image(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteContainerImage", input, options)
  end

  @doc """
  Deletes your Amazon Lightsail container service.
  """
  @spec delete_container_service(map(), delete_container_service_request(), list()) ::
          {:ok, delete_container_service_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_container_service_errors()}
  def delete_container_service(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteContainerService", input, options)
  end

  @doc """
  Deletes the specified block storage disk.

  The disk must be in the `available`
  state (not attached to a Lightsail instance).

  The disk may remain in the `deleting` state for several minutes.

  The `delete disk` operation supports tag-based access control via resource tags
  applied to the resource identified by `disk name`. For more information, see the
  [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec delete_disk(map(), delete_disk_request(), list()) ::
          {:ok, delete_disk_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_disk_errors()}
  def delete_disk(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDisk", input, options)
  end

  @doc """
  Deletes the specified disk snapshot.

  When you make periodic snapshots of a disk, the snapshots are incremental, and
  only the
  blocks on the device that have changed since your last snapshot are saved in the
  new snapshot.
  When you delete a snapshot, only the data not needed for any other snapshot is
  removed. So
  regardless of which prior snapshots have been deleted, all active snapshots will
  have access
  to all the information needed to restore the disk.

  The `delete disk snapshot` operation supports tag-based access control via
  resource tags applied to the resource identified by `disk snapshot name`. For
  more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec delete_disk_snapshot(map(), delete_disk_snapshot_request(), list()) ::
          {:ok, delete_disk_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_disk_snapshot_errors()}
  def delete_disk_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDiskSnapshot", input, options)
  end

  @doc """
  Deletes your Amazon Lightsail content delivery network (CDN) distribution.
  """
  @spec delete_distribution(map(), delete_distribution_request(), list()) ::
          {:ok, delete_distribution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_distribution_errors()}
  def delete_distribution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDistribution", input, options)
  end

  @doc """
  Deletes the specified domain recordset and all of its domain records.

  The `delete domain` operation supports tag-based access control via resource
  tags applied to the resource identified by `domain name`. For more information,
  see
  the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec delete_domain(map(), delete_domain_request(), list()) ::
          {:ok, delete_domain_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDomain", input, options)
  end

  @doc """
  Deletes a specific domain entry.

  The `delete domain entry` operation supports tag-based access control via
  resource tags applied to the resource identified by `domain name`. For more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec delete_domain_entry(map(), delete_domain_entry_request(), list()) ::
          {:ok, delete_domain_entry_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_entry_errors()}
  def delete_domain_entry(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDomainEntry", input, options)
  end

  @doc """
  Deletes an Amazon Lightsail instance.

  The `delete instance` operation supports tag-based access control via resource
  tags applied to the resource identified by `instance name`. For more
  information,
  see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec delete_instance(map(), delete_instance_request(), list()) ::
          {:ok, delete_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_instance_errors()}
  def delete_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteInstance", input, options)
  end

  @doc """
  Deletes a specific snapshot of a virtual private server (or
  *instance*).

  The `delete instance snapshot` operation supports tag-based access control via
  resource tags applied to the resource identified by `instance snapshot name`.
  For
  more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec delete_instance_snapshot(map(), delete_instance_snapshot_request(), list()) ::
          {:ok, delete_instance_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_instance_snapshot_errors()}
  def delete_instance_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteInstanceSnapshot", input, options)
  end

  @doc """
  Deletes the specified key pair by removing the public key from Amazon Lightsail.

  You can delete key pairs that were created using the
  [ImportKeyPair](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_ImportKeyPair.html) and
  [CreateKeyPair](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateKeyPair.html)
  actions, as well as the Lightsail default key pair. A new default
  key pair will not be created unless you launch an instance without specifying a
  custom key
  pair, or you call the
  [DownloadDefaultKeyPair](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_DownloadDefaultKeyPair.html) API.

  The `delete key pair` operation supports tag-based access control via resource
  tags applied to the resource identified by `key pair name`. For more
  information,
  see the [Amazon Lightsail Developer
  Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec delete_key_pair(map(), delete_key_pair_request(), list()) ::
          {:ok, delete_key_pair_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_key_pair_errors()}
  def delete_key_pair(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteKeyPair", input, options)
  end

  @doc """
  Deletes the known host key or certificate used by the Amazon Lightsail
  browser-based SSH or
  RDP clients to authenticate an instance.

  This operation enables the Lightsail browser-based
  SSH or RDP clients to connect to the instance after a host key mismatch.

  Perform this operation only if you were expecting the host key or certificate
  mismatch
  or if you are familiar with the new host key or certificate on the instance. For
  more
  information, see [Troubleshooting connection issues when using the Amazon Lightsail browser-based SSH or RDP
  client](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-troubleshooting-browser-based-ssh-rdp-client-connection).
  """
  @spec delete_known_host_keys(map(), delete_known_host_keys_request(), list()) ::
          {:ok, delete_known_host_keys_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_known_host_keys_errors()}
  def delete_known_host_keys(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteKnownHostKeys", input, options)
  end

  @doc """
  Deletes a Lightsail load balancer and all its associated SSL/TLS certificates.

  Once the
  load balancer is deleted, you will need to create a new load balancer, create a
  new
  certificate, and verify domain ownership again.

  The `delete load balancer` operation supports tag-based access control via
  resource tags applied to the resource identified by `load balancer name`. For
  more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec delete_load_balancer(map(), delete_load_balancer_request(), list()) ::
          {:ok, delete_load_balancer_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_load_balancer_errors()}
  def delete_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLoadBalancer", input, options)
  end

  @doc """
  Deletes an SSL/TLS certificate associated with a Lightsail load balancer.

  The `DeleteLoadBalancerTlsCertificate` operation supports tag-based access
  control via resource tags applied to the resource identified by

  ```
  load balancer
  name
  ```

  . For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec delete_load_balancer_tls_certificate(
          map(),
          delete_load_balancer_tls_certificate_request(),
          list()
        ) ::
          {:ok, delete_load_balancer_tls_certificate_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_load_balancer_tls_certificate_errors()}
  def delete_load_balancer_tls_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLoadBalancerTlsCertificate", input, options)
  end

  @doc """
  Deletes a database in Amazon Lightsail.

  The `delete relational database` operation supports tag-based access control
  via resource tags applied to the resource identified by relationalDatabaseName.
  For more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec delete_relational_database(map(), delete_relational_database_request(), list()) ::
          {:ok, delete_relational_database_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_relational_database_errors()}
  def delete_relational_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRelationalDatabase", input, options)
  end

  @doc """
  Deletes a database snapshot in Amazon Lightsail.

  The `delete relational database snapshot` operation supports tag-based access
  control via resource tags applied to the resource identified by
  relationalDatabaseName. For
  more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec delete_relational_database_snapshot(
          map(),
          delete_relational_database_snapshot_request(),
          list()
        ) ::
          {:ok, delete_relational_database_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_relational_database_snapshot_errors()}
  def delete_relational_database_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRelationalDatabaseSnapshot", input, options)
  end

  @doc """
  Detaches an SSL/TLS certificate from your Amazon Lightsail content delivery
  network (CDN)
  distribution.

  After the certificate is detached, your distribution stops accepting traffic for
  all of
  the domains that are associated with the certificate.
  """
  @spec detach_certificate_from_distribution(
          map(),
          detach_certificate_from_distribution_request(),
          list()
        ) ::
          {:ok, detach_certificate_from_distribution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_certificate_from_distribution_errors()}
  def detach_certificate_from_distribution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetachCertificateFromDistribution", input, options)
  end

  @doc """
  Detaches a stopped block storage disk from a Lightsail instance.

  Make sure to unmount
  any file systems on the device within your operating system before stopping the
  instance and
  detaching the disk.

  The `detach disk` operation supports tag-based access control via resource tags
  applied to the resource identified by `disk name`. For more information, see the
  [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec detach_disk(map(), detach_disk_request(), list()) ::
          {:ok, detach_disk_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_disk_errors()}
  def detach_disk(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetachDisk", input, options)
  end

  @doc """
  Detaches the specified instances from a Lightsail load balancer.

  This operation waits until the instances are no longer needed before they are
  detached
  from the load balancer.

  The `detach instances from load balancer` operation supports tag-based access
  control via resource tags applied to the resource identified by

  ```
  load balancer
  name
  ```

  . For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec detach_instances_from_load_balancer(
          map(),
          detach_instances_from_load_balancer_request(),
          list()
        ) ::
          {:ok, detach_instances_from_load_balancer_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_instances_from_load_balancer_errors()}
  def detach_instances_from_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetachInstancesFromLoadBalancer", input, options)
  end

  @doc """
  Detaches a static IP from the Amazon Lightsail instance to which it is attached.
  """
  @spec detach_static_ip(map(), detach_static_ip_request(), list()) ::
          {:ok, detach_static_ip_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_static_ip_errors()}
  def detach_static_ip(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetachStaticIp", input, options)
  end

  @doc """
  Disables an add-on for an Amazon Lightsail resource.

  For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots).
  """
  @spec disable_add_on(map(), disable_add_on_request(), list()) ::
          {:ok, disable_add_on_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_add_on_errors()}
  def disable_add_on(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableAddOn", input, options)
  end

  @doc """
  Downloads the regional Amazon Lightsail default key pair.

  This action also creates a Lightsail default key pair if a default key pair
  does not currently exist in the Amazon Web Services Region.
  """
  @spec download_default_key_pair(map(), download_default_key_pair_request(), list()) ::
          {:ok, download_default_key_pair_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, download_default_key_pair_errors()}
  def download_default_key_pair(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DownloadDefaultKeyPair", input, options)
  end

  @doc """
  Enables or modifies an add-on for an Amazon Lightsail resource.

  For more information, see
  the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots).
  """
  @spec enable_add_on(map(), enable_add_on_request(), list()) ::
          {:ok, enable_add_on_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_add_on_errors()}
  def enable_add_on(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableAddOn", input, options)
  end

  @doc """
  Exports an Amazon Lightsail instance or block storage disk snapshot to Amazon
  Elastic Compute Cloud (Amazon EC2).

  This operation results in an export snapshot record that can be used with the

  ```
  create
  cloud formation stack
  ```

  operation to create new Amazon EC2 instances.

  Exported instance snapshots appear in Amazon EC2 as Amazon Machine Images
  (AMIs), and the
  instance system disk appears as an Amazon Elastic Block Store (Amazon EBS)
  volume. Exported disk snapshots appear in
  Amazon EC2 as Amazon EBS volumes. Snapshots are exported to the same Amazon Web
  Services Region in
  Amazon EC2 as the source Lightsail snapshot.

  The `export snapshot` operation supports tag-based access control via resource
  tags applied to the resource identified by `source snapshot name`. For more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).

  Use the `get instance snapshots` or `get disk snapshots`
  operations to get a list of snapshots that you can export to Amazon EC2.
  """
  @spec export_snapshot(map(), export_snapshot_request(), list()) ::
          {:ok, export_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_snapshot_errors()}
  def export_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExportSnapshot", input, options)
  end

  @doc """
  Returns the names of all active (not deleted) resources.
  """
  @spec get_active_names(map(), get_active_names_request(), list()) ::
          {:ok, get_active_names_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_active_names_errors()}
  def get_active_names(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetActiveNames", input, options)
  end

  @doc """
  Returns information about the configured alarms.

  Specify an alarm name in your request to
  return information about a specific alarm, or specify a monitored resource name
  to return
  information about all alarms for a specific resource.

  An alarm is used to monitor a single metric for one of your resources. When a
  metric
  condition is met, the alarm can notify you by email, SMS text message, and a
  banner displayed
  on the Amazon Lightsail console. For more information, see [Alarms in Amazon
  Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms).
  """
  @spec get_alarms(map(), get_alarms_request(), list()) ::
          {:ok, get_alarms_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_alarms_errors()}
  def get_alarms(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAlarms", input, options)
  end

  @doc """
  Returns the available automatic snapshots for an instance or disk.

  For more information,
  see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots).
  """
  @spec get_auto_snapshots(map(), get_auto_snapshots_request(), list()) ::
          {:ok, get_auto_snapshots_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_auto_snapshots_errors()}
  def get_auto_snapshots(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAutoSnapshots", input, options)
  end

  @doc """
  Returns the list of available instance images, or *blueprints*.

  You can
  use a blueprint to create a new instance already running a specific operating
  system, as well
  as a preinstalled app or development stack. The software each instance is
  running depends on
  the blueprint image you choose.

  Use active blueprints when creating new instances. Inactive blueprints are
  listed to
  support customers with existing instances and are not necessarily available to
  create new
  instances. Blueprints are marked inactive when they become outdated due to
  operating system
  updates or new application releases.
  """
  @spec get_blueprints(map(), get_blueprints_request(), list()) ::
          {:ok, get_blueprints_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_blueprints_errors()}
  def get_blueprints(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBlueprints", input, options)
  end

  @doc """
  Returns the existing access key IDs for the specified Amazon Lightsail bucket.

  This action does not return the secret access key value of an access key. You
  can get a
  secret access key only when you create it from the response of the
  [CreateBucketAccessKey](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateBucketAccessKey.html)
  action. If you lose the secret access key, you must create
  a new access key.
  """
  @spec get_bucket_access_keys(map(), get_bucket_access_keys_request(), list()) ::
          {:ok, get_bucket_access_keys_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bucket_access_keys_errors()}
  def get_bucket_access_keys(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBucketAccessKeys", input, options)
  end

  @doc """
  Returns the bundles that you can apply to a Amazon Lightsail bucket.

  The bucket bundle specifies the monthly cost, storage quota, and data transfer
  quota for a
  bucket.

  Use the
  [UpdateBucketBundle](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_UpdateBucketBundle.html)
  action to update the
  bundle for a bucket.
  """
  @spec get_bucket_bundles(map(), get_bucket_bundles_request(), list()) ::
          {:ok, get_bucket_bundles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bucket_bundles_errors()}
  def get_bucket_bundles(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBucketBundles", input, options)
  end

  @doc """
  Returns the data points of a specific metric for an Amazon Lightsail bucket.

  Metrics report the utilization of a bucket. View and collect metric data
  regularly to
  monitor the number of objects stored in a bucket (including object versions) and
  the storage
  space used by those objects.
  """
  @spec get_bucket_metric_data(map(), get_bucket_metric_data_request(), list()) ::
          {:ok, get_bucket_metric_data_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bucket_metric_data_errors()}
  def get_bucket_metric_data(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBucketMetricData", input, options)
  end

  @doc """
  Returns information about one or more Amazon Lightsail buckets.

  The information returned
  includes the synchronization status of the Amazon Simple Storage Service (Amazon
  S3)
  account-level block public access feature for your Lightsail buckets.

  For more information about buckets, see [Buckets in Amazon Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/buckets-in-amazon-lightsail)
  in the *Amazon Lightsail Developer
  Guide*.
  """
  @spec get_buckets(map(), get_buckets_request(), list()) ::
          {:ok, get_buckets_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_buckets_errors()}
  def get_buckets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBuckets", input, options)
  end

  @doc """
  Returns the bundles that you can apply to an Amazon Lightsail instance when you
  create
  it.

  A bundle describes the specifications of an instance, such as the monthly cost,
  amount of
  memory, the number of vCPUs, amount of storage space, and monthly network data
  transfer
  quota.

  Bundles are referred to as *instance plans* in the Lightsail
  console.
  """
  @spec get_bundles(map(), get_bundles_request(), list()) ::
          {:ok, get_bundles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bundles_errors()}
  def get_bundles(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBundles", input, options)
  end

  @doc """
  Returns information about one or more Amazon Lightsail SSL/TLS certificates.

  To get a summary of a certificate, omit `includeCertificateDetails` from your
  request. The response will include only the certificate Amazon Resource Name
  (ARN),
  certificate name, domain name, and tags.
  """
  @spec get_certificates(map(), get_certificates_request(), list()) ::
          {:ok, get_certificates_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_certificates_errors()}
  def get_certificates(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCertificates", input, options)
  end

  @doc """
  Returns the CloudFormation stack record created as a result of the

  ```
  create cloud
  formation stack
  ```

  operation.

  An AWS CloudFormation stack is used to create a new Amazon EC2 instance from an
  exported Lightsail
  snapshot.
  """
  @spec get_cloud_formation_stack_records(
          map(),
          get_cloud_formation_stack_records_request(),
          list()
        ) ::
          {:ok, get_cloud_formation_stack_records_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cloud_formation_stack_records_errors()}
  def get_cloud_formation_stack_records(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCloudFormationStackRecords", input, options)
  end

  @doc """
  Returns information about the configured contact methods.

  Specify a protocol in your
  request to return information about a specific contact method.

  A contact method is used to send you notifications about your Amazon Lightsail
  resources.
  You can add one email address and one mobile phone number contact method in each
  Amazon Web Services Region. However, SMS text messaging is not supported in some
  Amazon Web Services
  Regions, and SMS text messages cannot be sent to some countries/regions. For
  more information,
  see [Notifications in Amazon Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications).
  """
  @spec get_contact_methods(map(), get_contact_methods_request(), list()) ::
          {:ok, get_contact_methods_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_contact_methods_errors()}
  def get_contact_methods(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetContactMethods", input, options)
  end

  @doc """
  Returns information about Amazon Lightsail containers, such as the current
  version of the
  Lightsail Control (lightsailctl) plugin.
  """
  @spec get_container_api_metadata(map(), get_container_api_metadata_request(), list()) ::
          {:ok, get_container_api_metadata_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_container_api_metadata_errors()}
  def get_container_api_metadata(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetContainerAPIMetadata", input, options)
  end

  @doc """
  Returns the container images that are registered to your Amazon Lightsail
  container
  service.

  If you created a deployment on your Lightsail container service that uses
  container
  images from a public registry like Docker Hub, those images are not returned as
  part of this
  action. Those images are not registered to your Lightsail container service.
  """
  @spec get_container_images(map(), get_container_images_request(), list()) ::
          {:ok, get_container_images_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_container_images_errors()}
  def get_container_images(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetContainerImages", input, options)
  end

  @doc """
  Returns the log events of a container of your Amazon Lightsail container
  service.

  If your container service has more than one node (i.e., a scale greater than 1),
  then the
  log events that are returned for the specified container are merged from all
  nodes on your
  container service.

  Container logs are retained for a certain amount of time. For more information,
  see
  [Amazon Lightsail endpoints and
  quotas](https://docs.aws.amazon.com/general/latest/gr/lightsail.html) in the
  *Amazon Web Services General
  Reference*.
  """
  @spec get_container_log(map(), get_container_log_request(), list()) ::
          {:ok, get_container_log_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_container_log_errors()}
  def get_container_log(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetContainerLog", input, options)
  end

  @doc """
  Returns the deployments for your Amazon Lightsail container service

  A deployment specifies the settings, such as the ports and launch command, of
  containers
  that are deployed to your container service.

  The deployments are ordered by version in ascending order. The newest version is
  listed at
  the top of the response.

  A set number of deployments are kept before the oldest one is replaced with the
  newest
  one. For more information, see [Amazon Lightsail endpoints and
  quotas](https://docs.aws.amazon.com/general/latest/gr/lightsail.html) in the
  *Amazon Web Services General
  Reference*.
  """
  @spec get_container_service_deployments(
          map(),
          get_container_service_deployments_request(),
          list()
        ) ::
          {:ok, get_container_service_deployments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_container_service_deployments_errors()}
  def get_container_service_deployments(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetContainerServiceDeployments", input, options)
  end

  @doc """
  Returns the data points of a specific metric of your Amazon Lightsail container
  service.

  Metrics report the utilization of your resources. Monitor and collect metric
  data
  regularly to maintain the reliability, availability, and performance of your
  resources.
  """
  @spec get_container_service_metric_data(
          map(),
          get_container_service_metric_data_request(),
          list()
        ) ::
          {:ok, get_container_service_metric_data_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_container_service_metric_data_errors()}
  def get_container_service_metric_data(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetContainerServiceMetricData", input, options)
  end

  @doc """
  Returns the list of powers that can be specified for your Amazon Lightsail
  container
  services.

  The power specifies the amount of memory, the number of vCPUs, and the base
  price of the
  container service.
  """
  @spec get_container_service_powers(map(), get_container_service_powers_request(), list()) ::
          {:ok, get_container_service_powers_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_container_service_powers_errors()}
  def get_container_service_powers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetContainerServicePowers", input, options)
  end

  @doc """
  Returns information about one or more of your Amazon Lightsail container
  services.
  """
  @spec get_container_services(map(), get_container_services_request(), list()) ::
          {:ok, container_services_list_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_container_services_errors()}
  def get_container_services(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetContainerServices", input, options)
  end

  @doc """
  Retrieves information about the cost estimate for a specified resource.

  A cost estimate
  will not generate for a resource that has been deleted.
  """
  @spec get_cost_estimate(map(), get_cost_estimate_request(), list()) ::
          {:ok, get_cost_estimate_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cost_estimate_errors()}
  def get_cost_estimate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCostEstimate", input, options)
  end

  @doc """
  Returns information about a specific block storage disk.
  """
  @spec get_disk(map(), get_disk_request(), list()) ::
          {:ok, get_disk_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_disk_errors()}
  def get_disk(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDisk", input, options)
  end

  @doc """
  Returns information about a specific block storage disk snapshot.
  """
  @spec get_disk_snapshot(map(), get_disk_snapshot_request(), list()) ::
          {:ok, get_disk_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_disk_snapshot_errors()}
  def get_disk_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDiskSnapshot", input, options)
  end

  @doc """
  Returns information about all block storage disk snapshots in your AWS account
  and
  region.
  """
  @spec get_disk_snapshots(map(), get_disk_snapshots_request(), list()) ::
          {:ok, get_disk_snapshots_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_disk_snapshots_errors()}
  def get_disk_snapshots(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDiskSnapshots", input, options)
  end

  @doc """
  Returns information about all block storage disks in your AWS account and
  region.
  """
  @spec get_disks(map(), get_disks_request(), list()) ::
          {:ok, get_disks_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_disks_errors()}
  def get_disks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDisks", input, options)
  end

  @doc """
  Returns the bundles that can be applied to your Amazon Lightsail content
  delivery network
  (CDN) distributions.

  A distribution bundle specifies the monthly network transfer quota and monthly
  cost of
  your distribution.
  """
  @spec get_distribution_bundles(map(), get_distribution_bundles_request(), list()) ::
          {:ok, get_distribution_bundles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_distribution_bundles_errors()}
  def get_distribution_bundles(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDistributionBundles", input, options)
  end

  @doc """
  Returns the timestamp and status of the last cache reset of a specific Amazon
  Lightsail
  content delivery network (CDN) distribution.
  """
  @spec get_distribution_latest_cache_reset(
          map(),
          get_distribution_latest_cache_reset_request(),
          list()
        ) ::
          {:ok, get_distribution_latest_cache_reset_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_distribution_latest_cache_reset_errors()}
  def get_distribution_latest_cache_reset(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDistributionLatestCacheReset", input, options)
  end

  @doc """
  Returns the data points of a specific metric for an Amazon Lightsail content
  delivery
  network (CDN) distribution.

  Metrics report the utilization of your resources, and the error counts generated
  by them.
  Monitor and collect metric data regularly to maintain the reliability,
  availability, and
  performance of your resources.
  """
  @spec get_distribution_metric_data(map(), get_distribution_metric_data_request(), list()) ::
          {:ok, get_distribution_metric_data_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_distribution_metric_data_errors()}
  def get_distribution_metric_data(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDistributionMetricData", input, options)
  end

  @doc """
  Returns information about one or more of your Amazon Lightsail content delivery
  network
  (CDN) distributions.
  """
  @spec get_distributions(map(), get_distributions_request(), list()) ::
          {:ok, get_distributions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_distributions_errors()}
  def get_distributions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDistributions", input, options)
  end

  @doc """
  Returns information about a specific domain recordset.
  """
  @spec get_domain(map(), get_domain_request(), list()) ::
          {:ok, get_domain_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_errors()}
  def get_domain(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDomain", input, options)
  end

  @doc """
  Returns a list of all domains in the user's account.
  """
  @spec get_domains(map(), get_domains_request(), list()) ::
          {:ok, get_domains_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domains_errors()}
  def get_domains(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDomains", input, options)
  end

  @doc """
  Returns all export snapshot records created as a result of the

  ```
  export
  snapshot
  ```

  operation.

  An export snapshot record can be used to create a new Amazon EC2 instance and
  its related
  resources with the
  [CreateCloudFormationStack](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateCloudFormationStack.html)
  action.
  """
  @spec get_export_snapshot_records(map(), get_export_snapshot_records_request(), list()) ::
          {:ok, get_export_snapshot_records_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_export_snapshot_records_errors()}
  def get_export_snapshot_records(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetExportSnapshotRecords", input, options)
  end

  @doc """
  Returns information about a specific Amazon Lightsail instance, which is a
  virtual private
  server.
  """
  @spec get_instance(map(), get_instance_request(), list()) ::
          {:ok, get_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_errors()}
  def get_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInstance", input, options)
  end

  @doc """
  Returns temporary SSH keys you can use to connect to a specific virtual private
  server, or
  *instance*.

  The `get instance access details` operation supports tag-based access control
  via resource tags applied to the resource identified by `instance name`. For
  more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec get_instance_access_details(map(), get_instance_access_details_request(), list()) ::
          {:ok, get_instance_access_details_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_access_details_errors()}
  def get_instance_access_details(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInstanceAccessDetails", input, options)
  end

  @doc """
  Returns the data points for the specified Amazon Lightsail instance metric,
  given an
  instance name.

  Metrics report the utilization of your resources, and the error counts generated
  by them.
  Monitor and collect metric data regularly to maintain the reliability,
  availability, and
  performance of your resources.
  """
  @spec get_instance_metric_data(map(), get_instance_metric_data_request(), list()) ::
          {:ok, get_instance_metric_data_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_metric_data_errors()}
  def get_instance_metric_data(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInstanceMetricData", input, options)
  end

  @doc """
  Returns the firewall port states for a specific Amazon Lightsail instance, the
  IP addresses
  allowed to connect to the instance through the ports, and the protocol.
  """
  @spec get_instance_port_states(map(), get_instance_port_states_request(), list()) ::
          {:ok, get_instance_port_states_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_port_states_errors()}
  def get_instance_port_states(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInstancePortStates", input, options)
  end

  @doc """
  Returns information about a specific instance snapshot.
  """
  @spec get_instance_snapshot(map(), get_instance_snapshot_request(), list()) ::
          {:ok, get_instance_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_snapshot_errors()}
  def get_instance_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInstanceSnapshot", input, options)
  end

  @doc """
  Returns all instance snapshots for the user's account.
  """
  @spec get_instance_snapshots(map(), get_instance_snapshots_request(), list()) ::
          {:ok, get_instance_snapshots_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_snapshots_errors()}
  def get_instance_snapshots(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInstanceSnapshots", input, options)
  end

  @doc """
  Returns the state of a specific instance.

  Works on one instance at a time.
  """
  @spec get_instance_state(map(), get_instance_state_request(), list()) ::
          {:ok, get_instance_state_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_state_errors()}
  def get_instance_state(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInstanceState", input, options)
  end

  @doc """
  Returns information about all Amazon Lightsail virtual private servers, or
  *instances*.
  """
  @spec get_instances(map(), get_instances_request(), list()) ::
          {:ok, get_instances_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instances_errors()}
  def get_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInstances", input, options)
  end

  @doc """
  Returns information about a specific key pair.
  """
  @spec get_key_pair(map(), get_key_pair_request(), list()) ::
          {:ok, get_key_pair_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_key_pair_errors()}
  def get_key_pair(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetKeyPair", input, options)
  end

  @doc """
  Returns information about all key pairs in the user's account.
  """
  @spec get_key_pairs(map(), get_key_pairs_request(), list()) ::
          {:ok, get_key_pairs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_key_pairs_errors()}
  def get_key_pairs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetKeyPairs", input, options)
  end

  @doc """
  Returns information about the specified Lightsail load balancer.
  """
  @spec get_load_balancer(map(), get_load_balancer_request(), list()) ::
          {:ok, get_load_balancer_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_load_balancer_errors()}
  def get_load_balancer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLoadBalancer", input, options)
  end

  @doc """
  Returns information about health metrics for your Lightsail load balancer.

  Metrics report the utilization of your resources, and the error counts generated
  by them.
  Monitor and collect metric data regularly to maintain the reliability,
  availability, and
  performance of your resources.
  """
  @spec get_load_balancer_metric_data(map(), get_load_balancer_metric_data_request(), list()) ::
          {:ok, get_load_balancer_metric_data_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_load_balancer_metric_data_errors()}
  def get_load_balancer_metric_data(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLoadBalancerMetricData", input, options)
  end

  @doc """
  Returns information about the TLS certificates that are associated with the
  specified
  Lightsail load balancer.

  TLS is just an updated, more secure version of Secure Socket Layer (SSL).

  You can have a maximum of 2 certificates associated with a Lightsail load
  balancer. One
  is active and the other is inactive.
  """
  @spec get_load_balancer_tls_certificates(
          map(),
          get_load_balancer_tls_certificates_request(),
          list()
        ) ::
          {:ok, get_load_balancer_tls_certificates_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_load_balancer_tls_certificates_errors()}
  def get_load_balancer_tls_certificates(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLoadBalancerTlsCertificates", input, options)
  end

  @doc """
  Returns a list of TLS security policies that you can apply to Lightsail load
  balancers.

  For more information about load balancer TLS security policies, see [Configuring TLS security policies on your Amazon Lightsail load
  balancers](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configure-load-balancer-tls-security-policy)
  in the *Amazon Lightsail Developer Guide*.
  """
  @spec get_load_balancer_tls_policies(map(), get_load_balancer_tls_policies_request(), list()) ::
          {:ok, get_load_balancer_tls_policies_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_load_balancer_tls_policies_errors()}
  def get_load_balancer_tls_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLoadBalancerTlsPolicies", input, options)
  end

  @doc """
  Returns information about all load balancers in an account.
  """
  @spec get_load_balancers(map(), get_load_balancers_request(), list()) ::
          {:ok, get_load_balancers_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_load_balancers_errors()}
  def get_load_balancers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLoadBalancers", input, options)
  end

  @doc """
  Returns information about a specific operation.

  Operations include events such as when you
  create an instance, allocate a static IP, attach a static IP, and so on.
  """
  @spec get_operation(map(), get_operation_request(), list()) ::
          {:ok, get_operation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_operation_errors()}
  def get_operation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOperation", input, options)
  end

  @doc """
  Returns information about all operations.

  Results are returned from oldest to newest, up to a maximum of 200. Results can
  be paged
  by making each subsequent call to `GetOperations` use the maximum (last)
  `statusChangedAt` value from the previous request.
  """
  @spec get_operations(map(), get_operations_request(), list()) ::
          {:ok, get_operations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_operations_errors()}
  def get_operations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOperations", input, options)
  end

  @doc """
  Gets operations for a specific resource (an instance or a static IP).
  """
  @spec get_operations_for_resource(map(), get_operations_for_resource_request(), list()) ::
          {:ok, get_operations_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_operations_for_resource_errors()}
  def get_operations_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOperationsForResource", input, options)
  end

  @doc """
  Returns a list of all valid regions for Amazon Lightsail.

  Use the

  ```
  include
  availability zones
  ```

  parameter to also return the Availability Zones in a
  region.
  """
  @spec get_regions(map(), get_regions_request(), list()) ::
          {:ok, get_regions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_regions_errors()}
  def get_regions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRegions", input, options)
  end

  @doc """
  Returns information about a specific database in Amazon Lightsail.
  """
  @spec get_relational_database(map(), get_relational_database_request(), list()) ::
          {:ok, get_relational_database_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relational_database_errors()}
  def get_relational_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelationalDatabase", input, options)
  end

  @doc """
  Returns a list of available database blueprints in Amazon Lightsail.

  A blueprint describes
  the major engine version of a database.

  You can use a blueprint ID to create a new database that runs a specific
  database
  engine.
  """
  @spec get_relational_database_blueprints(
          map(),
          get_relational_database_blueprints_request(),
          list()
        ) ::
          {:ok, get_relational_database_blueprints_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relational_database_blueprints_errors()}
  def get_relational_database_blueprints(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelationalDatabaseBlueprints", input, options)
  end

  @doc """
  Returns the list of bundles that are available in Amazon Lightsail.

  A bundle describes the
  performance specifications for a database.

  You can use a bundle ID to create a new database with explicit performance
  specifications.
  """
  @spec get_relational_database_bundles(map(), get_relational_database_bundles_request(), list()) ::
          {:ok, get_relational_database_bundles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relational_database_bundles_errors()}
  def get_relational_database_bundles(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelationalDatabaseBundles", input, options)
  end

  @doc """
  Returns a list of events for a specific database in Amazon Lightsail.
  """
  @spec get_relational_database_events(map(), get_relational_database_events_request(), list()) ::
          {:ok, get_relational_database_events_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relational_database_events_errors()}
  def get_relational_database_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelationalDatabaseEvents", input, options)
  end

  @doc """
  Returns a list of log events for a database in Amazon Lightsail.
  """
  @spec get_relational_database_log_events(
          map(),
          get_relational_database_log_events_request(),
          list()
        ) ::
          {:ok, get_relational_database_log_events_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relational_database_log_events_errors()}
  def get_relational_database_log_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelationalDatabaseLogEvents", input, options)
  end

  @doc """
  Returns a list of available log streams for a specific database in Amazon
  Lightsail.
  """
  @spec get_relational_database_log_streams(
          map(),
          get_relational_database_log_streams_request(),
          list()
        ) ::
          {:ok, get_relational_database_log_streams_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relational_database_log_streams_errors()}
  def get_relational_database_log_streams(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelationalDatabaseLogStreams", input, options)
  end

  @doc """
  Returns the current, previous, or pending versions of the master user password
  for a
  Lightsail database.

  The `GetRelationalDatabaseMasterUserPassword` operation supports tag-based
  access control via resource tags applied to the resource identified by
  relationalDatabaseName.
  """
  @spec get_relational_database_master_user_password(
          map(),
          get_relational_database_master_user_password_request(),
          list()
        ) ::
          {:ok, get_relational_database_master_user_password_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relational_database_master_user_password_errors()}
  def get_relational_database_master_user_password(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelationalDatabaseMasterUserPassword", input, options)
  end

  @doc """
  Returns the data points of the specified metric for a database in Amazon
  Lightsail.

  Metrics report the utilization of your resources, and the error counts generated
  by them.
  Monitor and collect metric data regularly to maintain the reliability,
  availability, and
  performance of your resources.
  """
  @spec get_relational_database_metric_data(
          map(),
          get_relational_database_metric_data_request(),
          list()
        ) ::
          {:ok, get_relational_database_metric_data_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relational_database_metric_data_errors()}
  def get_relational_database_metric_data(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelationalDatabaseMetricData", input, options)
  end

  @doc """
  Returns all of the runtime parameters offered by the underlying database
  software, or
  engine, for a specific database in Amazon Lightsail.

  In addition to the parameter names and values, this operation returns other
  information
  about each parameter. This information includes whether changes require a
  reboot, whether the
  parameter is modifiable, the allowed values, and the data types.
  """
  @spec get_relational_database_parameters(
          map(),
          get_relational_database_parameters_request(),
          list()
        ) ::
          {:ok, get_relational_database_parameters_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relational_database_parameters_errors()}
  def get_relational_database_parameters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelationalDatabaseParameters", input, options)
  end

  @doc """
  Returns information about a specific database snapshot in Amazon Lightsail.
  """
  @spec get_relational_database_snapshot(
          map(),
          get_relational_database_snapshot_request(),
          list()
        ) ::
          {:ok, get_relational_database_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relational_database_snapshot_errors()}
  def get_relational_database_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelationalDatabaseSnapshot", input, options)
  end

  @doc """
  Returns information about all of your database snapshots in Amazon Lightsail.
  """
  @spec get_relational_database_snapshots(
          map(),
          get_relational_database_snapshots_request(),
          list()
        ) ::
          {:ok, get_relational_database_snapshots_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relational_database_snapshots_errors()}
  def get_relational_database_snapshots(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelationalDatabaseSnapshots", input, options)
  end

  @doc """
  Returns information about all of your databases in Amazon Lightsail.
  """
  @spec get_relational_databases(map(), get_relational_databases_request(), list()) ::
          {:ok, get_relational_databases_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relational_databases_errors()}
  def get_relational_databases(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelationalDatabases", input, options)
  end

  @doc """
  Returns detailed information for five of the most recent `SetupInstanceHttps`
  requests that were ran on the target instance.
  """
  @spec get_setup_history(map(), get_setup_history_request(), list()) ::
          {:ok, get_setup_history_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_setup_history_errors()}
  def get_setup_history(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSetupHistory", input, options)
  end

  @doc """
  Returns information about an Amazon Lightsail static IP.
  """
  @spec get_static_ip(map(), get_static_ip_request(), list()) ::
          {:ok, get_static_ip_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_static_ip_errors()}
  def get_static_ip(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetStaticIp", input, options)
  end

  @doc """
  Returns information about all static IPs in the user's account.
  """
  @spec get_static_ips(map(), get_static_ips_request(), list()) ::
          {:ok, get_static_ips_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_static_ips_errors()}
  def get_static_ips(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetStaticIps", input, options)
  end

  @doc """
  Imports a public SSH key from a specific key pair.
  """
  @spec import_key_pair(map(), import_key_pair_request(), list()) ::
          {:ok, import_key_pair_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_key_pair_errors()}
  def import_key_pair(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportKeyPair", input, options)
  end

  @doc """
  Returns a Boolean value indicating whether your Lightsail VPC is peered.
  """
  @spec is_vpc_peered(map(), is_vpc_peered_request(), list()) ::
          {:ok, is_vpc_peered_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, is_vpc_peered_errors()}
  def is_vpc_peered(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "IsVpcPeered", input, options)
  end

  @doc """
  Opens ports for a specific Amazon Lightsail instance, and specifies the IP
  addresses
  allowed to connect to the instance through the ports, and the protocol.

  The `OpenInstancePublicPorts` action supports tag-based access control via
  resource tags applied to the resource identified by `instanceName`. For more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec open_instance_public_ports(map(), open_instance_public_ports_request(), list()) ::
          {:ok, open_instance_public_ports_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, open_instance_public_ports_errors()}
  def open_instance_public_ports(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "OpenInstancePublicPorts", input, options)
  end

  @doc """
  Peers the Lightsail VPC with the user's default VPC.
  """
  @spec peer_vpc(map(), peer_vpc_request(), list()) ::
          {:ok, peer_vpc_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, peer_vpc_errors()}
  def peer_vpc(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PeerVpc", input, options)
  end

  @doc """
  Creates or updates an alarm, and associates it with the specified metric.

  An alarm is used to monitor a single metric for one of your resources. When a
  metric
  condition is met, the alarm can notify you by email, SMS text message, and a
  banner displayed
  on the Amazon Lightsail console. For more information, see [Alarms in Amazon
  Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms).

  When this action creates an alarm, the alarm state is immediately set to
  `INSUFFICIENT_DATA`. The alarm is then evaluated and its state is set
  appropriately. Any actions associated with the new state are then executed.

  When you update an existing alarm, its state is left unchanged, but the update
  completely
  overwrites the previous configuration of the alarm. The alarm is then evaluated
  with the
  updated configuration.
  """
  @spec put_alarm(map(), put_alarm_request(), list()) ::
          {:ok, put_alarm_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_alarm_errors()}
  def put_alarm(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutAlarm", input, options)
  end

  @doc """
  Opens ports for a specific Amazon Lightsail instance, and specifies the IP
  addresses
  allowed to connect to the instance through the ports, and the protocol.

  This action also
  closes all currently open ports that are not included in the request. Include
  all of the ports
  and the protocols you want to open in your `PutInstancePublicPorts`request. Or
  use
  the `OpenInstancePublicPorts` action to open ports without closing currently
  open
  ports.

  The `PutInstancePublicPorts` action supports tag-based access control via
  resource tags applied to the resource identified by `instanceName`. For more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec put_instance_public_ports(map(), put_instance_public_ports_request(), list()) ::
          {:ok, put_instance_public_ports_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_instance_public_ports_errors()}
  def put_instance_public_ports(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutInstancePublicPorts", input, options)
  end

  @doc """
  Restarts a specific instance.

  The `reboot instance` operation supports tag-based access control via resource
  tags applied to the resource identified by `instance name`. For more
  information,
  see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec reboot_instance(map(), reboot_instance_request(), list()) ::
          {:ok, reboot_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reboot_instance_errors()}
  def reboot_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RebootInstance", input, options)
  end

  @doc """
  Restarts a specific database in Amazon Lightsail.

  The `reboot relational database` operation supports tag-based access control
  via resource tags applied to the resource identified by relationalDatabaseName.
  For more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec reboot_relational_database(map(), reboot_relational_database_request(), list()) ::
          {:ok, reboot_relational_database_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reboot_relational_database_errors()}
  def reboot_relational_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RebootRelationalDatabase", input, options)
  end

  @doc """
  Registers a container image to your Amazon Lightsail container service.

  This action is not required if you install and use the Lightsail Control
  (lightsailctl) plugin to push container images to your Lightsail container
  service. For
  more information, see [Pushing and managing container images on your Amazon Lightsail container
  services](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-pushing-container-images)
  in the *Amazon Lightsail Developer Guide*.
  """
  @spec register_container_image(map(), register_container_image_request(), list()) ::
          {:ok, register_container_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_container_image_errors()}
  def register_container_image(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterContainerImage", input, options)
  end

  @doc """
  Deletes a specific static IP from your account.
  """
  @spec release_static_ip(map(), release_static_ip_request(), list()) ::
          {:ok, release_static_ip_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, release_static_ip_errors()}
  def release_static_ip(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ReleaseStaticIp", input, options)
  end

  @doc """
  Deletes currently cached content from your Amazon Lightsail content delivery
  network (CDN)
  distribution.

  After resetting the cache, the next time a content request is made, your
  distribution
  pulls, serves, and caches it from the origin.
  """
  @spec reset_distribution_cache(map(), reset_distribution_cache_request(), list()) ::
          {:ok, reset_distribution_cache_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_distribution_cache_errors()}
  def reset_distribution_cache(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResetDistributionCache", input, options)
  end

  @doc """
  Sends a verification request to an email contact method to ensure it's owned by
  the
  requester.

  SMS contact methods don't need to be verified.

  A contact method is used to send you notifications about your Amazon Lightsail
  resources.
  You can add one email address and one mobile phone number contact method in each
  Amazon Web Services Region. However, SMS text messaging is not supported in some
  Amazon Web Services
  Regions, and SMS text messages cannot be sent to some countries/regions. For
  more information,
  see [Notifications in Amazon Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications).

  A verification request is sent to the contact method when you initially create
  it. Use
  this action to send another verification request if a previous verification
  request was
  deleted, or has expired.

  Notifications are not sent to an email contact method until after it is
  verified, and
  confirmed as valid.
  """
  @spec send_contact_method_verification(
          map(),
          send_contact_method_verification_request(),
          list()
        ) ::
          {:ok, send_contact_method_verification_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_contact_method_verification_errors()}
  def send_contact_method_verification(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendContactMethodVerification", input, options)
  end

  @doc """
  Sets the IP address type for an Amazon Lightsail resource.

  Use this action to enable dual-stack for a resource, which enables IPv4 and IPv6
  for the
  specified resource. Alternately, you can use this action to disable dual-stack,
  and enable
  IPv4 only.
  """
  @spec set_ip_address_type(map(), set_ip_address_type_request(), list()) ::
          {:ok, set_ip_address_type_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_ip_address_type_errors()}
  def set_ip_address_type(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetIpAddressType", input, options)
  end

  @doc """
  Sets the Amazon Lightsail resources that can access the specified Lightsail
  bucket.

  Lightsail buckets currently support setting access for Lightsail instances in
  the same
  Amazon Web Services Region.
  """
  @spec set_resource_access_for_bucket(map(), set_resource_access_for_bucket_request(), list()) ::
          {:ok, set_resource_access_for_bucket_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_resource_access_for_bucket_errors()}
  def set_resource_access_for_bucket(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetResourceAccessForBucket", input, options)
  end

  @doc """
  Creates an SSL/TLS certificate that secures traffic for your website.

  After the
  certificate is created, it is installed on the specified Lightsail instance.

  If you provide more than one domain name in the request, at least one name must
  be less
  than or equal to 63 characters in length.
  """
  @spec setup_instance_https(map(), setup_instance_https_request(), list()) ::
          {:ok, setup_instance_https_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, setup_instance_https_errors()}
  def setup_instance_https(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetupInstanceHttps", input, options)
  end

  @doc """
  Initiates a graphical user interface (GUI) session that’s used to access a
  virtual
  computer’s operating system and application.

  The session will be active for 1 hour. Use this
  action to resume the session after it expires.
  """
  @spec start_g_ui_session(map(), start_g_ui_session_request(), list()) ::
          {:ok, start_g_ui_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_g_ui_session_errors()}
  def start_g_ui_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartGUISession", input, options)
  end

  @doc """
  Starts a specific Amazon Lightsail instance from a stopped state.

  To restart an instance,
  use the `reboot instance` operation.

  When you start a stopped instance, Lightsail assigns a new public IP address to
  the
  instance. To use the same IP address after stopping and starting an instance,
  create a
  static IP address and attach it to the instance. For more information, see the
  [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/lightsail-create-static-ip).

  The `start instance` operation supports tag-based access control via resource
  tags applied to the resource identified by `instance name`. For more
  information,
  see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec start_instance(map(), start_instance_request(), list()) ::
          {:ok, start_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_instance_errors()}
  def start_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartInstance", input, options)
  end

  @doc """
  Starts a specific database from a stopped state in Amazon Lightsail.

  To restart a database,
  use the `reboot relational database` operation.

  The `start relational database` operation supports tag-based access control via
  resource tags applied to the resource identified by relationalDatabaseName. For
  more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec start_relational_database(map(), start_relational_database_request(), list()) ::
          {:ok, start_relational_database_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_relational_database_errors()}
  def start_relational_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartRelationalDatabase", input, options)
  end

  @doc """
  Terminates a web-based Amazon DCV session that’s used to access a virtual
  computer’s
  operating system or application.

  The session will close and any unsaved data will be
  lost.
  """
  @spec stop_g_ui_session(map(), stop_g_ui_session_request(), list()) ::
          {:ok, stop_g_ui_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_g_ui_session_errors()}
  def stop_g_ui_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopGUISession", input, options)
  end

  @doc """
  Stops a specific Amazon Lightsail instance that is currently running.

  When you start a stopped instance, Lightsail assigns a new public IP address to
  the
  instance. To use the same IP address after stopping and starting an instance,
  create a
  static IP address and attach it to the instance. For more information, see the
  [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/lightsail-create-static-ip).

  The `stop instance` operation supports tag-based access control via resource
  tags applied to the resource identified by `instance name`. For more
  information,
  see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec stop_instance(map(), stop_instance_request(), list()) ::
          {:ok, stop_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_instance_errors()}
  def stop_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopInstance", input, options)
  end

  @doc """
  Stops a specific database that is currently running in Amazon Lightsail.

  If you don't manually start your database instance after it has been stopped for
  seven
  consecutive days, Amazon Lightsail automatically starts it for you. This action
  helps ensure
  that your database instance doesn't fall behind on any required maintenance
  updates.

  The `stop relational database` operation supports tag-based access control via
  resource tags applied to the resource identified by relationalDatabaseName. For
  more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec stop_relational_database(map(), stop_relational_database_request(), list()) ::
          {:ok, stop_relational_database_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_relational_database_errors()}
  def stop_relational_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopRelationalDatabase", input, options)
  end

  @doc """
  Adds one or more tags to the specified Amazon Lightsail resource.

  Each resource can have a
  maximum of 50 tags. Each tag consists of a key and an optional value. Tag keys
  must be unique
  per resource. For more information about tags, see the [Amazon Lightsail Developer
  Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags).

  The `tag resource` operation supports tag-based access control via request tags
  and resource tags applied to the resource identified by `resource name`. For
  more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Tests an alarm by displaying a banner on the Amazon Lightsail console.

  If a notification
  trigger is configured for the specified alarm, the test also sends a
  notification to the
  notification protocol (`Email` and/or `SMS`) configured for the
  alarm.

  An alarm is used to monitor a single metric for one of your resources. When a
  metric
  condition is met, the alarm can notify you by email, SMS text message, and a
  banner displayed
  on the Amazon Lightsail console. For more information, see [Alarms in Amazon
  Lightsail](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms).
  """
  @spec test_alarm(map(), test_alarm_request(), list()) ::
          {:ok, test_alarm_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_alarm_errors()}
  def test_alarm(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestAlarm", input, options)
  end

  @doc """
  Unpeers the Lightsail VPC from the user's default VPC.
  """
  @spec unpeer_vpc(map(), unpeer_vpc_request(), list()) ::
          {:ok, unpeer_vpc_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, unpeer_vpc_errors()}
  def unpeer_vpc(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UnpeerVpc", input, options)
  end

  @doc """
  Deletes the specified set of tag keys and their values from the specified Amazon
  Lightsail
  resource.

  The `untag resource` operation supports tag-based access control via request
  tags and resource tags applied to the resource identified by `resource name`.
  For
  more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing Amazon Lightsail bucket.

  Use this action to update the configuration of an existing bucket, such as
  versioning,
  public accessibility, and the Amazon Web Services accounts that can access the
  bucket.
  """
  @spec update_bucket(map(), update_bucket_request(), list()) ::
          {:ok, update_bucket_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bucket_errors()}
  def update_bucket(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBucket", input, options)
  end

  @doc """
  Updates the bundle, or storage plan, of an existing Amazon Lightsail bucket.

  A bucket bundle specifies the monthly cost, storage space, and data transfer
  quota for a
  bucket. You can update a bucket's bundle only one time within a monthly Amazon
  Web Services
  billing cycle. To determine if you can update a bucket's bundle, use the
  [GetBuckets](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBuckets.html)
  action. The
  `ableToUpdateBundle` parameter in the response will indicate whether you can
  currently update a bucket's bundle.

  Update a bucket's bundle if it's consistently going over its storage space or
  data
  transfer quota, or if a bucket's usage is consistently in the lower range of its
  storage space
  or data transfer quota. Due to the unpredictable usage fluctuations that a
  bucket might
  experience, we strongly recommend that you update a bucket's bundle only as a
  long-term
  strategy, instead of as a short-term, monthly cost-cutting measure. Choose a
  bucket bundle
  that will provide the bucket with ample storage space and data transfer for a
  long time to
  come.
  """
  @spec update_bucket_bundle(map(), update_bucket_bundle_request(), list()) ::
          {:ok, update_bucket_bundle_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bucket_bundle_errors()}
  def update_bucket_bundle(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBucketBundle", input, options)
  end

  @doc """
  Updates the configuration of your Amazon Lightsail container service, such as
  its power,
  scale, and public domain names.
  """
  @spec update_container_service(map(), update_container_service_request(), list()) ::
          {:ok, update_container_service_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_container_service_errors()}
  def update_container_service(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateContainerService", input, options)
  end

  @doc """
  Updates an existing Amazon Lightsail content delivery network (CDN)
  distribution.

  Use this action to update the configuration of your existing distribution.
  """
  @spec update_distribution(map(), update_distribution_request(), list()) ::
          {:ok, update_distribution_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_distribution_errors()}
  def update_distribution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDistribution", input, options)
  end

  @doc """
  Updates the bundle of your Amazon Lightsail content delivery network (CDN)
  distribution.

  A distribution bundle specifies the monthly network transfer quota and monthly
  cost of
  your distribution.

  Update your distribution's bundle if your distribution is going over its monthly
  network
  transfer quota and is incurring an overage fee.

  You can update your distribution's bundle only one time within your monthly
  Amazon Web Services billing cycle. To determine if you can update your
  distribution's bundle, use the
  `GetDistributions` action. The `ableToUpdateBundle` parameter in the
  result will indicate whether you can currently update your distribution's
  bundle.
  """
  @spec update_distribution_bundle(map(), update_distribution_bundle_request(), list()) ::
          {:ok, update_distribution_bundle_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_distribution_bundle_errors()}
  def update_distribution_bundle(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDistributionBundle", input, options)
  end

  @doc """
  Updates a domain recordset after it is created.

  The `update domain entry` operation supports tag-based access control via
  resource tags applied to the resource identified by `domain name`. For more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec update_domain_entry(map(), update_domain_entry_request(), list()) ::
          {:ok, update_domain_entry_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_domain_entry_errors()}
  def update_domain_entry(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDomainEntry", input, options)
  end

  @doc """
  Modifies the Amazon Lightsail instance metadata parameters on a running or
  stopped
  instance.

  When you modify the parameters on a running instance, the `GetInstance`
  or `GetInstances` API operation initially responds with a state of
  `pending`. After the parameter modifications are successfully applied, the state
  changes to `applied` in subsequent `GetInstance` or
  `GetInstances` API calls. For more information, see [Use IMDSv2 with an Amazon Lightsail
  instance](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-instance-metadata-service)
  in the *Amazon Lightsail Developer Guide*.
  """
  @spec update_instance_metadata_options(
          map(),
          update_instance_metadata_options_request(),
          list()
        ) ::
          {:ok, update_instance_metadata_options_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_instance_metadata_options_errors()}
  def update_instance_metadata_options(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateInstanceMetadataOptions", input, options)
  end

  @doc """
  Updates the specified attribute for a load balancer.

  You can only update one attribute at
  a time.

  The `update load balancer attribute` operation supports tag-based access
  control via resource tags applied to the resource identified by

  ```
  load balancer
  name
  ```

  . For more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec update_load_balancer_attribute(map(), update_load_balancer_attribute_request(), list()) ::
          {:ok, update_load_balancer_attribute_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_load_balancer_attribute_errors()}
  def update_load_balancer_attribute(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLoadBalancerAttribute", input, options)
  end

  @doc """
  Allows the update of one or more attributes of a database in Amazon Lightsail.

  Updates are applied immediately, or in cases where the updates could result in
  an outage,
  are applied during the database's predefined maintenance window.

  The `update relational database` operation supports tag-based access control
  via resource tags applied to the resource identified by relationalDatabaseName.
  For more
  information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec update_relational_database(map(), update_relational_database_request(), list()) ::
          {:ok, update_relational_database_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_relational_database_errors()}
  def update_relational_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRelationalDatabase", input, options)
  end

  @doc """
  Allows the update of one or more parameters of a database in Amazon Lightsail.

  Parameter updates don't cause outages; therefore, their application is not
  subject to the
  preferred maintenance window. However, there are two ways in which parameter
  updates are
  applied: `dynamic` or `pending-reboot`. Parameters marked with a
  `dynamic` apply type are applied immediately. Parameters marked with a
  `pending-reboot` apply type are applied only after the database is rebooted
  using
  the `reboot relational database` operation.

  The `update relational database parameters` operation supports tag-based access
  control via resource tags applied to the resource identified by
  relationalDatabaseName. For
  more information, see the [Amazon Lightsail Developer Guide](https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-controlling-access-using-tags).
  """
  @spec update_relational_database_parameters(
          map(),
          update_relational_database_parameters_request(),
          list()
        ) ::
          {:ok, update_relational_database_parameters_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_relational_database_parameters_errors()}
  def update_relational_database_parameters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRelationalDatabaseParameters", input, options)
  end
end
