# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IAM do
  @moduledoc """
  Identity and Access Management

  Identity and Access Management (IAM) is a web service for securely controlling
  access to Amazon Web Services services.

  With IAM, you can centrally manage users, security credentials
  such as access keys, and permissions that control which Amazon Web Services
  resources users and
  applications can access. For more information about IAM, see [Identity and Access Management (IAM)](http://aws.amazon.com/iam/) and the [Identity and Access Management User
  Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      put_user_policy_request() :: %{
        required("PolicyDocument") => String.t(),
        required("PolicyName") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type put_user_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_open_id_connect_provider_request() :: %{
        required("OpenIDConnectProviderArn") => String.t()
      }
      
  """
  @type get_open_id_connect_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_saml_providers_request() :: %{}
      
  """
  @type list_saml_providers_request() :: %{}

  @typedoc """

  ## Example:
      
      enable_organizations_root_credentials_management_response() :: %{
        "EnabledFeatures" => list(list(any())()),
        "OrganizationId" => String.t()
      }
      
  """
  @type enable_organizations_root_credentials_management_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      virtual_mfa_device() :: %{
        "Base32StringSeed" => binary(),
        "EnableDate" => non_neg_integer(),
        "QRCodePNG" => binary(),
        "SerialNumber" => String.t(),
        "Tags" => list(tag()()),
        "User" => user()
      }
      
  """
  @type virtual_mfa_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type entity_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_group_policies_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "PolicyNames" => list(String.t()())
      }
      
  """
  @type list_group_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_profiles_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("PathPrefix") => String.t()
      }
      
  """
  @type list_instance_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_granting_service_access_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "PoliciesGrantingServiceAccess" => list(list_policies_granting_service_access_entry()())
      }
      
  """
  @type list_policies_granting_service_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_saml_provider_request() :: %{
        optional("AddPrivateKey") => String.t(),
        optional("AssertionEncryptionMode") => list(any()),
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("SAMLMetadataDocument") => String.t()
      }
      
  """
  @type create_saml_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_user_policy_request() :: %{
        required("PolicyArn") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type detach_user_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_mfa_device_response() :: %{
        "Certifications" => map(),
        "EnableDate" => non_neg_integer(),
        "SerialNumber" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type get_mfa_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_linked_role_request() :: %{
        required("RoleName") => String.t()
      }
      
  """
  @type delete_service_linked_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_user_permissions_boundary_request() :: %{
        required("PermissionsBoundary") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type put_user_permissions_boundary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organizations_access_report_response() :: %{
        "AccessDetails" => list(access_detail()()),
        "ErrorDetails" => error_details(),
        "IsTruncated" => boolean(),
        "JobCompletionDate" => non_neg_integer(),
        "JobCreationDate" => non_neg_integer(),
        "JobStatus" => list(any()),
        "Marker" => String.t(),
        "NumberOfServicesAccessible" => integer(),
        "NumberOfServicesNotAccessed" => integer()
      }
      
  """
  @type get_organizations_access_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policy_versions_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Versions" => list(policy_version()())
      }
      
  """
  @type list_policy_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_saml_providers_response() :: %{
        "SAMLProviderList" => list(saml_provider_list_entry()())
      }
      
  """
  @type list_saml_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_user_type_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_user_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_default_policy_version_request() :: %{
        required("PolicyArn") => String.t(),
        required("VersionId") => String.t()
      }
      
  """
  @type set_default_policy_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_version_response() :: %{
        "PolicyVersion" => policy_version()
      }
      
  """
  @type get_policy_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_pair_mismatch_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type key_pair_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_tags_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("UserName") => String.t()
      }
      
  """
  @type list_user_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_specific_result() :: %{
        "EvalDecisionDetails" => map(),
        "EvalResourceDecision" => list(any()),
        "EvalResourceName" => String.t(),
        "MatchedStatements" => list(statement()()),
        "MissingContextValues" => list(String.t()()),
        "PermissionsBoundaryDecisionDetail" => permissions_boundary_decision_detail()
      }
      
  """
  @type resource_specific_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_profile() :: %{
        "Arn" => String.t(),
        "CreateDate" => non_neg_integer(),
        "InstanceProfileId" => String.t(),
        "InstanceProfileName" => String.t(),
        "Path" => String.t(),
        "Roles" => list(role()()),
        "Tags" => list(tag()())
      }
      
  """
  @type instance_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_group_policy_request() :: %{
        required("GroupName") => String.t(),
        required("PolicyArn") => String.t()
      }
      
  """
  @type attach_group_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_open_id_connect_provider_response() :: %{
        "OpenIDConnectProviderArn" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type create_open_id_connect_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policy_tags_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_policy_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_organizations_root_credentials_management_request() :: %{}
      
  """
  @type enable_organizations_root_credentials_management_request() :: %{}

  @typedoc """

  ## Example:
      
      list_attached_group_policies_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("PathPrefix") => String.t(),
        required("GroupName") => String.t()
      }
      
  """
  @type list_attached_group_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_version_request() :: %{
        required("PolicyArn") => String.t(),
        required("VersionId") => String.t()
      }
      
  """
  @type get_policy_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_policy_request() :: %{
        required("PolicyName") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type delete_user_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_organizations_root_sessions_request() :: %{}
      
  """
  @type disable_organizations_root_sessions_request() :: %{}

  @typedoc """

  ## Example:
      
      context_entry() :: %{
        "ContextKeyName" => String.t(),
        "ContextKeyType" => list(any()),
        "ContextKeyValues" => list(String.t()())
      }
      
  """
  @type context_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_server_certificates_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "ServerCertificateMetadataList" => list(server_certificate_metadata()())
      }
      
  """
  @type list_server_certificates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_mfa_device_request() :: %{
        required("AuthenticationCode1") => String.t(),
        required("AuthenticationCode2") => String.t(),
        required("SerialNumber") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type enable_mfa_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_open_id_connect_provider_response() :: %{
        "ClientIDList" => list(String.t()()),
        "CreateDate" => non_neg_integer(),
        "Tags" => list(tag()()),
        "ThumbprintList" => list(String.t()()),
        "Url" => String.t()
      }
      
  """
  @type get_open_id_connect_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_last_accessed_details_response() :: %{
        "Error" => error_details(),
        "IsTruncated" => boolean(),
        "JobCompletionDate" => non_neg_integer(),
        "JobCreationDate" => non_neg_integer(),
        "JobStatus" => list(any()),
        "JobType" => list(any()),
        "Marker" => String.t(),
        "ServicesLastAccessed" => list(service_last_accessed()())
      }
      
  """
  @type get_service_last_accessed_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_context_keys_for_policy_response() :: %{
        "ContextKeyNames" => list(String.t()())
      }
      
  """
  @type get_context_keys_for_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_role_policy_request() :: %{
        required("PolicyDocument") => String.t(),
        required("PolicyName") => String.t(),
        required("RoleName") => String.t()
      }
      
  """
  @type put_role_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Policies" => list(policy()())
      }
      
  """
  @type list_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_specific_credential_response() :: %{
        "ServiceSpecificCredential" => service_specific_credential()
      }
      
  """
  @type create_service_specific_credential_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organizations_features_response() :: %{
        "EnabledFeatures" => list(list(any())()),
        "OrganizationId" => String.t()
      }
      
  """
  @type list_organizations_features_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_granting_service_access() :: %{
        "EntityName" => String.t(),
        "EntityType" => list(any()),
        "PolicyArn" => String.t(),
        "PolicyName" => String.t(),
        "PolicyType" => list(any())
      }
      
  """
  @type policy_granting_service_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_not_attachable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type policy_not_attachable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_group() :: %{
        "GroupId" => String.t(),
        "GroupName" => String.t()
      }
      
  """
  @type policy_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_entity_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_such_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_server_certificate_tags_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("ServerCertificateName") => String.t()
      }
      
  """
  @type list_server_certificate_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_failure_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_entities_for_policy_request() :: %{
        optional("EntityFilter") => list(any()),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("PathPrefix") => String.t(),
        optional("PolicyUsageFilter") => list(any()),
        required("PolicyArn") => String.t()
      }
      
  """
  @type list_entities_for_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_virtual_mfa_device_request() :: %{
        required("SerialNumber") => String.t()
      }
      
  """
  @type delete_virtual_mfa_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_for_user_response() :: %{
        "Groups" => list(group()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t()
      }
      
  """
  @type list_groups_for_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("OnlyAttached") => boolean(),
        optional("PathPrefix") => String.t(),
        optional("PolicyUsageFilter") => list(any()),
        optional("Scope") => list(any())
      }
      
  """
  @type list_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_request() :: %{
        required("PolicyArn") => String.t()
      }
      
  """
  @type get_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      password_policy() :: %{
        "AllowUsersToChangePassword" => boolean(),
        "ExpirePasswords" => boolean(),
        "HardExpiry" => boolean(),
        "MaxPasswordAge" => integer(),
        "MinimumPasswordLength" => integer(),
        "PasswordReusePrevention" => integer(),
        "RequireLowercaseCharacters" => boolean(),
        "RequireNumbers" => boolean(),
        "RequireSymbols" => boolean(),
        "RequireUppercaseCharacters" => boolean()
      }
      
  """
  @type password_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_group_policy_request() :: %{
        required("GroupName") => String.t(),
        required("PolicyName") => String.t()
      }
      
  """
  @type delete_group_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attached_role_policies_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("PathPrefix") => String.t(),
        required("RoleName") => String.t()
      }
      
  """
  @type list_attached_role_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mfa_devices_response() :: %{
        "IsTruncated" => boolean(),
        "MFADevices" => list(mfa_device()()),
        "Marker" => String.t()
      }
      
  """
  @type list_mfa_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type delete_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_ssh_public_key_response() :: %{
        "SSHPublicKey" => ssh_public_key()
      }
      
  """
  @type upload_ssh_public_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_evaluation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type policy_evaluation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_saml_provider_request() :: %{
        required("SAMLProviderArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_saml_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_role_policies_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "PolicyNames" => list(String.t()())
      }
      
  """
  @type list_role_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_policy_request() :: %{
        optional("Description") => String.t(),
        optional("Path") => String.t(),
        optional("Tags") => list(tag()()),
        required("PolicyDocument") => String.t(),
        required("PolicyName") => String.t()
      }
      
  """
  @type create_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_info() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Path" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type entity_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_response() :: %{
        "User" => user()
      }
      
  """
  @type get_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_instance_profile_response() :: %{
        "InstanceProfile" => instance_profile()
      }
      
  """
  @type create_instance_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      role() :: %{
        "Arn" => String.t(),
        "AssumeRolePolicyDocument" => String.t(),
        "CreateDate" => non_neg_integer(),
        "Description" => String.t(),
        "MaxSessionDuration" => integer(),
        "Path" => String.t(),
        "PermissionsBoundary" => attached_permissions_boundary(),
        "RoleId" => String.t(),
        "RoleLastUsed" => role_last_used(),
        "RoleName" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type role() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_user_policy_request() :: %{
        required("PolicyArn") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type attach_user_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_roles_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Roles" => list(role()())
      }
      
  """
  @type list_roles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_linked_role_deletion_status_response() :: %{
        "Reason" => deletion_task_failure_reason_type(),
        "Status" => list(any())
      }
      
  """
  @type get_service_linked_role_deletion_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_open_id_connect_provider_request() :: %{
        required("OpenIDConnectProviderArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_open_id_connect_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_specific_credentials_request() :: %{
        optional("ServiceName") => String.t(),
        optional("UserName") => String.t()
      }
      
  """
  @type list_service_specific_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_ssh_public_keys_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("UserName") => String.t()
      }
      
  """
  @type list_ssh_public_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_saml_provider_response() :: %{
        "AssertionEncryptionMode" => list(any()),
        "CreateDate" => non_neg_integer(),
        "PrivateKeyList" => list(saml_private_key()()),
        "SAMLMetadataDocument" => String.t(),
        "SAMLProviderUUID" => String.t(),
        "Tags" => list(tag()()),
        "ValidUntil" => non_neg_integer()
      }
      
  """
  @type get_saml_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_entities_for_policy_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "PolicyGroups" => list(policy_group()()),
        "PolicyRoles" => list(policy_role()()),
        "PolicyUsers" => list(policy_user()())
      }
      
  """
  @type list_entities_for_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_policy_version_response() :: %{
        "PolicyVersion" => policy_version()
      }
      
  """
  @type create_policy_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simulate_custom_policy_request() :: %{
        optional("CallerArn") => String.t(),
        optional("ContextEntries") => list(context_entry()()),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("PermissionsBoundaryPolicyInputList") => list(String.t()()),
        optional("ResourceArns") => list(String.t()()),
        optional("ResourceHandlingOption") => String.t(),
        optional("ResourceOwner") => String.t(),
        optional("ResourcePolicy") => String.t(),
        required("ActionNames") => list(String.t()()),
        required("PolicyInputList") => list(String.t()())
      }
      
  """
  @type simulate_custom_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      role_detail() :: %{
        "Arn" => String.t(),
        "AssumeRolePolicyDocument" => String.t(),
        "AttachedManagedPolicies" => list(attached_policy()()),
        "CreateDate" => non_neg_integer(),
        "InstanceProfileList" => list(instance_profile()()),
        "Path" => String.t(),
        "PermissionsBoundary" => attached_permissions_boundary(),
        "RoleId" => String.t(),
        "RoleLastUsed" => role_last_used(),
        "RoleName" => String.t(),
        "RolePolicyList" => list(policy_detail()()),
        "Tags" => list(tag()())
      }
      
  """
  @type role_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_open_id_connect_providers_response() :: %{
        "OpenIDConnectProviderList" => list(open_id_connect_provider_list_entry()())
      }
      
  """
  @type list_open_id_connect_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_detail() :: %{
        "PolicyDocument" => String.t(),
        "PolicyName" => String.t()
      }
      
  """
  @type policy_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      statement() :: %{
        "EndPosition" => position(),
        "SourcePolicyId" => String.t(),
        "SourcePolicyType" => list(any()),
        "StartPosition" => position()
      }
      
  """
  @type statement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_permissions_boundary_request() :: %{
        required("UserName") => String.t()
      }
      
  """
  @type delete_user_permissions_boundary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_authorization_details_request() :: %{
        optional("Filter") => list(list(any())()),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type get_account_authorization_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_user_request() :: %{
        required("TagKeys") => list(String.t()()),
        required("UserName") => String.t()
      }
      
  """
  @type untag_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unmodifiable_entity_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unmodifiable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_login_profile_response() :: %{
        "LoginProfile" => login_profile()
      }
      
  """
  @type get_login_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_profiles_response() :: %{
        "InstanceProfiles" => list(instance_profile()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t()
      }
      
  """
  @type list_instance_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_not_supported_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_not_supported_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_not_management_or_delegated_administrator_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type account_not_management_or_delegated_administrator_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_ssh_public_key_request() :: %{
        required("SSHPublicKeyId") => String.t(),
        required("Status") => list(any()),
        required("UserName") => String.t()
      }
      
  """
  @type update_ssh_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mfa_devices_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("UserName") => String.t()
      }
      
  """
  @type list_mfa_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_assume_role_policy_request() :: %{
        required("PolicyDocument") => String.t(),
        required("RoleName") => String.t()
      }
      
  """
  @type update_assume_role_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_signing_certificate_request() :: %{
        optional("UserName") => String.t(),
        required("CertificateBody") => String.t()
      }
      
  """
  @type upload_signing_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_specific_credentials_response() :: %{
        "ServiceSpecificCredentials" => list(service_specific_credential_metadata()())
      }
      
  """
  @type list_service_specific_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      position() :: %{
        "Column" => integer(),
        "Line" => integer()
      }
      
  """
  @type position() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_organizations_root_sessions_response() :: %{
        "EnabledFeatures" => list(list(any())()),
        "OrganizationId" => String.t()
      }
      
  """
  @type enable_organizations_root_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_instance_profile_request() :: %{
        required("InstanceProfileName") => String.t()
      }
      
  """
  @type delete_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      group_detail() :: %{
        "Arn" => String.t(),
        "AttachedManagedPolicies" => list(attached_policy()()),
        "CreateDate" => non_neg_integer(),
        "GroupId" => String.t(),
        "GroupName" => String.t(),
        "GroupPolicyList" => list(policy_detail()()),
        "Path" => String.t()
      }
      
  """
  @type group_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_server_certificate_request() :: %{
        optional("CertificateChain") => String.t(),
        optional("Path") => String.t(),
        optional("Tags") => list(tag()()),
        required("CertificateBody") => String.t(),
        required("PrivateKey") => String.t(),
        required("ServerCertificateName") => String.t()
      }
      
  """
  @type upload_server_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_group_request() :: %{
        optional("NewGroupName") => String.t(),
        optional("NewPath") => String.t(),
        required("GroupName") => String.t()
      }
      
  """
  @type update_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_access_key_last_used_response() :: %{
        "AccessKeyLastUsed" => access_key_last_used(),
        "UserName" => String.t()
      }
      
  """
  @type get_access_key_last_used_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_instance_profile_request() :: %{
        optional("Path") => String.t(),
        optional("Tags") => list(tag()()),
        required("InstanceProfileName") => String.t()
      }
      
  """
  @type create_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      credential_report_not_ready_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type credential_report_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_version() :: %{
        "CreateDate" => non_neg_integer(),
        "Document" => String.t(),
        "IsDefaultVersion" => boolean(),
        "VersionId" => String.t()
      }
      
  """
  @type policy_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_policy_detail() :: %{
        "Arn" => String.t(),
        "AttachmentCount" => integer(),
        "CreateDate" => non_neg_integer(),
        "DefaultVersionId" => String.t(),
        "Description" => String.t(),
        "IsAttachable" => boolean(),
        "Path" => String.t(),
        "PermissionsBoundaryUsageCount" => integer(),
        "PolicyId" => String.t(),
        "PolicyName" => String.t(),
        "PolicyVersionList" => list(policy_version()()),
        "UpdateDate" => non_neg_integer()
      }
      
  """
  @type managed_policy_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_server_certificate_request() :: %{
        required("ServerCertificateName") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_server_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_specific_credential_metadata() :: %{
        "CreateDate" => non_neg_integer(),
        "ServiceName" => String.t(),
        "ServiceSpecificCredentialId" => String.t(),
        "ServiceUserName" => String.t(),
        "Status" => list(any()),
        "UserName" => String.t()
      }
      
  """
  @type service_specific_credential_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_last_accessed_details_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("JobId") => String.t()
      }
      
  """
  @type get_service_last_accessed_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_access_not_enabled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_access_not_enabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_key_metadata() :: %{
        "AccessKeyId" => String.t(),
        "CreateDate" => non_neg_integer(),
        "Status" => list(any()),
        "UserName" => String.t()
      }
      
  """
  @type access_key_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_account_alias_request() :: %{
        required("AccountAlias") => String.t()
      }
      
  """
  @type create_account_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_group_policy_request() :: %{
        required("GroupName") => String.t(),
        required("PolicyDocument") => String.t(),
        required("PolicyName") => String.t()
      }
      
  """
  @type put_group_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ssh_public_key_metadata() :: %{
        "SSHPublicKeyId" => String.t(),
        "Status" => list(any()),
        "UploadDate" => non_neg_integer(),
        "UserName" => String.t()
      }
      
  """
  @type ssh_public_key_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_profile_request() :: %{
        required("InstanceProfileName") => String.t()
      }
      
  """
  @type get_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_group_policy_response() :: %{
        "GroupName" => String.t(),
        "PolicyDocument" => String.t(),
        "PolicyName" => String.t()
      }
      
  """
  @type get_group_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_specific_credential_request() :: %{
        optional("UserName") => String.t(),
        required("ServiceSpecificCredentialId") => String.t()
      }
      
  """
  @type delete_service_specific_credential_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_for_user_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("UserName") => String.t()
      }
      
  """
  @type list_groups_for_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_role_tags_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_role_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_policy_version_request() :: %{
        required("PolicyArn") => String.t(),
        required("VersionId") => String.t()
      }
      
  """
  @type delete_policy_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mfa_device_tags_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_mfa_device_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_policy_request() :: %{
        required("PolicyName") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type get_user_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_mfa_device_request() :: %{
        required("SerialNumber") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_mfa_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      report_generation_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type report_generation_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_idp_communication_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type open_id_idp_communication_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_provider_list_entry() :: %{
        "Arn" => String.t()
      }
      
  """
  @type open_id_connect_provider_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_request() :: %{
        optional("UserName") => String.t()
      }
      
  """
  @type get_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_not_in_all_features_mode_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type organization_not_in_all_features_mode_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_linked_role_request() :: %{
        optional("CustomSuffix") => String.t(),
        optional("Description") => String.t(),
        required("AWSServiceName") => String.t()
      }
      
  """
  @type create_service_linked_role_request() :: %{String.t() => any()}

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
      
      create_policy_version_request() :: %{
        optional("SetAsDefault") => boolean(),
        required("PolicyArn") => String.t(),
        required("PolicyDocument") => String.t()
      }
      
  """
  @type create_policy_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_role_request() :: %{
        required("RoleName") => String.t()
      }
      
  """
  @type get_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_role_response() :: %{}
      
  """
  @type update_role_response() :: %{}

  @typedoc """

  ## Example:
      
      deactivate_mfa_device_request() :: %{
        optional("UserName") => String.t(),
        required("SerialNumber") => String.t()
      }
      
  """
  @type deactivate_mfa_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_group_policy_request() :: %{
        required("GroupName") => String.t(),
        required("PolicyArn") => String.t()
      }
      
  """
  @type detach_group_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      saml_provider_list_entry() :: %{
        "Arn" => String.t(),
        "CreateDate" => non_neg_integer(),
        "ValidUntil" => non_neg_integer()
      }
      
  """
  @type saml_provider_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_server_certificate_request() :: %{
        required("ServerCertificateName") => String.t()
      }
      
  """
  @type delete_server_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_context_keys_for_custom_policy_request() :: %{
        required("PolicyInputList") => list(String.t()())
      }
      
  """
  @type get_context_keys_for_custom_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attached_user_policies_response() :: %{
        "AttachedPolicies" => list(attached_policy()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t()
      }
      
  """
  @type list_attached_user_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_key() :: %{
        "AccessKeyId" => String.t(),
        "CreateDate" => non_neg_integer(),
        "SecretAccessKey" => String.t(),
        "Status" => list(any()),
        "UserName" => String.t()
      }
      
  """
  @type access_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_server_certificate_request() :: %{
        optional("NewPath") => String.t(),
        optional("NewServerCertificateName") => String.t(),
        required("ServerCertificateName") => String.t()
      }
      
  """
  @type update_server_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type organization_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_access_keys_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("UserName") => String.t()
      }
      
  """
  @type list_access_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_role_policy_request() :: %{
        required("PolicyName") => String.t(),
        required("RoleName") => String.t()
      }
      
  """
  @type delete_role_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Users" => list(user()())
      }
      
  """
  @type list_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_account_password_policy_request() :: %{
        optional("AllowUsersToChangePassword") => boolean(),
        optional("HardExpiry") => boolean(),
        optional("MaxPasswordAge") => integer(),
        optional("MinimumPasswordLength") => integer(),
        optional("PasswordReusePrevention") => integer(),
        optional("RequireLowercaseCharacters") => boolean(),
        optional("RequireNumbers") => boolean(),
        optional("RequireSymbols") => boolean(),
        optional("RequireUppercaseCharacters") => boolean()
      }
      
  """
  @type update_account_password_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ssh_public_key_request() :: %{
        required("Encoding") => list(any()),
        required("SSHPublicKeyId") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type get_ssh_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_profile_tags_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("InstanceProfileName") => String.t()
      }
      
  """
  @type list_instance_profile_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      role_last_used() :: %{
        "LastUsedDate" => non_neg_integer(),
        "Region" => String.t()
      }
      
  """
  @type role_last_used() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_organizations_root_credentials_management_request() :: %{}
      
  """
  @type disable_organizations_root_credentials_management_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_saml_provider_request() :: %{
        required("SAMLProviderArn") => String.t()
      }
      
  """
  @type delete_saml_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_server_certificate_tags_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_server_certificate_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_profile_tags_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_instance_profile_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_user_to_group_request() :: %{
        required("GroupName") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type add_user_to_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_temporarily_unmodifiable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type entity_temporarily_unmodifiable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_access_key_request() :: %{
        optional("UserName") => String.t(),
        required("AccessKeyId") => String.t()
      }
      
  """
  @type delete_access_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      password_policy_violation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type password_policy_violation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_organizations_root_sessions_response() :: %{
        "EnabledFeatures" => list(list(any())()),
        "OrganizationId" => String.t()
      }
      
  """
  @type disable_organizations_root_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_certificate_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_certificate_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_input_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_granting_service_access_entry() :: %{
        "Policies" => list(policy_granting_service_access()()),
        "ServiceNamespace" => String.t()
      }
      
  """
  @type list_policies_granting_service_access_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_saml_provider_request() :: %{
        required("SAMLProviderArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_saml_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_details() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_access_key_last_used_request() :: %{
        required("AccessKeyId") => String.t()
      }
      
  """
  @type get_access_key_last_used_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_certificate_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type malformed_certificate_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_login_profile_request() :: %{
        optional("UserName") => String.t()
      }
      
  """
  @type delete_login_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_organizations_root_sessions_request() :: %{}
      
  """
  @type enable_organizations_root_sessions_request() :: %{}

  @typedoc """

  ## Example:
      
      create_virtual_mfa_device_response() :: %{
        "VirtualMFADevice" => virtual_mfa_device()
      }
      
  """
  @type create_virtual_mfa_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_role_description_response() :: %{
        "Role" => role()
      }
      
  """
  @type update_role_description_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_security_token_service_preferences_request() :: %{
        required("GlobalEndpointTokenVersion") => list(any())
      }
      
  """
  @type set_security_token_service_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_group_request() :: %{
        optional("Path") => String.t(),
        required("GroupName") => String.t()
      }
      
  """
  @type create_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_role_from_instance_profile_request() :: %{
        required("InstanceProfileName") => String.t(),
        required("RoleName") => String.t()
      }
      
  """
  @type remove_role_from_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_specific_credential() :: %{
        "CreateDate" => non_neg_integer(),
        "ServiceName" => String.t(),
        "ServicePassword" => String.t(),
        "ServiceSpecificCredentialId" => String.t(),
        "ServiceUserName" => String.t(),
        "Status" => list(any()),
        "UserName" => String.t()
      }
      
  """
  @type service_specific_credential() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_instance_profile_request() :: %{
        required("InstanceProfileName") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_virtual_mfa_devices_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "VirtualMFADevices" => list(virtual_mfa_device()())
      }
      
  """
  @type list_virtual_mfa_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_open_id_connect_provider_request() :: %{
        required("OpenIDConnectProviderArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_open_id_connect_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_organizations_access_report_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type generate_organizations_access_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_virtual_mfa_devices_request() :: %{
        optional("AssignmentStatus") => list(any()),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_virtual_mfa_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_server_certificate_request() :: %{
        required("ServerCertificateName") => String.t()
      }
      
  """
  @type get_server_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      change_password_request() :: %{
        required("NewPassword") => String.t(),
        required("OldPassword") => String.t()
      }
      
  """
  @type change_password_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_role_tags_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("RoleName") => String.t()
      }
      
  """
  @type list_role_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{
        required("UserName") => String.t()
      }
      
  """
  @type delete_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_service_last_accessed_details_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type generate_service_last_accessed_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_linked_role_deletion_status_request() :: %{
        required("DeletionTaskId") => String.t()
      }
      
  """
  @type get_service_linked_role_deletion_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_account_alias_request() :: %{
        required("AccountAlias") => String.t()
      }
      
  """
  @type delete_account_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_policy_response() :: %{
        "Policy" => policy()
      }
      
  """
  @type create_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_organizations_access_report_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("SortKey") => list(any()),
        required("JobId") => String.t()
      }
      
  """
  @type get_organizations_access_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policy_versions_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("PolicyArn") => String.t()
      }
      
  """
  @type list_policy_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_granting_service_access_request() :: %{
        optional("Marker") => String.t(),
        required("Arn") => String.t(),
        required("ServiceNamespaces") => list(String.t()())
      }
      
  """
  @type list_policies_granting_service_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_password_policy_response() :: %{
        "PasswordPolicy" => password_policy()
      }
      
  """
  @type get_account_password_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_specific_credential_request() :: %{
        optional("UserName") => String.t(),
        required("ServiceSpecificCredentialId") => String.t(),
        required("Status") => list(any())
      }
      
  """
  @type update_service_specific_credential_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_login_profile_response() :: %{
        "LoginProfile" => login_profile()
      }
      
  """
  @type create_login_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_service_specific_credential_request() :: %{
        optional("UserName") => String.t(),
        required("ServiceSpecificCredentialId") => String.t()
      }
      
  """
  @type reset_service_specific_credential_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_response() :: %{
        "Policy" => policy()
      }
      
  """
  @type get_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_saml_provider_response() :: %{
        "SAMLProviderArn" => String.t()
      }
      
  """
  @type update_saml_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_user_policy_response() :: %{
        "PolicyDocument" => String.t(),
        "PolicyName" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type get_user_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      credential_report_expired_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type credential_report_expired_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_organizations_features_request() :: %{}
      
  """
  @type list_organizations_features_request() :: %{}

  @typedoc """

  ## Example:
      
      mfa_device() :: %{
        "EnableDate" => non_neg_integer(),
        "SerialNumber" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type mfa_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_details() :: %{
        "EntityInfo" => entity_info(),
        "LastAuthenticated" => non_neg_integer()
      }
      
  """
  @type entity_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_profiles_for_role_response() :: %{
        "InstanceProfiles" => list(instance_profile()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t()
      }
      
  """
  @type list_instance_profiles_for_role_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      signing_certificate() :: %{
        "CertificateBody" => String.t(),
        "CertificateId" => String.t(),
        "Status" => list(any()),
        "UploadDate" => non_neg_integer(),
        "UserName" => String.t()
      }
      
  """
  @type signing_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_policy_request() :: %{
        required("PolicyArn") => String.t()
      }
      
  """
  @type delete_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_mfa_device_tags_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("SerialNumber") => String.t()
      }
      
  """
  @type list_mfa_device_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_authentication_code_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_authentication_code_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_organizations_access_report_request() :: %{
        optional("OrganizationsPolicyId") => String.t(),
        required("EntityPath") => String.t()
      }
      
  """
  @type generate_organizations_access_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_role_to_instance_profile_request() :: %{
        required("InstanceProfileName") => String.t(),
        required("RoleName") => String.t()
      }
      
  """
  @type add_role_to_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_signing_certificates_response() :: %{
        "Certificates" => list(signing_certificate()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t()
      }
      
  """
  @type list_signing_certificates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simulate_principal_policy_request() :: %{
        optional("CallerArn") => String.t(),
        optional("ContextEntries") => list(context_entry()()),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("PermissionsBoundaryPolicyInputList") => list(String.t()()),
        optional("PolicyInputList") => list(String.t()()),
        optional("ResourceArns") => list(String.t()()),
        optional("ResourceHandlingOption") => String.t(),
        optional("ResourceOwner") => String.t(),
        optional("ResourcePolicy") => String.t(),
        required("ActionNames") => list(String.t()()),
        required("PolicySourceArn") => String.t()
      }
      
  """
  @type simulate_principal_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_authorization_details_response() :: %{
        "GroupDetailList" => list(group_detail()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Policies" => list(managed_policy_detail()()),
        "RoleDetailList" => list(role_detail()()),
        "UserDetailList" => list(user_detail()())
      }
      
  """
  @type get_account_authorization_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_organizations_root_credentials_management_response() :: %{
        "EnabledFeatures" => list(list(any())()),
        "OrganizationId" => String.t()
      }
      
  """
  @type disable_organizations_root_credentials_management_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resync_mfa_device_request() :: %{
        required("AuthenticationCode1") => String.t(),
        required("AuthenticationCode2") => String.t(),
        required("SerialNumber") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type resync_mfa_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_specific_credential_request() :: %{
        required("ServiceName") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type create_service_specific_credential_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_role_request() :: %{
        optional("Description") => String.t(),
        optional("MaxSessionDuration") => integer(),
        required("RoleName") => String.t()
      }
      
  """
  @type update_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_role() :: %{
        "RoleId" => String.t(),
        "RoleName" => String.t()
      }
      
  """
  @type policy_role() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_login_profile_request() :: %{
        optional("Password") => String.t(),
        optional("PasswordResetRequired") => boolean(),
        required("UserName") => String.t()
      }
      
  """
  @type update_login_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_tags_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_user_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_open_id_connect_providers_request() :: %{}
      
  """
  @type list_open_id_connect_providers_request() :: %{}

  @typedoc """

  ## Example:
      
      create_saml_provider_response() :: %{
        "SAMLProviderArn" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type create_saml_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy() :: %{
        "Arn" => String.t(),
        "AttachmentCount" => integer(),
        "CreateDate" => non_neg_integer(),
        "DefaultVersionId" => String.t(),
        "Description" => String.t(),
        "IsAttachable" => boolean(),
        "Path" => String.t(),
        "PermissionsBoundaryUsageCount" => integer(),
        "PolicyId" => String.t(),
        "PolicyName" => String.t(),
        "Tags" => list(tag()()),
        "UpdateDate" => non_neg_integer()
      }
      
  """
  @type policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_signing_certificate_response() :: %{
        "Certificate" => signing_certificate()
      }
      
  """
  @type upload_signing_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_profile_response() :: %{
        "InstanceProfile" => instance_profile()
      }
      
  """
  @type get_instance_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_role_response() :: %{
        "Role" => role()
      }
      
  """
  @type create_role_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_saml_provider_request() :: %{
        optional("AddPrivateKey") => String.t(),
        optional("AssertionEncryptionMode") => list(any()),
        optional("RemovePrivateKey") => String.t(),
        optional("SAMLMetadataDocument") => String.t(),
        required("SAMLProviderArn") => String.t()
      }
      
  """
  @type update_saml_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ssh_public_key() :: %{
        "Fingerprint" => String.t(),
        "SSHPublicKeyBody" => String.t(),
        "SSHPublicKeyId" => String.t(),
        "Status" => list(any()),
        "UploadDate" => non_neg_integer(),
        "UserName" => String.t()
      }
      
  """
  @type ssh_public_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      permissions_boundary_decision_detail() :: %{
        "AllowedByPermissionsBoundary" => boolean()
      }
      
  """
  @type permissions_boundary_decision_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_role_policy_response() :: %{
        "PolicyDocument" => String.t(),
        "PolicyName" => String.t(),
        "RoleName" => String.t()
      }
      
  """
  @type get_role_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_open_id_connect_provider_thumbprint_request() :: %{
        required("OpenIDConnectProviderArn") => String.t(),
        required("ThumbprintList") => list(String.t()())
      }
      
  """
  @type update_open_id_connect_provider_thumbprint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ssh_public_key_response() :: %{
        "SSHPublicKey" => ssh_public_key()
      }
      
  """
  @type get_ssh_public_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_detail() :: %{
        "Arn" => String.t(),
        "AttachedManagedPolicies" => list(attached_policy()()),
        "CreateDate" => non_neg_integer(),
        "GroupList" => list(String.t()()),
        "Path" => String.t(),
        "PermissionsBoundary" => attached_permissions_boundary(),
        "Tags" => list(tag()()),
        "UserId" => String.t(),
        "UserName" => String.t(),
        "UserPolicyList" => list(policy_detail()())
      }
      
  """
  @type user_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_access_key_response() :: %{
        "AccessKey" => access_key()
      }
      
  """
  @type create_access_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_policy_request() :: %{
        required("PolicyArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_last_accessed() :: %{
        "LastAuthenticated" => non_neg_integer(),
        "LastAuthenticatedEntity" => String.t(),
        "LastAuthenticatedRegion" => String.t(),
        "ServiceName" => String.t(),
        "ServiceNamespace" => String.t(),
        "TotalAuthenticatedEntities" => integer(),
        "TrackedActionsLastAccessed" => list(tracked_action_last_accessed()())
      }
      
  """
  @type service_last_accessed() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_linked_role_response() :: %{
        "Role" => role()
      }
      
  """
  @type create_service_linked_role_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_signing_certificate_request() :: %{
        optional("UserName") => String.t(),
        required("CertificateId") => String.t(),
        required("Status") => list(any())
      }
      
  """
  @type update_signing_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_login_profile_request() :: %{
        optional("UserName") => String.t()
      }
      
  """
  @type get_login_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      role_usage_type() :: %{
        "Region" => String.t(),
        "Resources" => list(String.t()())
      }
      
  """
  @type role_usage_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_saml_provider_request() :: %{
        required("SAMLProviderArn") => String.t()
      }
      
  """
  @type get_saml_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unrecognized_public_key_encoding_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unrecognized_public_key_encoding_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_policy_request() :: %{
        required("PolicyArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_group_policies_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("GroupName") => String.t()
      }
      
  """
  @type list_group_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_request() :: %{
        optional("NewPath") => String.t(),
        optional("NewUserName") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_signing_certificates_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("UserName") => String.t()
      }
      
  """
  @type list_signing_certificates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attached_group_policies_response() :: %{
        "AttachedPolicies" => list(attached_policy()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t()
      }
      
  """
  @type list_attached_group_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      saml_private_key() :: %{
        "KeyId" => String.t(),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type saml_private_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_server_certificates_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("PathPrefix") => String.t()
      }
      
  """
  @type list_server_certificates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_policies_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "PolicyNames" => list(String.t()())
      }
      
  """
  @type list_user_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_account_aliases_response() :: %{
        "AccountAliases" => list(String.t()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t()
      }
      
  """
  @type list_account_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_context_keys_for_principal_policy_request() :: %{
        optional("PolicyInputList") => list(String.t()()),
        required("PolicySourceArn") => String.t()
      }
      
  """
  @type get_context_keys_for_principal_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_policies_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("UserName") => String.t()
      }
      
  """
  @type list_user_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_ssh_public_keys_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "SSHPublicKeys" => list(ssh_public_key_metadata()())
      }
      
  """
  @type list_ssh_public_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attached_permissions_boundary() :: %{
        "PermissionsBoundaryArn" => String.t(),
        "PermissionsBoundaryType" => list(any())
      }
      
  """
  @type attached_permissions_boundary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_last_accessed_details_with_entities_response() :: %{
        "EntityDetailsList" => list(entity_details()()),
        "Error" => error_details(),
        "IsTruncated" => boolean(),
        "JobCompletionDate" => non_neg_integer(),
        "JobCreationDate" => non_neg_integer(),
        "JobStatus" => list(any()),
        "Marker" => String.t()
      }
      
  """
  @type get_service_last_accessed_details_with_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_role_policy_request() :: %{
        required("PolicyArn") => String.t(),
        required("RoleName") => String.t()
      }
      
  """
  @type detach_role_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_summary_response() :: %{
        "SummaryMap" => map()
      }
      
  """
  @type get_account_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_access_keys_response() :: %{
        "AccessKeyMetadata" => list(access_key_metadata()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t()
      }
      
  """
  @type list_access_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      group() :: %{
        "Arn" => String.t(),
        "CreateDate" => non_neg_integer(),
        "GroupId" => String.t(),
        "GroupName" => String.t(),
        "Path" => String.t()
      }
      
  """
  @type group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_certificate_metadata() :: %{
        "Arn" => String.t(),
        "Expiration" => non_neg_integer(),
        "Path" => String.t(),
        "ServerCertificateId" => String.t(),
        "ServerCertificateName" => String.t(),
        "UploadDate" => non_neg_integer()
      }
      
  """
  @type server_certificate_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_group_response() :: %{
        "Group" => group(),
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Users" => list(user()())
      }
      
  """
  @type get_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user() :: %{
        "Arn" => String.t(),
        "CreateDate" => non_neg_integer(),
        "PasswordLastUsed" => non_neg_integer(),
        "Path" => String.t(),
        "PermissionsBoundary" => attached_permissions_boundary(),
        "Tags" => list(tag()()),
        "UserId" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_role_request() :: %{
        optional("Description") => String.t(),
        optional("MaxSessionDuration") => integer(),
        optional("Path") => String.t(),
        optional("PermissionsBoundary") => String.t(),
        optional("Tags") => list(tag()()),
        required("AssumeRolePolicyDocument") => String.t(),
        required("RoleName") => String.t()
      }
      
  """
  @type create_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      malformed_policy_document_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type malformed_policy_document_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      login_profile() :: %{
        "CreateDate" => non_neg_integer(),
        "PasswordResetRequired" => boolean(),
        "UserName" => String.t()
      }
      
  """
  @type login_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_service_specific_credential_response() :: %{
        "ServiceSpecificCredential" => service_specific_credential()
      }
      
  """
  @type reset_service_specific_credential_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_group_request() :: %{
        required("GroupName") => String.t()
      }
      
  """
  @type delete_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("PathPrefix") => String.t()
      }
      
  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_last_accessed_details_with_entities_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("JobId") => String.t(),
        required("ServiceNamespace") => String.t()
      }
      
  """
  @type get_service_last_accessed_details_with_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policy_tags_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("PolicyArn") => String.t()
      }
      
  """
  @type list_policy_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_client_id_from_open_id_connect_provider_request() :: %{
        required("ClientID") => String.t(),
        required("OpenIDConnectProviderArn") => String.t()
      }
      
  """
  @type remove_client_id_from_open_id_connect_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_role_policy_request() :: %{
        required("PolicyName") => String.t(),
        required("RoleName") => String.t()
      }
      
  """
  @type get_role_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organizations_decision_detail() :: %{
        "AllowedByOrganizations" => boolean()
      }
      
  """
  @type organizations_decision_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_access_key_request() :: %{
        optional("UserName") => String.t(),
        required("AccessKeyId") => String.t(),
        required("Status") => list(any())
      }
      
  """
  @type update_access_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_profiles_for_role_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("RoleName") => String.t()
      }
      
  """
  @type list_instance_profiles_for_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_role_policy_request() :: %{
        required("PolicyArn") => String.t(),
        required("RoleName") => String.t()
      }
      
  """
  @type attach_role_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_linked_role_response() :: %{
        "DeletionTaskId" => String.t()
      }
      
  """
  @type delete_service_linked_role_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_server_certificate_response() :: %{
        "ServerCertificateMetadata" => server_certificate_metadata(),
        "Tags" => list(tag()())
      }
      
  """
  @type upload_server_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      credential_report_not_present_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type credential_report_not_present_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      caller_is_not_management_account_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type caller_is_not_management_account_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_saml_provider_tags_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("SAMLProviderArn") => String.t()
      }
      
  """
  @type list_saml_provider_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_group_policy_request() :: %{
        required("GroupName") => String.t(),
        required("PolicyName") => String.t()
      }
      
  """
  @type get_group_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_role_permissions_boundary_request() :: %{
        required("PermissionsBoundary") => String.t(),
        required("RoleName") => String.t()
      }
      
  """
  @type put_role_permissions_boundary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_open_id_connect_provider_tags_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("OpenIDConnectProviderArn") => String.t()
      }
      
  """
  @type list_open_id_connect_provider_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_result() :: %{
        "EvalActionName" => String.t(),
        "EvalDecision" => list(any()),
        "EvalDecisionDetails" => map(),
        "EvalResourceName" => String.t(),
        "MatchedStatements" => list(statement()()),
        "MissingContextValues" => list(String.t()()),
        "OrganizationsDecisionDetail" => organizations_decision_detail(),
        "PermissionsBoundaryDecisionDetail" => permissions_boundary_decision_detail(),
        "ResourceSpecificResults" => list(resource_specific_result()())
      }
      
  """
  @type evaluation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_virtual_mfa_device_request() :: %{
        optional("Path") => String.t(),
        optional("Tags") => list(tag()()),
        required("VirtualMFADeviceName") => String.t()
      }
      
  """
  @type create_virtual_mfa_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_role_response() :: %{
        "Role" => role()
      }
      
  """
  @type get_role_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_server_certificate_request() :: %{
        required("ServerCertificateName") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_server_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_service_last_accessed_details_request() :: %{
        optional("Granularity") => list(any()),
        required("Arn") => String.t()
      }
      
  """
  @type generate_service_last_accessed_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_role_description_request() :: %{
        required("Description") => String.t(),
        required("RoleName") => String.t()
      }
      
  """
  @type update_role_description_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_credential_report_response() :: %{
        "Content" => binary(),
        "GeneratedTime" => non_neg_integer(),
        "ReportFormat" => list(any())
      }
      
  """
  @type get_credential_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_account_aliases_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }
      
  """
  @type list_account_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_role_policies_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("RoleName") => String.t()
      }
      
  """
  @type list_role_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_open_id_connect_provider_tags_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_open_id_connect_provider_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_response() :: %{
        "Groups" => list(group()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t()
      }
      
  """
  @type list_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_group_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        required("GroupName") => String.t()
      }
      
  """
  @type get_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_roles_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("PathPrefix") => String.t()
      }
      
  """
  @type list_roles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attached_policy() :: %{
        "PolicyArn" => String.t(),
        "PolicyName" => String.t()
      }
      
  """
  @type attached_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_detail() :: %{
        "EntityPath" => String.t(),
        "LastAuthenticatedTime" => non_neg_integer(),
        "Region" => String.t(),
        "ServiceName" => String.t(),
        "ServiceNamespace" => String.t(),
        "TotalAuthenticatedEntities" => integer()
      }
      
  """
  @type access_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_key_last_used() :: %{
        "LastUsedDate" => non_neg_integer(),
        "Region" => String.t(),
        "ServiceName" => String.t()
      }
      
  """
  @type access_key_last_used() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_access_key_request() :: %{
        optional("UserName") => String.t()
      }
      
  """
  @type create_access_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_certificate_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type duplicate_certificate_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_public_key_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_public_key_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_groups_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("PathPrefix") => String.t()
      }
      
  """
  @type list_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_saml_provider_tags_response() :: %{
        "IsTruncated" => boolean(),
        "Marker" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_saml_provider_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_client_id_to_open_id_connect_provider_request() :: %{
        required("ClientID") => String.t(),
        required("OpenIDConnectProviderArn") => String.t()
      }
      
  """
  @type add_client_id_to_open_id_connect_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ssh_public_key_request() :: %{
        required("SSHPublicKeyId") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type delete_ssh_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tracked_action_last_accessed() :: %{
        "ActionName" => String.t(),
        "LastAccessedEntity" => String.t(),
        "LastAccessedRegion" => String.t(),
        "LastAccessedTime" => non_neg_integer()
      }
      
  """
  @type tracked_action_last_accessed() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_role_request() :: %{
        required("RoleName") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_response() :: %{
        "User" => user()
      }
      
  """
  @type create_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_login_profile_request() :: %{
        optional("Password") => String.t(),
        optional("PasswordResetRequired") => boolean(),
        optional("UserName") => String.t()
      }
      
  """
  @type create_login_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_open_id_connect_provider_request() :: %{
        required("OpenIDConnectProviderArn") => String.t()
      }
      
  """
  @type delete_open_id_connect_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_ssh_public_key_request() :: %{
        required("SSHPublicKeyBody") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type upload_ssh_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_ssh_public_key_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type duplicate_ssh_public_key_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_role_request() :: %{
        required("RoleName") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attached_user_policies_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("PathPrefix") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type list_attached_user_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_signing_certificate_request() :: %{
        optional("UserName") => String.t(),
        required("CertificateId") => String.t()
      }
      
  """
  @type delete_signing_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_credential_report_response() :: %{
        "Description" => String.t(),
        "State" => list(any())
      }
      
  """
  @type generate_credential_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_role_request() :: %{
        required("RoleName") => String.t()
      }
      
  """
  @type delete_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_group_response() :: %{
        "Group" => group()
      }
      
  """
  @type create_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deletion_task_failure_reason_type() :: %{
        "Reason" => String.t(),
        "RoleUsageList" => list(role_usage_type()())
      }
      
  """
  @type deletion_task_failure_reason_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_user_request() :: %{
        required("Tags") => list(tag()()),
        required("UserName") => String.t()
      }
      
  """
  @type tag_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      simulate_policy_response() :: %{
        "EvaluationResults" => list(evaluation_result()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t()
      }
      
  """
  @type simulate_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_mfa_device_request() :: %{
        required("SerialNumber") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_mfa_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_user_from_group_request() :: %{
        required("GroupName") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type remove_user_from_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_mfa_device_request() :: %{
        optional("UserName") => String.t(),
        required("SerialNumber") => String.t()
      }
      
  """
  @type get_mfa_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attached_role_policies_response() :: %{
        "AttachedPolicies" => list(attached_policy()()),
        "IsTruncated" => boolean(),
        "Marker" => String.t()
      }
      
  """
  @type list_attached_role_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_certificate() :: %{
        "CertificateBody" => String.t(),
        "CertificateChain" => String.t(),
        "ServerCertificateMetadata" => server_certificate_metadata(),
        "Tags" => list(tag()())
      }
      
  """
  @type server_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_open_id_connect_provider_request() :: %{
        optional("ClientIDList") => list(String.t()()),
        optional("Tags") => list(tag()()),
        optional("ThumbprintList") => list(String.t()()),
        required("Url") => String.t()
      }
      
  """
  @type create_open_id_connect_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_role_permissions_boundary_request() :: %{
        required("RoleName") => String.t()
      }
      
  """
  @type delete_role_permissions_boundary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_server_certificate_response() :: %{
        "ServerCertificate" => server_certificate()
      }
      
  """
  @type get_server_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_user() :: %{
        "UserId" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type policy_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_request() :: %{
        optional("Path") => String.t(),
        optional("PermissionsBoundary") => String.t(),
        optional("Tags") => list(tag()()),
        required("UserName") => String.t()
      }
      
  """
  @type create_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_instance_profile_request() :: %{
        required("InstanceProfileName") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_instance_profile_request() :: %{String.t() => any()}

  @type add_client_id_to_open_id_connect_provider_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type add_role_to_instance_profile_errors() ::
          limit_exceeded_exception()
          | unmodifiable_entity_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | entity_already_exists_exception()

  @type add_user_to_group_errors() ::
          limit_exceeded_exception() | service_failure_exception() | no_such_entity_exception()

  @type attach_group_policy_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | policy_not_attachable_exception()

  @type attach_role_policy_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | unmodifiable_entity_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | policy_not_attachable_exception()

  @type attach_user_policy_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | policy_not_attachable_exception()

  @type change_password_errors() ::
          limit_exceeded_exception()
          | password_policy_violation_exception()
          | entity_temporarily_unmodifiable_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | invalid_user_type_exception()

  @type create_access_key_errors() ::
          limit_exceeded_exception() | service_failure_exception() | no_such_entity_exception()

  @type create_account_alias_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_failure_exception()
          | entity_already_exists_exception()

  @type create_group_errors() ::
          limit_exceeded_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | entity_already_exists_exception()

  @type create_instance_profile_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | entity_already_exists_exception()

  @type create_login_profile_errors() ::
          limit_exceeded_exception()
          | password_policy_violation_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | entity_already_exists_exception()

  @type create_open_id_connect_provider_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | open_id_idp_communication_error_exception()
          | service_failure_exception()
          | entity_already_exists_exception()

  @type create_policy_errors() ::
          limit_exceeded_exception()
          | malformed_policy_document_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | entity_already_exists_exception()

  @type create_policy_version_errors() ::
          limit_exceeded_exception()
          | malformed_policy_document_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type create_role_errors() ::
          limit_exceeded_exception()
          | malformed_policy_document_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | entity_already_exists_exception()

  @type create_saml_provider_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | entity_already_exists_exception()

  @type create_service_linked_role_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type create_service_specific_credential_errors() ::
          limit_exceeded_exception()
          | service_not_supported_exception()
          | no_such_entity_exception()

  @type create_user_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | entity_already_exists_exception()

  @type create_virtual_mfa_device_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | entity_already_exists_exception()

  @type deactivate_mfa_device_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | entity_temporarily_unmodifiable_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_access_key_errors() ::
          limit_exceeded_exception() | service_failure_exception() | no_such_entity_exception()

  @type delete_account_alias_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_account_password_policy_errors() ::
          limit_exceeded_exception() | service_failure_exception() | no_such_entity_exception()

  @type delete_group_errors() ::
          limit_exceeded_exception()
          | delete_conflict_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_group_policy_errors() ::
          limit_exceeded_exception() | service_failure_exception() | no_such_entity_exception()

  @type delete_instance_profile_errors() ::
          limit_exceeded_exception()
          | delete_conflict_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_login_profile_errors() ::
          limit_exceeded_exception()
          | entity_temporarily_unmodifiable_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_open_id_connect_provider_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type delete_policy_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | delete_conflict_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_policy_version_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | delete_conflict_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_role_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | unmodifiable_entity_exception()
          | delete_conflict_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_role_permissions_boundary_errors() ::
          unmodifiable_entity_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_role_policy_errors() ::
          limit_exceeded_exception()
          | unmodifiable_entity_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_saml_provider_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_server_certificate_errors() ::
          limit_exceeded_exception()
          | delete_conflict_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_service_linked_role_errors() ::
          limit_exceeded_exception() | service_failure_exception() | no_such_entity_exception()

  @type delete_service_specific_credential_errors() :: no_such_entity_exception()

  @type delete_signing_certificate_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_ssh_public_key_errors() :: no_such_entity_exception()

  @type delete_user_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | delete_conflict_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type delete_user_permissions_boundary_errors() ::
          service_failure_exception() | no_such_entity_exception()

  @type delete_user_policy_errors() ::
          limit_exceeded_exception() | service_failure_exception() | no_such_entity_exception()

  @type delete_virtual_mfa_device_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | delete_conflict_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type detach_group_policy_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type detach_role_policy_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | unmodifiable_entity_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type detach_user_policy_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type disable_organizations_root_credentials_management_errors() ::
          organization_not_found_exception()
          | organization_not_in_all_features_mode_exception()
          | service_access_not_enabled_exception()
          | account_not_management_or_delegated_administrator_exception()

  @type disable_organizations_root_sessions_errors() ::
          organization_not_found_exception()
          | organization_not_in_all_features_mode_exception()
          | service_access_not_enabled_exception()
          | account_not_management_or_delegated_administrator_exception()

  @type enable_mfa_device_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_authentication_code_exception()
          | entity_temporarily_unmodifiable_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | entity_already_exists_exception()

  @type enable_organizations_root_credentials_management_errors() ::
          caller_is_not_management_account_exception()
          | organization_not_found_exception()
          | organization_not_in_all_features_mode_exception()
          | service_access_not_enabled_exception()
          | account_not_management_or_delegated_administrator_exception()

  @type enable_organizations_root_sessions_errors() ::
          caller_is_not_management_account_exception()
          | organization_not_found_exception()
          | organization_not_in_all_features_mode_exception()
          | service_access_not_enabled_exception()
          | account_not_management_or_delegated_administrator_exception()

  @type generate_credential_report_errors() ::
          limit_exceeded_exception() | service_failure_exception()

  @type generate_organizations_access_report_errors() ::
          report_generation_limit_exceeded_exception()

  @type generate_service_last_accessed_details_errors() ::
          invalid_input_exception() | no_such_entity_exception()

  @type get_account_authorization_details_errors() :: service_failure_exception()

  @type get_account_password_policy_errors() ::
          service_failure_exception() | no_such_entity_exception()

  @type get_account_summary_errors() :: service_failure_exception()

  @type get_context_keys_for_custom_policy_errors() :: invalid_input_exception()

  @type get_context_keys_for_principal_policy_errors() ::
          invalid_input_exception() | no_such_entity_exception()

  @type get_credential_report_errors() ::
          credential_report_not_present_exception()
          | credential_report_expired_exception()
          | credential_report_not_ready_exception()
          | service_failure_exception()

  @type get_group_errors() :: service_failure_exception() | no_such_entity_exception()

  @type get_group_policy_errors() :: service_failure_exception() | no_such_entity_exception()

  @type get_instance_profile_errors() :: service_failure_exception() | no_such_entity_exception()

  @type get_login_profile_errors() :: service_failure_exception() | no_such_entity_exception()

  @type get_mfa_device_errors() :: service_failure_exception() | no_such_entity_exception()

  @type get_open_id_connect_provider_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type get_organizations_access_report_errors() :: no_such_entity_exception()

  @type get_policy_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type get_policy_version_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type get_role_errors() :: service_failure_exception() | no_such_entity_exception()

  @type get_role_policy_errors() :: service_failure_exception() | no_such_entity_exception()

  @type get_saml_provider_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type get_server_certificate_errors() ::
          service_failure_exception() | no_such_entity_exception()

  @type get_service_last_accessed_details_errors() ::
          invalid_input_exception() | no_such_entity_exception()

  @type get_service_last_accessed_details_with_entities_errors() ::
          invalid_input_exception() | no_such_entity_exception()

  @type get_service_linked_role_deletion_status_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type get_ssh_public_key_errors() ::
          unrecognized_public_key_encoding_exception() | no_such_entity_exception()

  @type get_user_errors() :: service_failure_exception() | no_such_entity_exception()

  @type get_user_policy_errors() :: service_failure_exception() | no_such_entity_exception()

  @type list_access_keys_errors() :: service_failure_exception() | no_such_entity_exception()

  @type list_account_aliases_errors() :: service_failure_exception()

  @type list_attached_group_policies_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type list_attached_role_policies_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type list_attached_user_policies_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type list_entities_for_policy_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type list_group_policies_errors() :: service_failure_exception() | no_such_entity_exception()

  @type list_groups_errors() :: service_failure_exception()

  @type list_groups_for_user_errors() :: service_failure_exception() | no_such_entity_exception()

  @type list_instance_profile_tags_errors() ::
          service_failure_exception() | no_such_entity_exception()

  @type list_instance_profiles_errors() :: service_failure_exception()

  @type list_instance_profiles_for_role_errors() ::
          service_failure_exception() | no_such_entity_exception()

  @type list_mfa_device_tags_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type list_mfa_devices_errors() :: service_failure_exception() | no_such_entity_exception()

  @type list_open_id_connect_provider_tags_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type list_open_id_connect_providers_errors() :: service_failure_exception()

  @type list_organizations_features_errors() ::
          organization_not_found_exception()
          | organization_not_in_all_features_mode_exception()
          | service_access_not_enabled_exception()
          | account_not_management_or_delegated_administrator_exception()

  @type list_policies_errors() :: service_failure_exception()

  @type list_policies_granting_service_access_errors() ::
          invalid_input_exception() | no_such_entity_exception()

  @type list_policy_tags_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type list_policy_versions_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type list_role_policies_errors() :: service_failure_exception() | no_such_entity_exception()

  @type list_role_tags_errors() :: service_failure_exception() | no_such_entity_exception()

  @type list_roles_errors() :: service_failure_exception()

  @type list_saml_provider_tags_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type list_saml_providers_errors() :: service_failure_exception()

  @type list_server_certificate_tags_errors() ::
          service_failure_exception() | no_such_entity_exception()

  @type list_server_certificates_errors() :: service_failure_exception()

  @type list_service_specific_credentials_errors() ::
          service_not_supported_exception() | no_such_entity_exception()

  @type list_signing_certificates_errors() ::
          service_failure_exception() | no_such_entity_exception()

  @type list_ssh_public_keys_errors() :: no_such_entity_exception()

  @type list_user_policies_errors() :: service_failure_exception() | no_such_entity_exception()

  @type list_user_tags_errors() :: service_failure_exception() | no_such_entity_exception()

  @type list_users_errors() :: service_failure_exception()

  @type put_group_policy_errors() ::
          limit_exceeded_exception()
          | malformed_policy_document_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type put_role_permissions_boundary_errors() ::
          invalid_input_exception()
          | unmodifiable_entity_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | policy_not_attachable_exception()

  @type put_role_policy_errors() ::
          limit_exceeded_exception()
          | malformed_policy_document_exception()
          | unmodifiable_entity_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type put_user_permissions_boundary_errors() ::
          invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | policy_not_attachable_exception()

  @type put_user_policy_errors() ::
          limit_exceeded_exception()
          | malformed_policy_document_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type remove_client_id_from_open_id_connect_provider_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type remove_role_from_instance_profile_errors() ::
          limit_exceeded_exception()
          | unmodifiable_entity_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type remove_user_from_group_errors() ::
          limit_exceeded_exception() | service_failure_exception() | no_such_entity_exception()

  @type reset_service_specific_credential_errors() :: no_such_entity_exception()

  @type resync_mfa_device_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_authentication_code_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type set_default_policy_version_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type set_security_token_service_preferences_errors() :: service_failure_exception()

  @type simulate_custom_policy_errors() ::
          invalid_input_exception() | policy_evaluation_exception()

  @type simulate_principal_policy_errors() ::
          invalid_input_exception() | policy_evaluation_exception() | no_such_entity_exception()

  @type tag_instance_profile_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type tag_mfa_device_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type tag_open_id_connect_provider_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type tag_policy_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type tag_role_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type tag_saml_provider_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type tag_server_certificate_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type tag_user_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type untag_instance_profile_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type untag_mfa_device_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type untag_open_id_connect_provider_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type untag_policy_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type untag_role_errors() ::
          concurrent_modification_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type untag_saml_provider_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type untag_server_certificate_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type untag_user_errors() ::
          concurrent_modification_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type update_access_key_errors() ::
          limit_exceeded_exception() | service_failure_exception() | no_such_entity_exception()

  @type update_account_password_policy_errors() ::
          limit_exceeded_exception()
          | malformed_policy_document_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type update_assume_role_policy_errors() ::
          limit_exceeded_exception()
          | malformed_policy_document_exception()
          | unmodifiable_entity_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type update_group_errors() ::
          limit_exceeded_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | entity_already_exists_exception()

  @type update_login_profile_errors() ::
          limit_exceeded_exception()
          | password_policy_violation_exception()
          | entity_temporarily_unmodifiable_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type update_open_id_connect_provider_thumbprint_errors() ::
          invalid_input_exception() | service_failure_exception() | no_such_entity_exception()

  @type update_role_errors() ::
          unmodifiable_entity_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type update_role_description_errors() ::
          unmodifiable_entity_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type update_saml_provider_errors() ::
          limit_exceeded_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | no_such_entity_exception()

  @type update_server_certificate_errors() ::
          limit_exceeded_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | entity_already_exists_exception()

  @type update_service_specific_credential_errors() :: no_such_entity_exception()

  @type update_signing_certificate_errors() ::
          limit_exceeded_exception() | service_failure_exception() | no_such_entity_exception()

  @type update_ssh_public_key_errors() :: no_such_entity_exception()

  @type update_user_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | entity_temporarily_unmodifiable_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | entity_already_exists_exception()

  @type upload_server_certificate_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | malformed_certificate_exception()
          | invalid_input_exception()
          | service_failure_exception()
          | key_pair_mismatch_exception()
          | entity_already_exists_exception()

  @type upload_signing_certificate_errors() ::
          duplicate_certificate_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | malformed_certificate_exception()
          | invalid_certificate_exception()
          | service_failure_exception()
          | no_such_entity_exception()
          | entity_already_exists_exception()

  @type upload_ssh_public_key_errors() ::
          duplicate_ssh_public_key_exception()
          | invalid_public_key_exception()
          | limit_exceeded_exception()
          | unrecognized_public_key_encoding_exception()
          | no_such_entity_exception()

  def metadata do
    %{
      api_version: "2010-05-08",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: "us-east-1",
      endpoint_prefix: "iam",
      global?: true,
      hostname: "iam.amazonaws.com",
      protocol: "query",
      service_id: "IAM",
      signature_version: "v4",
      signing_name: "iam",
      target_prefix: "AWSIdentityManagementV20100508"
    }
  end

  @doc """
  Adds a new client ID (also known as audience) to the list of client IDs already
  registered for the specified IAM OpenID Connect (OIDC) provider resource.

  This operation is idempotent; it does not fail or return an error if you add an
  existing client ID to the provider.
  """
  @spec add_client_id_to_open_id_connect_provider(
          map(),
          add_client_id_to_open_id_connect_provider_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_client_id_to_open_id_connect_provider_errors()}
  def add_client_id_to_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddClientIDToOpenIDConnectProvider", input, options)
  end

  @doc """
  Adds the specified IAM role to the specified instance profile.

  An instance profile
  can contain only one role, and this quota cannot be increased. You can remove
  the
  existing role and then add a different role to an instance profile. You must
  then wait
  for the change to appear across all of Amazon Web Services because of [eventual consistency](https://en.wikipedia.org/wiki/Eventual_consistency). To force the
  change, you must [disassociate the instance profile](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIamInstanceProfile.html)
  and then [associate the instance
  profile](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AssociateIamInstanceProfile.html),
  or you can stop your instance and then restart it.

  The caller of this operation must be granted the `PassRole` permission
  on the IAM role by a permissions policy.

  When using the
  [iam:AssociatedResourceArn](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_iam-condition-keys.html#available-keys-for-iam) condition in a policy to restrict the
  [PassRole](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html)
  IAM action, special considerations apply if the policy is
  intended to define access for the `AddRoleToInstanceProfile` action. In
  this case, you cannot specify a Region or instance ID in the EC2 instance ARN.
  The
  ARN value must be `arn:aws:ec2:*:CallerAccountId:instance/*`. Using any
  other ARN value may lead to unexpected evaluation results.

  For more information about roles, see [IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) in the
  *IAM User Guide*. For more information about instance profiles,
  see [Using instance
  profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html)
  in the *IAM User Guide*.
  """
  @spec add_role_to_instance_profile(map(), add_role_to_instance_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_role_to_instance_profile_errors()}
  def add_role_to_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddRoleToInstanceProfile", input, options)
  end

  @doc """
  Adds the specified user to the specified group.
  """
  @spec add_user_to_group(map(), add_user_to_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_user_to_group_errors()}
  def add_user_to_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddUserToGroup", input, options)
  end

  @doc """
  Attaches the specified managed policy to the specified IAM group.

  You use this operation to attach a managed policy to a group. To embed an inline
  policy in a group, use [
  `PutGroupPolicy`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_PutGroupPolicy.html).

  As a best practice, you can validate your IAM policies.
  To learn more, see [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html)
  in the *IAM User Guide*.

  For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  @spec attach_group_policy(map(), attach_group_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_group_policy_errors()}
  def attach_group_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachGroupPolicy", input, options)
  end

  @doc """
  Attaches the specified managed policy to the specified IAM role.

  When you attach a
  managed policy to a role, the managed policy becomes part of the role's
  permission
  (access) policy.

  You cannot use a managed policy as the role's trust policy. The role's trust
  policy is created at the same time as the role, using [
  `CreateRole`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html). You
  can update a role's trust policy using
  [
  `UpdateAssumerolePolicy`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateAssumeRolePolicy.html).

  Use this operation to attach a *managed* policy to a role. To embed
  an inline policy in a role, use [
  `PutRolePolicy`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_PutRolePolicy.html).
  For more information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the
  *IAM User Guide*.

  As a best practice, you can validate your IAM policies.
  To learn more, see [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html)
  in the *IAM User Guide*.
  """
  @spec attach_role_policy(map(), attach_role_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_role_policy_errors()}
  def attach_role_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachRolePolicy", input, options)
  end

  @doc """
  Attaches the specified managed policy to the specified user.

  You use this operation to attach a *managed* policy to a user. To
  embed an inline policy in a user, use [
  `PutUserPolicy`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_PutUserPolicy.html).

  As a best practice, you can validate your IAM policies.
  To learn more, see [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html)
  in the *IAM User Guide*.

  For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  @spec attach_user_policy(map(), attach_user_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attach_user_policy_errors()}
  def attach_user_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachUserPolicy", input, options)
  end

  @doc """
  Changes the password of the IAM user who is calling this operation.

  This operation
  can be performed using the CLI, the Amazon Web Services API, or the **My
  Security Credentials** page in the Amazon Web Services Management Console. The
  Amazon Web Services account root user password is
  not affected by this operation.

  Use `UpdateLoginProfile` to use the CLI, the Amazon Web Services API, or the
  **Users** page in the IAM console to change the
  password for any IAM user. For more information about modifying passwords, see
  [Managing passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html)
  in the *IAM User Guide*.
  """
  @spec change_password(map(), change_password_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, change_password_errors()}
  def change_password(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ChangePassword", input, options)
  end

  @doc """
  Creates a new Amazon Web Services secret access key and corresponding Amazon Web
  Services access key ID for the
  specified user.

  The default status for new keys is `Active`.

  If you do not specify a user name, IAM determines the user name implicitly based
  on
  the Amazon Web Services access key ID signing the request. This operation works
  for access keys under
  the Amazon Web Services account. Consequently, you can use this operation to
  manage Amazon Web Services account root
  user credentials. This is true even if the Amazon Web Services account has no
  associated users.

  For information about quotas on the number of keys you can create, see [IAM and STS
  quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.

  To ensure the security of your Amazon Web Services account, the secret access
  key is accessible
  only during key and user creation. You must save the key (for example, in a text
  file) if you want to be able to access it again. If a secret key is lost, you
  can
  delete the access keys for the associated user and then create new keys.
  """
  @spec create_access_key(map(), create_access_key_request(), list()) ::
          {:ok, create_access_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_access_key_errors()}
  def create_access_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAccessKey", input, options)
  end

  @doc """
  Creates an alias for your Amazon Web Services account.

  For information about using an Amazon Web Services account
  alias, see [Creating, deleting, and listing an Amazon Web Services account
  alias](https://docs.aws.amazon.com/signin/latest/userguide/CreateAccountAlias.html)
  in the *Amazon Web Services Sign-In User
  Guide*.
  """
  @spec create_account_alias(map(), create_account_alias_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_account_alias_errors()}
  def create_account_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAccountAlias", input, options)
  end

  @doc """
  Creates a new group.

  For information about the number of groups you can create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.
  """
  @spec create_group(map(), create_group_request(), list()) ::
          {:ok, create_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_group_errors()}
  def create_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGroup", input, options)
  end

  @doc """
  Creates a new instance profile.

  For information about instance profiles, see [Using roles for applications on Amazon
  EC2](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html)
  in the
  *IAM User Guide*, and [Instance profiles](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html#ec2-instance-profile)
  in the *Amazon EC2 User Guide*.

  For information about the number of instance profiles you can create, see [IAM object
  quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.
  """
  @spec create_instance_profile(map(), create_instance_profile_request(), list()) ::
          {:ok, create_instance_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_instance_profile_errors()}
  def create_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInstanceProfile", input, options)
  end

  @doc """
  Creates a password for the specified IAM user.

  A password allows an IAM user to
  access Amazon Web Services services through the Amazon Web Services Management
  Console.

  You can use the CLI, the Amazon Web Services API, or the ## Users
  page in the IAM console to create a password for any IAM user. Use
  `ChangePassword` to update your own existing password in the **My Security
  Credentials** page in the Amazon Web Services Management Console.

  For more information about managing passwords, see [Managing passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html)
  in the
  *IAM User Guide*.
  """
  @spec create_login_profile(map(), create_login_profile_request(), list()) ::
          {:ok, create_login_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_login_profile_errors()}
  def create_login_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLoginProfile", input, options)
  end

  @doc """
  Creates an IAM entity to describe an identity provider (IdP) that supports
  [OpenID Connect (OIDC)](http://openid.net/connect/). 
  The OIDC provider that you create with this operation can be used as a principal
  in a
  role's trust policy. Such a policy establishes a trust relationship between
  Amazon Web Services and
  the OIDC provider.

  If you are using an OIDC identity provider from Google, Facebook, or Amazon
  Cognito, you don't
  need to create a separate IAM identity provider. These OIDC identity providers
  are
  already built-in to Amazon Web Services and are available for your use. Instead,
  you can move directly
  to creating new roles using your identity provider. To learn more, see [Creating
  a role for web identity or OpenID connect
  federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_oidc.html)
  in the *IAM
  User Guide*.

  When you create the IAM OIDC provider, you specify the following:

    *
  The URL of the OIDC identity provider (IdP) to trust

    *
  A list of client IDs (also known as audiences) that identify the application
  or applications allowed to authenticate using the OIDC provider

    *
  A list of tags that are attached to the specified IAM OIDC provider

    *
  A list of thumbprints of one or more server certificates that the IdP
  uses

  You get all of this information from the OIDC IdP you want to use to access
  Amazon Web Services.

  Amazon Web Services secures communication with OIDC identity providers (IdPs)
  using our library of
  trusted root certificate authorities (CAs) to verify the JSON Web Key Set (JWKS)
  endpoint's TLS certificate. If your OIDC IdP relies on a certificate that is not
  signed
  by one of these trusted CAs, only then we secure communication using the
  thumbprints set
  in the IdP's configuration.

  The trust for the OIDC provider is derived from the IAM provider that this
  operation creates. Therefore, it is best to limit access to the
  `CreateOpenIDConnectProvider` operation to highly privileged
  users.
  """
  @spec create_open_id_connect_provider(map(), create_open_id_connect_provider_request(), list()) ::
          {:ok, create_open_id_connect_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_open_id_connect_provider_errors()}
  def create_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateOpenIDConnectProvider", input, options)
  end

  @doc """
  Creates a new managed policy for your Amazon Web Services account.

  This operation creates a policy version with a version identifier of `v1`
  and sets v1 as the policy's default version. For more information about policy
  versions,
  see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
  in the
  *IAM User Guide*.

  As a best practice, you can validate your IAM policies.
  To learn more, see [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html)
  in the *IAM User Guide*.

  For more information about managed policies in general, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the
  *IAM User Guide*.
  """
  @spec create_policy(map(), create_policy_request(), list()) ::
          {:ok, create_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_policy_errors()}
  def create_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePolicy", input, options)
  end

  @doc """
  Creates a new version of the specified managed policy.

  To update a managed policy, you
  create a new policy version. A managed policy can have up to five versions. If
  the
  policy has five versions, you must delete an existing version using
  `DeletePolicyVersion` before you create a new version.

  Optionally, you can set the new version as the policy's default version. The
  default
  version is the version that is in effect for the IAM users, groups, and roles to
  which
  the policy is attached.

  For more information about managed policy versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
  in the *IAM User Guide*.
  """
  @spec create_policy_version(map(), create_policy_version_request(), list()) ::
          {:ok, create_policy_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_policy_version_errors()}
  def create_policy_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePolicyVersion", input, options)
  end

  @doc """
  Creates a new role for your Amazon Web Services account.

  For more information about roles, see [IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) in the
  *IAM User Guide*. For information about quotas for role names
  and the number of roles you can create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the
  *IAM User Guide*.
  """
  @spec create_role(map(), create_role_request(), list()) ::
          {:ok, create_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_role_errors()}
  def create_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRole", input, options)
  end

  @doc """
  Creates an IAM resource that describes an identity provider (IdP) that supports
  SAML
  2.0.

  The SAML provider resource that you create with this operation can be used as a
  principal in an IAM role's trust policy. Such a policy can enable federated
  users who
  sign in using the SAML IdP to assume the role. You can create an IAM role that
  supports Web-based single sign-on (SSO) to the Amazon Web Services Management
  Console or one that supports API access
  to Amazon Web Services.

  When you create the SAML provider resource, you upload a SAML metadata document
  that
  you get from your IdP. That document includes the issuer's name, expiration
  information,
  and keys that can be used to validate the SAML authentication response
  (assertions) that
  the IdP sends. You must generate the metadata document using the identity
  management
  software that is used as your organization's IdP.

  This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  For more information, see [Enabling SAML 2.0 federated users to access the Amazon Web Services Management
  Console](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html)
  and [About SAML 2.0-based federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html)
  in the *IAM User Guide*.
  """
  @spec create_saml_provider(map(), create_saml_provider_request(), list()) ::
          {:ok, create_saml_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_saml_provider_errors()}
  def create_saml_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSAMLProvider", input, options)
  end

  @doc """
  Creates an IAM role that is linked to a specific Amazon Web Services service.

  The service controls
  the attached policies and when the role can be deleted. This helps ensure that
  the
  service is not broken by an unexpectedly changed or deleted role, which could
  put your
  Amazon Web Services resources into an unknown state. Allowing the service to
  control the role helps
  improve service stability and proper cleanup when a service and its role are no
  longer
  needed. For more information, see [Using service-linked roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html)
  in the *IAM User Guide*.

  To attach a policy to this service-linked role, you must make the request using
  the
  Amazon Web Services service that depends on this role.
  """
  @spec create_service_linked_role(map(), create_service_linked_role_request(), list()) ::
          {:ok, create_service_linked_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_linked_role_errors()}
  def create_service_linked_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateServiceLinkedRole", input, options)
  end

  @doc """
  Generates a set of credentials consisting of a user name and password that can
  be used
  to access the service specified in the request.

  These credentials are generated by
  IAM, and can be used only for the specified service.

  You can have a maximum of two sets of service-specific credentials for each
  supported
  service per user.

  You can create service-specific credentials for CodeCommit and Amazon Keyspaces
  (for Apache
  Cassandra).

  You can reset the password to a new service-generated value by calling
  `ResetServiceSpecificCredential`.

  For more information about service-specific credentials, see [Using IAM with CodeCommit: Git credentials, SSH keys, and Amazon Web Services access
  keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html)
  in the
  *IAM User Guide*.
  """
  @spec create_service_specific_credential(
          map(),
          create_service_specific_credential_request(),
          list()
        ) ::
          {:ok, create_service_specific_credential_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_specific_credential_errors()}
  def create_service_specific_credential(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateServiceSpecificCredential", input, options)
  end

  @doc """
  Creates a new IAM user for your Amazon Web Services account.

  For information about quotas for the number of IAM users you can create, see
  [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.
  """
  @spec create_user(map(), create_user_request(), list()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUser", input, options)
  end

  @doc """
  Creates a new virtual MFA device for the Amazon Web Services account.

  After creating the virtual
  MFA, use `EnableMFADevice` to attach the MFA device to an IAM user.
  For more information about creating and working with virtual MFA devices, see
  [Using a virtual MFA device](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html)
  in the *IAM User Guide*.

  For information about the maximum number of MFA devices you can create, see [IAM and STS
  quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.

  The seed information contained in the QR code and the Base32 string should be
  treated like any other secret access information. In other words, protect the
  seed
  information as you would your Amazon Web Services access keys or your passwords.
  After you
  provision your virtual device, you should ensure that the information is
  destroyed
  following secure procedures.
  """
  @spec create_virtual_mfa_device(map(), create_virtual_mfa_device_request(), list()) ::
          {:ok, create_virtual_mfa_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_virtual_mfa_device_errors()}
  def create_virtual_mfa_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVirtualMFADevice", input, options)
  end

  @doc """
  Deactivates the specified MFA device and removes it from association with the
  user
  name for which it was originally enabled.

  For more information about creating and working with virtual MFA devices, see
  [Enabling a virtual multi-factor authentication (MFA)
  device](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html)
  in the
  *IAM User Guide*.
  """
  @spec deactivate_mfa_device(map(), deactivate_mfa_device_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deactivate_mfa_device_errors()}
  def deactivate_mfa_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeactivateMFADevice", input, options)
  end

  @doc """
  Deletes the access key pair associated with the specified IAM user.

  If you do not specify a user name, IAM determines the user name implicitly based
  on
  the Amazon Web Services access key ID signing the request. This operation works
  for access keys under
  the Amazon Web Services account. Consequently, you can use this operation to
  manage Amazon Web Services account root
  user credentials even if the Amazon Web Services account has no associated
  users.
  """
  @spec delete_access_key(map(), delete_access_key_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_access_key_errors()}
  def delete_access_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAccessKey", input, options)
  end

  @doc """
  Deletes the specified Amazon Web Services account alias.

  For information about using an Amazon Web Services
  account alias, see [Creating, deleting, and listing an Amazon Web Services account
  alias](https://docs.aws.amazon.com/signin/latest/userguide/CreateAccountAlias.html)
  in the *Amazon Web Services Sign-In User
  Guide*.
  """
  @spec delete_account_alias(map(), delete_account_alias_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_account_alias_errors()}
  def delete_account_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAccountAlias", input, options)
  end

  @doc """
  Deletes the password policy for the Amazon Web Services account.

  There are no parameters.
  """
  @spec delete_account_password_policy(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_account_password_policy_errors()}
  def delete_account_password_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAccountPasswordPolicy", input, options)
  end

  @doc """
  Deletes the specified IAM group.

  The group must not contain any users or have any
  attached policies.
  """
  @spec delete_group(map(), delete_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGroup", input, options)
  end

  @doc """
  Deletes the specified inline policy that is embedded in the specified IAM
  group.

  A group can also have managed policies attached to it. To detach a managed
  policy from
  a group, use `DetachGroupPolicy`. For more information about policies,
  refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  @spec delete_group_policy(map(), delete_group_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_group_policy_errors()}
  def delete_group_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGroupPolicy", input, options)
  end

  @doc """
  Deletes the specified instance profile.

  The instance profile must not have an
  associated role.

  Make sure that you do not have any Amazon EC2 instances running with the
  instance
  profile you are about to delete. Deleting a role or instance profile that is
  associated with a running instance will break any applications running on the
  instance.

  For more information about instance profiles, see [Using instance
  profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html)
  in the *IAM User Guide*.
  """
  @spec delete_instance_profile(map(), delete_instance_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_instance_profile_errors()}
  def delete_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInstanceProfile", input, options)
  end

  @doc """
  Deletes the password for the specified IAM user, For more information, see
  [Managing passwords for IAM
  users](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_admin-change-user.html).

  You can use the CLI, the Amazon Web Services API, or the ## Users
  page in the IAM console to delete a password for any IAM user. You can use
  `ChangePassword` to update, but not delete, your own password in the
  **My Security Credentials** page in the
  Amazon Web Services Management Console.

  Deleting a user's password does not prevent a user from accessing Amazon Web
  Services through
  the command line interface or the API. To prevent all user access, you must also
  either make any access keys inactive or delete them. For more information about
  making keys inactive or deleting them, see `UpdateAccessKey` and
  `DeleteAccessKey`.
  """
  @spec delete_login_profile(map(), delete_login_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_login_profile_errors()}
  def delete_login_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLoginProfile", input, options)
  end

  @doc """
  Deletes an OpenID Connect identity provider (IdP) resource object in IAM.

  Deleting an IAM OIDC provider resource does not update any roles that reference
  the
  provider as a principal in their trust policies. Any attempt to assume a role
  that
  references a deleted provider fails.

  This operation is idempotent; it does not fail or return an error if you call
  the
  operation for a provider that does not exist.
  """
  @spec delete_open_id_connect_provider(map(), delete_open_id_connect_provider_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_open_id_connect_provider_errors()}
  def delete_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteOpenIDConnectProvider", input, options)
  end

  @doc """
  Deletes the specified managed policy.

  Before you can delete a managed policy, you must first detach the policy from
  all
  users, groups, and roles that it is attached to. In addition, you must delete
  all the
  policy's versions. The following steps describe the process for deleting a
  managed
  policy:

    *
  Detach the policy from all users, groups, and roles that the policy is
  attached to, using `DetachUserPolicy`, `DetachGroupPolicy`, or
  `DetachRolePolicy`. To
  list all the users, groups, and roles that a policy is attached to, use
  `ListEntitiesForPolicy`.

    *
  Delete all versions of the policy using `DeletePolicyVersion`.
  To list the policy's versions, use `ListPolicyVersions`. You
  cannot use `DeletePolicyVersion` to delete the version that is
  marked as the default version. You delete the policy's default version in the
  next step of the process.

    *
  Delete the policy (this automatically deletes the policy's default version)
  using this operation.

  For information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  @spec delete_policy(map(), delete_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_policy_errors()}
  def delete_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePolicy", input, options)
  end

  @doc """
  Deletes the specified version from the specified managed policy.

  You cannot delete the default version from a policy using this operation. To
  delete
  the default version from a policy, use `DeletePolicy`. To find out which
  version of a policy is marked as the default version, use `ListPolicyVersions`.

  For information about versions for managed policies, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
  in the *IAM User Guide*.
  """
  @spec delete_policy_version(map(), delete_policy_version_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_policy_version_errors()}
  def delete_policy_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePolicyVersion", input, options)
  end

  @doc """
  Deletes the specified role.

  Unlike the Amazon Web Services Management Console, when you delete a role
  programmatically, you must delete the items attached to the role manually, or
  the
  deletion fails. For more information, see [Deleting an IAM role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_manage_delete.html#roles-managingrole-deleting-cli).
  Before attempting to delete a role, remove the
  following attached items:

    *
  Inline policies (`DeleteRolePolicy`)

    *
  Attached managed policies (`DetachRolePolicy`)

    *
  Instance profile (`RemoveRoleFromInstanceProfile`)

    *
  Optional – Delete instance profile after detaching from role for
  resource clean up (`DeleteInstanceProfile`)

  Make sure that you do not have any Amazon EC2 instances running with the role
  you are
  about to delete. Deleting a role or instance profile that is associated with a
  running instance will break any applications running on the instance.
  """
  @spec delete_role(map(), delete_role_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_role_errors()}
  def delete_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRole", input, options)
  end

  @doc """
  Deletes the permissions boundary for the specified IAM role.

  You cannot set the boundary for a service-linked role.

  Deleting the permissions boundary for a role might increase its permissions. For
  example, it might allow anyone who assumes the role to perform all the actions
  granted in its permissions policies.
  """
  @spec delete_role_permissions_boundary(
          map(),
          delete_role_permissions_boundary_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_role_permissions_boundary_errors()}
  def delete_role_permissions_boundary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRolePermissionsBoundary", input, options)
  end

  @doc """
  Deletes the specified inline policy that is embedded in the specified IAM
  role.

  A role can also have managed policies attached to it. To detach a managed policy
  from
  a role, use `DetachRolePolicy`. For more information about policies,
  refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  @spec delete_role_policy(map(), delete_role_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_role_policy_errors()}
  def delete_role_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRolePolicy", input, options)
  end

  @doc """
  Deletes a SAML provider resource in IAM.

  Deleting the provider resource from IAM does not update any roles that reference
  the
  SAML provider resource's ARN as a principal in their trust policies. Any attempt
  to
  assume a role that references a non-existent provider resource ARN fails.

  This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec delete_saml_provider(map(), delete_saml_provider_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_saml_provider_errors()}
  def delete_saml_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSAMLProvider", input, options)
  end

  @doc """
  Deletes the specified server certificate.

  For more information about working with server certificates, see [Working with server
  certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*. This
  topic also includes a list of Amazon Web Services services that can use the
  server certificates that
  you manage with IAM.

  If you are using a server certificate with Elastic Load Balancing, deleting the
  certificate could have implications for your application. If Elastic Load
  Balancing
  doesn't detect the deletion of bound certificates, it may continue to use the
  certificates. This could cause Elastic Load Balancing to stop accepting traffic.
  We
  recommend that you remove the reference to the certificate from Elastic Load
  Balancing before using this command to delete the certificate. For more
  information,
  see
  [DeleteLoadBalancerListeners](https://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html)
  in the *Elastic Load Balancing API
  Reference*.
  """
  @spec delete_server_certificate(map(), delete_server_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_server_certificate_errors()}
  def delete_server_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServerCertificate", input, options)
  end

  @doc """
  Submits a service-linked role deletion request and returns a
  `DeletionTaskId`, which you can use to check the status of the deletion.

  Before you call this operation, confirm that the role has no active sessions and
  that
  any resources used by the role in the linked service are deleted. If you call
  this
  operation more than once for the same service-linked role and an earlier
  deletion task
  is not complete, then the `DeletionTaskId` of the earlier request is
  returned.

  If you submit a deletion request for a service-linked role whose linked service
  is
  still accessing a resource, then the deletion task fails. If it fails, the
  `GetServiceLinkedRoleDeletionStatus` operation returns the reason for the
  failure, usually including the resources that must be deleted. To delete the
  service-linked role, you must first remove those resources from the linked
  service and
  then submit the deletion request again. Resources are specific to the service
  that is
  linked to the role. For more information about removing resources from a
  service, see
  the [Amazon Web Services documentation](http://docs.aws.amazon.com/) for your service.

  For more information about service-linked roles, see [Roles terms and concepts:
  Amazon Web Services service-linked
  role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role)
  in the
  *IAM User Guide*.
  """
  @spec delete_service_linked_role(map(), delete_service_linked_role_request(), list()) ::
          {:ok, delete_service_linked_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_linked_role_errors()}
  def delete_service_linked_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServiceLinkedRole", input, options)
  end

  @doc """
  Deletes the specified service-specific credential.
  """
  @spec delete_service_specific_credential(
          map(),
          delete_service_specific_credential_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_specific_credential_errors()}
  def delete_service_specific_credential(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServiceSpecificCredential", input, options)
  end

  @doc """
  Deletes a signing certificate associated with the specified IAM user.

  If you do not specify a user name, IAM determines the user name implicitly based
  on
  the Amazon Web Services access key ID signing the request. This operation works
  for access keys under
  the Amazon Web Services account. Consequently, you can use this operation to
  manage Amazon Web Services account root
  user credentials even if the Amazon Web Services account has no associated IAM
  users.
  """
  @spec delete_signing_certificate(map(), delete_signing_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_signing_certificate_errors()}
  def delete_signing_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSigningCertificate", input, options)
  end

  @doc """
  Deletes the specified SSH public key.

  The SSH public key deleted by this operation is used only for authenticating the
  associated IAM user to an CodeCommit repository. For more information about
  using SSH keys
  to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH
  connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *CodeCommit User Guide*.
  """
  @spec delete_ssh_public_key(map(), delete_ssh_public_key_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ssh_public_key_errors()}
  def delete_ssh_public_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSSHPublicKey", input, options)
  end

  @doc """
  Deletes the specified IAM user.

  Unlike the Amazon Web Services Management Console, when you delete a user
  programmatically, you must delete the items attached to the user manually, or
  the
  deletion fails. For more information, see [Deleting an IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_deleting_cli).
  Before attempting to delete a user, remove the following items:

    *
  Password (`DeleteLoginProfile`)

    *
  Access keys (`DeleteAccessKey`)

    *
  Signing certificate (`DeleteSigningCertificate`)

    *
  SSH public key (`DeleteSSHPublicKey`)

    *
  Git credentials (`DeleteServiceSpecificCredential`)

    *
  Multi-factor authentication (MFA) device (`DeactivateMFADevice`,
  `DeleteVirtualMFADevice`)

    *
  Inline policies (`DeleteUserPolicy`)

    *
  Attached managed policies (`DetachUserPolicy`)

    *
  Group memberships (`RemoveUserFromGroup`)
  """
  @spec delete_user(map(), delete_user_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUser", input, options)
  end

  @doc """
  Deletes the permissions boundary for the specified IAM user.

  Deleting the permissions boundary for a user might increase its permissions by
  allowing the user to perform all the actions granted in its permissions
  policies.
  """
  @spec delete_user_permissions_boundary(
          map(),
          delete_user_permissions_boundary_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_permissions_boundary_errors()}
  def delete_user_permissions_boundary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUserPermissionsBoundary", input, options)
  end

  @doc """
  Deletes the specified inline policy that is embedded in the specified IAM
  user.

  A user can also have managed policies attached to it. To detach a managed policy
  from
  a user, use `DetachUserPolicy`. For more information about policies,
  refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  @spec delete_user_policy(map(), delete_user_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_policy_errors()}
  def delete_user_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUserPolicy", input, options)
  end

  @doc """
  Deletes a virtual MFA device.

  You must deactivate a user's virtual MFA device before you can delete it. For
  information about deactivating MFA devices, see `DeactivateMFADevice`.
  """
  @spec delete_virtual_mfa_device(map(), delete_virtual_mfa_device_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_virtual_mfa_device_errors()}
  def delete_virtual_mfa_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVirtualMFADevice", input, options)
  end

  @doc """
  Removes the specified managed policy from the specified IAM group.

  A group can also have inline policies embedded with it. To delete an inline
  policy,
  use `DeleteGroupPolicy`. For information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the
  *IAM User Guide*.
  """
  @spec detach_group_policy(map(), detach_group_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_group_policy_errors()}
  def detach_group_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachGroupPolicy", input, options)
  end

  @doc """
  Removes the specified managed policy from the specified role.

  A role can also have inline policies embedded with it. To delete an inline
  policy, use
  `DeleteRolePolicy`. For information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the
  *IAM User Guide*.
  """
  @spec detach_role_policy(map(), detach_role_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_role_policy_errors()}
  def detach_role_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachRolePolicy", input, options)
  end

  @doc """
  Removes the specified managed policy from the specified user.

  A user can also have inline policies embedded with it. To delete an inline
  policy, use
  `DeleteUserPolicy`. For information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the
  *IAM User Guide*.
  """
  @spec detach_user_policy(map(), detach_user_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detach_user_policy_errors()}
  def detach_user_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachUserPolicy", input, options)
  end

  @doc """
  Disables the management of privileged root user credentials across member
  accounts in
  your organization.

  When you disable this feature, the management account and the
  delegated administrator for IAM can no longer manage root user credentials for
  member
  accounts in your organization.
  """
  @spec disable_organizations_root_credentials_management(
          map(),
          disable_organizations_root_credentials_management_request(),
          list()
        ) ::
          {:ok, disable_organizations_root_credentials_management_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_organizations_root_credentials_management_errors()}
  def disable_organizations_root_credentials_management(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DisableOrganizationsRootCredentialsManagement",
      input,
      options
    )
  end

  @doc """
  Disables root user sessions for privileged tasks across member accounts in your
  organization.

  When you disable this feature, the management account and the delegated
  administrator for IAM can no longer perform privileged tasks on member accounts
  in
  your organization.
  """
  @spec disable_organizations_root_sessions(
          map(),
          disable_organizations_root_sessions_request(),
          list()
        ) ::
          {:ok, disable_organizations_root_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_organizations_root_sessions_errors()}
  def disable_organizations_root_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableOrganizationsRootSessions", input, options)
  end

  @doc """
  Enables the specified MFA device and associates it with the specified IAM user.

  When
  enabled, the MFA device is required for every subsequent login by the IAM user
  associated with the device.
  """
  @spec enable_mfa_device(map(), enable_mfa_device_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_mfa_device_errors()}
  def enable_mfa_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableMFADevice", input, options)
  end

  @doc """
  Enables the management of privileged root user credentials across member
  accounts in your
  organization.

  When you enable root credentials management for [centralized root access](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html#id_root-user-access-management),
  the management account and the delegated
  administrator for IAM can manage root user credentials for member accounts in
  your
  organization.

  Before you enable centralized root access, you must have an account configured
  with
  the following settings:

    *
  You must manage your Amazon Web Services accounts in
  [Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html). 

    *
  Enable trusted access for Identity and Access Management in Organizations. For
  details, see
  [IAM and
  Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-iam.html)
  in the *Organizations User
  Guide*.
  """
  @spec enable_organizations_root_credentials_management(
          map(),
          enable_organizations_root_credentials_management_request(),
          list()
        ) ::
          {:ok, enable_organizations_root_credentials_management_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_organizations_root_credentials_management_errors()}
  def enable_organizations_root_credentials_management(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "EnableOrganizationsRootCredentialsManagement",
      input,
      options
    )
  end

  @doc """
  Allows the management account or delegated administrator to perform privileged
  tasks
  on member accounts in your organization.

  For more information, see [Centrally manage root access for member accounts](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html#id_root-user-access-management)
  in the *Identity and Access Management
  User Guide*.

  Before you enable this feature, you must have an account configured with the
  following
  settings:

    *
  You must manage your Amazon Web Services accounts in
  [Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html). 

    *
  Enable trusted access for Identity and Access Management in Organizations. For
  details, see
  [IAM and
  Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-ra.html)
  in the *Organizations User
  Guide*.
  """
  @spec enable_organizations_root_sessions(
          map(),
          enable_organizations_root_sessions_request(),
          list()
        ) ::
          {:ok, enable_organizations_root_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_organizations_root_sessions_errors()}
  def enable_organizations_root_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableOrganizationsRootSessions", input, options)
  end

  @doc """
  Generates a credential report for the Amazon Web Services account.

  For more information about the
  credential report, see [Getting credential reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html)
  in
  the *IAM User Guide*.
  """
  @spec generate_credential_report(map(), %{}, list()) ::
          {:ok, generate_credential_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_credential_report_errors()}
  def generate_credential_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GenerateCredentialReport", input, options)
  end

  @doc """
  Generates a report for service last accessed data for Organizations.

  You can generate a
  report for any entities (organization root, organizational unit, or account) or
  policies
  in your organization.

  To call this operation, you must be signed in using your Organizations
  management account
  credentials. You can use your long-term IAM user or root user credentials, or
  temporary
  credentials from assuming an IAM role. SCPs must be enabled for your
  organization
  root. You must have the required IAM and Organizations permissions. For more
  information, see
  [Refining permissions using service last accessed data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
  in the
  *IAM User Guide*.

  You can generate a service last accessed data report for entities by specifying
  only
  the entity's path. This data includes a list of services that are allowed by any
  service
  control policies (SCPs) that apply to the entity.

  You can generate a service last accessed data report for a policy by specifying
  an
  entity's path and an optional Organizations policy ID. This data includes a list
  of services that
  are allowed by the specified SCP.

  For each service in both report types, the data includes the most recent account
  activity that the policy allows to account principals in the entity or the
  entity's
  children. For important information about the data, reporting period,
  permissions
  required, troubleshooting, and supported Regions see [Reducing permissions using service last accessed
  data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
  in the
  *IAM User Guide*.

  The data includes all attempts to access Amazon Web Services, not just the
  successful ones. This
  includes all attempts that were made using the Amazon Web Services Management
  Console, the Amazon Web Services API through any
  of the SDKs, or any of the command line tools. An unexpected entry in the
  service
  last accessed data does not mean that an account has been compromised, because
  the
  request might have been denied. Refer to your CloudTrail logs as the
  authoritative
  source for information about all API calls and whether they were successful or
  denied access. For more information, see [Logging IAM events with CloudTrail](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html)
  in the *IAM User Guide*.

  This operation returns a `JobId`. Use this parameter in the

  ```

  `GetOrganizationsAccessReport`

  ```

  operation to check the status of
  the report generation. To check the status of this request, use the `JobId`
  parameter in the

  ```

  `GetOrganizationsAccessReport`

  ```

  operation
  and test the `JobStatus` response parameter. When the job is complete, you
  can retrieve the report.

  To generate a service last accessed data report for entities, specify an entity
  path
  without specifying the optional Organizations policy ID. The type of entity that
  you specify
  determines the data returned in the report.

    *

  **Root** – When you specify the
  organizations root as the entity, the resulting report lists all of the services
  allowed by SCPs that are attached to your root. For each service, the report
  includes data for all accounts in your organization except the
  management account, because the management account is not limited by SCPs.

    *

  **OU** – When you specify an
  organizational unit (OU) as the entity, the resulting report lists all of the
  services allowed by SCPs that are attached to the OU and its parents. For each
  service, the report includes data for all accounts in the OU or its children.
  This data excludes the management account, because the management account is not
  limited by SCPs.

    *

  **management account** – When you specify the
  management account, the resulting report lists all Amazon Web Services services,
  because the
  management account is not limited by SCPs. For each service, the report includes
  data for only the management account.

    *

  **Account** – When you specify another
  account as the entity, the resulting report lists all of the services allowed by
  SCPs that are attached to the account and its parents. For each service, the
  report includes data for only the specified account.

  To generate a service last accessed data report for policies, specify an entity
  path
  and the optional Organizations policy ID. The type of entity that you specify
  determines the data
  returned for each service.

    *

  **Root** – When you specify the root
  entity and a policy ID, the resulting report lists all of the services that are
  allowed by the specified SCP. For each service, the report includes data for all
  accounts in your organization to which the SCP applies. This data excludes the
  management account, because the management account is not limited by SCPs. If
  the
  SCP is not attached to any entities in the organization, then the report will
  return a list of services with no data.

    *

  **OU** – When you specify an OU entity and
  a policy ID, the resulting report lists all of the services that are allowed by
  the specified SCP. For each service, the report includes data for all accounts
  in the OU or its children to which the SCP applies. This means that other
  accounts outside the OU that are affected by the SCP might not be included in
  the data. This data excludes the management account, because the
  management account is not limited by SCPs. If the SCP is not attached to the OU
  or one of its children, the report will return a list of services with no
  data.

    *

  **management account** – When you specify the
  management account, the resulting report lists all Amazon Web Services services,
  because the
  management account is not limited by SCPs. If you specify a policy ID in the CLI
  or API, the policy is ignored. For each service, the report includes data for
  only the management account.

    *

  **Account** – When you specify another
  account entity and a policy ID, the resulting report lists all of the services
  that are allowed by the specified SCP. For each service, the report includes
  data for only the specified account. This means that other accounts in the
  organization that are affected by the SCP might not be included in the data. If
  the SCP is not attached to the account, the report will return a list of
  services with no data.

  Service last accessed data does not use other policy types when determining
  whether a principal could access a service. These other policy types include
  identity-based policies, resource-based policies, access control lists, IAM
  permissions boundaries, and STS assume role policies. It only applies SCP logic.
  For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics)
  in the
  *IAM User Guide*.

  For more information about service last accessed data, see [Reducing policy scope by
  viewing user
  activity](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
  in the *IAM User Guide*.
  """
  @spec generate_organizations_access_report(
          map(),
          generate_organizations_access_report_request(),
          list()
        ) ::
          {:ok, generate_organizations_access_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_organizations_access_report_errors()}
  def generate_organizations_access_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GenerateOrganizationsAccessReport", input, options)
  end

  @doc """
  Generates a report that includes details about when an IAM resource (user,
  group,
  role, or policy) was last used in an attempt to access Amazon Web Services
  services.

  Recent activity
  usually appears within four hours. IAM reports activity for at least the last
  400
  days, or less if your Region began supporting this feature within the last year.
  For
  more information, see [Regions where data is tracked](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period).
  For more information about services and
  actions for which action last accessed information is displayed, see [IAM action last accessed information services and
  actions](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor-action-last-accessed.html).

  The service last accessed data includes all attempts to access an Amazon Web
  Services API, not
  just the successful ones. This includes all attempts that were made using the
  Amazon Web Services Management Console, the Amazon Web Services API through any
  of the SDKs, or any of the command line tools.
  An unexpected entry in the service last accessed data does not mean that your
  account has been compromised, because the request might have been denied. Refer
  to
  your CloudTrail logs as the authoritative source for information about all API
  calls
  and whether they were successful or denied access. For more information,
  see [Logging IAM events with
  CloudTrail](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html)
  in the
  *IAM User Guide*.

  The `GenerateServiceLastAccessedDetails` operation returns a
  `JobId`. Use this parameter in the following operations to retrieve the
  following details from your report:

    *

  `GetServiceLastAccessedDetails` – Use this operation
  for users, groups, roles, or policies to list every Amazon Web Services service
  that the
  resource could access using permissions policies. For each service, the response
  includes information about the most recent access attempt.

  The `JobId` returned by
  `GenerateServiceLastAccessedDetail` must be used by the same role
  within a session, or by the same user when used to call
  `GetServiceLastAccessedDetail`.

    *

  `GetServiceLastAccessedDetailsWithEntities` – Use this
  operation for groups and policies to list information about the associated
  entities (users or roles) that attempted to access a specific Amazon Web
  Services service.

  To check the status of the `GenerateServiceLastAccessedDetails` request,
  use the `JobId` parameter in the same operations and test the
  `JobStatus` response parameter.

  For additional information about the permissions policies that allow an identity
  (user, group, or role) to access specific services, use the
  `ListPoliciesGrantingServiceAccess` operation.

  Service last accessed data does not use other policy types when determining
  whether a resource could access a service. These other policy types include
  resource-based policies, access control lists, Organizations policies, IAM
  permissions
  boundaries, and STS assume role policies. It only applies permissions policy
  logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics)
  in the
  *IAM User Guide*.

  For more information about service and action last accessed data, see [Reducing permissions using service last accessed
  data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
  in the
  *IAM User Guide*.
  """
  @spec generate_service_last_accessed_details(
          map(),
          generate_service_last_accessed_details_request(),
          list()
        ) ::
          {:ok, generate_service_last_accessed_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_service_last_accessed_details_errors()}
  def generate_service_last_accessed_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GenerateServiceLastAccessedDetails", input, options)
  end

  @doc """
  Retrieves information about when the specified access key was last used.

  The
  information includes the date and time of last use, along with the Amazon Web
  Services service and
  Region that were specified in the last request made with that key.
  """
  @spec get_access_key_last_used(map(), get_access_key_last_used_request(), list()) ::
          {:ok, get_access_key_last_used_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_access_key_last_used(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccessKeyLastUsed", input, options)
  end

  @doc """
  Retrieves information about all IAM users, groups, roles, and policies in your
  Amazon Web Services
  account, including their relationships to one another.

  Use this operation to obtain a
  snapshot of the configuration of IAM permissions (users, groups, roles, and
  policies)
  in your account.

  Policies returned by this operation are URL-encoded compliant
  with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL
  decoding method to convert the policy back to plain JSON text. For example, if
  you use Java, you
  can use the `decode` method of the `java.net.URLDecoder` utility class in
  the Java SDK. Other languages and SDKs provide similar functionality.

  You can optionally filter the results using the `Filter` parameter. You can
  paginate the results using the `MaxItems` and `Marker`
  parameters.
  """
  @spec get_account_authorization_details(
          map(),
          get_account_authorization_details_request(),
          list()
        ) ::
          {:ok, get_account_authorization_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_authorization_details_errors()}
  def get_account_authorization_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccountAuthorizationDetails", input, options)
  end

  @doc """
  Retrieves the password policy for the Amazon Web Services account.

  This tells you the complexity
  requirements and mandatory rotation periods for the IAM user passwords in your
  account.
  For more information about using a password policy, see [Managing an IAM password
  policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html).
  """
  @spec get_account_password_policy(map(), %{}, list()) ::
          {:ok, get_account_password_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_password_policy_errors()}
  def get_account_password_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccountPasswordPolicy", input, options)
  end

  @doc """
  Retrieves information about IAM entity usage and IAM quotas in the Amazon Web
  Services
  account.

  For information about IAM quotas, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the
  *IAM User Guide*.
  """
  @spec get_account_summary(map(), %{}, list()) ::
          {:ok, get_account_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_summary_errors()}
  def get_account_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccountSummary", input, options)
  end

  @doc """
  Gets a list of all of the context keys referenced in the input policies.

  The policies
  are supplied as a list of one or more strings. To get the context keys from
  policies
  associated with an IAM user, group, or role, use
  `GetContextKeysForPrincipalPolicy`.

  Context keys are variables maintained by Amazon Web Services and its services
  that provide details
  about the context of an API query request. Context keys can be evaluated by
  testing
  against a value specified in an IAM policy. Use
  `GetContextKeysForCustomPolicy` to understand what key names and values
  you must supply when you call `SimulateCustomPolicy`. Note that all
  parameters are shown in unencoded form here for clarity but must be URL encoded
  to be
  included as a part of a real HTML request.
  """
  @spec get_context_keys_for_custom_policy(
          map(),
          get_context_keys_for_custom_policy_request(),
          list()
        ) ::
          {:ok, get_context_keys_for_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_context_keys_for_custom_policy_errors()}
  def get_context_keys_for_custom_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetContextKeysForCustomPolicy", input, options)
  end

  @doc """
  Gets a list of all of the context keys referenced in all the IAM policies that
  are
  attached to the specified IAM entity.

  The entity can be an IAM user, group, or role.
  If you specify a user, then the request also includes all of the policies
  attached to
  groups that the user is a member of.

  You can optionally include a list of one or more additional policies, specified
  as
  strings. If you want to include *only* a list of policies by string,
  use `GetContextKeysForCustomPolicy` instead.

  **Note:** This operation discloses information about the
  permissions granted to other users. If you do not want users to see other user's
  permissions, then consider allowing them to use `GetContextKeysForCustomPolicy`
  instead.

  Context keys are variables maintained by Amazon Web Services and its services
  that provide details
  about the context of an API query request. Context keys can be evaluated by
  testing
  against a value in an IAM policy. Use `GetContextKeysForPrincipalPolicy` to
  understand what key names and values you must supply when you call
  `SimulatePrincipalPolicy`.
  """
  @spec get_context_keys_for_principal_policy(
          map(),
          get_context_keys_for_principal_policy_request(),
          list()
        ) ::
          {:ok, get_context_keys_for_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_context_keys_for_principal_policy_errors()}
  def get_context_keys_for_principal_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetContextKeysForPrincipalPolicy", input, options)
  end

  @doc """
  Retrieves a credential report for the Amazon Web Services account.

  For more information about the
  credential report, see [Getting credential reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html)
  in
  the *IAM User Guide*.
  """
  @spec get_credential_report(map(), %{}, list()) ::
          {:ok, get_credential_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_credential_report_errors()}
  def get_credential_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCredentialReport", input, options)
  end

  @doc """
  Returns a list of IAM users that are in the specified IAM group.

  You can paginate
  the results using the `MaxItems` and `Marker` parameters.
  """
  @spec get_group(map(), get_group_request(), list()) ::
          {:ok, get_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_errors()}
  def get_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGroup", input, options)
  end

  @doc """
  Retrieves the specified inline policy document that is embedded in the specified
  IAM
  group.

  Policies returned by this operation are URL-encoded compliant
  with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if
  you use Java, you
  can use the `decode` method of the `java.net.URLDecoder` utility class in
  the Java SDK. Other languages and SDKs provide similar functionality.

  An IAM group can also have managed policies attached to it. To retrieve a
  managed
  policy document that is attached to a group, use `GetPolicy` to
  determine the policy's default version, then use `GetPolicyVersion` to
  retrieve the policy document.

  For more information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  @spec get_group_policy(map(), get_group_policy_request(), list()) ::
          {:ok, get_group_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_policy_errors()}
  def get_group_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGroupPolicy", input, options)
  end

  @doc """
  Retrieves information about the specified instance profile, including the
  instance
  profile's path, GUID, ARN, and role.

  For more information about instance profiles, see
  [Using instance
  profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html)
  in the *IAM User Guide*.
  """
  @spec get_instance_profile(map(), get_instance_profile_request(), list()) ::
          {:ok, get_instance_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_instance_profile_errors()}
  def get_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInstanceProfile", input, options)
  end

  @doc """
  Retrieves the user name for the specified IAM user.

  A login profile is created when
  you create a password for the user to access the Amazon Web Services Management
  Console. If the user does not exist
  or does not have a password, the operation returns a 404 (`NoSuchEntity`)
  error.

  If you create an IAM user with access to the console, the `CreateDate`
  reflects the date you created the initial password for the user.

  If you create an IAM user with programmatic access, and then later add a
  password
  for the user to access the Amazon Web Services Management Console, the
  `CreateDate` reflects the initial
  password creation date. A user with programmatic access does not have a login
  profile
  unless you create a password for the user to access the Amazon Web Services
  Management Console.
  """
  @spec get_login_profile(map(), get_login_profile_request(), list()) ::
          {:ok, get_login_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_login_profile_errors()}
  def get_login_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLoginProfile", input, options)
  end

  @doc """
  Retrieves information about an MFA device for a specified user.
  """
  @spec get_mfa_device(map(), get_mfa_device_request(), list()) ::
          {:ok, get_mfa_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_mfa_device_errors()}
  def get_mfa_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMFADevice", input, options)
  end

  @doc """
  Returns information about the specified OpenID Connect (OIDC) provider resource
  object
  in IAM.
  """
  @spec get_open_id_connect_provider(map(), get_open_id_connect_provider_request(), list()) ::
          {:ok, get_open_id_connect_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_open_id_connect_provider_errors()}
  def get_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOpenIDConnectProvider", input, options)
  end

  @doc """
  Retrieves the service last accessed data report for Organizations that was
  previously
  generated using the

  ```

  `GenerateOrganizationsAccessReport`

  ```

  operation.

  This operation retrieves the status of your report job and the report
  contents.

  Depending on the parameters that you passed when you generated the report, the
  data
  returned could include different information. For details, see
  `GenerateOrganizationsAccessReport`.

  To call this operation, you must be signed in to the management account in your
  organization. SCPs must be enabled for your organization root. You must have
  permissions
  to perform this operation. For more information, see [Refining permissions using service last accessed
  data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
  in the
  *IAM User Guide*.

  For each service that principals in an account (root user, IAM users, or IAM
  roles)
  could access using SCPs, the operation returns details about the most recent
  access
  attempt. If there was no attempt, the service is listed without details about
  the most
  recent attempt to access the service. If the operation fails, it returns the
  reason that
  it failed.

  By default, the list is sorted by service namespace.
  """
  @spec get_organizations_access_report(map(), get_organizations_access_report_request(), list()) ::
          {:ok, get_organizations_access_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_organizations_access_report_errors()}
  def get_organizations_access_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOrganizationsAccessReport", input, options)
  end

  @doc """
  Retrieves information about the specified managed policy, including the policy's
  default version and the total number of IAM users, groups, and roles to which
  the
  policy is attached.

  To retrieve the list of the specific users, groups, and roles that
  the policy is attached to, use `ListEntitiesForPolicy`. This operation
  returns metadata about the policy. To retrieve the actual policy document for a
  specific
  version of the policy, use `GetPolicyVersion`.

  This operation retrieves information about managed policies. To retrieve
  information
  about an inline policy that is embedded with an IAM user, group, or role, use
  `GetUserPolicy`, `GetGroupPolicy`, or `GetRolePolicy`.

  For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  @spec get_policy(map(), get_policy_request(), list()) ::
          {:ok, get_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_policy_errors()}
  def get_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPolicy", input, options)
  end

  @doc """
  Retrieves information about the specified version of the specified managed
  policy,
  including the policy document.

  Policies returned by this operation are URL-encoded compliant
  with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if
  you use Java, you
  can use the `decode` method of the `java.net.URLDecoder` utility class in
  the Java SDK. Other languages and SDKs provide similar functionality.

  To list the available versions for a policy, use `ListPolicyVersions`.

  This operation retrieves information about managed policies. To retrieve
  information
  about an inline policy that is embedded in a user, group, or role, use
  `GetUserPolicy`, `GetGroupPolicy`, or `GetRolePolicy`.

  For more information about the types of policies, see [Managed policies and
  inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  For more information about managed policy versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
  in the *IAM User Guide*.
  """
  @spec get_policy_version(map(), get_policy_version_request(), list()) ::
          {:ok, get_policy_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_policy_version_errors()}
  def get_policy_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPolicyVersion", input, options)
  end

  @doc """
  Retrieves information about the specified role, including the role's path, GUID,
  ARN,
  and the role's trust policy that grants permission to assume the role.

  For more
  information about roles, see [IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) in the
  *IAM User Guide*.

  Policies returned by this operation are URL-encoded compliant
  with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL
  decoding method to convert the policy back to plain JSON text. For example, if
  you use Java, you
  can use the `decode` method of the `java.net.URLDecoder` utility class in
  the Java SDK. Other languages and SDKs provide similar functionality.
  """
  @spec get_role(map(), get_role_request(), list()) ::
          {:ok, get_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_role_errors()}
  def get_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRole", input, options)
  end

  @doc """
  Retrieves the specified inline policy document that is embedded with the
  specified
  IAM role.

  Policies returned by this operation are URL-encoded compliant
  with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if
  you use Java, you
  can use the `decode` method of the `java.net.URLDecoder` utility class in
  the Java SDK. Other languages and SDKs provide similar functionality.

  An IAM role can also have managed policies attached to it. To retrieve a managed
  policy document that is attached to a role, use `GetPolicy` to determine
  the policy's default version, then use `GetPolicyVersion` to retrieve
  the policy document.

  For more information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  For more information about roles, see [IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) in the
  *IAM User Guide*.
  """
  @spec get_role_policy(map(), get_role_policy_request(), list()) ::
          {:ok, get_role_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_role_policy_errors()}
  def get_role_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRolePolicy", input, options)
  end

  @doc """
  Returns the SAML provider metadocument that was uploaded when the IAM SAML
  provider
  resource object was created or updated.

  This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec get_saml_provider(map(), get_saml_provider_request(), list()) ::
          {:ok, get_saml_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_saml_provider_errors()}
  def get_saml_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSAMLProvider", input, options)
  end

  @doc """
  Retrieves information about the specified server certificate stored in IAM.

  For more information about working with server certificates, see [Working with server
  certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*. This
  topic includes a list of Amazon Web Services services that can use the server
  certificates that you
  manage with IAM.
  """
  @spec get_server_certificate(map(), get_server_certificate_request(), list()) ::
          {:ok, get_server_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_server_certificate_errors()}
  def get_server_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServerCertificate", input, options)
  end

  @doc """
  Retrieves a service last accessed report that was created using the
  `GenerateServiceLastAccessedDetails` operation.

  You can use the
  `JobId` parameter in `GetServiceLastAccessedDetails` to
  retrieve the status of your report job. When the report is complete, you can
  retrieve
  the generated report. The report includes a list of Amazon Web Services services
  that the resource
  (user, group, role, or managed policy) can access.

  Service last accessed data does not use other policy types when determining
  whether a resource could access a service. These other policy types include
  resource-based policies, access control lists, Organizations policies, IAM
  permissions
  boundaries, and STS assume role policies. It only applies permissions policy
  logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics)
  in the
  *IAM User Guide*.

  For each service that the resource could access using permissions policies, the
  operation returns details about the most recent access attempt. If there was no
  attempt,
  the service is listed without details about the most recent attempt to access
  the
  service. If the operation fails, the `GetServiceLastAccessedDetails`
  operation returns the reason that it failed.

  The `GetServiceLastAccessedDetails` operation returns a list of services.
  This list includes the number of entities that have attempted to access the
  service and
  the date and time of the last attempt. It also returns the ARN of the following
  entity,
  depending on the resource ARN that you used to generate the report:

    *

  **User** – Returns the user ARN that you
  used to generate the report

    *

  **Group** – Returns the ARN of the group
  member (user) that last attempted to access the service

    *

  **Role** – Returns the role ARN that you
  used to generate the report

    *

  **Policy** – Returns the ARN of the user
  or role that last used the policy to attempt to access the service

  By default, the list is sorted by service namespace.

  If you specified `ACTION_LEVEL` granularity when you generated the report,
  this operation returns service and action last accessed data. This includes the
  most
  recent access attempt for each tracked action within a service. Otherwise, this
  operation returns only service data.

  For more information about service and action last accessed data, see [Reducing permissions using service last accessed
  data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
  in the
  *IAM User Guide*.
  """
  @spec get_service_last_accessed_details(
          map(),
          get_service_last_accessed_details_request(),
          list()
        ) ::
          {:ok, get_service_last_accessed_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_last_accessed_details_errors()}
  def get_service_last_accessed_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceLastAccessedDetails", input, options)
  end

  @doc """
  After you generate a group or policy report using the
  `GenerateServiceLastAccessedDetails` operation, you can use the
  `JobId` parameter in
  `GetServiceLastAccessedDetailsWithEntities`.

  This operation retrieves the
  status of your report job and a list of entities that could have used group or
  policy
  permissions to access the specified service.

    *

  **Group** – For a group report, this
  operation returns a list of users in the group that could have used the group’s
  policies in an attempt to access the service.

    *

  **Policy** – For a policy report, this
  operation returns a list of entities (users or roles) that could have used the
  policy in an attempt to access the service.

  You can also use this operation for user or role reports to retrieve details
  about
  those entities.

  If the operation fails, the `GetServiceLastAccessedDetailsWithEntities`
  operation returns the reason that it failed.

  By default, the list of associated entities is sorted by date, with the most
  recent
  access listed first.
  """
  @spec get_service_last_accessed_details_with_entities(
          map(),
          get_service_last_accessed_details_with_entities_request(),
          list()
        ) ::
          {:ok, get_service_last_accessed_details_with_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_last_accessed_details_with_entities_errors()}
  def get_service_last_accessed_details_with_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "GetServiceLastAccessedDetailsWithEntities",
      input,
      options
    )
  end

  @doc """
  Retrieves the status of your service-linked role deletion.

  After you use `DeleteServiceLinkedRole` to submit a service-linked role for
  deletion,
  you can use the `DeletionTaskId` parameter in
  `GetServiceLinkedRoleDeletionStatus` to check the status of the deletion.
  If the deletion fails, this operation returns the reason that it failed, if that
  information is returned by the service.
  """
  @spec get_service_linked_role_deletion_status(
          map(),
          get_service_linked_role_deletion_status_request(),
          list()
        ) ::
          {:ok, get_service_linked_role_deletion_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_linked_role_deletion_status_errors()}
  def get_service_linked_role_deletion_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceLinkedRoleDeletionStatus", input, options)
  end

  @doc """
  Retrieves the specified SSH public key, including metadata about the key.

  The SSH public key retrieved by this operation is used only for authenticating
  the
  associated IAM user to an CodeCommit repository. For more information about
  using SSH keys
  to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *CodeCommit User Guide*.
  """
  @spec get_ssh_public_key(map(), get_ssh_public_key_request(), list()) ::
          {:ok, get_ssh_public_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ssh_public_key_errors()}
  def get_ssh_public_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSSHPublicKey", input, options)
  end

  @doc """
  Retrieves information about the specified IAM user, including the user's
  creation
  date, path, unique ID, and ARN.

  If you do not specify a user name, IAM determines the user name implicitly based
  on
  the Amazon Web Services access key ID used to sign the request to this
  operation.
  """
  @spec get_user(map(), get_user_request(), list()) ::
          {:ok, get_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_errors()}
  def get_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUser", input, options)
  end

  @doc """
  Retrieves the specified inline policy document that is embedded in the specified
  IAM
  user.

  Policies returned by this operation are URL-encoded compliant
  with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if
  you use Java, you
  can use the `decode` method of the `java.net.URLDecoder` utility class in
  the Java SDK. Other languages and SDKs provide similar functionality.

  An IAM user can also have managed policies attached to it. To retrieve a managed
  policy document that is attached to a user, use `GetPolicy` to determine
  the policy's default version. Then use `GetPolicyVersion` to retrieve
  the policy document.

  For more information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  @spec get_user_policy(map(), get_user_policy_request(), list()) ::
          {:ok, get_user_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_policy_errors()}
  def get_user_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUserPolicy", input, options)
  end

  @doc """
  Returns information about the access key IDs associated with the specified IAM
  user.

  If there is none, the operation returns an empty list.

  Although each user is limited to a small number of keys, you can still paginate
  the
  results using the `MaxItems` and `Marker` parameters.

  If the `UserName` is not specified, the user name is determined implicitly
  based on the Amazon Web Services access key ID used to sign the request. If a
  temporary access key is
  used, then `UserName` is required. If a long-term key is assigned to the
  user, then `UserName` is not required.

  This operation works for access keys under the Amazon Web Services account. If
  the Amazon Web Services account has
  no associated users, the root user returns it's own access key IDs by running
  this
  command.

  To ensure the security of your Amazon Web Services account, the secret access
  key is accessible
  only during key and user creation.
  """
  @spec list_access_keys(map(), list_access_keys_request(), list()) ::
          {:ok, list_access_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_access_keys_errors()}
  def list_access_keys(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccessKeys", input, options)
  end

  @doc """
  Lists the account alias associated with the Amazon Web Services account (Note:
  you can have only
  one).

  For information about using an Amazon Web Services account alias, see [Creating, deleting, and listing an Amazon Web Services account
  alias](https://docs.aws.amazon.com/IAM/latest/UserGuide/console_account-alias.html#CreateAccountAlias)
  in the
  *IAM User Guide*.
  """
  @spec list_account_aliases(map(), list_account_aliases_request(), list()) ::
          {:ok, list_account_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_account_aliases_errors()}
  def list_account_aliases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccountAliases", input, options)
  end

  @doc """
  Lists all managed policies that are attached to the specified IAM group.

  An IAM group can also have inline policies embedded with it. To list the inline
  policies for a group, use `ListGroupPolicies`. For information about
  policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters. You can use the `PathPrefix` parameter to limit the list of
  policies to only those matching the specified path prefix. If there are no
  policies
  attached to the specified group (or none that match the specified path prefix),
  the
  operation returns an empty list.
  """
  @spec list_attached_group_policies(map(), list_attached_group_policies_request(), list()) ::
          {:ok, list_attached_group_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attached_group_policies_errors()}
  def list_attached_group_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAttachedGroupPolicies", input, options)
  end

  @doc """
  Lists all managed policies that are attached to the specified IAM role.

  An IAM role can also have inline policies embedded with it. To list the inline
  policies for a role, use `ListRolePolicies`. For information about
  policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters. You can use the `PathPrefix` parameter to limit the list of
  policies to only those matching the specified path prefix. If there are no
  policies
  attached to the specified role (or none that match the specified path prefix),
  the
  operation returns an empty list.
  """
  @spec list_attached_role_policies(map(), list_attached_role_policies_request(), list()) ::
          {:ok, list_attached_role_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attached_role_policies_errors()}
  def list_attached_role_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAttachedRolePolicies", input, options)
  end

  @doc """
  Lists all managed policies that are attached to the specified IAM user.

  An IAM user can also have inline policies embedded with it. To list the inline
  policies for a user, use `ListUserPolicies`. For information about
  policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters. You can use the `PathPrefix` parameter to limit the list of
  policies to only those matching the specified path prefix. If there are no
  policies
  attached to the specified group (or none that match the specified path prefix),
  the
  operation returns an empty list.
  """
  @spec list_attached_user_policies(map(), list_attached_user_policies_request(), list()) ::
          {:ok, list_attached_user_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attached_user_policies_errors()}
  def list_attached_user_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAttachedUserPolicies", input, options)
  end

  @doc """
  Lists all IAM users, groups, and roles that the specified managed policy is
  attached
  to.

  You can use the optional `EntityFilter` parameter to limit the results to a
  particular type of entity (users, groups, or roles). For example, to list only
  the roles
  that are attached to the specified policy, set `EntityFilter` to
  `Role`.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters.
  """
  @spec list_entities_for_policy(map(), list_entities_for_policy_request(), list()) ::
          {:ok, list_entities_for_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_entities_for_policy_errors()}
  def list_entities_for_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEntitiesForPolicy", input, options)
  end

  @doc """
  Lists the names of the inline policies that are embedded in the specified IAM
  group.

  An IAM group can also have managed policies attached to it. To list the managed
  policies that are attached to a group, use `ListAttachedGroupPolicies`.
  For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters. If there are no inline policies embedded with the specified group,
  the
  operation returns an empty list.
  """
  @spec list_group_policies(map(), list_group_policies_request(), list()) ::
          {:ok, list_group_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_group_policies_errors()}
  def list_group_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGroupPolicies", input, options)
  end

  @doc """
  Lists the IAM groups that have the specified path prefix.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters.
  """
  @spec list_groups(map(), list_groups_request(), list()) ::
          {:ok, list_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_groups_errors()}
  def list_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGroups", input, options)
  end

  @doc """
  Lists the IAM groups that the specified IAM user belongs to.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters.
  """
  @spec list_groups_for_user(map(), list_groups_for_user_request(), list()) ::
          {:ok, list_groups_for_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_groups_for_user_errors()}
  def list_groups_for_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGroupsForUser", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified IAM instance profile.

  The returned list of tags is sorted by tag key.
  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec list_instance_profile_tags(map(), list_instance_profile_tags_request(), list()) ::
          {:ok, list_instance_profile_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_instance_profile_tags_errors()}
  def list_instance_profile_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInstanceProfileTags", input, options)
  end

  @doc """
  Lists the instance profiles that have the specified path prefix.

  If there are none,
  the operation returns an empty list. For more information about instance
  profiles, see
  [Using instance
  profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html)
  in the *IAM User Guide*.

  IAM resource-listing operations return a subset of the available
  attributes for the resource. For example, this operation does not return tags,
  even though they are an attribute of the returned object. To view all of the
  information for an instance profile, see `GetInstanceProfile`.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters.
  """
  @spec list_instance_profiles(map(), list_instance_profiles_request(), list()) ::
          {:ok, list_instance_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_instance_profiles_errors()}
  def list_instance_profiles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInstanceProfiles", input, options)
  end

  @doc """
  Lists the instance profiles that have the specified associated IAM role.

  If there
  are none, the operation returns an empty list. For more information about
  instance
  profiles, go to [Using instance
  profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters.
  """
  @spec list_instance_profiles_for_role(map(), list_instance_profiles_for_role_request(), list()) ::
          {:ok, list_instance_profiles_for_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_instance_profiles_for_role_errors()}
  def list_instance_profiles_for_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInstanceProfilesForRole", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified IAM virtual multi-factor
  authentication (MFA) device.

  The returned list of tags is
  sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec list_mfa_device_tags(map(), list_mfa_device_tags_request(), list()) ::
          {:ok, list_mfa_device_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_mfa_device_tags_errors()}
  def list_mfa_device_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMFADeviceTags", input, options)
  end

  @doc """
  Lists the MFA devices for an IAM user.

  If the request includes a IAM user name,
  then this operation lists all the MFA devices associated with the specified
  user. If you
  do not specify a user name, IAM determines the user name implicitly based on the
  Amazon Web Services
  access key ID signing the request for this operation.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters.
  """
  @spec list_mfa_devices(map(), list_mfa_devices_request(), list()) ::
          {:ok, list_mfa_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_mfa_devices_errors()}
  def list_mfa_devices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMFADevices", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified OpenID Connect
  (OIDC)-compatible
  identity provider.

  The returned list of tags is sorted by tag key. For more information, see [About web identity
  federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html).

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec list_open_id_connect_provider_tags(
          map(),
          list_open_id_connect_provider_tags_request(),
          list()
        ) ::
          {:ok, list_open_id_connect_provider_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_open_id_connect_provider_tags_errors()}
  def list_open_id_connect_provider_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOpenIDConnectProviderTags", input, options)
  end

  @doc """
  Lists information about the IAM OpenID Connect (OIDC) provider resource objects
  defined in the Amazon Web Services account.

  IAM resource-listing operations return a subset of the available
  attributes for the resource. For example, this operation does not return tags,
  even though they are an attribute of the returned object. To view all of the
  information for an OIDC provider, see `GetOpenIDConnectProvider`.
  """
  @spec list_open_id_connect_providers(map(), list_open_id_connect_providers_request(), list()) ::
          {:ok, list_open_id_connect_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_open_id_connect_providers_errors()}
  def list_open_id_connect_providers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOpenIDConnectProviders", input, options)
  end

  @doc """
  Lists the centralized root access features enabled for your organization.

  For more
  information, see [Centrally manage root access for member accounts](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html#id_root-user-access-management).
  """
  @spec list_organizations_features(map(), list_organizations_features_request(), list()) ::
          {:ok, list_organizations_features_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_organizations_features_errors()}
  def list_organizations_features(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOrganizationsFeatures", input, options)
  end

  @doc """
  Lists all the managed policies that are available in your Amazon Web Services
  account, including
  your own customer-defined managed policies and all Amazon Web Services managed
  policies.

  You can filter the list of policies that is returned using the optional
  `OnlyAttached`, `Scope`, and `PathPrefix`
  parameters. For example, to list only the customer managed policies in your
  Amazon Web Services
  account, set `Scope` to `Local`. To list only Amazon Web Services managed
  policies, set `Scope` to `AWS`.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters.

  For more information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  IAM resource-listing operations return a subset of the available
  attributes for the resource. For example, this operation does not return tags,
  even though they are an attribute of the returned object. To view all of the
  information for a customer manged policy, see
  `GetPolicy`.
  """
  @spec list_policies(map(), list_policies_request(), list()) ::
          {:ok, list_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_policies_errors()}
  def list_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPolicies", input, options)
  end

  @doc """
  Retrieves a list of policies that the IAM identity (user, group, or role) can
  use to
  access each specified service.

  This operation does not use other policy types when determining whether a
  resource
  could access a service. These other policy types include resource-based
  policies,
  access control lists, Organizations policies, IAM permissions boundaries, and
  STS
  assume role policies. It only applies permissions policy logic. For more about
  the
  evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics)
  in the
  *IAM User Guide*.

  The list of policies returned by the operation depends on the ARN of the
  identity that
  you provide.

    *

  **User** – The list of policies includes
  the managed and inline policies that are attached to the user directly. The list
  also includes any additional managed and inline policies that are attached to
  the group to which the user belongs.

    *

  **Group** – The list of policies includes
  only the managed and inline policies that are attached to the group directly.
  Policies that are attached to the group’s user are not included.

    *

  **Role** – The list of policies includes
  only the managed and inline policies that are attached to the role.

  For each managed policy, this operation returns the ARN and policy name. For
  each
  inline policy, it returns the policy name and the entity to which it is
  attached. Inline
  policies do not have an ARN. For more information about these policy types, see
  [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
  in the
  *IAM User Guide*.

  Policies that are attached to users and roles as permissions boundaries are not
  returned. To view which managed policy is currently used to set the permissions
  boundary
  for a user or role, use the `GetUser` or `GetRole`
  operations.
  """
  @spec list_policies_granting_service_access(
          map(),
          list_policies_granting_service_access_request(),
          list()
        ) ::
          {:ok, list_policies_granting_service_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_policies_granting_service_access_errors()}
  def list_policies_granting_service_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPoliciesGrantingServiceAccess", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified IAM customer managed policy.

  The returned list of tags is sorted by tag key. For more information about
  tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec list_policy_tags(map(), list_policy_tags_request(), list()) ::
          {:ok, list_policy_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_policy_tags_errors()}
  def list_policy_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPolicyTags", input, options)
  end

  @doc """
  Lists information about the versions of the specified managed policy, including
  the
  version that is currently set as the policy's default version.

  For more information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  @spec list_policy_versions(map(), list_policy_versions_request(), list()) ::
          {:ok, list_policy_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_policy_versions_errors()}
  def list_policy_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPolicyVersions", input, options)
  end

  @doc """
  Lists the names of the inline policies that are embedded in the specified IAM
  role.

  An IAM role can also have managed policies attached to it. To list the managed
  policies that are attached to a role, use `ListAttachedRolePolicies`.
  For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters. If there are no inline policies embedded with the specified role,
  the
  operation returns an empty list.
  """
  @spec list_role_policies(map(), list_role_policies_request(), list()) ::
          {:ok, list_role_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_role_policies_errors()}
  def list_role_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRolePolicies", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified role.

  The returned list of tags is
  sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec list_role_tags(map(), list_role_tags_request(), list()) ::
          {:ok, list_role_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_role_tags_errors()}
  def list_role_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRoleTags", input, options)
  end

  @doc """
  Lists the IAM roles that have the specified path prefix.

  If there are none, the
  operation returns an empty list. For more information about roles, see [IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) in the
  *IAM User Guide*.

  IAM resource-listing operations return a subset of the available
  attributes for the resource. This operation does not return the following
  attributes, even though they are an attribute of the returned object:

    
  PermissionsBoundary

    
  RoleLastUsed

    
  Tags

  To view all of the information for a role, see `GetRole`.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters.
  """
  @spec list_roles(map(), list_roles_request(), list()) ::
          {:ok, list_roles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_roles_errors()}
  def list_roles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRoles", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified Security Assertion Markup
  Language
  (SAML) identity provider.

  The returned list of tags is sorted by tag key. For more information, see [About SAML 2.0-based
  federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html).

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec list_saml_provider_tags(map(), list_saml_provider_tags_request(), list()) ::
          {:ok, list_saml_provider_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_saml_provider_tags_errors()}
  def list_saml_provider_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSAMLProviderTags", input, options)
  end

  @doc """
  Lists the SAML provider resource objects defined in IAM in the account.

  IAM resource-listing operations return a subset of the available
  attributes for the resource. For example, this operation does not return tags,
  even though they are an attribute of the returned object. To view all of the
  information for a SAML provider, see `GetSAMLProvider`.

  This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec list_saml_providers(map(), list_saml_providers_request(), list()) ::
          {:ok, list_saml_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_saml_providers_errors()}
  def list_saml_providers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSAMLProviders", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified IAM server certificate.

  The
  returned list of tags is sorted by tag key. For more information about tagging,
  see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

  For certificates in a Region supported by Certificate Manager (ACM), we
  recommend that you don't use IAM server certificates. Instead, use ACM to
  provision,
  manage, and deploy your server certificates. For more information about IAM
  server
  certificates, [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*.
  """
  @spec list_server_certificate_tags(map(), list_server_certificate_tags_request(), list()) ::
          {:ok, list_server_certificate_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_server_certificate_tags_errors()}
  def list_server_certificate_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServerCertificateTags", input, options)
  end

  @doc """
  Lists the server certificates stored in IAM that have the specified path prefix.

  If
  none exist, the operation returns an empty list.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters.

  For more information about working with server certificates, see [Working with server
  certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*. This
  topic also includes a list of Amazon Web Services services that can use the
  server certificates that
  you manage with IAM.

  IAM resource-listing operations return a subset of the available
  attributes for the resource. For example, this operation does not return tags,
  even though they are an attribute of the returned object. To view all of the
  information for a servercertificate, see `GetServerCertificate`.
  """
  @spec list_server_certificates(map(), list_server_certificates_request(), list()) ::
          {:ok, list_server_certificates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_server_certificates_errors()}
  def list_server_certificates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServerCertificates", input, options)
  end

  @doc """
  Returns information about the service-specific credentials associated with the
  specified IAM user.

  If none exists, the operation returns an empty list. The
  service-specific credentials returned by this operation are used only for
  authenticating
  the IAM user to a specific service. For more information about using
  service-specific
  credentials to authenticate to an Amazon Web Services service, see [Set up service-specific
  credentials](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html)
  in the CodeCommit User Guide.
  """
  @spec list_service_specific_credentials(
          map(),
          list_service_specific_credentials_request(),
          list()
        ) ::
          {:ok, list_service_specific_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_specific_credentials_errors()}
  def list_service_specific_credentials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceSpecificCredentials", input, options)
  end

  @doc """
  Returns information about the signing certificates associated with the specified
  IAM
  user.

  If none exists, the operation returns an empty list.

  Although each user is limited to a small number of signing certificates, you can
  still
  paginate the results using the `MaxItems` and `Marker`
  parameters.

  If the `UserName` field is not specified, the user name is determined
  implicitly based on the Amazon Web Services access key ID used to sign the
  request for this operation.
  This operation works for access keys under the Amazon Web Services account.
  Consequently, you can use
  this operation to manage Amazon Web Services account root user credentials even
  if the Amazon Web Services account has no
  associated users.
  """
  @spec list_signing_certificates(map(), list_signing_certificates_request(), list()) ::
          {:ok, list_signing_certificates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_signing_certificates_errors()}
  def list_signing_certificates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSigningCertificates", input, options)
  end

  @doc """
  Returns information about the SSH public keys associated with the specified IAM
  user.

  If none exists, the operation returns an empty list.

  The SSH public keys returned by this operation are used only for authenticating
  the
  IAM user to an CodeCommit repository. For more information about using SSH keys
  to
  authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH
  connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *CodeCommit User Guide*.

  Although each user is limited to a small number of keys, you can still paginate
  the
  results using the `MaxItems` and `Marker` parameters.
  """
  @spec list_ssh_public_keys(map(), list_ssh_public_keys_request(), list()) ::
          {:ok, list_ssh_public_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_ssh_public_keys_errors()}
  def list_ssh_public_keys(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSSHPublicKeys", input, options)
  end

  @doc """
  Lists the names of the inline policies embedded in the specified IAM user.

  An IAM user can also have managed policies attached to it. To list the managed
  policies that are attached to a user, use `ListAttachedUserPolicies`.
  For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters. If there are no inline policies embedded with the specified user,
  the
  operation returns an empty list.
  """
  @spec list_user_policies(map(), list_user_policies_request(), list()) ::
          {:ok, list_user_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_policies_errors()}
  def list_user_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUserPolicies", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified IAM user.

  The returned list of tags is sorted by tag key. For more information about
  tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec list_user_tags(map(), list_user_tags_request(), list()) ::
          {:ok, list_user_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_tags_errors()}
  def list_user_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUserTags", input, options)
  end

  @doc """
  Lists the IAM users that have the specified path prefix.

  If no path prefix is
  specified, the operation returns all users in the Amazon Web Services account.
  If there are none, the
  operation returns an empty list.

  IAM resource-listing operations return a subset of the available
  attributes for the resource. This operation does not return the following
  attributes, even though they are an attribute of the returned object:

    
  PermissionsBoundary

    
  Tags

  To view all of the information for a user, see `GetUser`.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters.
  """
  @spec list_users(map(), list_users_request(), list()) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_users_errors()}
  def list_users(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUsers", input, options)
  end

  @doc """
  Lists the virtual MFA devices defined in the Amazon Web Services account by
  assignment status.

  If
  you do not specify an assignment status, the operation returns a list of all
  virtual MFA
  devices. Assignment status can be `Assigned`, `Unassigned`, or
  `Any`.

  IAM resource-listing operations return a subset of the available
  attributes for the resource. For example, this operation does not return tags,
  even though they are an attribute of the returned object. To view tag
  information for a virtual MFA device, see `ListMFADeviceTags`.

  You can paginate the results using the `MaxItems` and `Marker`
  parameters.
  """
  @spec list_virtual_mfa_devices(map(), list_virtual_mfa_devices_request(), list()) ::
          {:ok, list_virtual_mfa_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_virtual_mfa_devices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVirtualMFADevices", input, options)
  end

  @doc """
  Adds or updates an inline policy document that is embedded in the specified IAM
  group.

  A user can also have managed policies attached to it. To attach a managed policy
  to a
  group, use [
  `AttachGroupPolicy`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_AttachGroupPolicy.html).
  To create a new managed policy, use
  [
  `CreatePolicy`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html).
  For information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the
  *IAM User Guide*.

  For information about the maximum number of inline policies that you can embed
  in a
  group, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.

  Because policy documents can be large, you should use POST rather than GET when
  calling `PutGroupPolicy`. For general information about using the Query
  API with IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the
  *IAM User Guide*.
  """
  @spec put_group_policy(map(), put_group_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_group_policy_errors()}
  def put_group_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutGroupPolicy", input, options)
  end

  @doc """
  Adds or updates the policy that is specified as the IAM role's permissions
  boundary.

  You can use an Amazon Web Services managed policy or a customer managed policy
  to set the boundary for
  a role. Use the boundary to control the maximum permissions that the role can
  have.
  Setting a permissions boundary is an advanced feature that can affect the
  permissions
  for the role.

  You cannot set the boundary for a service-linked role.

  Policies used as permissions boundaries do not provide permissions. You must
  also
  attach a permissions policy to the role. To learn how the effective permissions
  for
  a role are evaluated, see [IAM JSON policy evaluation
  logic](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html)
  in the IAM User Guide.
  """
  @spec put_role_permissions_boundary(map(), put_role_permissions_boundary_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_role_permissions_boundary_errors()}
  def put_role_permissions_boundary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRolePermissionsBoundary", input, options)
  end

  @doc """
  Adds or updates an inline policy document that is embedded in the specified IAM
  role.

  When you embed an inline policy in a role, the inline policy is used as part of
  the
  role's access (permissions) policy. The role's trust policy is created at the
  same time
  as the role, using [
  `CreateRole`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html).
  You can update a role's trust policy using [
  `UpdateAssumeRolePolicy`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateAssumeRolePolicy.html).
  For more information about roles,
  see [IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html) in
  the *IAM User Guide*.

  A role can also have a managed policy attached to it. To attach a managed policy
  to a
  role, use [
  `AttachRolePolicy`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_AttachRolePolicy.html).
  To create a new managed policy, use
  [
  `CreatePolicy`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html).
  For information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the
  *IAM User Guide*.

  For information about the maximum number of inline policies that you can embed
  with a
  role, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.

  Because policy documents can be large, you should use POST rather than GET when
  calling `PutRolePolicy`. For general information about using the Query
  API with IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the
  *IAM User Guide*.
  """
  @spec put_role_policy(map(), put_role_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_role_policy_errors()}
  def put_role_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRolePolicy", input, options)
  end

  @doc """
  Adds or updates the policy that is specified as the IAM user's permissions
  boundary.

  You can use an Amazon Web Services managed policy or a customer managed policy
  to set the
  boundary for a user. Use the boundary to control the maximum permissions that
  the user
  can have. Setting a permissions boundary is an advanced feature that can affect
  the
  permissions for the user.

  Policies that are used as permissions boundaries do not provide permissions. You
  must also attach a permissions policy to the user. To learn how the effective
  permissions for a user are evaluated, see [IAM JSON policy evaluation
  logic](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html)
  in the IAM User Guide.
  """
  @spec put_user_permissions_boundary(map(), put_user_permissions_boundary_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_user_permissions_boundary_errors()}
  def put_user_permissions_boundary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutUserPermissionsBoundary", input, options)
  end

  @doc """
  Adds or updates an inline policy document that is embedded in the specified IAM
  user.

  An IAM user can also have a managed policy attached to it. To attach a managed
  policy to a user, use [
  `AttachUserPolicy`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_AttachUserPolicy.html).
  To create a new managed policy, use
  [
  `CreatePolicy`
  ](https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html).
  For information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the
  *IAM User Guide*.

  For information about the maximum number of inline policies that you can embed
  in a
  user, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.

  Because policy documents can be large, you should use POST rather than GET when
  calling `PutUserPolicy`. For general information about using the Query
  API with IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the
  *IAM User Guide*.
  """
  @spec put_user_policy(map(), put_user_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_user_policy_errors()}
  def put_user_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutUserPolicy", input, options)
  end

  @doc """
  Removes the specified client ID (also known as audience) from the list of client
  IDs
  registered for the specified IAM OpenID Connect (OIDC) provider resource
  object.

  This operation is idempotent; it does not fail or return an error if you try to
  remove
  a client ID that does not exist.
  """
  @spec remove_client_id_from_open_id_connect_provider(
          map(),
          remove_client_id_from_open_id_connect_provider_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_client_id_from_open_id_connect_provider_errors()}
  def remove_client_id_from_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveClientIDFromOpenIDConnectProvider", input, options)
  end

  @doc """
  Removes the specified IAM role from the specified Amazon EC2 instance profile.

  Make sure that you do not have any Amazon EC2 instances running with the role
  you are
  about to remove from the instance profile. Removing a role from an instance
  profile
  that is associated with a running instance might break any applications running
  on
  the instance.

  For more information about roles, see [IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) in the
  *IAM User Guide*. For more information about instance profiles,
  see [Using instance
  profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html)
  in the *IAM User Guide*.
  """
  @spec remove_role_from_instance_profile(
          map(),
          remove_role_from_instance_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_role_from_instance_profile_errors()}
  def remove_role_from_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveRoleFromInstanceProfile", input, options)
  end

  @doc """
  Removes the specified user from the specified group.
  """
  @spec remove_user_from_group(map(), remove_user_from_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_user_from_group_errors()}
  def remove_user_from_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveUserFromGroup", input, options)
  end

  @doc """
  Resets the password for a service-specific credential.

  The new password is Amazon Web Services
  generated and cryptographically strong. It cannot be configured by the user.
  Resetting
  the password immediately invalidates the previous password associated with this
  user.
  """
  @spec reset_service_specific_credential(
          map(),
          reset_service_specific_credential_request(),
          list()
        ) ::
          {:ok, reset_service_specific_credential_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_service_specific_credential_errors()}
  def reset_service_specific_credential(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetServiceSpecificCredential", input, options)
  end

  @doc """
  Synchronizes the specified MFA device with its IAM resource object on the Amazon
  Web Services
  servers.

  For more information about creating and working with virtual MFA devices, see
  [Using a virtual MFA device](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html)
  in the *IAM User Guide*.
  """
  @spec resync_mfa_device(map(), resync_mfa_device_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resync_mfa_device_errors()}
  def resync_mfa_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResyncMFADevice", input, options)
  end

  @doc """
  Sets the specified version of the specified policy as the policy's default
  (operative)
  version.

  This operation affects all users, groups, and roles that the policy is attached
  to. To
  list the users, groups, and roles that the policy is attached to, use
  `ListEntitiesForPolicy`.

  For information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  @spec set_default_policy_version(map(), set_default_policy_version_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_default_policy_version_errors()}
  def set_default_policy_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetDefaultPolicyVersion", input, options)
  end

  @doc """
  Sets the specified version of the global endpoint token as the token version
  used for
  the Amazon Web Services account.

  By default, Security Token Service (STS) is available as a global service, and
  all STS requests
  go to a single endpoint at `https://sts.amazonaws.com`. Amazon Web Services
  recommends
  using Regional STS endpoints to reduce latency, build in redundancy, and
  increase
  session token availability. For information about Regional endpoints for STS,
  see
  [Security Token Service endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/sts.html) in
  the *Amazon Web Services General Reference*.

  If you make an STS call to the global endpoint, the resulting session tokens
  might
  be valid in some Regions but not others. It depends on the version that is set
  in this
  operation. Version 1 tokens are valid only in Amazon Web Services Regions that
  are
  available by default. These tokens do not work in manually enabled Regions, such
  as Asia
  Pacific (Hong Kong). Version 2 tokens are valid in all Regions. However, version
  2
  tokens are longer and might affect systems where you temporarily store tokens.
  For
  information, see [Activating and deactivating STS in an Amazon Web Services
  Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
  in the
  *IAM User Guide*.

  To view the current session token version, see the
  `GlobalEndpointTokenVersion` entry in the response of the `GetAccountSummary`
  operation.
  """
  @spec set_security_token_service_preferences(
          map(),
          set_security_token_service_preferences_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, set_security_token_service_preferences_errors()}
  def set_security_token_service_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetSecurityTokenServicePreferences", input, options)
  end

  @doc """
  Simulate how a set of IAM policies and optionally a resource-based policy works
  with
  a list of API operations and Amazon Web Services resources to determine the
  policies' effective
  permissions.

  The policies are provided as strings.

  The simulation does not perform the API operations; it only checks the
  authorization
  to determine if the simulated policies allow or deny the operations. You can
  simulate
  resources that don't exist in your account.

  If you want to simulate existing policies that are attached to an IAM user,
  group,
  or role, use `SimulatePrincipalPolicy` instead.

  Context keys are variables that are maintained by Amazon Web Services and its
  services and which
  provide details about the context of an API query request. You can use the
  `Condition` element of an IAM policy to evaluate context keys. To get
  the list of context keys that the policies require for correct simulation, use
  `GetContextKeysForCustomPolicy`.

  If the output is long, you can use `MaxItems` and `Marker`
  parameters to paginate the results.

  The IAM policy simulator evaluates statements in the identity-based policy and
  the inputs that you provide during simulation. The policy simulator results can
  differ from your live Amazon Web Services environment. We recommend that you
  check your policies
  against your live Amazon Web Services environment after testing using the policy
  simulator to
  confirm that you have the desired results. For more information about using the
  policy simulator, see [Testing IAM policies with the IAM policy simulator
  ](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html)in
  the
  *IAM User Guide*.
  """
  @spec simulate_custom_policy(map(), simulate_custom_policy_request(), list()) ::
          {:ok, simulate_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, simulate_custom_policy_errors()}
  def simulate_custom_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SimulateCustomPolicy", input, options)
  end

  @doc """
  Simulate how a set of IAM policies attached to an IAM entity works with a list
  of
  API operations and Amazon Web Services resources to determine the policies'
  effective permissions.

  The
  entity can be an IAM user, group, or role. If you specify a user, then the
  simulation
  also includes all of the policies that are attached to groups that the user
  belongs to.
  You can simulate resources that don't exist in your account.

  You can optionally include a list of one or more additional policies specified
  as
  strings to include in the simulation. If you want to simulate only policies
  specified as
  strings, use `SimulateCustomPolicy` instead.

  You can also optionally include one resource-based policy to be evaluated with
  each of
  the resources included in the simulation for IAM users only.

  The simulation does not perform the API operations; it only checks the
  authorization
  to determine if the simulated policies allow or deny the operations.

  **Note:** This operation discloses information about the
  permissions granted to other users. If you do not want users to see other user's
  permissions, then consider allowing them to use `SimulateCustomPolicy`
  instead.

  Context keys are variables maintained by Amazon Web Services and its services
  that provide details
  about the context of an API query request. You can use the `Condition`
  element of an IAM policy to evaluate context keys. To get the list of context
  keys
  that the policies require for correct simulation, use
  `GetContextKeysForPrincipalPolicy`.

  If the output is long, you can use the `MaxItems` and `Marker`
  parameters to paginate the results.

  The IAM policy simulator evaluates statements in the identity-based policy and
  the inputs that you provide during simulation. The policy simulator results can
  differ from your live Amazon Web Services environment. We recommend that you
  check your policies
  against your live Amazon Web Services environment after testing using the policy
  simulator to
  confirm that you have the desired results. For more information about using the
  policy simulator, see [Testing IAM policies with the IAM policy simulator
  ](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html)in
  the
  *IAM User Guide*.
  """
  @spec simulate_principal_policy(map(), simulate_principal_policy_request(), list()) ::
          {:ok, simulate_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, simulate_principal_policy_errors()}
  def simulate_principal_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SimulatePrincipalPolicy", input, options)
  end

  @doc """
  Adds one or more tags to an IAM instance profile.

  If a tag with the same key name
  already exists, then that tag is overwritten with the new value.

  Each tag consists of a key name and an associated value. By assigning tags to
  your resources, you can do the
  following:

    *

  **Administrative grouping and discovery** - Attach
  tags to resources to aid in organization and search. For example, you could
  search for all
  resources with the key name *Project* and the value
  *MyImportantProject*. Or search for all resources with the key name
  *Cost Center* and the value *41200*.

    *

  **Access control** - Include tags in IAM user-based
  and resource-based policies. You can use tags to restrict access to only an IAM
  instance
  profile that has a specified tag attached. For examples of policies that show
  how to use
  tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

    
  If any one of the tags is invalid or if you exceed the allowed maximum number of
  tags, then the entire request
  fails and the resource is not created. For more information about tagging, see
  [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

    
  Amazon Web Services always interprets the tag `Value` as a single string. If you
  need to store an array, you can store comma-separated values in the string.
  However, you
  must interpret the value in your code.
  """
  @spec tag_instance_profile(map(), tag_instance_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_instance_profile_errors()}
  def tag_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagInstanceProfile", input, options)
  end

  @doc """
  Adds one or more tags to an IAM virtual multi-factor authentication (MFA)
  device.

  If
  a tag with the same key name already exists, then that tag is overwritten with
  the new
  value.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    *

  **Administrative grouping and discovery** - Attach
  tags to resources to aid in organization and search. For example, you could
  search for all
  resources with the key name *Project* and the value
  *MyImportantProject*. Or search for all resources with the key name
  *Cost Center* and the value *41200*.

    *

  **Access control** - Include tags in IAM user-based
  and resource-based policies. You can use tags to restrict access to only an IAM
  virtual
  MFA device that has a specified tag attached. For examples of policies that show
  how to
  use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

    
  If any one of the tags is invalid or if you exceed the allowed maximum number of
  tags, then the entire request
  fails and the resource is not created. For more information about tagging, see
  [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

    
  Amazon Web Services always interprets the tag `Value` as a single string. If you
  need to store an array, you can store comma-separated values in the string.
  However, you
  must interpret the value in your code.
  """
  @spec tag_mfa_device(map(), tag_mfa_device_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_mfa_device_errors()}
  def tag_mfa_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagMFADevice", input, options)
  end

  @doc """
  Adds one or more tags to an OpenID Connect (OIDC)-compatible identity provider.

  For
  more information about these providers, see [About web identity federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html).
  If
  a tag with the same key name already exists, then that tag is overwritten with
  the new
  value.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    *

  **Administrative grouping and discovery** - Attach
  tags to resources to aid in organization and search. For example, you could
  search for all
  resources with the key name *Project* and the value
  *MyImportantProject*. Or search for all resources with the key name
  *Cost Center* and the value *41200*.

    *

  **Access control** - Include tags in IAM identity-based
  and resource-based policies. You can use tags to restrict access to only an OIDC
  provider
  that has a specified tag attached. For examples of policies that show how to use
  tags to
  control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

    
  If any one of the tags is invalid or if you exceed the allowed maximum number of
  tags, then the entire request
  fails and the resource is not created. For more information about tagging, see
  [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

    
  Amazon Web Services always interprets the tag `Value` as a single string. If you
  need to store an array, you can store comma-separated values in the string.
  However, you
  must interpret the value in your code.
  """
  @spec tag_open_id_connect_provider(map(), tag_open_id_connect_provider_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_open_id_connect_provider_errors()}
  def tag_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagOpenIDConnectProvider", input, options)
  end

  @doc """
  Adds one or more tags to an IAM customer managed policy.

  If a tag with the same key
  name already exists, then that tag is overwritten with the new value.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    *

  **Administrative grouping and discovery** - Attach
  tags to resources to aid in organization and search. For example, you could
  search for all
  resources with the key name *Project* and the value
  *MyImportantProject*. Or search for all resources with the key name
  *Cost Center* and the value *41200*.

    *

  **Access control** - Include tags in IAM user-based
  and resource-based policies. You can use tags to restrict access to only an IAM
  customer
  managed policy that has a specified tag attached. For examples of policies that
  show how
  to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

    
  If any one of the tags is invalid or if you exceed the allowed maximum number of
  tags, then the entire request
  fails and the resource is not created. For more information about tagging, see
  [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

    
  Amazon Web Services always interprets the tag `Value` as a single string. If you
  need to store an array, you can store comma-separated values in the string.
  However, you
  must interpret the value in your code.
  """
  @spec tag_policy(map(), tag_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_policy_errors()}
  def tag_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagPolicy", input, options)
  end

  @doc """
  Adds one or more tags to an IAM role.

  The role can be a regular role or a
  service-linked role. If a tag with the same key name already exists, then that
  tag is
  overwritten with the new value.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    *

  **Administrative grouping and discovery** - Attach
  tags to resources to aid in organization and search. For example, you could
  search for all
  resources with the key name *Project* and the value
  *MyImportantProject*. Or search for all resources with the key name
  *Cost Center* and the value *41200*.

    *

  **Access control** - Include tags in IAM user-based
  and resource-based policies. You can use tags to restrict access to only an IAM
  role
  that has a specified tag attached. You can also restrict access to only those
  resources
  that have a certain tag attached. For examples of policies that show how to use
  tags to
  control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

    *

  **Cost allocation** - Use tags to help track which
  individuals and teams are using which Amazon Web Services resources.

    
  If any one of the tags is invalid or if you exceed the allowed maximum number of
  tags, then the entire request
  fails and the resource is not created. For more information about tagging, see
  [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

    
  Amazon Web Services always interprets the tag `Value` as a single string. If you
  need to store an array, you can store comma-separated values in the string.
  However, you
  must interpret the value in your code.

  For more information about tagging, see [Tagging IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in
  the
  *IAM User Guide*.
  """
  @spec tag_role(map(), tag_role_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_role_errors()}
  def tag_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagRole", input, options)
  end

  @doc """
  Adds one or more tags to a Security Assertion Markup Language (SAML) identity
  provider.

  For more information about these providers, see [About SAML 2.0-based federation
  ](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html).
  If a tag with the same key name already exists, then that tag is overwritten
  with the new
  value.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    *

  **Administrative grouping and discovery** - Attach
  tags to resources to aid in organization and search. For example, you could
  search for all
  resources with the key name *Project* and the value
  *MyImportantProject*. Or search for all resources with the key name
  *Cost Center* and the value *41200*.

    *

  **Access control** - Include tags in IAM user-based
  and resource-based policies. You can use tags to restrict access to only a SAML
  identity
  provider that has a specified tag attached. For examples of policies that show
  how to use
  tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

    
  If any one of the tags is invalid or if you exceed the allowed maximum number of
  tags, then the entire request
  fails and the resource is not created. For more information about tagging, see
  [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

    
  Amazon Web Services always interprets the tag `Value` as a single string. If you
  need to store an array, you can store comma-separated values in the string.
  However, you
  must interpret the value in your code.
  """
  @spec tag_saml_provider(map(), tag_saml_provider_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_saml_provider_errors()}
  def tag_saml_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagSAMLProvider", input, options)
  end

  @doc """
  Adds one or more tags to an IAM server certificate.

  If a tag with the same key name
  already exists, then that tag is overwritten with the new value.

  For certificates in a Region supported by Certificate Manager (ACM), we
  recommend that you don't use IAM server certificates. Instead, use ACM to
  provision,
  manage, and deploy your server certificates. For more information about IAM
  server
  certificates, [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    *

  **Administrative grouping and discovery** - Attach
  tags to resources to aid in organization and search. For example, you could
  search for all
  resources with the key name *Project* and the value
  *MyImportantProject*. Or search for all resources with the key name
  *Cost Center* and the value *41200*.

    *

  **Access control** - Include tags in IAM user-based
  and resource-based policies. You can use tags to restrict access to only a
  server
  certificate that has a specified tag attached. For examples of policies that
  show how to
  use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

    *

  **Cost allocation** - Use tags to help track which
  individuals and teams are using which Amazon Web Services resources.

    
  If any one of the tags is invalid or if you exceed the allowed maximum number of
  tags, then the entire request
  fails and the resource is not created. For more information about tagging, see
  [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

    
  Amazon Web Services always interprets the tag `Value` as a single string. If you
  need to store an array, you can store comma-separated values in the string.
  However, you
  must interpret the value in your code.
  """
  @spec tag_server_certificate(map(), tag_server_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_server_certificate_errors()}
  def tag_server_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagServerCertificate", input, options)
  end

  @doc """
  Adds one or more tags to an IAM user.

  If a tag with the same key name already exists,
  then that tag is overwritten with the new value.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    *

  **Administrative grouping and discovery** - Attach
  tags to resources to aid in organization and search. For example, you could
  search for all
  resources with the key name *Project* and the value
  *MyImportantProject*. Or search for all resources with the key name
  *Cost Center* and the value *41200*.

    *

  **Access control** - Include tags in IAM identity-based
  and resource-based policies. You can use tags to restrict access to only an IAM
  requesting user that has a specified tag attached. You can also restrict access
  to only
  those resources that have a certain tag attached. For examples of policies that
  show how
  to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

    *

  **Cost allocation** - Use tags to help track which
  individuals and teams are using which Amazon Web Services resources.

    
  If any one of the tags is invalid or if you exceed the allowed maximum number of
  tags, then the entire request
  fails and the resource is not created. For more information about tagging, see
  [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

    
  Amazon Web Services always interprets the tag `Value` as a single string. If you
  need to store an array, you can store comma-separated values in the string.
  However, you
  must interpret the value in your code.

  For more information about tagging, see [Tagging IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in
  the
  *IAM User Guide*.
  """
  @spec tag_user(map(), tag_user_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_user_errors()}
  def tag_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagUser", input, options)
  end

  @doc """
  Removes the specified tags from the IAM instance profile.

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec untag_instance_profile(map(), untag_instance_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_instance_profile_errors()}
  def untag_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagInstanceProfile", input, options)
  end

  @doc """
  Removes the specified tags from the IAM virtual multi-factor authentication
  (MFA)
  device.

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec untag_mfa_device(map(), untag_mfa_device_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_mfa_device_errors()}
  def untag_mfa_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagMFADevice", input, options)
  end

  @doc """
  Removes the specified tags from the specified OpenID Connect (OIDC)-compatible
  identity
  provider in IAM.

  For more information about OIDC providers, see [About web identity federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html).
  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec untag_open_id_connect_provider(map(), untag_open_id_connect_provider_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_open_id_connect_provider_errors()}
  def untag_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagOpenIDConnectProvider", input, options)
  end

  @doc """
  Removes the specified tags from the customer managed policy.

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec untag_policy(map(), untag_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_policy_errors()}
  def untag_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagPolicy", input, options)
  end

  @doc """
  Removes the specified tags from the role.

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec untag_role(map(), untag_role_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_role_errors()}
  def untag_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagRole", input, options)
  end

  @doc """
  Removes the specified tags from the specified Security Assertion Markup Language
  (SAML)
  identity provider in IAM.

  For more information about these providers, see [About web identity federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html).
  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec untag_saml_provider(map(), untag_saml_provider_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_saml_provider_errors()}
  def untag_saml_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagSAMLProvider", input, options)
  end

  @doc """
  Removes the specified tags from the IAM server certificate.

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

  For certificates in a Region supported by Certificate Manager (ACM), we
  recommend that you don't use IAM server certificates. Instead, use ACM to
  provision,
  manage, and deploy your server certificates. For more information about IAM
  server
  certificates, [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*.
  """
  @spec untag_server_certificate(map(), untag_server_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_server_certificate_errors()}
  def untag_server_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagServerCertificate", input, options)
  end

  @doc """
  Removes the specified tags from the user.

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  @spec untag_user(map(), untag_user_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_user_errors()}
  def untag_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagUser", input, options)
  end

  @doc """
  Changes the status of the specified access key from Active to Inactive, or vice
  versa.

  This operation can be used to disable a user's key as part of a key rotation
  workflow.

  If the `UserName` is not specified, the user name is determined implicitly
  based on the Amazon Web Services access key ID used to sign the request. If a
  temporary access key is
  used, then `UserName` is required. If a long-term key is assigned to the
  user, then `UserName` is not required. This operation works for access keys
  under the Amazon Web Services account. Consequently, you can use this operation
  to manage Amazon Web Services account root user
  credentials even if the Amazon Web Services account has no associated users.

  For information about rotating keys, see [Managing keys and certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html)
  in the *IAM User Guide*.
  """
  @spec update_access_key(map(), update_access_key_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_access_key_errors()}
  def update_access_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAccessKey", input, options)
  end

  @doc """
  Updates the password policy settings for the Amazon Web Services account.

  This operation does not support partial updates. No parameters are required, but
  if you do not specify a parameter, that parameter's value reverts to its default
  value. See the **Request Parameters** section for each
  parameter's default value. Also note that some parameters do not allow the
  default
  parameter to be explicitly set. Instead, to invoke the default value, do not
  include
  that parameter when you invoke the operation.

  For more information about using a password policy, see [Managing an IAM password
  policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html)
  in the *IAM User Guide*.
  """
  @spec update_account_password_policy(map(), update_account_password_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_account_password_policy_errors()}
  def update_account_password_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAccountPasswordPolicy", input, options)
  end

  @doc """
  Updates the policy that grants an IAM entity permission to assume a role.

  This is
  typically referred to as the "role trust policy". For more information about
  roles, see
  [Using roles to delegate permissions and federate
  identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).
  """
  @spec update_assume_role_policy(map(), update_assume_role_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_assume_role_policy_errors()}
  def update_assume_role_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAssumeRolePolicy", input, options)
  end

  @doc """
  Updates the name and/or the path of the specified IAM group.

  You should understand the implications of changing a group's path or name. For
  more information, see [Renaming users and groups](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html)
  in the *IAM User Guide*.

  The person making the request (the principal), must have permission to change
  the
  role group with the old name and the new name. For example, to change the group
  named `Managers` to `MGRs`, the principal must have a policy
  that allows them to update both groups. If the principal has permission to
  update
  the `Managers` group, but not the `MGRs` group, then the
  update fails. For more information about permissions, see [Access management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html).
  """
  @spec update_group(map(), update_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_group_errors()}
  def update_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGroup", input, options)
  end

  @doc """
  Changes the password for the specified IAM user.

  You can use the CLI, the Amazon Web Services
  API, or the **Users** page in the IAM console to change
  the password for any IAM user. Use `ChangePassword` to change your own
  password in the **My Security Credentials** page in the
  Amazon Web Services Management Console.

  For more information about modifying passwords, see [Managing passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html)
  in the
  *IAM User Guide*.
  """
  @spec update_login_profile(map(), update_login_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_login_profile_errors()}
  def update_login_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLoginProfile", input, options)
  end

  @doc """
  Replaces the existing list of server certificate thumbprints associated with an
  OpenID
  Connect (OIDC) provider resource object with a new list of thumbprints.

  The list that you pass with this operation completely replaces the existing list
  of
  thumbprints. (The lists are not merged.)

  Typically, you need to update a thumbprint only when the identity provider
  certificate
  changes, which occurs rarely. However, if the provider's certificate
  *does* change, any attempt to assume an IAM role that specifies
  the OIDC provider as a principal fails until the certificate thumbprint is
  updated.

  Amazon Web Services secures communication with OIDC identity providers (IdPs)
  using our library of
  trusted root certificate authorities (CAs) to verify the JSON Web Key Set (JWKS)
  endpoint's TLS certificate. If your OIDC IdP relies on a certificate that is not
  signed
  by one of these trusted CAs, only then we secure communication using the
  thumbprints set
  in the IdP's configuration.

  Trust for the OIDC provider is derived from the provider certificate and is
  validated by the thumbprint. Therefore, it is best to limit access to the
  `UpdateOpenIDConnectProviderThumbprint` operation to highly
  privileged users.
  """
  @spec update_open_id_connect_provider_thumbprint(
          map(),
          update_open_id_connect_provider_thumbprint_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_open_id_connect_provider_thumbprint_errors()}
  def update_open_id_connect_provider_thumbprint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateOpenIDConnectProviderThumbprint", input, options)
  end

  @doc """
  Updates the description or maximum session duration setting of a role.
  """
  @spec update_role(map(), update_role_request(), list()) ::
          {:ok, update_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_role_errors()}
  def update_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRole", input, options)
  end

  @doc """
  Use `UpdateRole` instead.

  Modifies only the description of a role. This operation performs the same
  function as
  the `Description` parameter in the `UpdateRole` operation.
  """
  @spec update_role_description(map(), update_role_description_request(), list()) ::
          {:ok, update_role_description_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_role_description_errors()}
  def update_role_description(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRoleDescription", input, options)
  end

  @doc """
  Updates the metadata document, SAML encryption settings, and private keys for an
  existing SAML provider.

  To rotate private keys, add your new private key and then remove
  the old key in a separate request.
  """
  @spec update_saml_provider(map(), update_saml_provider_request(), list()) ::
          {:ok, update_saml_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_saml_provider_errors()}
  def update_saml_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSAMLProvider", input, options)
  end

  @doc """
  Updates the name and/or the path of the specified server certificate stored in
  IAM.

  For more information about working with server certificates, see [Working with server
  certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*. This
  topic also includes a list of Amazon Web Services services that can use the
  server certificates that
  you manage with IAM.

  You should understand the implications of changing a server certificate's path
  or
  name. For more information, see [Renaming a server certificate](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts)
  in the
  *IAM User Guide*.

  The person making the request (the principal), must have permission to change
  the
  server certificate with the old name and the new name. For example, to change
  the
  certificate named `ProductionCert` to `ProdCert`, the
  principal must have a policy that allows them to update both certificates. If
  the
  principal has permission to update the `ProductionCert` group, but not
  the `ProdCert` certificate, then the update fails. For more information
  about permissions, see [Access management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html) in the
  *IAM User Guide*.
  """
  @spec update_server_certificate(map(), update_server_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_server_certificate_errors()}
  def update_server_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServerCertificate", input, options)
  end

  @doc """
  Sets the status of a service-specific credential to `Active` or
  `Inactive`.

  Service-specific credentials that are inactive cannot be used
  for authentication to the service. This operation can be used to disable a
  user's
  service-specific credential as part of a credential rotation work flow.
  """
  @spec update_service_specific_credential(
          map(),
          update_service_specific_credential_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_specific_credential_errors()}
  def update_service_specific_credential(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceSpecificCredential", input, options)
  end

  @doc """
  Changes the status of the specified user signing certificate from active to
  disabled,
  or vice versa.

  This operation can be used to disable an IAM user's signing
  certificate as part of a certificate rotation work flow.

  If the `UserName` field is not specified, the user name is determined
  implicitly based on the Amazon Web Services access key ID used to sign the
  request. This operation
  works for access keys under the Amazon Web Services account. Consequently, you
  can use this operation
  to manage Amazon Web Services account root user credentials even if the Amazon
  Web Services account has no associated
  users.
  """
  @spec update_signing_certificate(map(), update_signing_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_signing_certificate_errors()}
  def update_signing_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSigningCertificate", input, options)
  end

  @doc """
  Sets the status of an IAM user's SSH public key to active or inactive.

  SSH public
  keys that are inactive cannot be used for authentication. This operation can be
  used to
  disable a user's SSH public key as part of a key rotation work flow.

  The SSH public key affected by this operation is used only for authenticating
  the
  associated IAM user to an CodeCommit repository. For more information about
  using SSH keys
  to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH
  connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *CodeCommit User Guide*.
  """
  @spec update_ssh_public_key(map(), update_ssh_public_key_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ssh_public_key_errors()}
  def update_ssh_public_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSSHPublicKey", input, options)
  end

  @doc """
  Updates the name and/or the path of the specified IAM user.

  You should understand the implications of changing an IAM user's path or
  name. For more information, see [Renaming an IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming)
  and [Renaming an IAM group](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html)
  in the *IAM User Guide*.

  To change a user name, the requester must have appropriate permissions on both
  the source object and the target object. For example, to change Bob to Robert,
  the
  entity making the request must have permission on Bob and Robert, or must have
  permission on all (*). For more information about permissions, see [Permissions and
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html).
  """
  @spec update_user(map(), update_user_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUser", input, options)
  end

  @doc """
  Uploads a server certificate entity for the Amazon Web Services account.

  The server certificate
  entity includes a public key certificate, a private key, and an optional
  certificate
  chain, which should all be PEM-encoded.

  We recommend that you use [Certificate Manager](https://docs.aws.amazon.com/acm/) to
  provision, manage, and deploy your server certificates. With ACM you can request
  a
  certificate, deploy it to Amazon Web Services resources, and let ACM handle
  certificate renewals for
  you. Certificates provided by ACM are free. For more information about using
  ACM,
  see the [Certificate Manager User Guide](https://docs.aws.amazon.com/acm/latest/userguide/).

  For more information about working with server certificates, see [Working with server
  certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*. This
  topic includes a list of Amazon Web Services services that can use the server
  certificates that you
  manage with IAM.

  For information about the number of server certificates you can upload, see [IAM and STS
  quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.

  Because the body of the public key certificate, private key, and the certificate
  chain can be large, you should use POST rather than GET when calling
  `UploadServerCertificate`. For information about setting up
  signatures and authorization through the API, see [Signing Amazon Web Services API
  requests](https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html)
  in the *Amazon Web Services General Reference*. For general
  information about using the Query API with IAM, see [Calling the API by making HTTP query
  requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html) in
  the *IAM User Guide*.
  """
  @spec upload_server_certificate(map(), upload_server_certificate_request(), list()) ::
          {:ok, upload_server_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upload_server_certificate_errors()}
  def upload_server_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UploadServerCertificate", input, options)
  end

  @doc """
  Uploads an X.509 signing certificate and associates it with the specified IAM
  user.

  Some Amazon Web Services services require you to use certificates to validate
  requests that are signed
  with a corresponding private key. When you upload the certificate, its default
  status is
  `Active`.

  For information about when you would use an X.509 signing certificate, see
  [Managing server certificates in
  IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the
  *IAM User Guide*.

  If the `UserName` is not specified, the IAM user name is determined
  implicitly based on the Amazon Web Services access key ID used to sign the
  request. This operation
  works for access keys under the Amazon Web Services account. Consequently, you
  can use this operation
  to manage Amazon Web Services account root user credentials even if the Amazon
  Web Services account has no associated
  users.

  Because the body of an X.509 certificate can be large, you should use POST
  rather
  than GET when calling `UploadSigningCertificate`. For information about
  setting up signatures and authorization through the API, see [Signing Amazon Web Services API
  requests](https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html)
  in the *Amazon Web Services General Reference*. For
  general information about using the Query API with IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the *IAM User Guide*.
  """
  @spec upload_signing_certificate(map(), upload_signing_certificate_request(), list()) ::
          {:ok, upload_signing_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upload_signing_certificate_errors()}
  def upload_signing_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UploadSigningCertificate", input, options)
  end

  @doc """
  Uploads an SSH public key and associates it with the specified IAM user.

  The SSH public key uploaded by this operation can be used only for
  authenticating the
  associated IAM user to an CodeCommit repository. For more information about
  using SSH keys
  to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH
  connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *CodeCommit User Guide*.
  """
  @spec upload_ssh_public_key(map(), upload_ssh_public_key_request(), list()) ::
          {:ok, upload_ssh_public_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upload_ssh_public_key_errors()}
  def upload_ssh_public_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UploadSSHPublicKey", input, options)
  end
end
