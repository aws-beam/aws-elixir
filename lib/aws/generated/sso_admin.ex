# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSOAdmin do
  @moduledoc """
  IAM Identity Center is the Amazon Web Services solution for connecting your
  workforce users to Amazon Web Services managed
  applications and other Amazon Web Services resources.

  You can connect your existing identity provider
  and synchronize users and groups from your directory, or create and manage your
  users
  directly in IAM Identity Center. You can then use IAM Identity Center for either
  or both of the following:

    *
  User access to applications

    *
  User access to Amazon Web Services accounts

  This guide provides information about single sign-on operations that you can use
  for access to applications and
  Amazon Web Services accounts. For information about IAM Identity Center
  features, see the
  [IAM Identity Center User
  Guide](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html).

  IAM Identity Center uses the `sso` and `identitystore` API
  namespaces.

  Many API operations for IAM Identity Center rely on identifiers for users and
  groups, known as
  principals. For more information about how to work with principals and principal
  IDs in
  IAM Identity Center, see the [Identity Store API Reference](https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html).

  Amazon Web Services provides SDKs that consist of libraries and sample code for
  various
  programming languages and platforms (Java, Ruby, .Net, iOS, Android, and more).
  The
  SDKs provide a convenient way to create programmatic access to IAM Identity
  Center and other Amazon Web Services
  services. For more information about the Amazon Web Services SDKs, including how
  to download and
  install them, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_trusted_token_issuers_response() :: %{
        "NextToken" => String.t() | atom(),
        "TrustedTokenIssuers" => list(trusted_token_issuer_metadata())
      }
      
  """
  @type list_trusted_token_issuers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authentication_method_item() :: %{
        "AuthenticationMethod" => list(),
        "AuthenticationMethodType" => list(any())
      }
      
  """
  @type authentication_method_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_instance_access_control_attribute_configuration_response() :: %{}
      
  """
  @type create_instance_access_control_attribute_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      scope_details() :: %{
        "AuthorizedTargets" => list(String.t() | atom()),
        "Scope" => String.t() | atom()
      }
      
  """
  @type scope_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        optional("InstanceArn") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_metadata() :: %{
        "CreatedDate" => non_neg_integer(),
        "IdentityStoreId" => String.t() | atom(),
        "InstanceArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OwnerAccountId" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type instance_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_assignment() :: %{
        "ApplicationArn" => String.t() | atom(),
        "PrincipalId" => String.t() | atom(),
        "PrincipalType" => list(any())
      }
      
  """
  @type application_assignment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_accounts_for_provisioned_permission_set_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ProvisioningStatus") => list(any()),
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type list_accounts_for_provisioned_permission_set_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      list_application_assignments_filter() :: %{
        "ApplicationArn" => String.t() | atom()
      }
      
  """
  @type list_application_assignments_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_provider() :: %{
        "ApplicationProviderArn" => String.t() | atom(),
        "DisplayData" => display_data(),
        "FederationProtocol" => list(any()),
        "ResourceServerConfig" => resource_server_config()
      }
      
  """
  @type application_provider() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_authentication_methods_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("ApplicationArn") => String.t() | atom()
      }
      
  """
  @type list_application_authentication_methods_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_accounts_for_provisioned_permission_set_response() :: %{
        "AccountIds" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_accounts_for_provisioned_permission_set_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      account_assignment_operation_status_metadata() :: %{
        "CreatedDate" => non_neg_integer(),
        "RequestId" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type account_assignment_operation_status_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_application_assignments_for_principal_request() :: %{
        optional("Filter") => list_application_assignments_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom(),
        required("PrincipalId") => String.t() | atom(),
        required("PrincipalType") => list(any())
      }
      
  """
  @type list_application_assignments_for_principal_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_managed_policies_in_permission_set_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type list_managed_policies_in_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_assignment_deletion_status_response() :: %{
        "AccountAssignmentsDeletionStatus" => list(account_assignment_operation_status_metadata()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_account_assignment_deletion_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_assignment_for_principal() :: %{
        "AccountId" => String.t() | atom(),
        "PermissionSetArn" => String.t() | atom(),
        "PrincipalId" => String.t() | atom(),
        "PrincipalType" => list(any())
      }
      
  """
  @type account_assignment_for_principal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_inline_policy_for_permission_set_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type get_inline_policy_for_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_inline_policy_to_permission_set_request() :: %{
        required("InlinePolicy") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type put_inline_policy_to_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trusted_token_issuer_metadata() :: %{
        "Name" => String.t() | atom(),
        "TrustedTokenIssuerArn" => String.t() | atom(),
        "TrustedTokenIssuerType" => list(any())
      }
      
  """
  @type trusted_token_issuer_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_inline_policy_for_permission_set_response() :: %{
        "InlinePolicy" => String.t() | atom()
      }
      
  """
  @type get_inline_policy_for_permission_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iam_authentication_method() :: %{
        "ActorPolicy" => any()
      }
      
  """
  @type iam_authentication_method() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_permissions_boundary_to_permission_set_response() :: %{}
      
  """
  @type put_permissions_boundary_to_permission_set_response() :: %{}

  @typedoc """

  ## Example:
      
      detach_customer_managed_policy_reference_from_permission_set_response() :: %{}
      
  """
  @type detach_customer_managed_policy_reference_from_permission_set_response() :: %{}

  @typedoc """

  ## Example:
      
      list_application_access_scopes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ApplicationArn") => String.t() | atom()
      }
      
  """
  @type list_application_access_scopes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_permission_sets_provisioned_to_account_response() :: %{
        "NextToken" => String.t() | atom(),
        "PermissionSets" => list(String.t() | atom())
      }
      
  """
  @type list_permission_sets_provisioned_to_account_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      delete_application_authentication_method_request() :: %{
        required("ApplicationArn") => String.t() | atom(),
        required("AuthenticationMethodType") => list(any())
      }
      
  """
  @type delete_application_authentication_method_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_assignment_request() :: %{
        required("ApplicationArn") => String.t() | atom(),
        required("PrincipalId") => String.t() | atom(),
        required("PrincipalType") => list(any())
      }
      
  """
  @type delete_application_assignment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_application_grant_response() :: %{
        "Grant" => list()
      }
      
  """
  @type get_application_grant_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_assignments_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ApplicationArn") => String.t() | atom()
      }
      
  """
  @type list_application_assignments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_assignment_request() :: %{
        required("ApplicationArn") => String.t() | atom(),
        required("PrincipalId") => String.t() | atom(),
        required("PrincipalType") => list(any())
      }
      
  """
  @type describe_application_assignment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_application_assignment_configuration_request() :: %{
        required("ApplicationArn") => String.t() | atom(),
        required("AssignmentRequired") => boolean()
      }
      
  """
  @type put_application_assignment_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sign_in_options() :: %{
        "ApplicationUrl" => String.t() | atom(),
        "Origin" => list(any())
      }
      
  """
  @type sign_in_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_status_filter() :: %{
        "Status" => list(any())
      }
      
  """
  @type operation_status_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_instance_response() :: %{
        "InstanceArn" => String.t() | atom()
      }
      
  """
  @type create_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_application_authentication_method_response() :: %{
        "AuthenticationMethod" => list()
      }
      
  """
  @type get_application_authentication_method_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_trusted_token_issuers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type list_trusted_token_issuers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_access_scopes_response() :: %{
        "NextToken" => String.t() | atom(),
        "Scopes" => list(scope_details())
      }
      
  """
  @type list_application_access_scopes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_permission_set_provisioning_status_response() :: %{
        "NextToken" => String.t() | atom(),
        "PermissionSetsProvisioningStatus" => list(permission_set_provisioning_status_metadata())
      }
      
  """
  @type list_permission_set_provisioning_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        optional("InstanceArn") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_permission_set_provisioning_status_request() :: %{
        optional("Filter") => operation_status_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type list_permission_set_provisioning_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_trusted_token_issuer_request() :: %{
        optional("Name") => String.t() | atom(),
        optional("TrustedTokenIssuerConfiguration") => list(),
        required("TrustedTokenIssuerArn") => String.t() | atom()
      }
      
  """
  @type update_trusted_token_issuer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_provider_response() :: %{
        "ApplicationProviderArn" => String.t() | atom(),
        "DisplayData" => display_data(),
        "FederationProtocol" => list(any()),
        "ResourceServerConfig" => resource_server_config()
      }
      
  """
  @type describe_application_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_application_access_scope_response() :: %{
        "AuthorizedTargets" => list(String.t() | atom()),
        "Scope" => String.t() | atom()
      }
      
  """
  @type get_application_access_scope_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_grant_request() :: %{
        required("ApplicationArn") => String.t() | atom(),
        required("GrantType") => list(any())
      }
      
  """
  @type delete_application_grant_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      permission_set() :: %{
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PermissionSetArn" => String.t() | atom(),
        "RelayState" => String.t() | atom(),
        "SessionDuration" => String.t() | atom()
      }
      
  """
  @type permission_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_providers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_application_providers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_assignment_deletion_status_response() :: %{
        "AccountAssignmentDeletionStatus" => account_assignment_operation_status()
      }
      
  """
  @type describe_account_assignment_deletion_status_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      list_account_assignments_filter() :: %{
        "AccountId" => String.t() | atom()
      }
      
  """
  @type list_account_assignments_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_customer_managed_policy_references_in_permission_set_response() :: %{
        "CustomerManagedPolicyReferences" => list(customer_managed_policy_reference()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_customer_managed_policy_references_in_permission_set_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      list_application_grants_response() :: %{
        "Grants" => list(grant_item()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_application_grants_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_permission_set_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("RelayState") => String.t() | atom(),
        optional("SessionDuration") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("InstanceArn") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_application_assignment_configuration_response() :: %{}
      
  """
  @type put_application_assignment_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      list_managed_policies_in_permission_set_response() :: %{
        "AttachedManagedPolicies" => list(attached_managed_policy()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_managed_policies_in_permission_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_assignments_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("AccountId") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type list_account_assignments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_assignment_response() :: %{
        "ApplicationArn" => String.t() | atom(),
        "PrincipalId" => String.t() | atom(),
        "PrincipalType" => list(any())
      }
      
  """
  @type describe_application_assignment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_application_access_scope_request() :: %{
        required("ApplicationArn") => String.t() | atom(),
        required("Scope") => String.t() | atom()
      }
      
  """
  @type get_application_access_scope_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_application_portal_options() :: %{
        "SignInOptions" => sign_in_options()
      }
      
  """
  @type update_application_portal_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_assignment_response() :: %{}
      
  """
  @type delete_application_assignment_response() :: %{}

  @typedoc """

  ## Example:
      
      application_assignment_for_principal() :: %{
        "ApplicationArn" => String.t() | atom(),
        "PrincipalId" => String.t() | atom(),
        "PrincipalType" => list(any())
      }
      
  """
  @type application_assignment_for_principal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_permission_set_response() :: %{}
      
  """
  @type update_permission_set_response() :: %{}

  @typedoc """

  ## Example:
      
      access_control_attribute_value() :: %{
        "Source" => list(String.t() | atom())
      }
      
  """
  @type access_control_attribute_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_account_assignment_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom(),
        required("PrincipalId") => String.t() | atom(),
        required("PrincipalType") => list(any()),
        required("TargetId") => String.t() | atom(),
        required("TargetType") => list(any())
      }
      
  """
  @type delete_account_assignment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_application_authentication_method_request() :: %{
        required("ApplicationArn") => String.t() | atom(),
        required("AuthenticationMethodType") => list(any())
      }
      
  """
  @type get_application_authentication_method_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      provision_permission_set_response() :: %{
        "PermissionSetProvisioningStatus" => permission_set_provisioning_status()
      }
      
  """
  @type provision_permission_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      jwt_bearer_grant() :: %{
        "AuthorizedTokenIssuers" => list(authorized_token_issuer())
      }
      
  """
  @type jwt_bearer_grant() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_account_assignment_response() :: %{
        "AccountAssignmentCreationStatus" => account_assignment_operation_status()
      }
      
  """
  @type create_account_assignment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_application_grant_request() :: %{
        required("ApplicationArn") => String.t() | atom(),
        required("GrantType") => list(any())
      }
      
  """
  @type get_application_grant_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_instance_access_control_attribute_configuration_response() :: %{}
      
  """
  @type update_instance_access_control_attribute_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      detach_managed_policy_from_permission_set_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("ManagedPolicyArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type detach_managed_policy_from_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_instance_request() :: %{
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type describe_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authorization_code_grant() :: %{
        "RedirectUris" => list(String.t() | atom())
      }
      
  """
  @type authorization_code_grant() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      permissions_boundary() :: %{
        "CustomerManagedPolicyReference" => customer_managed_policy_reference(),
        "ManagedPolicyArn" => String.t() | atom()
      }
      
  """
  @type permissions_boundary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_inline_policy_to_permission_set_response() :: %{}
      
  """
  @type put_inline_policy_to_permission_set_response() :: %{}

  @typedoc """

  ## Example:
      
      provision_permission_set_request() :: %{
        optional("TargetId") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom(),
        required("TargetType") => list(any())
      }
      
  """
  @type provision_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_assignment_response() :: %{}
      
  """
  @type create_application_assignment_response() :: %{}

  @typedoc """

  ## Example:
      
      list_application_providers_response() :: %{
        "ApplicationProviders" => list(application_provider()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_application_providers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application() :: %{
        "ApplicationAccount" => String.t() | atom(),
        "ApplicationArn" => String.t() | atom(),
        "ApplicationProviderArn" => String.t() | atom(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "InstanceArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PortalOptions" => portal_options(),
        "Status" => list(any())
      }
      
  """
  @type application() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_instance_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type update_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_inline_policy_from_permission_set_response() :: %{}
      
  """
  @type delete_inline_policy_from_permission_set_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_instance_access_control_attribute_configuration_request() :: %{
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type delete_instance_access_control_attribute_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      oidc_jwt_configuration() :: %{
        "ClaimAttributePath" => String.t() | atom(),
        "IdentityStoreAttributePath" => String.t() | atom(),
        "IssuerUrl" => String.t() | atom(),
        "JwksRetrievalOption" => list(any())
      }
      
  """
  @type oidc_jwt_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trusted_token_issuer_response() :: %{
        "Name" => String.t() | atom(),
        "TrustedTokenIssuerArn" => String.t() | atom(),
        "TrustedTokenIssuerConfiguration" => list(),
        "TrustedTokenIssuerType" => list(any())
      }
      
  """
  @type describe_trusted_token_issuer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_trusted_token_issuer_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("InstanceArn") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("TrustedTokenIssuerConfiguration") => list(),
        required("TrustedTokenIssuerType") => list(any())
      }
      
  """
  @type create_trusted_token_issuer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_permission_set_provisioning_status_response() :: %{
        "PermissionSetProvisioningStatus" => permission_set_provisioning_status()
      }
      
  """
  @type describe_permission_set_provisioning_status_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      permission_set_provisioning_status() :: %{
        "AccountId" => String.t() | atom(),
        "CreatedDate" => non_neg_integer(),
        "FailureReason" => String.t() | atom(),
        "PermissionSetArn" => String.t() | atom(),
        "RequestId" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type permission_set_provisioning_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_assignment_creation_status_response() :: %{
        "AccountAssignmentsCreationStatus" => list(account_assignment_operation_status_metadata()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_account_assignment_creation_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attached_managed_policy() :: %{
        "Arn" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type attached_managed_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_customer_managed_policy_references_in_permission_set_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type list_customer_managed_policy_references_in_permission_set_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextToken" => String.t() | atom(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("PortalOptions") => portal_options(),
        optional("Status") => list(any()),
        optional("Tags") => list(tag()),
        required("ApplicationProviderArn") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      grant_item() :: %{
        "Grant" => list(),
        "GrantType" => list(any())
      }
      
  """
  @type grant_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_permission_set_response() :: %{
        "PermissionSet" => permission_set()
      }
      
  """
  @type describe_permission_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_assignment_operation_status() :: %{
        "CreatedDate" => non_neg_integer(),
        "FailureReason" => String.t() | atom(),
        "PermissionSetArn" => String.t() | atom(),
        "PrincipalId" => String.t() | atom(),
        "PrincipalType" => list(any()),
        "RequestId" => String.t() | atom(),
        "Status" => list(any()),
        "TargetId" => String.t() | atom(),
        "TargetType" => list(any())
      }
      
  """
  @type account_assignment_operation_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_assignment_request() :: %{
        required("ApplicationArn") => String.t() | atom(),
        required("PrincipalId") => String.t() | atom(),
        required("PrincipalType") => list(any())
      }
      
  """
  @type create_application_assignment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_assignments_for_principal_response() :: %{
        "AccountAssignments" => list(account_assignment_for_principal()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_account_assignments_for_principal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_permissions_boundary_to_permission_set_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom(),
        required("PermissionsBoundary") => permissions_boundary()
      }
      
  """
  @type put_permissions_boundary_to_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_permissions_boundary_from_permission_set_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type delete_permissions_boundary_from_permission_set_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      customer_managed_policy_reference() :: %{
        "Name" => String.t() | atom(),
        "Path" => String.t() | atom()
      }
      
  """
  @type customer_managed_policy_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_response() :: %{
        "ApplicationArn" => String.t() | atom()
      }
      
  """
  @type create_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_permission_set_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type describe_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_inline_policy_from_permission_set_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type delete_inline_policy_from_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_permission_set_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type delete_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_instances_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_assignment_creation_status_request() :: %{
        optional("Filter") => operation_status_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type list_account_assignment_creation_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_response() :: %{}
      
  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:
      
      update_permission_set_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("RelayState") => String.t() | atom(),
        optional("SessionDuration") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type update_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_permissions_boundary_for_permission_set_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type get_permissions_boundary_for_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_instance_access_control_attribute_configuration_request() :: %{
        required("InstanceAccessControlAttributeConfiguration") => instance_access_control_attribute_configuration(),
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type update_instance_access_control_attribute_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      list_instances_response() :: %{
        "Instances" => list(instance_metadata()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_instances_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_application_authentication_method_request() :: %{
        required("ApplicationArn") => String.t() | atom(),
        required("AuthenticationMethod") => list(),
        required("AuthenticationMethodType") => list(any())
      }
      
  """
  @type put_application_authentication_method_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_application_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("PortalOptions") => update_application_portal_options(),
        optional("Status") => list(any()),
        required("ApplicationArn") => String.t() | atom()
      }
      
  """
  @type update_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_application_response() :: %{}
      
  """
  @type update_application_response() :: %{}

  @typedoc """

  ## Example:
      
      portal_options() :: %{
        "SignInOptions" => sign_in_options(),
        "Visibility" => list(any())
      }
      
  """
  @type portal_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_assignments_for_principal_response() :: %{
        "ApplicationAssignments" => list(application_assignment_for_principal()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_application_assignments_for_principal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_permission_set_response() :: %{
        "PermissionSet" => permission_set()
      }
      
  """
  @type create_permission_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_request() :: %{
        required("ApplicationArn") => String.t() | atom()
      }
      
  """
  @type describe_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_instance_access_control_attribute_configuration_response() :: %{}
      
  """
  @type delete_instance_access_control_attribute_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      list_application_grants_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("ApplicationArn") => String.t() | atom()
      }
      
  """
  @type list_application_grants_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_assignments_response() :: %{
        "AccountAssignments" => list(account_assignment()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_account_assignments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_assignment_creation_status_request() :: %{
        required("AccountAssignmentCreationRequestId") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type describe_account_assignment_creation_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_applications_request() :: %{
        optional("Filter") => list_applications_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type list_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_assignments_response() :: %{
        "ApplicationAssignments" => list(application_assignment()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_application_assignments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_access_scope_request() :: %{
        required("ApplicationArn") => String.t() | atom(),
        required("Scope") => String.t() | atom()
      }
      
  """
  @type delete_application_access_scope_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_assignment() :: %{
        "AccountId" => String.t() | atom(),
        "PermissionSetArn" => String.t() | atom(),
        "PrincipalId" => String.t() | atom(),
        "PrincipalType" => list(any())
      }
      
  """
  @type account_assignment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_instance_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Tags") => list(tag())
      }
      
  """
  @type create_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_instance_response() :: %{
        "CreatedDate" => non_neg_integer(),
        "IdentityStoreId" => String.t() | atom(),
        "InstanceArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OwnerAccountId" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type describe_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_trusted_token_issuer_request() :: %{
        required("TrustedTokenIssuerArn") => String.t() | atom()
      }
      
  """
  @type delete_trusted_token_issuer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_assignments_for_principal_request() :: %{
        optional("Filter") => list_account_assignments_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom(),
        required("PrincipalId") => String.t() | atom(),
        required("PrincipalType") => list(any())
      }
      
  """
  @type list_account_assignments_for_principal_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_permissions_boundary_for_permission_set_response() :: %{
        "PermissionsBoundary" => permissions_boundary()
      }
      
  """
  @type get_permissions_boundary_for_permission_set_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      delete_account_assignment_response() :: %{
        "AccountAssignmentDeletionStatus" => account_assignment_operation_status()
      }
      
  """
  @type delete_account_assignment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      access_control_attribute() :: %{
        "Key" => String.t() | atom(),
        "Value" => access_control_attribute_value()
      }
      
  """
  @type access_control_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_application_assignment_configuration_request() :: %{
        required("ApplicationArn") => String.t() | atom()
      }
      
  """
  @type get_application_assignment_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      token_exchange_grant() :: %{}
      
  """
  @type token_exchange_grant() :: %{}

  @typedoc """

  ## Example:
      
      delete_instance_response() :: %{}
      
  """
  @type delete_instance_response() :: %{}

  @typedoc """

  ## Example:
      
      instance_access_control_attribute_configuration() :: %{
        "AccessControlAttributes" => list(access_control_attribute())
      }
      
  """
  @type instance_access_control_attribute_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_applications_filter() :: %{
        "ApplicationAccount" => String.t() | atom(),
        "ApplicationProvider" => String.t() | atom()
      }
      
  """
  @type list_applications_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_permissions_boundary_from_permission_set_response() :: %{}
      
  """
  @type delete_permissions_boundary_from_permission_set_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("InstanceArn") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      display_data() :: %{
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "IconUrl" => String.t() | atom()
      }
      
  """
  @type display_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_authentication_methods_response() :: %{
        "AuthenticationMethods" => list(authentication_method_item()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_application_authentication_methods_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      oidc_jwt_update_configuration() :: %{
        "ClaimAttributePath" => String.t() | atom(),
        "IdentityStoreAttributePath" => String.t() | atom(),
        "JwksRetrievalOption" => list(any())
      }
      
  """
  @type oidc_jwt_update_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_permission_set_response() :: %{}
      
  """
  @type delete_permission_set_response() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_instance_request() :: %{
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type delete_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_assignment_creation_status_response() :: %{
        "AccountAssignmentCreationStatus" => account_assignment_operation_status()
      }
      
  """
  @type describe_account_assignment_creation_status_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      list_account_assignment_deletion_status_request() :: %{
        optional("Filter") => operation_status_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type list_account_assignment_deletion_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_instance_access_control_attribute_configuration_request() :: %{
        required("InstanceAccessControlAttributeConfiguration") => instance_access_control_attribute_configuration(),
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type create_instance_access_control_attribute_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      detach_customer_managed_policy_reference_from_permission_set_request() :: %{
        required("CustomerManagedPolicyReference") => customer_managed_policy_reference(),
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type detach_customer_managed_policy_reference_from_permission_set_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      list_applications_response() :: %{
        "Applications" => list(application()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_applications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_assignment_deletion_status_request() :: %{
        required("AccountAssignmentDeletionRequestId") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type describe_account_assignment_deletion_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_managed_policy_to_permission_set_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("ManagedPolicyArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type attach_managed_policy_to_permission_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      permission_set_provisioning_status_metadata() :: %{
        "CreatedDate" => non_neg_integer(),
        "RequestId" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type permission_set_provisioning_status_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_customer_managed_policy_reference_to_permission_set_request() :: %{
        required("CustomerManagedPolicyReference") => customer_managed_policy_reference(),
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom()
      }
      
  """
  @type attach_customer_managed_policy_reference_to_permission_set_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      describe_trusted_token_issuer_request() :: %{
        required("TrustedTokenIssuerArn") => String.t() | atom()
      }
      
  """
  @type describe_trusted_token_issuer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_application_grant_request() :: %{
        required("ApplicationArn") => String.t() | atom(),
        required("Grant") => list(),
        required("GrantType") => list(any())
      }
      
  """
  @type put_application_grant_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_instance_access_control_attribute_configuration_response() :: %{
        "InstanceAccessControlAttributeConfiguration" => instance_access_control_attribute_configuration(),
        "Status" => list(any()),
        "StatusReason" => String.t() | atom()
      }
      
  """
  @type describe_instance_access_control_attribute_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      list_permission_sets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type list_permission_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      refresh_token_grant() :: %{}
      
  """
  @type refresh_token_grant() :: %{}

  @typedoc """

  ## Example:
      
      describe_permission_set_provisioning_status_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("ProvisionPermissionSetRequestId") => String.t() | atom()
      }
      
  """
  @type describe_permission_set_provisioning_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_trusted_token_issuer_response() :: %{}
      
  """
  @type update_trusted_token_issuer_response() :: %{}

  @typedoc """

  ## Example:
      
      create_trusted_token_issuer_response() :: %{
        "TrustedTokenIssuerArn" => String.t() | atom()
      }
      
  """
  @type create_trusted_token_issuer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_instance_response() :: %{}
      
  """
  @type update_instance_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_trusted_token_issuer_response() :: %{}
      
  """
  @type delete_trusted_token_issuer_response() :: %{}

  @typedoc """

  ## Example:
      
      put_application_access_scope_request() :: %{
        optional("AuthorizedTargets") => list(String.t() | atom()),
        required("ApplicationArn") => String.t() | atom(),
        required("Scope") => String.t() | atom()
      }
      
  """
  @type put_application_access_scope_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_permission_sets_provisioned_to_account_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ProvisioningStatus") => list(any()),
        required("AccountId") => String.t() | atom(),
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type list_permission_sets_provisioned_to_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_server_config() :: %{
        "Scopes" => map()
      }
      
  """
  @type resource_server_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_provider_request() :: %{
        required("ApplicationProviderArn") => String.t() | atom()
      }
      
  """
  @type describe_application_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_customer_managed_policy_reference_to_permission_set_response() :: %{}
      
  """
  @type attach_customer_managed_policy_reference_to_permission_set_response() :: %{}

  @typedoc """

  ## Example:
      
      get_application_assignment_configuration_response() :: %{
        "AssignmentRequired" => boolean()
      }
      
  """
  @type get_application_assignment_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authorized_token_issuer() :: %{
        "AuthorizedAudiences" => list(String.t() | atom()),
        "TrustedTokenIssuerArn" => String.t() | atom()
      }
      
  """
  @type authorized_token_issuer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_instance_access_control_attribute_configuration_request() :: %{
        required("InstanceArn") => String.t() | atom()
      }
      
  """
  @type describe_instance_access_control_attribute_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      create_account_assignment_request() :: %{
        required("InstanceArn") => String.t() | atom(),
        required("PermissionSetArn") => String.t() | atom(),
        required("PrincipalId") => String.t() | atom(),
        required("PrincipalType") => list(any()),
        required("TargetId") => String.t() | atom(),
        required("TargetType") => list(any())
      }
      
  """
  @type create_account_assignment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_permission_sets_response() :: %{
        "NextToken" => String.t() | atom(),
        "PermissionSets" => list(String.t() | atom())
      }
      
  """
  @type list_permission_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_response() :: %{
        "ApplicationAccount" => String.t() | atom(),
        "ApplicationArn" => String.t() | atom(),
        "ApplicationProviderArn" => String.t() | atom(),
        "CreatedDate" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "InstanceArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PortalOptions" => portal_options(),
        "Status" => list(any())
      }
      
  """
  @type describe_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_server_scope_details() :: %{
        "DetailedTitle" => String.t() | atom(),
        "LongDescription" => String.t() | atom()
      }
      
  """
  @type resource_server_scope_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_request() :: %{
        required("ApplicationArn") => String.t() | atom()
      }
      
  """
  @type delete_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attach_managed_policy_to_permission_set_response() :: %{}
      
  """
  @type attach_managed_policy_to_permission_set_response() :: %{}

  @typedoc """

  ## Example:
      
      detach_managed_policy_from_permission_set_response() :: %{}
      
  """
  @type detach_managed_policy_from_permission_set_response() :: %{}

  @type attach_customer_managed_policy_reference_to_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type attach_managed_policy_to_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_account_assignment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_application_assignment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_instance_access_control_attribute_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_trusted_token_issuer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_account_assignment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_application_access_scope_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_application_assignment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_application_authentication_method_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_application_grant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_inline_policy_from_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_instance_access_control_attribute_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_permissions_boundary_from_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_trusted_token_issuer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_account_assignment_creation_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_account_assignment_deletion_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_application_assignment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_application_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type describe_instance_access_control_attribute_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_permission_set_provisioning_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_trusted_token_issuer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type detach_customer_managed_policy_reference_from_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type detach_managed_policy_from_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_application_access_scope_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_application_assignment_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_application_authentication_method_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_application_grant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_inline_policy_for_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_permissions_boundary_for_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_account_assignment_creation_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_account_assignment_deletion_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_account_assignments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_account_assignments_for_principal_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_accounts_for_provisioned_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_application_access_scopes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_application_assignments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_application_assignments_for_principal_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_application_authentication_methods_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_application_grants_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_application_providers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_applications_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_customer_managed_policy_references_in_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_managed_policies_in_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_permission_set_provisioning_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_permission_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_permission_sets_provisioned_to_account_errors() ::
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

  @type list_trusted_token_issuers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type provision_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_application_access_scope_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_application_assignment_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_application_authentication_method_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_application_grant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_inline_policy_to_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_permissions_boundary_to_permission_set_errors() ::
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
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type update_instance_access_control_attribute_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_permission_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_trusted_token_issuer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-07-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "sso",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "SSO Admin",
      signature_version: "v4",
      signing_name: "sso",
      target_prefix: "SWBExternalService"
    }
  end

  @doc """
  Attaches the specified customer managed policy to the specified `PermissionSet`.
  """
  @spec attach_customer_managed_policy_reference_to_permission_set(
          map(),
          attach_customer_managed_policy_reference_to_permission_set_request(),
          list()
        ) ::
          {:ok, attach_customer_managed_policy_reference_to_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_customer_managed_policy_reference_to_permission_set_errors()}
  def attach_customer_managed_policy_reference_to_permission_set(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "AttachCustomerManagedPolicyReferenceToPermissionSet",
      input,
      options
    )
  end

  @doc """
  Attaches an Amazon Web Services managed policy ARN to a permission set.

  If the permission set is already referenced by one or more account assignments,
  you will need to call

  ```

  `ProvisionPermissionSet`

  ```

  after
  this operation. Calling `ProvisionPermissionSet` applies the
  corresponding IAM policy updates to all assigned accounts.
  """
  @spec attach_managed_policy_to_permission_set(
          map(),
          attach_managed_policy_to_permission_set_request(),
          list()
        ) ::
          {:ok, attach_managed_policy_to_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_managed_policy_to_permission_set_errors()}
  def attach_managed_policy_to_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AttachManagedPolicyToPermissionSet", input, options)
  end

  @doc """
  Assigns access to a principal for a specified Amazon Web Services account using
  a specified
  permission set.

  The term *principal* here refers to a user or group that is
  defined in IAM Identity Center.

  As part of a successful `CreateAccountAssignment` call, the specified
  permission set will automatically be provisioned to the account in the form of
  an
  IAM policy. That policy is attached to the IAM role created in IAM Identity
  Center. If the
  permission set is subsequently updated, the corresponding IAM policies attached
  to
  roles in your accounts will not be updated automatically. In this case, you must
  call

  ```

  `ProvisionPermissionSet`

  ```

  to make these
  updates.

  After a successful response, call
  `DescribeAccountAssignmentCreationStatus` to describe the status of
  an assignment creation request.
  """
  @spec create_account_assignment(map(), create_account_assignment_request(), list()) ::
          {:ok, create_account_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_account_assignment_errors()}
  def create_account_assignment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAccountAssignment", input, options)
  end

  @doc """
  Creates an OAuth 2.0 customer managed application in IAM Identity Center for the
  given
  application provider.

  This API does not support creating SAML 2.0 customer managed applications or
  Amazon Web Services
  managed applications. To learn how to create an Amazon Web Services managed
  application, see the
  application user guide. You can create a SAML 2.0 customer managed application
  in
  the Amazon Web Services Management Console only. See [Setting up customer managed SAML 2.0
  applications](https://docs.aws.amazon.com/singlesignon/latest/userguide/customermanagedapps-saml2-setup.html).
  For more information on these
  application types, see [Amazon Web Services managed applications](https://docs.aws.amazon.com/singlesignon/latest/userguide/awsapps.html).
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """
  Grant application access to a user or group.
  """
  @spec create_application_assignment(map(), create_application_assignment_request(), list()) ::
          {:ok, create_application_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_assignment_errors()}
  def create_application_assignment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateApplicationAssignment", input, options)
  end

  @doc """
  Creates an instance of IAM Identity Center for a standalone Amazon Web Services
  account that is not
  managed by Organizations or a member Amazon Web Services account in an
  organization.

  You can create only
  one instance per account and across all Amazon Web Services Regions.

  The CreateInstance request is rejected if the following apply:

    *
  The instance is created within the organization management account.

    *
  An instance already exists in the same account.
  """
  @spec create_instance(map(), create_instance_request(), list()) ::
          {:ok, create_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_instance_errors()}
  def create_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateInstance", input, options)
  end

  @doc """
  Enables the attributes-based access control (ABAC) feature for the specified IAM
  Identity Center
  instance.

  You can also specify new attributes to add to your ABAC configuration during
  the enabling process. For more information about ABAC, see [Attribute-Based Access Control](/singlesignon/latest/userguide/abac.html) in the *IAM Identity
  Center User Guide*.

  After a successful response, call
  `DescribeInstanceAccessControlAttributeConfiguration` to validate
  that `InstanceAccessControlAttributeConfiguration` was created.
  """
  @spec create_instance_access_control_attribute_configuration(
          map(),
          create_instance_access_control_attribute_configuration_request(),
          list()
        ) ::
          {:ok, create_instance_access_control_attribute_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_instance_access_control_attribute_configuration_errors()}
  def create_instance_access_control_attribute_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "CreateInstanceAccessControlAttributeConfiguration",
      input,
      options
    )
  end

  @doc """
  Creates a permission set within a specified IAM Identity Center instance.

  To grant users and groups access to Amazon Web Services account resources, use

  ```

  `CreateAccountAssignment`

  ```

  .
  """
  @spec create_permission_set(map(), create_permission_set_request(), list()) ::
          {:ok, create_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_permission_set_errors()}
  def create_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePermissionSet", input, options)
  end

  @doc """
  Creates a connection to a trusted token issuer in an instance of IAM Identity
  Center.

  A trusted token issuer enables trusted
  identity propagation to be used with applications that authenticate outside of
  Amazon Web Services.

  This trusted token issuer describes an external identity provider (IdP) that can
  generate claims or
  assertions in the form of access tokens for a user. Applications enabled for IAM
  Identity Center
  can use these tokens for authentication.
  """
  @spec create_trusted_token_issuer(map(), create_trusted_token_issuer_request(), list()) ::
          {:ok, create_trusted_token_issuer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_trusted_token_issuer_errors()}
  def create_trusted_token_issuer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTrustedTokenIssuer", input, options)
  end

  @doc """
  Deletes a principal's access from a specified Amazon Web Services account using
  a specified
  permission set.

  After a successful response, call
  `DescribeAccountAssignmentDeletionStatus` to describe the status of
  an assignment deletion request.
  """
  @spec delete_account_assignment(map(), delete_account_assignment_request(), list()) ::
          {:ok, delete_account_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_account_assignment_errors()}
  def delete_account_assignment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAccountAssignment", input, options)
  end

  @doc """
  Deletes the association with the application.

  The connected service resource still
  exists.
  """
  @spec delete_application(map(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplication", input, options)
  end

  @doc """
  Deletes an IAM Identity Center access scope from an application.
  """
  @spec delete_application_access_scope(map(), delete_application_access_scope_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_access_scope_errors()}
  def delete_application_access_scope(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplicationAccessScope", input, options)
  end

  @doc """
  Revoke application access to an application by deleting application assignments
  for a
  user or group.
  """
  @spec delete_application_assignment(map(), delete_application_assignment_request(), list()) ::
          {:ok, delete_application_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_assignment_errors()}
  def delete_application_assignment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplicationAssignment", input, options)
  end

  @doc """
  Deletes an authentication method from an application.
  """
  @spec delete_application_authentication_method(
          map(),
          delete_application_authentication_method_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_authentication_method_errors()}
  def delete_application_authentication_method(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplicationAuthenticationMethod", input, options)
  end

  @doc """
  Deletes a grant from an application.
  """
  @spec delete_application_grant(map(), delete_application_grant_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_grant_errors()}
  def delete_application_grant(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplicationGrant", input, options)
  end

  @doc """
  Deletes the inline policy from a specified permission set.
  """
  @spec delete_inline_policy_from_permission_set(
          map(),
          delete_inline_policy_from_permission_set_request(),
          list()
        ) ::
          {:ok, delete_inline_policy_from_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_inline_policy_from_permission_set_errors()}
  def delete_inline_policy_from_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteInlinePolicyFromPermissionSet", input, options)
  end

  @doc """
  Deletes the instance of IAM Identity Center.

  Only the account that owns the instance can
  call this API. Neither the delegated administrator nor member account can delete
  the
  organization instance, but those roles can delete their own instance.
  """
  @spec delete_instance(map(), delete_instance_request(), list()) ::
          {:ok, delete_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_instance_errors()}
  def delete_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteInstance", input, options)
  end

  @doc """
  Disables the attributes-based access control (ABAC) feature for the specified
  IAM Identity Center
  instance and deletes all of the attribute mappings that have been configured.

  Once
  deleted, any attributes that are received from an identity source and any custom
  attributes you have previously configured will not be passed. For more
  information about ABAC, see [Attribute-Based Access Control](/singlesignon/latest/userguide/abac.html) in the *IAM Identity Center
  User Guide*.
  """
  @spec delete_instance_access_control_attribute_configuration(
          map(),
          delete_instance_access_control_attribute_configuration_request(),
          list()
        ) ::
          {:ok, delete_instance_access_control_attribute_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_instance_access_control_attribute_configuration_errors()}
  def delete_instance_access_control_attribute_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DeleteInstanceAccessControlAttributeConfiguration",
      input,
      options
    )
  end

  @doc """
  Deletes the specified permission set.
  """
  @spec delete_permission_set(map(), delete_permission_set_request(), list()) ::
          {:ok, delete_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_permission_set_errors()}
  def delete_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePermissionSet", input, options)
  end

  @doc """
  Deletes the permissions boundary from a specified `PermissionSet`.
  """
  @spec delete_permissions_boundary_from_permission_set(
          map(),
          delete_permissions_boundary_from_permission_set_request(),
          list()
        ) ::
          {:ok, delete_permissions_boundary_from_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_permissions_boundary_from_permission_set_errors()}
  def delete_permissions_boundary_from_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DeletePermissionsBoundaryFromPermissionSet",
      input,
      options
    )
  end

  @doc """
  Deletes a trusted token issuer configuration from an instance of IAM Identity
  Center.

  Deleting this trusted token issuer configuration will cause users to lose access
  to any
  applications that are configured to use the trusted token issuer.
  """
  @spec delete_trusted_token_issuer(map(), delete_trusted_token_issuer_request(), list()) ::
          {:ok, delete_trusted_token_issuer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_trusted_token_issuer_errors()}
  def delete_trusted_token_issuer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTrustedTokenIssuer", input, options)
  end

  @doc """
  Describes the status of the assignment creation request.
  """
  @spec describe_account_assignment_creation_status(
          map(),
          describe_account_assignment_creation_status_request(),
          list()
        ) ::
          {:ok, describe_account_assignment_creation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_account_assignment_creation_status_errors()}
  def describe_account_assignment_creation_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAccountAssignmentCreationStatus", input, options)
  end

  @doc """
  Describes the status of the assignment deletion request.
  """
  @spec describe_account_assignment_deletion_status(
          map(),
          describe_account_assignment_deletion_status_request(),
          list()
        ) ::
          {:ok, describe_account_assignment_deletion_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_account_assignment_deletion_status_errors()}
  def describe_account_assignment_deletion_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAccountAssignmentDeletionStatus", input, options)
  end

  @doc """
  Retrieves the details of an application associated with an instance of IAM
  Identity Center.
  """
  @spec describe_application(map(), describe_application_request(), list()) ::
          {:ok, describe_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_errors()}
  def describe_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplication", input, options)
  end

  @doc """
  Retrieves a direct assignment of a user or group to an application.

  If the user
  doesn’t have a direct assignment to the application, the user may still have
  access to
  the application through a group. Therefore, don’t use this API to test access to
  an
  application for a user. Instead use `ListApplicationAssignmentsForPrincipal`.
  """
  @spec describe_application_assignment(map(), describe_application_assignment_request(), list()) ::
          {:ok, describe_application_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_assignment_errors()}
  def describe_application_assignment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplicationAssignment", input, options)
  end

  @doc """
  Retrieves details about a provider that can be used to connect an Amazon Web
  Services managed
  application or customer managed application to IAM Identity Center.
  """
  @spec describe_application_provider(map(), describe_application_provider_request(), list()) ::
          {:ok, describe_application_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_provider_errors()}
  def describe_application_provider(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplicationProvider", input, options)
  end

  @doc """
  Returns the details of an instance of IAM Identity Center.

  The status can be one of the
  following:

    *

  `CREATE_IN_PROGRESS` - The instance is in the process of being
  created. When the instance is ready for use, DescribeInstance returns the status
  of `ACTIVE`. While the instance is in the
  `CREATE_IN_PROGRESS` state, you can call only DescribeInstance
  and DeleteInstance operations.

    *

  `DELETE_IN_PROGRESS` - The instance is being deleted. Returns
  `AccessDeniedException` after the delete operation completes.

    *

  `ACTIVE` - The instance is active.
  """
  @spec describe_instance(map(), describe_instance_request(), list()) ::
          {:ok, describe_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_instance_errors()}
  def describe_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeInstance", input, options)
  end

  @doc """
  Returns the list of IAM Identity Center identity store attributes that have been
  configured to work
  with attributes-based access control (ABAC) for the specified IAM Identity
  Center instance.

  This will
  not return attributes configured and sent by an external identity provider.
  For more information about ABAC, see [Attribute-Based Access Control](/singlesignon/latest/userguide/abac.html) in the *IAM Identity Center
  User Guide*.
  """
  @spec describe_instance_access_control_attribute_configuration(
          map(),
          describe_instance_access_control_attribute_configuration_request(),
          list()
        ) ::
          {:ok, describe_instance_access_control_attribute_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_instance_access_control_attribute_configuration_errors()}
  def describe_instance_access_control_attribute_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DescribeInstanceAccessControlAttributeConfiguration",
      input,
      options
    )
  end

  @doc """
  Gets the details of the permission set.
  """
  @spec describe_permission_set(map(), describe_permission_set_request(), list()) ::
          {:ok, describe_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_permission_set_errors()}
  def describe_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePermissionSet", input, options)
  end

  @doc """
  Describes the status for the given permission set provisioning request.
  """
  @spec describe_permission_set_provisioning_status(
          map(),
          describe_permission_set_provisioning_status_request(),
          list()
        ) ::
          {:ok, describe_permission_set_provisioning_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_permission_set_provisioning_status_errors()}
  def describe_permission_set_provisioning_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePermissionSetProvisioningStatus", input, options)
  end

  @doc """
  Retrieves details about a trusted token issuer configuration stored in an
  instance of IAM Identity Center.

  Details
  include the name of the trusted token issuer, the issuer URL, and the path of
  the source attribute and
  the destination attribute for a trusted token issuer configuration.
  """
  @spec describe_trusted_token_issuer(map(), describe_trusted_token_issuer_request(), list()) ::
          {:ok, describe_trusted_token_issuer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_trusted_token_issuer_errors()}
  def describe_trusted_token_issuer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTrustedTokenIssuer", input, options)
  end

  @doc """
  Detaches the specified customer managed policy from the specified
  `PermissionSet`.
  """
  @spec detach_customer_managed_policy_reference_from_permission_set(
          map(),
          detach_customer_managed_policy_reference_from_permission_set_request(),
          list()
        ) ::
          {:ok, detach_customer_managed_policy_reference_from_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_customer_managed_policy_reference_from_permission_set_errors()}
  def detach_customer_managed_policy_reference_from_permission_set(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DetachCustomerManagedPolicyReferenceFromPermissionSet",
      input,
      options
    )
  end

  @doc """
  Detaches the attached Amazon Web Services managed policy ARN from the specified
  permission
  set.
  """
  @spec detach_managed_policy_from_permission_set(
          map(),
          detach_managed_policy_from_permission_set_request(),
          list()
        ) ::
          {:ok, detach_managed_policy_from_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_managed_policy_from_permission_set_errors()}
  def detach_managed_policy_from_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetachManagedPolicyFromPermissionSet", input, options)
  end

  @doc """
  Retrieves the authorized targets for an IAM Identity Center access scope for an
  application.
  """
  @spec get_application_access_scope(map(), get_application_access_scope_request(), list()) ::
          {:ok, get_application_access_scope_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_access_scope_errors()}
  def get_application_access_scope(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetApplicationAccessScope", input, options)
  end

  @doc """
  Retrieves the configuration of `PutApplicationAssignmentConfiguration`.
  """
  @spec get_application_assignment_configuration(
          map(),
          get_application_assignment_configuration_request(),
          list()
        ) ::
          {:ok, get_application_assignment_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_assignment_configuration_errors()}
  def get_application_assignment_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetApplicationAssignmentConfiguration", input, options)
  end

  @doc """
  Retrieves details about an authentication method used by an application.
  """
  @spec get_application_authentication_method(
          map(),
          get_application_authentication_method_request(),
          list()
        ) ::
          {:ok, get_application_authentication_method_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_authentication_method_errors()}
  def get_application_authentication_method(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetApplicationAuthenticationMethod", input, options)
  end

  @doc """
  Retrieves details about an application grant.
  """
  @spec get_application_grant(map(), get_application_grant_request(), list()) ::
          {:ok, get_application_grant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_grant_errors()}
  def get_application_grant(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetApplicationGrant", input, options)
  end

  @doc """
  Obtains the inline policy assigned to the permission set.
  """
  @spec get_inline_policy_for_permission_set(
          map(),
          get_inline_policy_for_permission_set_request(),
          list()
        ) ::
          {:ok, get_inline_policy_for_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_inline_policy_for_permission_set_errors()}
  def get_inline_policy_for_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetInlinePolicyForPermissionSet", input, options)
  end

  @doc """
  Obtains the permissions boundary for a specified `PermissionSet`.
  """
  @spec get_permissions_boundary_for_permission_set(
          map(),
          get_permissions_boundary_for_permission_set_request(),
          list()
        ) ::
          {:ok, get_permissions_boundary_for_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_permissions_boundary_for_permission_set_errors()}
  def get_permissions_boundary_for_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPermissionsBoundaryForPermissionSet", input, options)
  end

  @doc """
  Lists the status of the Amazon Web Services account assignment creation requests
  for a specified
  IAM Identity Center instance.
  """
  @spec list_account_assignment_creation_status(
          map(),
          list_account_assignment_creation_status_request(),
          list()
        ) ::
          {:ok, list_account_assignment_creation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_assignment_creation_status_errors()}
  def list_account_assignment_creation_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccountAssignmentCreationStatus", input, options)
  end

  @doc """
  Lists the status of the Amazon Web Services account assignment deletion requests
  for a specified
  IAM Identity Center instance.
  """
  @spec list_account_assignment_deletion_status(
          map(),
          list_account_assignment_deletion_status_request(),
          list()
        ) ::
          {:ok, list_account_assignment_deletion_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_assignment_deletion_status_errors()}
  def list_account_assignment_deletion_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccountAssignmentDeletionStatus", input, options)
  end

  @doc """
  Lists the assignee of the specified Amazon Web Services account with the
  specified permission
  set.
  """
  @spec list_account_assignments(map(), list_account_assignments_request(), list()) ::
          {:ok, list_account_assignments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_assignments_errors()}
  def list_account_assignments(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccountAssignments", input, options)
  end

  @doc """
  Retrieves a list of the IAM Identity Center associated Amazon Web Services
  accounts that the principal has access
  to.

  This action must be called from the management account containing your
  organization
  instance of IAM Identity Center. This action is not valid for account instances
  of IAM Identity Center.
  """
  @spec list_account_assignments_for_principal(
          map(),
          list_account_assignments_for_principal_request(),
          list()
        ) ::
          {:ok, list_account_assignments_for_principal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_assignments_for_principal_errors()}
  def list_account_assignments_for_principal(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccountAssignmentsForPrincipal", input, options)
  end

  @doc """
  Lists all the Amazon Web Services accounts where the specified permission set is
  provisioned.
  """
  @spec list_accounts_for_provisioned_permission_set(
          map(),
          list_accounts_for_provisioned_permission_set_request(),
          list()
        ) ::
          {:ok, list_accounts_for_provisioned_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_accounts_for_provisioned_permission_set_errors()}
  def list_accounts_for_provisioned_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccountsForProvisionedPermissionSet", input, options)
  end

  @doc """
  Lists the access scopes and authorized targets associated with an application.
  """
  @spec list_application_access_scopes(map(), list_application_access_scopes_request(), list()) ::
          {:ok, list_application_access_scopes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_access_scopes_errors()}
  def list_application_access_scopes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplicationAccessScopes", input, options)
  end

  @doc """
  Lists Amazon Web Services account users that are assigned to an application.
  """
  @spec list_application_assignments(map(), list_application_assignments_request(), list()) ::
          {:ok, list_application_assignments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_assignments_errors()}
  def list_application_assignments(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplicationAssignments", input, options)
  end

  @doc """
  Lists the applications to which a specified principal is assigned.

  You must provide a
  filter when calling this action from a member account against your organization
  instance
  of IAM Identity Center. A filter is not required when called from the management
  account against an
  organization instance of IAM Identity Center, or from a member account against
  an account instance of
  IAM Identity Center in the same account.
  """
  @spec list_application_assignments_for_principal(
          map(),
          list_application_assignments_for_principal_request(),
          list()
        ) ::
          {:ok, list_application_assignments_for_principal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_assignments_for_principal_errors()}
  def list_application_assignments_for_principal(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplicationAssignmentsForPrincipal", input, options)
  end

  @doc """
  Lists all of the authentication methods supported by the specified application.
  """
  @spec list_application_authentication_methods(
          map(),
          list_application_authentication_methods_request(),
          list()
        ) ::
          {:ok, list_application_authentication_methods_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_authentication_methods_errors()}
  def list_application_authentication_methods(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplicationAuthenticationMethods", input, options)
  end

  @doc """
  List the grants associated with an application.
  """
  @spec list_application_grants(map(), list_application_grants_request(), list()) ::
          {:ok, list_application_grants_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_grants_errors()}
  def list_application_grants(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplicationGrants", input, options)
  end

  @doc """
  Lists the application providers configured in the IAM Identity Center identity
  store.
  """
  @spec list_application_providers(map(), list_application_providers_request(), list()) ::
          {:ok, list_application_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_providers_errors()}
  def list_application_providers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplicationProviders", input, options)
  end

  @doc """
  Lists all applications associated with the instance of IAM Identity Center.

  When listing
  applications for an organization instance in the management account, member
  accounts
  must use the `applicationAccount` parameter to filter the list to only
  applications created from that account. When listing applications for an account
  instance in the same member account, a filter is not required.
  """
  @spec list_applications(map(), list_applications_request(), list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplications", input, options)
  end

  @doc """
  Lists all customer managed policies attached to a specified `PermissionSet`.
  """
  @spec list_customer_managed_policy_references_in_permission_set(
          map(),
          list_customer_managed_policy_references_in_permission_set_request(),
          list()
        ) ::
          {:ok, list_customer_managed_policy_references_in_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_customer_managed_policy_references_in_permission_set_errors()}
  def list_customer_managed_policy_references_in_permission_set(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "ListCustomerManagedPolicyReferencesInPermissionSet",
      input,
      options
    )
  end

  @doc """
  Lists the details of the organization and account instances of IAM Identity
  Center that
  were created in or visible to the account calling this API.
  """
  @spec list_instances(map(), list_instances_request(), list()) ::
          {:ok, list_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_instances_errors()}
  def list_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListInstances", input, options)
  end

  @doc """
  Lists the Amazon Web Services managed policy that is attached to a specified
  permission set.
  """
  @spec list_managed_policies_in_permission_set(
          map(),
          list_managed_policies_in_permission_set_request(),
          list()
        ) ::
          {:ok, list_managed_policies_in_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_policies_in_permission_set_errors()}
  def list_managed_policies_in_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListManagedPoliciesInPermissionSet", input, options)
  end

  @doc """
  Lists the status of the permission set provisioning requests for a specified IAM
  Identity Center
  instance.
  """
  @spec list_permission_set_provisioning_status(
          map(),
          list_permission_set_provisioning_status_request(),
          list()
        ) ::
          {:ok, list_permission_set_provisioning_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_permission_set_provisioning_status_errors()}
  def list_permission_set_provisioning_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPermissionSetProvisioningStatus", input, options)
  end

  @doc """
  Lists the `PermissionSet`s in an IAM Identity Center instance.
  """
  @spec list_permission_sets(map(), list_permission_sets_request(), list()) ::
          {:ok, list_permission_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_permission_sets_errors()}
  def list_permission_sets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPermissionSets", input, options)
  end

  @doc """
  Lists all the permission sets that are provisioned to a specified Amazon Web
  Services
  account.
  """
  @spec list_permission_sets_provisioned_to_account(
          map(),
          list_permission_sets_provisioned_to_account_request(),
          list()
        ) ::
          {:ok, list_permission_sets_provisioned_to_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_permission_sets_provisioned_to_account_errors()}
  def list_permission_sets_provisioned_to_account(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPermissionSetsProvisionedToAccount", input, options)
  end

  @doc """
  Lists the tags that are attached to a specified resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists all the trusted token issuers configured in an instance of IAM Identity
  Center.
  """
  @spec list_trusted_token_issuers(map(), list_trusted_token_issuers_request(), list()) ::
          {:ok, list_trusted_token_issuers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_trusted_token_issuers_errors()}
  def list_trusted_token_issuers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTrustedTokenIssuers", input, options)
  end

  @doc """
  The process by which a specified permission set is provisioned to the specified
  target.
  """
  @spec provision_permission_set(map(), provision_permission_set_request(), list()) ::
          {:ok, provision_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, provision_permission_set_errors()}
  def provision_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ProvisionPermissionSet", input, options)
  end

  @doc """
  Adds or updates the list of authorized targets for an IAM Identity Center access
  scope for an
  application.
  """
  @spec put_application_access_scope(map(), put_application_access_scope_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_application_access_scope_errors()}
  def put_application_access_scope(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutApplicationAccessScope", input, options)
  end

  @doc """
  Configure how users gain access to an application.

  If `AssignmentsRequired`
  is `true` (default value), users don’t have access to the application unless
  an assignment is created using the [CreateApplicationAssignment API](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html).
  If `false`, all users have
  access to the application. If an assignment is created using
  [CreateApplicationAssignment](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html).,
  the user retains access if
  `AssignmentsRequired` is set to `true`.
  """
  @spec put_application_assignment_configuration(
          map(),
          put_application_assignment_configuration_request(),
          list()
        ) ::
          {:ok, put_application_assignment_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_application_assignment_configuration_errors()}
  def put_application_assignment_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutApplicationAssignmentConfiguration", input, options)
  end

  @doc """
  Adds or updates an authentication method for an application.
  """
  @spec put_application_authentication_method(
          map(),
          put_application_authentication_method_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_application_authentication_method_errors()}
  def put_application_authentication_method(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutApplicationAuthenticationMethod", input, options)
  end

  @doc """
  Creates a configuration for an application to use grants.

  Conceptually grants are
  authorization to request actions related to tokens. This configuration will be
  used when
  parties are requesting and receiving tokens during the trusted identity
  propagation
  process. For more information on the IAM Identity Center supported grant
  workflows, see [SAML 2.0 and OAuth
  2.0](https://docs.aws.amazon.com/singlesignon/latest/userguide/customermanagedapps-saml2-oauth2.html).

  A grant is created between your applications and Identity Center instance which
  enables an application to use specified mechanisms to obtain tokens. These
  tokens are
  used by your applications to gain access to Amazon Web Services resources on
  behalf of users. The
  following elements are within these exchanges:

    *

  **Requester** - The application requesting access
  to Amazon Web Services resources.

    *

  **Subject** - Typically the user that is
  requesting access to Amazon Web Services resources.

    *

  **Grant** - Conceptually, a grant is
  authorization to access Amazon Web Services resources. These grants authorize
  token generation
  for authenticating access to the requester and for the request to make requests
  on behalf of the subjects. There are four types of grants:

      *

  **AuthorizationCode** - Allows an
  application to request authorization through a series of user-agent
  redirects.

      *

  **JWT bearer ** - Authorizes an
  application to exchange a JSON Web Token that came from an external
  identity provider. To learn more, see [RFC 6479](https://datatracker.ietf.org/doc/html/rfc6749).

      *

  **Refresh token** - Enables application
  to request new access tokens to replace expiring or expired access
  tokens.

      *

  **Exchange token** - A grant that
  requests tokens from the authorization server by providing a ‘subject’
  token with access scope authorizing trusted identity propagation to this
  application. To learn more, see [RFC 8693](https://datatracker.ietf.org/doc/html/rfc8693).

    *

  **Authorization server** - IAM Identity Center requests
  tokens.

  User credentials are never shared directly within these exchanges. Instead,
  applications use grants to request access tokens from IAM Identity Center. For
  more
  information, see [RFC 6479](https://datatracker.ietf.org/doc/html/rfc6749).

  ## Use cases

    *
  Connecting to custom applications.

    *
  Configuring an Amazon Web Services service to make calls to another Amazon Web
  Services services using JWT
  tokens.
  """
  @spec put_application_grant(map(), put_application_grant_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_application_grant_errors()}
  def put_application_grant(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutApplicationGrant", input, options)
  end

  @doc """
  Attaches an inline policy to a permission set.

  If the permission set is already referenced by one or more account assignments,
  you will need to call

  ```

  `ProvisionPermissionSet`

  ```

  after
  this action to apply the corresponding IAM policy updates to all assigned
  accounts.
  """
  @spec put_inline_policy_to_permission_set(
          map(),
          put_inline_policy_to_permission_set_request(),
          list()
        ) ::
          {:ok, put_inline_policy_to_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_inline_policy_to_permission_set_errors()}
  def put_inline_policy_to_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutInlinePolicyToPermissionSet", input, options)
  end

  @doc """
  Attaches an Amazon Web Services managed or customer managed policy to the
  specified `PermissionSet` as a permissions boundary.
  """
  @spec put_permissions_boundary_to_permission_set(
          map(),
          put_permissions_boundary_to_permission_set_request(),
          list()
        ) ::
          {:ok, put_permissions_boundary_to_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_permissions_boundary_to_permission_set_errors()}
  def put_permissions_boundary_to_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutPermissionsBoundaryToPermissionSet", input, options)
  end

  @doc """
  Associates a set of tags with a specified resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Disassociates a set of tags from a specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates application properties.
  """
  @spec update_application(map(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end

  @doc """
  Update the details for the instance of IAM Identity Center that is owned by the
  Amazon Web Services account.
  """
  @spec update_instance(map(), update_instance_request(), list()) ::
          {:ok, update_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_instance_errors()}
  def update_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateInstance", input, options)
  end

  @doc """
  Updates the IAM Identity Center identity store attributes that you can use with
  the IAM Identity Center instance
  for attributes-based access control (ABAC).

  When using an external identity provider as
  an identity source, you can pass attributes through the SAML assertion as an
  alternative
  to configuring attributes from the IAM Identity Center identity store. If a SAML
  assertion passes any
  of these attributes, IAM Identity Center replaces the attribute value with the
  value from the IAM Identity Center
  identity store. For more information about ABAC, see [Attribute-Based Access Control](/singlesignon/latest/userguide/abac.html) in the *IAM Identity Center
  User Guide*.
  """
  @spec update_instance_access_control_attribute_configuration(
          map(),
          update_instance_access_control_attribute_configuration_request(),
          list()
        ) ::
          {:ok, update_instance_access_control_attribute_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_instance_access_control_attribute_configuration_errors()}
  def update_instance_access_control_attribute_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "UpdateInstanceAccessControlAttributeConfiguration",
      input,
      options
    )
  end

  @doc """
  Updates an existing permission set.
  """
  @spec update_permission_set(map(), update_permission_set_request(), list()) ::
          {:ok, update_permission_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_permission_set_errors()}
  def update_permission_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePermissionSet", input, options)
  end

  @doc """
  Updates the name of the trusted token issuer, or the path of a source attribute
  or destination
  attribute for a trusted token issuer configuration.

  Updating this trusted token issuer configuration might cause users to lose
  access to any
  applications that are configured to use the trusted token issuer.
  """
  @spec update_trusted_token_issuer(map(), update_trusted_token_issuer_request(), list()) ::
          {:ok, update_trusted_token_issuer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_trusted_token_issuer_errors()}
  def update_trusted_token_issuer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTrustedTokenIssuer", input, options)
  end
end
