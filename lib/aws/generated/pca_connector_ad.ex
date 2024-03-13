# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PcaConnectorAd do
  @moduledoc """
  Amazon Web Services Private CA Connector for Active Directory creates a
  connector between Amazon Web Services Private CA and Active Directory (AD) that
  enables you to
  provision security certificates for AD signed by a private CA that you own.

  For more
  information, see [Amazon Web Services Private CA Connector for Active Directory](https://docs.aws.amazon.com/privateca/latest/userguide/ad-connector.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      connector() :: %{
        "Arn" => String.t(),
        "CertificateAuthorityArn" => String.t(),
        "CertificateEnrollmentPolicyServerEndpoint" => [String.t()],
        "CreatedAt" => [non_neg_integer()],
        "DirectoryId" => String.t(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "UpdatedAt" => [non_neg_integer()],
        "VpcInformation" => vpc_information()
      }

  """
  @type connector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      private_key_attributes_v4() :: %{
        "Algorithm" => list(any()),
        "CryptoProviders" => list([String.t()]()),
        "KeySpec" => list(any()),
        "KeyUsageProperty" => list(),
        "MinimalKeyLength" => [integer()]
      }

  """
  @type private_key_attributes_v4() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_template_group_access_control_entry_request() :: %{
        optional("AccessRights") => access_rights(),
        optional("GroupDisplayName") => String.t()
      }

  """
  @type update_template_group_access_control_entry_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connectors_response() :: %{
        "Connectors" => list(connector_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_connectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_directory_registration_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => map(),
        required("DirectoryId") => String.t()
      }

  """
  @type create_directory_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_templates_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ConnectorArn") => String.t()
      }

  """
  @type list_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_template_group_access_control_entry_request() :: %{}

  """
  @type delete_template_group_access_control_entry_request() :: %{}

  @typedoc """

  ## Example:

      enrollment_flags_v3() :: %{
        "EnableKeyReuseOnNtTokenKeysetStorageFull" => [boolean()],
        "IncludeSymmetricAlgorithms" => [boolean()],
        "NoSecurityExtension" => [boolean()],
        "RemoveInvalidCertificateFromPersonalStore" => [boolean()],
        "UserInteractionRequired" => [boolean()]
      }

  """
  @type enrollment_flags_v3() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_v3() :: %{
        "CertificateValidity" => certificate_validity(),
        "EnrollmentFlags" => enrollment_flags_v3(),
        "Extensions" => extensions_v3(),
        "GeneralFlags" => general_flags_v3(),
        "HashAlgorithm" => list(any()),
        "PrivateKeyAttributes" => private_key_attributes_v3(),
        "PrivateKeyFlags" => private_key_flags_v3(),
        "SubjectNameFlags" => subject_name_flags_v3(),
        "SupersededTemplates" => list(String.t()())
      }

  """
  @type template_v3() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      general_flags_v2() :: %{
        "AutoEnrollment" => [boolean()],
        "MachineType" => [boolean()]
      }

  """
  @type general_flags_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_control_entry_summary() :: %{
        "AccessRights" => access_rights(),
        "CreatedAt" => [non_neg_integer()],
        "GroupDisplayName" => String.t(),
        "GroupSecurityIdentifier" => String.t(),
        "TemplateArn" => String.t(),
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type access_control_entry_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enrollment_flags_v4() :: %{
        "EnableKeyReuseOnNtTokenKeysetStorageFull" => [boolean()],
        "IncludeSymmetricAlgorithms" => [boolean()],
        "NoSecurityExtension" => [boolean()],
        "RemoveInvalidCertificateFromPersonalStore" => [boolean()],
        "UserInteractionRequired" => [boolean()]
      }

  """
  @type enrollment_flags_v4() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_directory_registration_request() :: %{}

  """
  @type get_directory_registration_request() :: %{}

  @typedoc """

  ## Example:

      template_revision() :: %{
        "MajorRevision" => [integer()],
        "MinorRevision" => [integer()]
      }

  """
  @type template_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      private_key_flags_v2() :: %{
        "ClientVersion" => list(any()),
        "ExportableKey" => [boolean()],
        "StrongKeyProtectionRequired" => [boolean()]
      }

  """
  @type private_key_flags_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_template_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => map(),
        required("ConnectorArn") => String.t(),
        required("Definition") => list(),
        required("Name") => String.t()
      }

  """
  @type create_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_template_response() :: %{
        "Template" => template()
      }

  """
  @type get_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      directory_registration_summary() :: %{
        "Arn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "DirectoryId" => String.t(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type directory_registration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_template_group_access_control_entry_request() :: %{
        optional("ClientToken") => String.t(),
        required("AccessRights") => access_rights(),
        required("GroupDisplayName") => String.t(),
        required("GroupSecurityIdentifier") => String.t()
      }

  """
  @type create_template_group_access_control_entry_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connectors_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_connectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_template_request() :: %{
        optional("Definition") => list(),
        optional("ReenrollAllCertificateHolders") => [boolean()]
      }

  """
  @type update_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_usage_flags() :: %{
        "DataEncipherment" => [boolean()],
        "DigitalSignature" => [boolean()],
        "KeyAgreement" => [boolean()],
        "KeyEncipherment" => [boolean()],
        "NonRepudiation" => [boolean()]
      }

  """
  @type key_usage_flags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subject_name_flags_v4() :: %{
        "RequireCommonName" => [boolean()],
        "RequireDirectoryPath" => [boolean()],
        "RequireDnsAsCn" => [boolean()],
        "RequireEmail" => [boolean()],
        "SanRequireDirectoryGuid" => [boolean()],
        "SanRequireDns" => [boolean()],
        "SanRequireDomainDns" => [boolean()],
        "SanRequireEmail" => [boolean()],
        "SanRequireSpn" => [boolean()],
        "SanRequireUpn" => [boolean()]
      }

  """
  @type subject_name_flags_v4() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_principal_names_response() :: %{
        "NextToken" => String.t(),
        "ServicePrincipalNames" => list(service_principal_name_summary()())
      }

  """
  @type list_service_principal_names_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enrollment_flags_v2() :: %{
        "EnableKeyReuseOnNtTokenKeysetStorageFull" => [boolean()],
        "IncludeSymmetricAlgorithms" => [boolean()],
        "NoSecurityExtension" => [boolean()],
        "RemoveInvalidCertificateFromPersonalStore" => [boolean()],
        "UserInteractionRequired" => [boolean()]
      }

  """
  @type enrollment_flags_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      extensions_v3() :: %{
        "ApplicationPolicies" => application_policies(),
        "KeyUsage" => key_usage()
      }

  """
  @type extensions_v3() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_template_request() :: %{}

  """
  @type delete_template_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t()],
        "ResourceId" => [String.t()],
        "ResourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t()],
        "ResourceId" => [String.t()],
        "ResourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_principal_name_summary() :: %{
        "ConnectorArn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "DirectoryRegistrationArn" => String.t(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type service_principal_name_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      extensions_v2() :: %{
        "ApplicationPolicies" => application_policies(),
        "KeyUsage" => key_usage()
      }

  """
  @type extensions_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_template_group_access_control_entry_response() :: %{
        "AccessControlEntry" => access_control_entry()
      }

  """
  @type get_template_group_access_control_entry_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()],
        "QuotaCode" => [String.t()],
        "ResourceId" => [String.t()],
        "ResourceType" => [String.t()],
        "ServiceCode" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_usage_property_flags() :: %{
        "Decrypt" => [boolean()],
        "KeyAgreement" => [boolean()],
        "Sign" => [boolean()]
      }

  """
  @type key_usage_property_flags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_v4() :: %{
        "CertificateValidity" => certificate_validity(),
        "EnrollmentFlags" => enrollment_flags_v4(),
        "Extensions" => extensions_v4(),
        "GeneralFlags" => general_flags_v4(),
        "HashAlgorithm" => list(any()),
        "PrivateKeyAttributes" => private_key_attributes_v4(),
        "PrivateKeyFlags" => private_key_flags_v4(),
        "SubjectNameFlags" => subject_name_flags_v4(),
        "SupersededTemplates" => list(String.t()())
      }

  """
  @type template_v4() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_summary() :: %{
        "Arn" => String.t(),
        "ConnectorArn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "Definition" => list(),
        "Name" => String.t(),
        "ObjectIdentifier" => String.t(),
        "PolicySchema" => [integer()],
        "Revision" => template_revision(),
        "Status" => list(any()),
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      private_key_attributes_v2() :: %{
        "CryptoProviders" => list([String.t()]()),
        "KeySpec" => list(any()),
        "MinimalKeyLength" => [integer()]
      }

  """
  @type private_key_attributes_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      directory_registration() :: %{
        "Arn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "DirectoryId" => String.t(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type directory_registration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_directory_registration_request() :: %{}

  """
  @type delete_directory_registration_request() :: %{}

  @typedoc """

  ## Example:

      service_principal_name() :: %{
        "ConnectorArn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "DirectoryRegistrationArn" => String.t(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type service_principal_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_principal_name_request() :: %{}

  """
  @type get_service_principal_name_request() :: %{}

  @typedoc """

  ## Example:

      get_service_principal_name_response() :: %{
        "ServicePrincipalName" => service_principal_name()
      }

  """
  @type get_service_principal_name_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_control_entry() :: %{
        "AccessRights" => access_rights(),
        "CreatedAt" => [non_neg_integer()],
        "GroupDisplayName" => String.t(),
        "GroupSecurityIdentifier" => String.t(),
        "TemplateArn" => String.t(),
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type access_control_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connector_response() :: %{
        "ConnectorArn" => String.t()
      }

  """
  @type create_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_directory_registrations_response() :: %{
        "DirectoryRegistrations" => list(directory_registration_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_directory_registrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_directory_registration_response() :: %{
        "DirectoryRegistrationArn" => String.t()
      }

  """
  @type create_directory_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connector_request() :: %{}

  """
  @type get_connector_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_directory_registration_response() :: %{
        "DirectoryRegistration" => directory_registration()
      }

  """
  @type get_directory_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_service_principal_name_request() :: %{
        optional("ClientToken") => String.t()
      }

  """
  @type create_service_principal_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      private_key_attributes_v3() :: %{
        "Algorithm" => list(any()),
        "CryptoProviders" => list([String.t()]()),
        "KeySpec" => list(any()),
        "KeyUsageProperty" => list(),
        "MinimalKeyLength" => [integer()]
      }

  """
  @type private_key_attributes_v3() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_service_principal_name_request() :: %{}

  """
  @type delete_service_principal_name_request() :: %{}

  @typedoc """

  ## Example:

      get_template_group_access_control_entry_request() :: %{}

  """
  @type get_template_group_access_control_entry_request() :: %{}

  @typedoc """

  ## Example:

      list_template_group_access_control_entries_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_template_group_access_control_entries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subject_name_flags_v3() :: %{
        "RequireCommonName" => [boolean()],
        "RequireDirectoryPath" => [boolean()],
        "RequireDnsAsCn" => [boolean()],
        "RequireEmail" => [boolean()],
        "SanRequireDirectoryGuid" => [boolean()],
        "SanRequireDns" => [boolean()],
        "SanRequireDomainDns" => [boolean()],
        "SanRequireEmail" => [boolean()],
        "SanRequireSpn" => [boolean()],
        "SanRequireUpn" => [boolean()]
      }

  """
  @type subject_name_flags_v3() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validity_period() :: %{
        "Period" => [float()],
        "PeriodType" => list(any())
      }

  """
  @type validity_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_directory_registrations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_directory_registrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_policies() :: %{
        "Critical" => [boolean()],
        "Policies" => list(list()())
      }

  """
  @type application_policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connector_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => map(),
        required("CertificateAuthorityArn") => String.t(),
        required("DirectoryId") => String.t(),
        required("VpcInformation") => vpc_information()
      }

  """
  @type create_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_templates_response() :: %{
        "NextToken" => String.t(),
        "Templates" => list(template_summary()())
      }

  """
  @type list_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connector_summary() :: %{
        "Arn" => String.t(),
        "CertificateAuthorityArn" => String.t(),
        "CertificateEnrollmentPolicyServerEndpoint" => [String.t()],
        "CreatedAt" => [non_neg_integer()],
        "DirectoryId" => String.t(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "UpdatedAt" => [non_neg_integer()],
        "VpcInformation" => vpc_information()
      }

  """
  @type connector_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_template_request() :: %{}

  """
  @type get_template_request() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t()],
        "Reason" => list(any())
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

      list_template_group_access_control_entries_response() :: %{
        "AccessControlEntries" => list(access_control_entry_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_template_group_access_control_entries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_rights() :: %{
        "AutoEnroll" => list(any()),
        "Enroll" => list(any())
      }

  """
  @type access_rights() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      extensions_v4() :: %{
        "ApplicationPolicies" => application_policies(),
        "KeyUsage" => key_usage()
      }

  """
  @type extensions_v4() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t()],
        "QuotaCode" => [String.t()],
        "ServiceCode" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      general_flags_v4() :: %{
        "AutoEnrollment" => [boolean()],
        "MachineType" => [boolean()]
      }

  """
  @type general_flags_v4() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connector_response() :: %{
        "Connector" => connector()
      }

  """
  @type get_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_v2() :: %{
        "CertificateValidity" => certificate_validity(),
        "EnrollmentFlags" => enrollment_flags_v2(),
        "Extensions" => extensions_v2(),
        "GeneralFlags" => general_flags_v2(),
        "PrivateKeyAttributes" => private_key_attributes_v2(),
        "PrivateKeyFlags" => private_key_flags_v2(),
        "SubjectNameFlags" => subject_name_flags_v2(),
        "SupersededTemplates" => list(String.t()())
      }

  """
  @type template_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      private_key_flags_v4() :: %{
        "ClientVersion" => list(any()),
        "ExportableKey" => [boolean()],
        "RequireAlternateSignatureAlgorithm" => [boolean()],
        "RequireSameKeyRenewal" => [boolean()],
        "StrongKeyProtectionRequired" => [boolean()],
        "UseLegacyProvider" => [boolean()]
      }

  """
  @type private_key_flags_v4() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_principal_names_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_service_principal_names_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subject_name_flags_v2() :: %{
        "RequireCommonName" => [boolean()],
        "RequireDirectoryPath" => [boolean()],
        "RequireDnsAsCn" => [boolean()],
        "RequireEmail" => [boolean()],
        "SanRequireDirectoryGuid" => [boolean()],
        "SanRequireDns" => [boolean()],
        "SanRequireDomainDns" => [boolean()],
        "SanRequireEmail" => [boolean()],
        "SanRequireSpn" => [boolean()],
        "SanRequireUpn" => [boolean()]
      }

  """
  @type subject_name_flags_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connector_request() :: %{}

  """
  @type delete_connector_request() :: %{}

  @typedoc """

  ## Example:

      create_template_response() :: %{
        "TemplateArn" => String.t()
      }

  """
  @type create_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template() :: %{
        "Arn" => String.t(),
        "ConnectorArn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "Definition" => list(),
        "Name" => String.t(),
        "ObjectIdentifier" => String.t(),
        "PolicySchema" => [integer()],
        "Revision" => template_revision(),
        "Status" => list(any()),
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_information() :: %{
        "SecurityGroupIds" => list(String.t()())
      }

  """
  @type vpc_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      private_key_flags_v3() :: %{
        "ClientVersion" => list(any()),
        "ExportableKey" => [boolean()],
        "RequireAlternateSignatureAlgorithm" => [boolean()],
        "StrongKeyProtectionRequired" => [boolean()]
      }

  """
  @type private_key_flags_v3() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      certificate_validity() :: %{
        "RenewalPeriod" => validity_period(),
        "ValidityPeriod" => validity_period()
      }

  """
  @type certificate_validity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      general_flags_v3() :: %{
        "AutoEnrollment" => [boolean()],
        "MachineType" => [boolean()]
      }

  """
  @type general_flags_v3() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_usage() :: %{
        "Critical" => [boolean()],
        "UsageFlags" => key_usage_flags()
      }

  """
  @type key_usage() :: %{String.t() => any()}

  @type create_connector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_directory_registration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_service_principal_name_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_template_group_access_control_entry_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_connector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_directory_registration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_service_principal_name_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_template_group_access_control_entry_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_connector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_directory_registration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_principal_name_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_template_group_access_control_entry_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_connectors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_directory_registrations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_service_principal_names_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_template_group_access_control_entries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

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

  @type update_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_template_group_access_control_entry_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "pca-connector-ad",
      global?: false,
      protocol: "rest-json",
      service_id: "Pca Connector Ad",
      signature_version: "v4",
      signing_name: "pca-connector-ad",
      target_prefix: nil
    }
  end

  @doc """
  Creates a connector between Amazon Web Services Private CA and an Active
  Directory.

  You must specify the private CA,
  directory ID, and security groups.
  """
  @spec create_connector(map(), create_connector_request(), list()) ::
          {:ok, create_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_connector_errors()}
  def create_connector(%Client{} = client, input, options \\ []) do
    url_path = "/connectors"
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
      202
    )
  end

  @doc """
  Creates a directory registration that authorizes communication between Amazon
  Web Services Private CA and an
  Active Directory
  """
  @spec create_directory_registration(map(), create_directory_registration_request(), list()) ::
          {:ok, create_directory_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_directory_registration_errors()}
  def create_directory_registration(%Client{} = client, input, options \\ []) do
    url_path = "/directoryRegistrations"
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
      202
    )
  end

  @doc """
  Creates a service principal name (SPN) for the service account in Active
  Directory.

  Kerberos
  authentication uses SPNs to associate a service instance with a service sign-in
  account.
  """
  @spec create_service_principal_name(
          map(),
          String.t(),
          String.t(),
          create_service_principal_name_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_principal_name_errors()}
  def create_service_principal_name(
        %Client{} = client,
        connector_arn,
        directory_registration_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/directoryRegistrations/#{AWS.Util.encode_uri(directory_registration_arn)}/servicePrincipalNames/#{AWS.Util.encode_uri(connector_arn)}"

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
      202
    )
  end

  @doc """
  Creates an Active Directory compatible certificate template.

  The connectors issues certificates
  using these templates based on the requester’s Active Directory group
  membership.
  """
  @spec create_template(map(), create_template_request(), list()) ::
          {:ok, create_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_template_errors()}
  def create_template(%Client{} = client, input, options \\ []) do
    url_path = "/templates"
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
  Create a group access control entry.

  Allow or deny Active Directory groups from enrolling and/or
  autoenrolling with the template based on the group security identifiers (SIDs).
  """
  @spec create_template_group_access_control_entry(
          map(),
          String.t(),
          create_template_group_access_control_entry_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_template_group_access_control_entry_errors()}
  def create_template_group_access_control_entry(
        %Client{} = client,
        template_arn,
        input,
        options \\ []
      ) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_arn)}/accessControlEntries"
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
  Deletes a connector for Active Directory.

  You must provide the Amazon Resource Name (ARN) of the
  connector that you want to delete. You can find the ARN by calling the
  [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_ListConnectors](https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_ListConnectors) action. Deleting a connector does not deregister your directory with Amazon Web
  Services Private CA. You can
  deregister your directory by calling the
  [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_DeleteDirectoryRegistration](https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_DeleteDirectoryRegistration)
  action.
  """
  @spec delete_connector(map(), String.t(), delete_connector_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_connector_errors()}
  def delete_connector(%Client{} = client, connector_arn, input, options \\ []) do
    url_path = "/connectors/#{AWS.Util.encode_uri(connector_arn)}"
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
      202
    )
  end

  @doc """
  Deletes a directory registration.

  Deleting a directory registration deauthorizes
  Amazon Web Services Private CA with the directory.
  """
  @spec delete_directory_registration(
          map(),
          String.t(),
          delete_directory_registration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_directory_registration_errors()}
  def delete_directory_registration(
        %Client{} = client,
        directory_registration_arn,
        input,
        options \\ []
      ) do
    url_path = "/directoryRegistrations/#{AWS.Util.encode_uri(directory_registration_arn)}"
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
      202
    )
  end

  @doc """
  Deletes the service principal name (SPN) used by a connector to authenticate
  with your
  Active Directory.
  """
  @spec delete_service_principal_name(
          map(),
          String.t(),
          String.t(),
          delete_service_principal_name_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_principal_name_errors()}
  def delete_service_principal_name(
        %Client{} = client,
        connector_arn,
        directory_registration_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/directoryRegistrations/#{AWS.Util.encode_uri(directory_registration_arn)}/servicePrincipalNames/#{AWS.Util.encode_uri(connector_arn)}"

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
      202
    )
  end

  @doc """
  Deletes a template.

  Certificates issued using the template are still valid until they
  are revoked or expired.
  """
  @spec delete_template(map(), String.t(), delete_template_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_template_errors()}
  def delete_template(%Client{} = client, template_arn, input, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_arn)}"
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
      202
    )
  end

  @doc """
  Deletes a group access control entry.
  """
  @spec delete_template_group_access_control_entry(
          map(),
          String.t(),
          String.t(),
          delete_template_group_access_control_entry_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_template_group_access_control_entry_errors()}
  def delete_template_group_access_control_entry(
        %Client{} = client,
        group_security_identifier,
        template_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/templates/#{AWS.Util.encode_uri(template_arn)}/accessControlEntries/#{AWS.Util.encode_uri(group_security_identifier)}"

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
  Lists information about your connector.

  You specify the connector on input by its ARN
  (Amazon Resource Name).
  """
  @spec get_connector(map(), String.t(), list()) ::
          {:ok, get_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connector_errors()}
  def get_connector(%Client{} = client, connector_arn, options \\ []) do
    url_path = "/connectors/#{AWS.Util.encode_uri(connector_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A structure that contains information about your directory registration.
  """
  @spec get_directory_registration(map(), String.t(), list()) ::
          {:ok, get_directory_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_directory_registration_errors()}
  def get_directory_registration(%Client{} = client, directory_registration_arn, options \\ []) do
    url_path = "/directoryRegistrations/#{AWS.Util.encode_uri(directory_registration_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the service principal name that the connector uses to authenticate with
  Active Directory.
  """
  @spec get_service_principal_name(map(), String.t(), String.t(), list()) ::
          {:ok, get_service_principal_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_principal_name_errors()}
  def get_service_principal_name(
        %Client{} = client,
        connector_arn,
        directory_registration_arn,
        options \\ []
      ) do
    url_path =
      "/directoryRegistrations/#{AWS.Util.encode_uri(directory_registration_arn)}/servicePrincipalNames/#{AWS.Util.encode_uri(connector_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a certificate template that the connector uses to issue certificates
  from a
  private CA.
  """
  @spec get_template(map(), String.t(), list()) ::
          {:ok, get_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_template_errors()}
  def get_template(%Client{} = client, template_arn, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the group access control entries for a template.
  """
  @spec get_template_group_access_control_entry(map(), String.t(), String.t(), list()) ::
          {:ok, get_template_group_access_control_entry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_template_group_access_control_entry_errors()}
  def get_template_group_access_control_entry(
        %Client{} = client,
        group_security_identifier,
        template_arn,
        options \\ []
      ) do
    url_path =
      "/templates/#{AWS.Util.encode_uri(template_arn)}/accessControlEntries/#{AWS.Util.encode_uri(group_security_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the connectors that you created by using the
  [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector](https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector)
  action.
  """
  @spec list_connectors(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_connectors_errors()}
  def list_connectors(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/connectors"
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
  Lists the directory registrations that you created by using the
  [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration](https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration)
  action.
  """
  @spec list_directory_registrations(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_directory_registrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_directory_registrations_errors()}
  def list_directory_registrations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/directoryRegistrations"
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
  Lists the service principal names that the connector uses to authenticate with
  Active Directory.
  """
  @spec list_service_principal_names(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_service_principal_names_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_principal_names_errors()}
  def list_service_principal_names(
        %Client{} = client,
        directory_registration_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/directoryRegistrations/#{AWS.Util.encode_uri(directory_registration_arn)}/servicePrincipalNames"

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
  Lists the tags, if any, that are associated with your resource.
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
  Lists group access control entries you created.
  """
  @spec list_template_group_access_control_entries(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_template_group_access_control_entries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_template_group_access_control_entries_errors()}
  def list_template_group_access_control_entries(
        %Client{} = client,
        template_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_arn)}/accessControlEntries"
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
  Lists the templates, if any, that are associated with a connector.
  """
  @spec list_templates(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_templates_errors()}
  def list_templates(
        %Client{} = client,
        connector_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/templates"
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
      if !is_nil(connector_arn) do
        [{"ConnectorArn", connector_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds one or more tags to your resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
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
      204
    )
  end

  @doc """
  Removes one or more tags from your resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
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
      204
    )
  end

  @doc """
  Update template configuration to define the information included in
  certificates.
  """
  @spec update_template(map(), String.t(), update_template_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_template_errors()}
  def update_template(%Client{} = client, template_arn, input, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_arn)}"
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
  Update a group access control entry you created using
  [CreateTemplateGroupAccessControlEntry](https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplateGroupAccessControlEntry.html).
  """
  @spec update_template_group_access_control_entry(
          map(),
          String.t(),
          String.t(),
          update_template_group_access_control_entry_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_template_group_access_control_entry_errors()}
  def update_template_group_access_control_entry(
        %Client{} = client,
        group_security_identifier,
        template_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/templates/#{AWS.Util.encode_uri(template_arn)}/accessControlEntries/#{AWS.Util.encode_uri(group_security_identifier)}"

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
