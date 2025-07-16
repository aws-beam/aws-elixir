# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LicenseManager do
  @moduledoc """
  License Manager makes it easier to manage licenses from software vendors across
  multiple
  Amazon Web Services accounts and on-premises servers.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      checkout_license_response() :: %{
        "CheckoutType" => list(any()),
        "EntitlementsAllowed" => list(entitlement_data()),
        "Expiration" => String.t(),
        "IssuedAt" => String.t(),
        "LicenseArn" => String.t(),
        "LicenseConsumptionToken" => String.t(),
        "NodeId" => String.t(),
        "SignedToken" => String.t()
      }
      
  """
  @type checkout_license_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_in_license_request() :: %{
        optional("Beneficiary") => String.t(),
        required("LicenseConsumptionToken") => String.t()
      }
      
  """
  @type check_in_license_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_frequency() :: %{
        "period" => list(any()),
        "value" => integer()
      }
      
  """
  @type report_frequency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_access_token_response() :: %{
        "AccessToken" => String.t()
      }
      
  """
  @type get_access_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_grant_version_request() :: %{
        optional("AllowedOperations") => list(list(any())()),
        optional("GrantName") => String.t(),
        optional("Options") => options(),
        optional("SourceVersion") => String.t(),
        optional("Status") => list(any()),
        optional("StatusReason") => String.t(),
        required("ClientToken") => String.t(),
        required("GrantArn") => String.t()
      }
      
  """
  @type create_grant_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_configuration() :: %{
        "AutomatedDiscoveryInformation" => automated_discovery_information(),
        "ConsumedLicenseSummaryList" => list(consumed_license_summary()),
        "ConsumedLicenses" => float(),
        "Description" => String.t(),
        "DisassociateWhenNotFound" => boolean(),
        "LicenseConfigurationArn" => String.t(),
        "LicenseConfigurationId" => String.t(),
        "LicenseCount" => float(),
        "LicenseCountHardLimit" => boolean(),
        "LicenseCountingType" => list(any()),
        "LicenseRules" => list(String.t()),
        "ManagedResourceSummaryList" => list(managed_resource_summary()),
        "Name" => String.t(),
        "OwnerAccountId" => String.t(),
        "ProductInformationList" => list(product_information()),
        "Status" => String.t()
      }
      
  """
  @type license_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_received_grants_for_organization_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("LicenseArn") => String.t()
      }
      
  """
  @type list_received_grants_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_usage_for_license_configuration_response() :: %{
        "LicenseConfigurationUsageList" => list(license_configuration_usage()),
        "NextToken" => String.t()
      }
      
  """
  @type list_usage_for_license_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_license_configuration_response() :: %{
        "LicenseConfigurationArn" => String.t()
      }
      
  """
  @type create_license_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type filter_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_license_request() :: %{
        optional("Version") => String.t(),
        required("LicenseArn") => String.t()
      }
      
  """
  @type get_license_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_configuration_usage() :: %{
        "AssociationTime" => non_neg_integer(),
        "ConsumedLicenses" => float(),
        "ResourceArn" => String.t(),
        "ResourceOwnerId" => String.t(),
        "ResourceStatus" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type license_configuration_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_license_conversion_tasks_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_license_conversion_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_configuration_association() :: %{
        "AmiAssociationScope" => String.t(),
        "AssociationTime" => non_neg_integer(),
        "ResourceArn" => String.t(),
        "ResourceOwnerId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type license_configuration_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_license_configurations_request() :: %{
        optional("Filters") => list(filter()),
        optional("LicenseConfigurationArns") => list(String.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_license_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      license_usage() :: %{
        "EntitlementUsages" => list(entitlement_usage())
      }
      
  """
  @type license_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rate_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type rate_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entitlement_not_allowed_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type entitlement_not_allowed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_received_licenses_request() :: %{
        optional("Filters") => list(filter()),
        optional("LicenseArns") => list(String.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_received_licenses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_usage_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type license_usage_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_dependency_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type failed_dependency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_licenses_request() :: %{
        optional("Filters") => list(filter()),
        optional("LicenseArns") => list(String.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_licenses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_configuration() :: %{
        "EnableIntegration" => boolean()
      }
      
  """
  @type organization_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_license_conversion_task_response() :: %{
        "DestinationLicenseContext" => license_conversion_context(),
        "EndTime" => non_neg_integer(),
        "LicenseConversionTaskId" => String.t(),
        "LicenseConversionTime" => non_neg_integer(),
        "ResourceArn" => String.t(),
        "SourceLicenseContext" => license_conversion_context(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type get_license_conversion_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license() :: %{
        "Beneficiary" => String.t(),
        "ConsumptionConfiguration" => consumption_configuration(),
        "CreateTime" => String.t(),
        "Entitlements" => list(entitlement()),
        "HomeRegion" => String.t(),
        "Issuer" => issuer_details(),
        "LicenseArn" => String.t(),
        "LicenseMetadata" => list(metadata()),
        "LicenseName" => String.t(),
        "ProductName" => String.t(),
        "ProductSKU" => String.t(),
        "Status" => list(any()),
        "Validity" => datetime_range(),
        "Version" => String.t()
      }
      
  """
  @type license() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_specification() :: %{
        "AmiAssociationScope" => String.t(),
        "LicenseConfigurationArn" => String.t()
      }
      
  """
  @type license_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_token_response() :: %{}
      
  """
  @type delete_token_response() :: %{}

  @typedoc """

  ## Example:
      
      inventory_filter() :: %{
        "Condition" => list(any()),
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type inventory_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metadata() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_license_versions_response() :: %{
        "Licenses" => list(license()),
        "NextToken" => String.t()
      }
      
  """
  @type list_license_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_license_manager_report_generators_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_license_manager_report_generators_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_received_licenses_for_organization_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_received_licenses_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_licenses_response() :: %{
        "Licenses" => list(license()),
        "NextToken" => String.t()
      }
      
  """
  @type list_licenses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_license_version_request() :: %{
        optional("LicenseMetadata") => list(metadata()),
        optional("SourceVersion") => String.t(),
        required("ClientToken") => String.t(),
        required("ConsumptionConfiguration") => consumption_configuration(),
        required("Entitlements") => list(entitlement()),
        required("HomeRegion") => String.t(),
        required("Issuer") => issuer(),
        required("LicenseArn") => String.t(),
        required("LicenseName") => String.t(),
        required("ProductName") => String.t(),
        required("Status") => list(any()),
        required("Validity") => datetime_range()
      }
      
  """
  @type create_license_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_entitlements_allowed_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type no_entitlements_allowed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_license_usage_request() :: %{
        required("LicenseArn") => String.t()
      }
      
  """
  @type get_license_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_distributed_grants_response() :: %{
        "Grants" => list(grant()),
        "NextToken" => String.t()
      }
      
  """
  @type list_distributed_grants_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_license_configuration_response() :: %{}
      
  """
  @type update_license_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_resource_summary() :: %{
        "AssociationCount" => float(),
        "ResourceType" => list(any())
      }
      
  """
  @type managed_resource_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      datetime_range() :: %{
        "Begin" => String.t(),
        "End" => String.t()
      }
      
  """
  @type datetime_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_license_manager_report_generator_response() :: %{}
      
  """
  @type update_license_manager_report_generator_response() :: %{}

  @typedoc """

  ## Example:
      
      consumption_configuration() :: %{
        "BorrowConfiguration" => borrow_configuration(),
        "ProvisionalConfiguration" => provisional_configuration(),
        "RenewType" => list(any())
      }
      
  """
  @type consumption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_grant_response() :: %{
        "Grant" => grant()
      }
      
  """
  @type get_grant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_failures_for_license_configuration_operations_response() :: %{
        "LicenseOperationFailureList" => list(license_operation_failure()),
        "NextToken" => String.t()
      }
      
  """
  @type list_failures_for_license_configuration_operations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_license_specifications_for_resource_response() :: %{}
      
  """
  @type update_license_specifications_for_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_license_request() :: %{
        optional("LicenseMetadata") => list(metadata()),
        optional("Tags") => list(tag()),
        required("Beneficiary") => String.t(),
        required("ClientToken") => String.t(),
        required("ConsumptionConfiguration") => consumption_configuration(),
        required("Entitlements") => list(entitlement()),
        required("HomeRegion") => String.t(),
        required("Issuer") => issuer(),
        required("LicenseName") => String.t(),
        required("ProductName") => String.t(),
        required("ProductSKU") => String.t(),
        required("Validity") => datetime_range()
      }
      
  """
  @type create_license_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_license_manager_report_generator_request() :: %{
        required("LicenseManagerReportGeneratorArn") => String.t()
      }
      
  """
  @type delete_license_manager_report_generator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      options() :: %{
        "ActivationOverrideBehavior" => list(any())
      }
      
  """
  @type options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      received_metadata() :: %{
        "AllowedOperations" => list(list(any())()),
        "ReceivedStatus" => list(any()),
        "ReceivedStatusReason" => String.t()
      }
      
  """
  @type received_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_grant_request() :: %{
        required("GrantArn") => String.t()
      }
      
  """
  @type reject_grant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_distributed_grants_request() :: %{
        optional("Filters") => list(filter()),
        optional("GrantArns") => list(String.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_distributed_grants_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_grant_response() :: %{
        "GrantArn" => String.t(),
        "Status" => list(any()),
        "Version" => String.t()
      }
      
  """
  @type reject_grant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_received_grants_for_organization_response() :: %{
        "Grants" => list(grant()),
        "NextToken" => String.t()
      }
      
  """
  @type list_received_grants_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_license_configurations_response() :: %{
        "LicenseConfigurations" => list(license_configuration()),
        "NextToken" => String.t()
      }
      
  """
  @type list_license_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redirect_exception() :: %{
        "Location" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type redirect_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_license_response() :: %{
        "License" => license()
      }
      
  """
  @type get_license_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      grant() :: %{
        "GrantArn" => String.t(),
        "GrantName" => String.t(),
        "GrantStatus" => list(any()),
        "GrantedOperations" => list(list(any())()),
        "GranteePrincipalArn" => String.t(),
        "HomeRegion" => String.t(),
        "LicenseArn" => String.t(),
        "Options" => options(),
        "ParentArn" => String.t(),
        "StatusReason" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type grant() :: %{String.t() => any()}

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
      
      update_service_settings_response() :: %{}
      
  """
  @type update_service_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      create_license_version_response() :: %{
        "LicenseArn" => String.t(),
        "Status" => list(any()),
        "Version" => String.t()
      }
      
  """
  @type create_license_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_license_response() :: %{
        "LicenseArn" => String.t(),
        "Status" => list(any()),
        "Version" => String.t()
      }
      
  """
  @type create_license_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_grant_request() :: %{
        optional("Version") => String.t(),
        required("GrantArn") => String.t()
      }
      
  """
  @type get_grant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_license_configuration_request() :: %{
        optional("Description") => String.t(),
        optional("DisassociateWhenNotFound") => boolean(),
        optional("LicenseConfigurationStatus") => list(any()),
        optional("LicenseCount") => float(),
        optional("LicenseCountHardLimit") => boolean(),
        optional("LicenseRules") => list(String.t()),
        optional("Name") => String.t(),
        optional("ProductInformationList") => list(product_information()),
        required("LicenseConfigurationArn") => String.t()
      }
      
  """
  @type update_license_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_grant_request() :: %{
        optional("Tags") => list(tag()),
        required("AllowedOperations") => list(list(any())()),
        required("ClientToken") => String.t(),
        required("GrantName") => String.t(),
        required("HomeRegion") => String.t(),
        required("LicenseArn") => String.t(),
        required("Principals") => list(String.t())
      }
      
  """
  @type create_grant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_license_conversion_task_request() :: %{
        required("LicenseConversionTaskId") => String.t()
      }
      
  """
  @type get_license_conversion_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_grant_request() :: %{
        required("GrantArn") => String.t()
      }
      
  """
  @type accept_grant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automated_discovery_information() :: %{
        "LastRunTime" => non_neg_integer()
      }
      
  """
  @type automated_discovery_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      product_information() :: %{
        "ProductInformationFilterList" => list(product_information_filter()),
        "ResourceType" => String.t()
      }
      
  """
  @type product_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      token_data() :: %{
        "ExpirationTime" => String.t(),
        "LicenseArn" => String.t(),
        "RoleArns" => list(String.t()),
        "Status" => String.t(),
        "TokenId" => String.t(),
        "TokenProperties" => list(String.t()),
        "TokenType" => String.t()
      }
      
  """
  @type token_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_license_configuration_response() :: %{}
      
  """
  @type delete_license_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      list_failures_for_license_configuration_operations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("LicenseConfigurationArn") => String.t()
      }
      
  """
  @type list_failures_for_license_configuration_operations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extend_license_consumption_request() :: %{
        optional("DryRun") => boolean(),
        required("LicenseConsumptionToken") => String.t()
      }
      
  """
  @type extend_license_consumption_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_token_request() :: %{
        required("TokenId") => String.t()
      }
      
  """
  @type delete_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_grant_request() :: %{
        optional("StatusReason") => String.t(),
        required("GrantArn") => String.t(),
        required("Version") => String.t()
      }
      
  """
  @type delete_grant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_license_specifications_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_license_specifications_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_license_manager_report_generator_response() :: %{
        "ReportGenerator" => report_generator()
      }
      
  """
  @type get_license_manager_report_generator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      consumed_license_summary() :: %{
        "ConsumedLicenses" => float(),
        "ResourceType" => list(any())
      }
      
  """
  @type consumed_license_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "bucket" => String.t(),
        "keyPrefix" => String.t()
      }
      
  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_license_manager_report_generator_response() :: %{
        "LicenseManagerReportGeneratorArn" => String.t()
      }
      
  """
  @type create_license_manager_report_generator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_conversion_context() :: %{
        "ProductCodes" => list(product_code_list_item()),
        "UsageOperation" => String.t()
      }
      
  """
  @type license_conversion_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_resource_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_inventory_request() :: %{
        optional("Filters") => list(inventory_filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_resource_inventory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_grant_response() :: %{
        "GrantArn" => String.t(),
        "Status" => list(any()),
        "Version" => String.t()
      }
      
  """
  @type accept_grant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_license_conversion_tasks_response() :: %{
        "LicenseConversionTasks" => list(license_conversion_task()),
        "NextToken" => String.t()
      }
      
  """
  @type list_license_conversion_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      borrow_configuration() :: %{
        "AllowEarlyCheckIn" => boolean(),
        "MaxTimeToLiveInMinutes" => integer()
      }
      
  """
  @type borrow_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_received_licenses_for_organization_response() :: %{
        "Licenses" => list(granted_license()),
        "NextToken" => String.t()
      }
      
  """
  @type list_received_licenses_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_inventory_response() :: %{
        "NextToken" => String.t(),
        "ResourceInventoryList" => list(resource_inventory())
      }
      
  """
  @type list_resource_inventory_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_license_configuration_request() :: %{
        optional("Description") => String.t(),
        optional("DisassociateWhenNotFound") => boolean(),
        optional("LicenseCount") => float(),
        optional("LicenseCountHardLimit") => boolean(),
        optional("LicenseRules") => list(String.t()),
        optional("ProductInformationList") => list(product_information()),
        optional("Tags") => list(tag()),
        required("LicenseCountingType") => list(any()),
        required("Name") => String.t()
      }
      
  """
  @type create_license_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_grant_response() :: %{
        "GrantArn" => String.t(),
        "Status" => list(any()),
        "Version" => String.t()
      }
      
  """
  @type delete_grant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorization_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type authorization_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entitlement() :: %{
        "AllowCheckIn" => boolean(),
        "MaxCount" => float(),
        "Name" => String.t(),
        "Overage" => boolean(),
        "Unit" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type entitlement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      checkout_borrow_license_response() :: %{
        "CheckoutMetadata" => list(metadata()),
        "EntitlementsAllowed" => list(entitlement_data()),
        "Expiration" => String.t(),
        "IssuedAt" => String.t(),
        "LicenseArn" => String.t(),
        "LicenseConsumptionToken" => String.t(),
        "NodeId" => String.t(),
        "SignedToken" => String.t()
      }
      
  """
  @type checkout_borrow_license_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_license_manager_report_generator_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()),
        required("ClientToken") => String.t(),
        required("ReportContext") => report_context(),
        required("ReportFrequency") => report_frequency(),
        required("ReportGeneratorName") => String.t(),
        required("Type") => list(list(any())())
      }
      
  """
  @type create_license_manager_report_generator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      product_code_list_item() :: %{
        "ProductCodeId" => String.t(),
        "ProductCodeType" => list(any())
      }
      
  """
  @type product_code_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_license_configuration_response() :: %{
        "AutomatedDiscoveryInformation" => automated_discovery_information(),
        "ConsumedLicenseSummaryList" => list(consumed_license_summary()),
        "ConsumedLicenses" => float(),
        "Description" => String.t(),
        "DisassociateWhenNotFound" => boolean(),
        "LicenseConfigurationArn" => String.t(),
        "LicenseConfigurationId" => String.t(),
        "LicenseCount" => float(),
        "LicenseCountHardLimit" => boolean(),
        "LicenseCountingType" => list(any()),
        "LicenseRules" => list(String.t()),
        "ManagedResourceSummaryList" => list(managed_resource_summary()),
        "Name" => String.t(),
        "OwnerAccountId" => String.t(),
        "ProductInformationList" => list(product_information()),
        "Status" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type get_license_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_received_licenses_response() :: %{
        "Licenses" => list(granted_license()),
        "NextToken" => String.t()
      }
      
  """
  @type list_received_licenses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_conversion_task() :: %{
        "DestinationLicenseContext" => license_conversion_context(),
        "EndTime" => non_neg_integer(),
        "LicenseConversionTaskId" => String.t(),
        "LicenseConversionTime" => non_neg_integer(),
        "ResourceArn" => String.t(),
        "SourceLicenseContext" => license_conversion_context(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }
      
  """
  @type license_conversion_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_license_response() :: %{
        "DeletionDate" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type delete_license_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entitlement_usage() :: %{
        "ConsumedValue" => String.t(),
        "MaxCount" => String.t(),
        "Name" => String.t(),
        "Unit" => list(any())
      }
      
  """
  @type entitlement_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      issuer() :: %{
        "Name" => String.t(),
        "SignKey" => String.t()
      }
      
  """
  @type issuer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_context() :: %{
        "licenseConfigurationArns" => list(String.t())
      }
      
  """
  @type report_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_license_configuration_request() :: %{
        required("LicenseConfigurationArn") => String.t()
      }
      
  """
  @type delete_license_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_usage_for_license_configuration_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("LicenseConfigurationArn") => String.t()
      }
      
  """
  @type list_usage_for_license_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_internal_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type server_internal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_license_request() :: %{
        required("LicenseArn") => String.t(),
        required("SourceVersion") => String.t()
      }
      
  """
  @type delete_license_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_generator() :: %{
        "CreateTime" => String.t(),
        "Description" => String.t(),
        "LastReportGenerationTime" => String.t(),
        "LastRunFailureReason" => String.t(),
        "LastRunStatus" => String.t(),
        "LicenseManagerReportGeneratorArn" => String.t(),
        "ReportContext" => report_context(),
        "ReportCreatorAccount" => String.t(),
        "ReportFrequency" => report_frequency(),
        "ReportGeneratorName" => String.t(),
        "ReportType" => list(list(any())()),
        "S3Location" => s3_location(),
        "Tags" => list(tag())
      }
      
  """
  @type report_generator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_license_configuration_request() :: %{
        required("LicenseConfigurationArn") => String.t()
      }
      
  """
  @type get_license_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_received_grants_response() :: %{
        "Grants" => list(grant()),
        "NextToken" => String.t()
      }
      
  """
  @type list_received_grants_response() :: %{String.t() => any()}

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
      
      check_in_license_response() :: %{}
      
  """
  @type check_in_license_response() :: %{}

  @typedoc """

  ## Example:
      
      extend_license_consumption_response() :: %{
        "Expiration" => String.t(),
        "LicenseConsumptionToken" => String.t()
      }
      
  """
  @type extend_license_consumption_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      granted_license() :: %{
        "Beneficiary" => String.t(),
        "ConsumptionConfiguration" => consumption_configuration(),
        "CreateTime" => String.t(),
        "Entitlements" => list(entitlement()),
        "HomeRegion" => String.t(),
        "Issuer" => issuer_details(),
        "LicenseArn" => String.t(),
        "LicenseMetadata" => list(metadata()),
        "LicenseName" => String.t(),
        "ProductName" => String.t(),
        "ProductSKU" => String.t(),
        "ReceivedMetadata" => received_metadata(),
        "Status" => list(any()),
        "Validity" => datetime_range(),
        "Version" => String.t()
      }
      
  """
  @type granted_license() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_grant_version_response() :: %{
        "GrantArn" => String.t(),
        "Status" => list(any()),
        "Version" => String.t()
      }
      
  """
  @type create_grant_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_license_specifications_for_resource_request() :: %{
        optional("AddLicenseSpecifications") => list(license_specification()),
        optional("RemoveLicenseSpecifications") => list(license_specification()),
        required("ResourceArn") => String.t()
      }
      
  """
  @type update_license_specifications_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_operation_failure() :: %{
        "ErrorMessage" => String.t(),
        "FailureTime" => non_neg_integer(),
        "MetadataList" => list(metadata()),
        "OperationName" => String.t(),
        "OperationRequestedBy" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceOwnerId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type license_operation_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_settings_response() :: %{
        "EnableCrossAccountsDiscovery" => boolean(),
        "LicenseManagerResourceShareArn" => String.t(),
        "OrganizationConfiguration" => organization_configuration(),
        "S3BucketArn" => String.t(),
        "SnsTopicArn" => String.t()
      }
      
  """
  @type get_service_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_access_token_request() :: %{
        optional("TokenProperties") => list(String.t()),
        required("Token") => String.t()
      }
      
  """
  @type get_access_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_received_grants_request() :: %{
        optional("Filters") => list(filter()),
        optional("GrantArns") => list(String.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_received_grants_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_license_conversion_task_for_resource_response() :: %{
        "LicenseConversionTaskId" => String.t()
      }
      
  """
  @type create_license_conversion_task_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_license_specifications_for_resource_response() :: %{
        "LicenseSpecifications" => list(license_specification()),
        "NextToken" => String.t()
      }
      
  """
  @type list_license_specifications_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      checkout_license_request() :: %{
        optional("Beneficiary") => String.t(),
        optional("NodeId") => String.t(),
        required("CheckoutType") => list(any()),
        required("ClientToken") => String.t(),
        required("Entitlements") => list(entitlement_data()),
        required("KeyFingerprint") => String.t(),
        required("ProductSKU") => String.t()
      }
      
  """
  @type checkout_license_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_inventory() :: %{
        "Platform" => String.t(),
        "PlatformVersion" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceId" => String.t(),
        "ResourceOwningAccountId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type resource_inventory() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_associations_for_license_configuration_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("LicenseConfigurationArn") => String.t()
      }
      
  """
  @type list_associations_for_license_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_license_conversion_task_for_resource_request() :: %{
        required("DestinationLicenseContext") => license_conversion_context(),
        required("ResourceArn") => String.t(),
        required("SourceLicenseContext") => license_conversion_context()
      }
      
  """
  @type create_license_conversion_task_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_license_manager_report_generator_request() :: %{
        optional("Description") => String.t(),
        required("ClientToken") => String.t(),
        required("LicenseManagerReportGeneratorArn") => String.t(),
        required("ReportContext") => report_context(),
        required("ReportFrequency") => report_frequency(),
        required("ReportGeneratorName") => String.t(),
        required("Type") => list(list(any())())
      }
      
  """
  @type update_license_manager_report_generator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      product_information_filter() :: %{
        "ProductInformationFilterComparator" => String.t(),
        "ProductInformationFilterName" => String.t(),
        "ProductInformationFilterValue" => list(String.t())
      }
      
  """
  @type product_information_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_settings_request() :: %{}
      
  """
  @type get_service_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      create_token_response() :: %{
        "Token" => String.t(),
        "TokenId" => String.t(),
        "TokenType" => list(any())
      }
      
  """
  @type create_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_digital_signature_method_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_digital_signature_method_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      issuer_details() :: %{
        "KeyFingerprint" => String.t(),
        "Name" => String.t(),
        "SignKey" => String.t()
      }
      
  """
  @type issuer_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_license_usage_response() :: %{
        "LicenseUsage" => license_usage()
      }
      
  """
  @type get_license_usage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tokens_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("TokenIds") => list(String.t())
      }
      
  """
  @type list_tokens_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      checkout_borrow_license_request() :: %{
        optional("CheckoutMetadata") => list(metadata()),
        optional("NodeId") => String.t(),
        required("ClientToken") => String.t(),
        required("DigitalSignatureMethod") => list(any()),
        required("Entitlements") => list(entitlement_data()),
        required("LicenseArn") => String.t()
      }
      
  """
  @type checkout_borrow_license_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_token_request() :: %{
        optional("ExpirationInDays") => integer(),
        optional("RoleArns") => list(String.t()),
        optional("TokenProperties") => list(String.t()),
        required("ClientToken") => String.t(),
        required("LicenseArn") => String.t()
      }
      
  """
  @type create_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_license_manager_report_generators_response() :: %{
        "NextToken" => String.t(),
        "ReportGenerators" => list(report_generator())
      }
      
  """
  @type list_license_manager_report_generators_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_grant_response() :: %{
        "GrantArn" => String.t(),
        "Status" => list(any()),
        "Version" => String.t()
      }
      
  """
  @type create_grant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisional_configuration() :: %{
        "MaxTimeToLiveInMinutes" => integer()
      }
      
  """
  @type provisional_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_license_manager_report_generator_request() :: %{
        required("LicenseManagerReportGeneratorArn") => String.t()
      }
      
  """
  @type get_license_manager_report_generator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_license_manager_report_generator_response() :: %{}
      
  """
  @type delete_license_manager_report_generator_response() :: %{}

  @typedoc """

  ## Example:
      
      update_service_settings_request() :: %{
        optional("EnableCrossAccountsDiscovery") => boolean(),
        optional("OrganizationConfiguration") => organization_configuration(),
        optional("S3BucketArn") => String.t(),
        optional("SnsTopicArn") => String.t()
      }
      
  """
  @type update_service_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entitlement_data() :: %{
        "Name" => String.t(),
        "Unit" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type entitlement_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_license_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("LicenseArn") => String.t()
      }
      
  """
  @type list_license_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tokens_response() :: %{
        "NextToken" => String.t(),
        "Tokens" => list(token_data())
      }
      
  """
  @type list_tokens_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_associations_for_license_configuration_response() :: %{
        "LicenseConfigurationAssociations" => list(license_configuration_association()),
        "NextToken" => String.t()
      }
      
  """
  @type list_associations_for_license_configuration_response() :: %{String.t() => any()}

  @type accept_grant_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type check_in_license_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | rate_limit_exceeded_exception()

  @type checkout_borrow_license_errors() ::
          unsupported_digital_signature_method_exception()
          | validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | redirect_exception()
          | resource_not_found_exception()
          | no_entitlements_allowed_exception()
          | entitlement_not_allowed_exception()
          | rate_limit_exceeded_exception()

  @type checkout_license_errors() ::
          unsupported_digital_signature_method_exception()
          | validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | redirect_exception()
          | resource_not_found_exception()
          | no_entitlements_allowed_exception()
          | rate_limit_exceeded_exception()

  @type create_grant_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type create_grant_version_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type create_license_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | redirect_exception()
          | rate_limit_exceeded_exception()

  @type create_license_configuration_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type create_license_conversion_task_for_resource_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type create_license_manager_report_generator_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | rate_limit_exceeded_exception()

  @type create_license_version_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | redirect_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | rate_limit_exceeded_exception()

  @type create_token_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | redirect_exception()
          | resource_not_found_exception()
          | rate_limit_exceeded_exception()

  @type delete_grant_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type delete_license_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | redirect_exception()
          | conflict_exception()
          | rate_limit_exceeded_exception()

  @type delete_license_configuration_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type delete_license_manager_report_generator_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | rate_limit_exceeded_exception()

  @type delete_token_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | redirect_exception()
          | resource_not_found_exception()
          | rate_limit_exceeded_exception()

  @type extend_license_consumption_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | rate_limit_exceeded_exception()

  @type get_access_token_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | rate_limit_exceeded_exception()

  @type get_grant_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type get_license_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type get_license_configuration_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type get_license_conversion_task_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type get_license_manager_report_generator_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | rate_limit_exceeded_exception()

  @type get_license_usage_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type get_service_settings_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | rate_limit_exceeded_exception()

  @type list_associations_for_license_configuration_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()
          | filter_limit_exceeded_exception()

  @type list_distributed_grants_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type list_failures_for_license_configuration_operations_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type list_license_configurations_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()
          | filter_limit_exceeded_exception()

  @type list_license_conversion_tasks_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type list_license_manager_report_generators_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | rate_limit_exceeded_exception()

  @type list_license_specifications_for_resource_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type list_license_versions_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type list_licenses_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type list_received_grants_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type list_received_grants_for_organization_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type list_received_licenses_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type list_received_licenses_for_organization_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type list_resource_inventory_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | failed_dependency_exception()
          | rate_limit_exceeded_exception()
          | filter_limit_exceeded_exception()

  @type list_tags_for_resource_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type list_tokens_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | rate_limit_exceeded_exception()

  @type list_usage_for_license_configuration_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()
          | filter_limit_exceeded_exception()

  @type reject_grant_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type tag_resource_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type untag_resource_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  @type update_license_configuration_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | conflict_exception()
          | rate_limit_exceeded_exception()

  @type update_license_manager_report_generator_errors() ::
          validation_exception()
          | server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | resource_limit_exceeded_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | rate_limit_exceeded_exception()

  @type update_license_specifications_for_resource_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_resource_state_exception()
          | invalid_parameter_value_exception()
          | conflict_exception()
          | license_usage_exception()
          | rate_limit_exceeded_exception()

  @type update_service_settings_errors() ::
          server_internal_exception()
          | access_denied_exception()
          | authorization_exception()
          | invalid_parameter_value_exception()
          | rate_limit_exceeded_exception()

  def metadata do
    %{
      api_version: "2018-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "license-manager",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "License Manager",
      signature_version: "v4",
      signing_name: "license-manager",
      target_prefix: "AWSLicenseManager"
    }
  end

  @doc """
  Accepts the specified grant.
  """
  @spec accept_grant(map(), accept_grant_request(), list()) ::
          {:ok, accept_grant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_grant_errors()}
  def accept_grant(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptGrant", input, options)
  end

  @doc """
  Checks in the specified license.

  Check in a license when it is no longer in use.
  """
  @spec check_in_license(map(), check_in_license_request(), list()) ::
          {:ok, check_in_license_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, check_in_license_errors()}
  def check_in_license(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CheckInLicense", input, options)
  end

  @doc """
  Checks out the specified license for offline use.
  """
  @spec checkout_borrow_license(map(), checkout_borrow_license_request(), list()) ::
          {:ok, checkout_borrow_license_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, checkout_borrow_license_errors()}
  def checkout_borrow_license(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CheckoutBorrowLicense", input, options)
  end

  @doc """
  Checks out the specified license.

  If the account that created the license is the same that is performing the check
  out, you must
  specify the account as the beneficiary.
  """
  @spec checkout_license(map(), checkout_license_request(), list()) ::
          {:ok, checkout_license_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, checkout_license_errors()}
  def checkout_license(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CheckoutLicense", input, options)
  end

  @doc """
  Creates a grant for the specified license.

  A grant shares the use of license
  entitlements with a specific Amazon Web Services account, an organization, or an
  organizational unit (OU). For more information, see [Granted licenses in License Manager](https://docs.aws.amazon.com/license-manager/latest/userguide/granted-licenses.html)
  in the *License Manager User Guide*.
  """
  @spec create_grant(map(), create_grant_request(), list()) ::
          {:ok, create_grant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_grant_errors()}
  def create_grant(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGrant", input, options)
  end

  @doc """
  Creates a new version of the specified grant.

  For more information, see
  [Granted licenses in License Manager](https://docs.aws.amazon.com/license-manager/latest/userguide/granted-licenses.html)
  in the *License Manager User Guide*.
  """
  @spec create_grant_version(map(), create_grant_version_request(), list()) ::
          {:ok, create_grant_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_grant_version_errors()}
  def create_grant_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGrantVersion", input, options)
  end

  @doc """
  Creates a license.
  """
  @spec create_license(map(), create_license_request(), list()) ::
          {:ok, create_license_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_license_errors()}
  def create_license(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLicense", input, options)
  end

  @doc """
  Creates a license configuration.

  A license configuration is an abstraction of a customer license agreement that
  can be
  consumed and enforced by License Manager. Components include specifications for
  the license
  type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared
  tenancy,
  Dedicated Instance, Dedicated Host, or all of these), license affinity to host
  (how long a
  license must be associated with a host), and the number of licenses purchased
  and used.
  """
  @spec create_license_configuration(map(), create_license_configuration_request(), list()) ::
          {:ok, create_license_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_license_configuration_errors()}
  def create_license_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLicenseConfiguration", input, options)
  end

  @doc """
  Creates a new license conversion task.
  """
  @spec create_license_conversion_task_for_resource(
          map(),
          create_license_conversion_task_for_resource_request(),
          list()
        ) ::
          {:ok, create_license_conversion_task_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_license_conversion_task_for_resource_errors()}
  def create_license_conversion_task_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLicenseConversionTaskForResource", input, options)
  end

  @doc """
  Creates a report generator.
  """
  @spec create_license_manager_report_generator(
          map(),
          create_license_manager_report_generator_request(),
          list()
        ) ::
          {:ok, create_license_manager_report_generator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_license_manager_report_generator_errors()}
  def create_license_manager_report_generator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLicenseManagerReportGenerator", input, options)
  end

  @doc """
  Creates a new version of the specified license.
  """
  @spec create_license_version(map(), create_license_version_request(), list()) ::
          {:ok, create_license_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_license_version_errors()}
  def create_license_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLicenseVersion", input, options)
  end

  @doc """
  Creates a long-lived token.

  A refresh token is a JWT token used to get an access token. With an access
  token,
  you can call AssumeRoleWithWebIdentity to get role credentials that you can use
  to
  call License Manager to manage the specified license.
  """
  @spec create_token(map(), create_token_request(), list()) ::
          {:ok, create_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_token_errors()}
  def create_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateToken", input, options)
  end

  @doc """
  Deletes the specified grant.
  """
  @spec delete_grant(map(), delete_grant_request(), list()) ::
          {:ok, delete_grant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_grant_errors()}
  def delete_grant(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGrant", input, options)
  end

  @doc """
  Deletes the specified license.
  """
  @spec delete_license(map(), delete_license_request(), list()) ::
          {:ok, delete_license_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_license_errors()}
  def delete_license(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLicense", input, options)
  end

  @doc """
  Deletes the specified license configuration.

  You cannot delete a license configuration that is in use.
  """
  @spec delete_license_configuration(map(), delete_license_configuration_request(), list()) ::
          {:ok, delete_license_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_license_configuration_errors()}
  def delete_license_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLicenseConfiguration", input, options)
  end

  @doc """
  Deletes the specified report generator.

  This action deletes the report generator, which stops it from generating future
  reports.
  The action cannot be reversed. It has no effect on the previous reports from
  this generator.
  """
  @spec delete_license_manager_report_generator(
          map(),
          delete_license_manager_report_generator_request(),
          list()
        ) ::
          {:ok, delete_license_manager_report_generator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_license_manager_report_generator_errors()}
  def delete_license_manager_report_generator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLicenseManagerReportGenerator", input, options)
  end

  @doc """
  Deletes the specified token.

  Must be called in the license home Region.
  """
  @spec delete_token(map(), delete_token_request(), list()) ::
          {:ok, delete_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_token_errors()}
  def delete_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteToken", input, options)
  end

  @doc """
  Extends the expiration date for license consumption.
  """
  @spec extend_license_consumption(map(), extend_license_consumption_request(), list()) ::
          {:ok, extend_license_consumption_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, extend_license_consumption_errors()}
  def extend_license_consumption(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExtendLicenseConsumption", input, options)
  end

  @doc """
  Gets a temporary access token to use with AssumeRoleWithWebIdentity.

  Access tokens
  are valid for one hour.
  """
  @spec get_access_token(map(), get_access_token_request(), list()) ::
          {:ok, get_access_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_access_token_errors()}
  def get_access_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccessToken", input, options)
  end

  @doc """
  Gets detailed information about the specified grant.
  """
  @spec get_grant(map(), get_grant_request(), list()) ::
          {:ok, get_grant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_grant_errors()}
  def get_grant(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGrant", input, options)
  end

  @doc """
  Gets detailed information about the specified license.
  """
  @spec get_license(map(), get_license_request(), list()) ::
          {:ok, get_license_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_license_errors()}
  def get_license(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLicense", input, options)
  end

  @doc """
  Gets detailed information about the specified license configuration.
  """
  @spec get_license_configuration(map(), get_license_configuration_request(), list()) ::
          {:ok, get_license_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_license_configuration_errors()}
  def get_license_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLicenseConfiguration", input, options)
  end

  @doc """
  Gets information about the specified license type conversion task.
  """
  @spec get_license_conversion_task(map(), get_license_conversion_task_request(), list()) ::
          {:ok, get_license_conversion_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_license_conversion_task_errors()}
  def get_license_conversion_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLicenseConversionTask", input, options)
  end

  @doc """
  Gets information about the specified report generator.
  """
  @spec get_license_manager_report_generator(
          map(),
          get_license_manager_report_generator_request(),
          list()
        ) ::
          {:ok, get_license_manager_report_generator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_license_manager_report_generator_errors()}
  def get_license_manager_report_generator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLicenseManagerReportGenerator", input, options)
  end

  @doc """
  Gets detailed information about the usage of the specified license.
  """
  @spec get_license_usage(map(), get_license_usage_request(), list()) ::
          {:ok, get_license_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_license_usage_errors()}
  def get_license_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLicenseUsage", input, options)
  end

  @doc """
  Gets the License Manager settings for the current Region.
  """
  @spec get_service_settings(map(), get_service_settings_request(), list()) ::
          {:ok, get_service_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_service_settings_errors()}
  def get_service_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceSettings", input, options)
  end

  @doc """
  Lists the resource associations for the specified license configuration.

  Resource associations need not consume licenses from a license configuration.
  For example, an AMI or a stopped instance might not consume a license (depending
  on
  the license rules).
  """
  @spec list_associations_for_license_configuration(
          map(),
          list_associations_for_license_configuration_request(),
          list()
        ) ::
          {:ok, list_associations_for_license_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_associations_for_license_configuration_errors()}
  def list_associations_for_license_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssociationsForLicenseConfiguration", input, options)
  end

  @doc """
  Lists the grants distributed for the specified license.
  """
  @spec list_distributed_grants(map(), list_distributed_grants_request(), list()) ::
          {:ok, list_distributed_grants_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distributed_grants_errors()}
  def list_distributed_grants(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDistributedGrants", input, options)
  end

  @doc """
  Lists the license configuration operations that failed.
  """
  @spec list_failures_for_license_configuration_operations(
          map(),
          list_failures_for_license_configuration_operations_request(),
          list()
        ) ::
          {:ok, list_failures_for_license_configuration_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_failures_for_license_configuration_operations_errors()}
  def list_failures_for_license_configuration_operations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ListFailuresForLicenseConfigurationOperations",
      input,
      options
    )
  end

  @doc """
  Lists the license configurations for your account.
  """
  @spec list_license_configurations(map(), list_license_configurations_request(), list()) ::
          {:ok, list_license_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_license_configurations_errors()}
  def list_license_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLicenseConfigurations", input, options)
  end

  @doc """
  Lists the license type conversion tasks for your account.
  """
  @spec list_license_conversion_tasks(map(), list_license_conversion_tasks_request(), list()) ::
          {:ok, list_license_conversion_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_license_conversion_tasks_errors()}
  def list_license_conversion_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLicenseConversionTasks", input, options)
  end

  @doc """
  Lists the report generators for your account.
  """
  @spec list_license_manager_report_generators(
          map(),
          list_license_manager_report_generators_request(),
          list()
        ) ::
          {:ok, list_license_manager_report_generators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_license_manager_report_generators_errors()}
  def list_license_manager_report_generators(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLicenseManagerReportGenerators", input, options)
  end

  @doc """
  Describes the license configurations for the specified resource.
  """
  @spec list_license_specifications_for_resource(
          map(),
          list_license_specifications_for_resource_request(),
          list()
        ) ::
          {:ok, list_license_specifications_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_license_specifications_for_resource_errors()}
  def list_license_specifications_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLicenseSpecificationsForResource", input, options)
  end

  @doc """
  Lists all versions of the specified license.
  """
  @spec list_license_versions(map(), list_license_versions_request(), list()) ::
          {:ok, list_license_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_license_versions_errors()}
  def list_license_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLicenseVersions", input, options)
  end

  @doc """
  Lists the licenses for your account.
  """
  @spec list_licenses(map(), list_licenses_request(), list()) ::
          {:ok, list_licenses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_licenses_errors()}
  def list_licenses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLicenses", input, options)
  end

  @doc """
  Lists grants that are received.

  Received grants are grants created while specifying the
  recipient as this Amazon Web Services account, your organization, or an
  organizational unit
  (OU) to which this member account belongs.
  """
  @spec list_received_grants(map(), list_received_grants_request(), list()) ::
          {:ok, list_received_grants_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_received_grants_errors()}
  def list_received_grants(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReceivedGrants", input, options)
  end

  @doc """
  Lists the grants received for all accounts in the organization.
  """
  @spec list_received_grants_for_organization(
          map(),
          list_received_grants_for_organization_request(),
          list()
        ) ::
          {:ok, list_received_grants_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_received_grants_for_organization_errors()}
  def list_received_grants_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReceivedGrantsForOrganization", input, options)
  end

  @doc """
  Lists received licenses.
  """
  @spec list_received_licenses(map(), list_received_licenses_request(), list()) ::
          {:ok, list_received_licenses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_received_licenses_errors()}
  def list_received_licenses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReceivedLicenses", input, options)
  end

  @doc """
  Lists the licenses received for all accounts in the organization.
  """
  @spec list_received_licenses_for_organization(
          map(),
          list_received_licenses_for_organization_request(),
          list()
        ) ::
          {:ok, list_received_licenses_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_received_licenses_for_organization_errors()}
  def list_received_licenses_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReceivedLicensesForOrganization", input, options)
  end

  @doc """
  Lists resources managed using Systems Manager inventory.
  """
  @spec list_resource_inventory(map(), list_resource_inventory_request(), list()) ::
          {:ok, list_resource_inventory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_inventory_errors()}
  def list_resource_inventory(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceInventory", input, options)
  end

  @doc """
  Lists the tags for the specified resource.

  For more information about tagging support in
  License Manager, see the
  [TagResource](https://docs.aws.amazon.com/license-manager/latest/APIReference/API_TagResource.html)
  operation.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists your tokens.
  """
  @spec list_tokens(map(), list_tokens_request(), list()) ::
          {:ok, list_tokens_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tokens_errors()}
  def list_tokens(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTokens", input, options)
  end

  @doc """
  Lists all license usage records for a license configuration, displaying license
  consumption details by resource at a selected point in time.

  Use this action to audit the
  current license consumption for any license inventory and configuration.
  """
  @spec list_usage_for_license_configuration(
          map(),
          list_usage_for_license_configuration_request(),
          list()
        ) ::
          {:ok, list_usage_for_license_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_usage_for_license_configuration_errors()}
  def list_usage_for_license_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUsageForLicenseConfiguration", input, options)
  end

  @doc """
  Rejects the specified grant.
  """
  @spec reject_grant(map(), reject_grant_request(), list()) ::
          {:ok, reject_grant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_grant_errors()}
  def reject_grant(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectGrant", input, options)
  end

  @doc """
  Adds the specified tags to the specified resource.

  The following resources support
  tagging in License Manager:

    *
  Licenses

    *
  Grants

    *
  License configurations

    *
  Report generators
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the specified tags from the specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Modifies the attributes of an existing license configuration.
  """
  @spec update_license_configuration(map(), update_license_configuration_request(), list()) ::
          {:ok, update_license_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_license_configuration_errors()}
  def update_license_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLicenseConfiguration", input, options)
  end

  @doc """
  Updates a report generator.

  After you make changes to a report generator, it starts generating new reports
  within 60 minutes of being updated.
  """
  @spec update_license_manager_report_generator(
          map(),
          update_license_manager_report_generator_request(),
          list()
        ) ::
          {:ok, update_license_manager_report_generator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_license_manager_report_generator_errors()}
  def update_license_manager_report_generator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLicenseManagerReportGenerator", input, options)
  end

  @doc """
  Adds or removes the specified license configurations for the specified Amazon
  Web Services resource.

  You can update the license specifications of AMIs, instances, and hosts.
  You cannot update the license specifications for launch templates and
  CloudFormation templates,
  as they send license configurations to the operation that creates the resource.
  """
  @spec update_license_specifications_for_resource(
          map(),
          update_license_specifications_for_resource_request(),
          list()
        ) ::
          {:ok, update_license_specifications_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_license_specifications_for_resource_errors()}
  def update_license_specifications_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLicenseSpecificationsForResource", input, options)
  end

  @doc """
  Updates License Manager settings for the current Region.
  """
  @spec update_service_settings(map(), update_service_settings_request(), list()) ::
          {:ok, update_service_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_service_settings_errors()}
  def update_service_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceSettings", input, options)
  end
end
