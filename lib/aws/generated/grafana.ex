# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Grafana do
  @moduledoc """
  Amazon Managed Grafana is a fully managed and secure data visualization service
  that
  you can use to instantly query, correlate, and visualize operational metrics,
  logs, and
  traces from multiple sources.

  Amazon Managed Grafana makes it easy to deploy, operate, and
  scale Grafana, a widely deployed data visualization tool that is popular for its
  extensible data support.

  With Amazon Managed Grafana, you create logically isolated Grafana servers
  called
  *workspaces*. In a workspace, you can create Grafana dashboards
  and visualizations to analyze your metrics, logs, and traces without having to
  build,
  package, or deploy any hardware to run Grafana servers.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_permissions_response() :: %{
        optional("nextToken") => String.t(),
        required("permissions") => list(permission_entry()())
      }

  """
  @type list_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_configuration() :: %{
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()())
      }

  """
  @type vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_workspace_configuration_request() :: %{
        optional("grafanaVersion") => String.t(),
        required("configuration") => String.t()
      }

  """
  @type update_workspace_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workspace_api_key_response() :: %{
        required("key") => String.t(),
        required("keyName") => String.t(),
        required("workspaceId") => String.t()
      }

  """
  @type create_workspace_api_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_workspace_service_accounts_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_workspace_service_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_workspace_authentication_response() :: %{
        required("authentication") => authentication_description()
      }

  """
  @type describe_workspace_authentication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_access_configuration() :: %{
        "prefixListIds" => list(String.t()()),
        "vpceIds" => list(String.t()())
      }

  """
  @type network_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saml_authentication() :: %{
        "configuration" => saml_configuration(),
        "status" => String.t()
      }

  """
  @type saml_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workspace_summary() :: %{
        "authentication" => authentication_summary(),
        "created" => [non_neg_integer()],
        "description" => String.t(),
        "endpoint" => String.t(),
        "grafanaToken" => String.t(),
        "grafanaVersion" => String.t(),
        "id" => String.t(),
        "licenseType" => String.t(),
        "modified" => [non_neg_integer()],
        "name" => String.t(),
        "notificationDestinations" => list(String.t()()),
        "status" => String.t(),
        "tags" => map()
      }

  """
  @type workspace_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_workspace_configuration_request() :: %{}

  """
  @type describe_workspace_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_workspace_service_account_token_response() :: %{
        "serviceAccountId" => [String.t()],
        "tokenId" => [String.t()],
        "workspaceId" => String.t()
      }

  """
  @type delete_workspace_service_account_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workspace_api_key_request() :: %{
        required("keyName") => String.t(),
        required("keyRole") => [String.t()],
        required("secondsToLive") => [integer()]
      }

  """
  @type create_workspace_api_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workspace_response() :: %{
        required("workspace") => workspace_description()
      }

  """
  @type delete_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_workspace_configuration_response() :: %{}

  """
  @type update_workspace_configuration_response() :: %{}

  @typedoc """

  ## Example:

      service_account_summary() :: %{
        "grafanaRole" => String.t(),
        "id" => [String.t()],
        "isDisabled" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type service_account_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authentication_description() :: %{
        "awsSso" => aws_sso_authentication(),
        "providers" => list(String.t()()),
        "saml" => saml_authentication()
      }

  """
  @type authentication_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workspace_service_account_response() :: %{
        "serviceAccountId" => [String.t()],
        "workspaceId" => String.t()
      }

  """
  @type delete_workspace_service_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_workspace_authentication_response() :: %{
        required("authentication") => authentication_description()
      }

  """
  @type update_workspace_authentication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_error() :: %{
        "causedBy" => update_instruction(),
        "code" => [integer()],
        "message" => [String.t()]
      }

  """
  @type update_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_workspace_response() :: %{
        required("workspace") => workspace_description()
      }

  """
  @type describe_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_workspace_configuration_response() :: %{
        optional("grafanaVersion") => String.t(),
        required("configuration") => String.t()
      }

  """
  @type describe_workspace_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_workspace_authentication_request() :: %{
        optional("samlConfiguration") => saml_configuration(),
        required("authenticationProviders") => list(String.t()())
      }

  """
  @type update_workspace_authentication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workspace_service_account_token_response() :: %{
        "serviceAccountId" => [String.t()],
        "serviceAccountToken" => service_account_token_summary_with_key(),
        "workspaceId" => String.t()
      }

  """
  @type create_workspace_service_account_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authentication_summary() :: %{
        "providers" => list(String.t()()),
        "samlConfigurationStatus" => String.t()
      }

  """
  @type authentication_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_license_response() :: %{
        required("workspace") => workspace_description()
      }

  """
  @type associate_license_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workspace_service_account_response() :: %{
        "grafanaRole" => String.t(),
        "id" => [String.t()],
        "name" => [String.t()],
        "workspaceId" => String.t()
      }

  """
  @type create_workspace_service_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_workspace_request() :: %{}

  """
  @type describe_workspace_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_workspace_authentication_request() :: %{}

  """
  @type describe_workspace_authentication_request() :: %{}

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

      service_account_token_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "id" => [String.t()],
        "lastUsedAt" => [non_neg_integer()],
        "name" => [String.t()]
      }

  """
  @type service_account_token_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_workspace_response() :: %{
        required("workspace") => workspace_description()
      }

  """
  @type update_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_versions_response() :: %{
        "grafanaVersions" => list(String.t()()),
        "nextToken" => String.t()
      }

  """
  @type list_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workspace_service_account_tokens_response() :: %{
        "nextToken" => String.t(),
        "serviceAccountId" => [String.t()],
        "serviceAccountTokens" => list(service_account_token_summary()()),
        "workspaceId" => String.t()
      }

  """
  @type list_workspace_service_account_tokens_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workspace_request() :: %{}

  """
  @type delete_workspace_request() :: %{}

  @typedoc """

  ## Example:

      update_workspace_request() :: %{
        optional("accountAccessType") => String.t(),
        optional("networkAccessControl") => network_access_configuration(),
        optional("organizationRoleName") => String.t(),
        optional("permissionType") => String.t(),
        optional("removeNetworkAccessConfiguration") => [boolean()],
        optional("removeVpcConfiguration") => [boolean()],
        optional("stackSetName") => String.t(),
        optional("vpcConfiguration") => vpc_configuration(),
        optional("workspaceDataSources") => list(String.t()()),
        optional("workspaceDescription") => String.t(),
        optional("workspaceName") => String.t(),
        optional("workspaceNotificationDestinations") => list(String.t()()),
        optional("workspaceOrganizationalUnits") => list(String.t()()),
        optional("workspaceRoleArn") => String.t()
      }

  """
  @type update_workspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_permissions_request() :: %{
        optional("groupId") => String.t(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("userId") => String.t(),
        optional("userType") => String.t()
      }

  """
  @type list_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workspace_description() :: %{
        "accountAccessType" => String.t(),
        "authentication" => authentication_summary(),
        "created" => [non_neg_integer()],
        "dataSources" => list(String.t()()),
        "description" => String.t(),
        "endpoint" => String.t(),
        "freeTrialConsumed" => [boolean()],
        "freeTrialExpiration" => [non_neg_integer()],
        "grafanaToken" => String.t(),
        "grafanaVersion" => String.t(),
        "id" => String.t(),
        "licenseExpiration" => [non_neg_integer()],
        "licenseType" => String.t(),
        "modified" => [non_neg_integer()],
        "name" => String.t(),
        "networkAccessControl" => network_access_configuration(),
        "notificationDestinations" => list(String.t()()),
        "organizationRoleName" => String.t(),
        "organizationalUnits" => list(String.t()()),
        "permissionType" => String.t(),
        "stackSetName" => String.t(),
        "status" => String.t(),
        "tags" => map(),
        "vpcConfiguration" => vpc_configuration(),
        "workspaceRoleArn" => String.t()
      }

  """
  @type workspace_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workspace_response() :: %{
        required("workspace") => workspace_description()
      }

  """
  @type create_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workspaces_response() :: %{
        optional("nextToken") => String.t(),
        required("workspaces") => list(workspace_summary()())
      }

  """
  @type list_workspaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_license_request() :: %{
        optional("grafanaToken") => String.t()
      }

  """
  @type associate_license_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
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

      update_permissions_response() :: %{
        required("errors") => list(update_error()())
      }

  """
  @type update_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workspace_service_account_request() :: %{}

  """
  @type delete_workspace_service_account_request() :: %{}

  @typedoc """

  ## Example:

      delete_workspace_service_account_token_request() :: %{}

  """
  @type delete_workspace_service_account_token_request() :: %{}

  @typedoc """

  ## Example:

      permission_entry() :: %{
        "role" => String.t(),
        "user" => user()
      }

  """
  @type permission_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_sso_authentication() :: %{
        "ssoClientId" => String.t()
      }

  """
  @type aws_sso_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => String.t()
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

      list_workspaces_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_instruction() :: %{
        "action" => String.t(),
        "role" => String.t(),
        "users" => list(user()())
      }

  """
  @type update_instruction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user() :: %{
        "id" => String.t(),
        "type" => String.t()
      }

  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workspace_api_key_request() :: %{}

  """
  @type delete_workspace_api_key_request() :: %{}

  @typedoc """

  ## Example:

      list_versions_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("workspaceId") => String.t()
      }

  """
  @type list_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assertion_attributes() :: %{
        "email" => String.t(),
        "groups" => String.t(),
        "login" => String.t(),
        "name" => String.t(),
        "org" => String.t(),
        "role" => String.t()
      }

  """
  @type assertion_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workspace_service_account_tokens_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_workspace_service_account_tokens_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      role_values() :: %{
        "admin" => list(String.t()()),
        "editor" => list(String.t()())
      }

  """
  @type role_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_license_response() :: %{
        required("workspace") => workspace_description()
      }

  """
  @type disassociate_license_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workspace_service_account_request() :: %{
        required("grafanaRole") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_workspace_service_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_permissions_request() :: %{
        required("updateInstructionBatch") => list(update_instruction()())
      }

  """
  @type update_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_account_token_summary_with_key() :: %{
        "id" => [String.t()],
        "key" => String.t(),
        "name" => [String.t()]
      }

  """
  @type service_account_token_summary_with_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workspace_api_key_response() :: %{
        required("keyName") => String.t(),
        required("workspaceId") => String.t()
      }

  """
  @type delete_workspace_api_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_license_request() :: %{}

  """
  @type disassociate_license_request() :: %{}

  @typedoc """

  ## Example:

      list_workspace_service_accounts_response() :: %{
        "nextToken" => String.t(),
        "serviceAccounts" => list(service_account_summary()()),
        "workspaceId" => String.t()
      }

  """
  @type list_workspace_service_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workspace_service_account_token_request() :: %{
        required("name") => String.t(),
        required("secondsToLive") => [integer()]
      }

  """
  @type create_workspace_service_account_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saml_configuration() :: %{
        "allowedOrganizations" => list(String.t()()),
        "assertionAttributes" => assertion_attributes(),
        "idpMetadata" => list(),
        "loginValidityDuration" => integer(),
        "roleValues" => role_values()
      }

  """
  @type saml_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workspace_request() :: %{
        optional("clientToken") => String.t(),
        optional("configuration") => String.t(),
        optional("grafanaVersion") => String.t(),
        optional("networkAccessControl") => network_access_configuration(),
        optional("organizationRoleName") => String.t(),
        optional("stackSetName") => String.t(),
        optional("tags") => map(),
        optional("vpcConfiguration") => vpc_configuration(),
        optional("workspaceDataSources") => list(String.t()()),
        optional("workspaceDescription") => String.t(),
        optional("workspaceName") => String.t(),
        optional("workspaceNotificationDestinations") => list(String.t()()),
        optional("workspaceOrganizationalUnits") => list(String.t()()),
        optional("workspaceRoleArn") => String.t(),
        required("accountAccessType") => String.t(),
        required("authenticationProviders") => list(String.t()()),
        required("permissionType") => String.t()
      }

  """
  @type create_workspace_request() :: %{String.t() => any()}

  @type associate_license_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_workspace_api_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workspace_service_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workspace_service_account_token_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workspace_api_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workspace_service_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workspace_service_account_token_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_workspace_authentication_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_workspace_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_license_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_permissions_errors() ::
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

  @type list_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_workspace_service_account_tokens_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_workspace_service_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_workspaces_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

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

  @type update_permissions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workspace_authentication_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workspace_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-08-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "grafana",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "grafana",
      signature_version: "v4",
      signing_name: "grafana",
      target_prefix: nil
    }
  end

  @doc """
  Assigns a Grafana Enterprise license to a workspace.

  To upgrade, you must use
  `ENTERPRISE` for the `licenseType`, and pass in a valid
  Grafana Labs token for the `grafanaToken`. Upgrading to Grafana Enterprise
  incurs additional fees. For more information, see [Upgrade a workspace to Grafana
  Enterprise](https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html).
  """
  @spec associate_license(map(), String.t(), String.t(), associate_license_request(), list()) ::
          {:ok, associate_license_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_license_errors()}
  def associate_license(%Client{} = client, license_type, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/licenses/#{AWS.Util.encode_uri(license_type)}"

    {headers, input} =
      [
        {"grafanaToken", "Grafana-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a *workspace*.

  In a workspace, you can create Grafana
  dashboards and visualizations to analyze your metrics, logs, and traces. You
  don't have
  to build, package, or deploy any hardware to run the Grafana server.

  Don't use `CreateWorkspace` to modify an existing workspace. Instead, use
  [UpdateWorkspace](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspace.html).
  """
  @spec create_workspace(map(), create_workspace_request(), list()) ::
          {:ok, create_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspace_errors()}
  def create_workspace(%Client{} = client, input, options \\ []) do
    url_path = "/workspaces"
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
  Creates a Grafana API key for the workspace.

  This key can be used to authenticate
  requests sent to the workspace's HTTP API. See
  [https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html](https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html)
  for available APIs and example requests.

  In workspaces compatible with Grafana version 9 or above, use workspace service
  accounts instead of API keys. API keys will be removed in a future release.
  """
  @spec create_workspace_api_key(map(), String.t(), create_workspace_api_key_request(), list()) ::
          {:ok, create_workspace_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspace_api_key_errors()}
  def create_workspace_api_key(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/apikeys"
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
  Creates a service account for the workspace.

  A service account can be used to call
  Grafana HTTP APIs, and run automated workloads. After creating the service
  account with
  the correct `GrafanaRole` for your use case, use
  `CreateWorkspaceServiceAccountToken` to create a token that can be used to
  authenticate and authorize Grafana HTTP API calls.

  You can only create service accounts for workspaces that are compatible with
  Grafana
  version 9 and above.

  For more information about service accounts, see [Service accounts](https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html)
  in
  the *Amazon Managed Grafana User Guide*.

  For more information about the Grafana HTTP APIs, see [Using Grafana HTTP APIs](https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html)
  in the *Amazon Managed Grafana User Guide*.
  """
  @spec create_workspace_service_account(
          map(),
          String.t(),
          create_workspace_service_account_request(),
          list()
        ) ::
          {:ok, create_workspace_service_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspace_service_account_errors()}
  def create_workspace_service_account(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/serviceaccounts"
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
  Creates a token that can be used to authenticate and authorize Grafana HTTP API
  operations for the given [workspace service account](https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html).

  The service account acts as a user for the API operations, and
  defines the permissions that are used by the API.

  When you create the service account token, you will receive a key that is used
  when calling Grafana APIs. Do not lose this key, as it will not be retrievable
  again.

  If you do lose the key, you can delete the token and recreate it to receive a
  new key. This will disable the initial key.

  Service accounts are only available for workspaces that are compatible with
  Grafana
  version 9 and above.
  """
  @spec create_workspace_service_account_token(
          map(),
          String.t(),
          String.t(),
          create_workspace_service_account_token_request(),
          list()
        ) ::
          {:ok, create_workspace_service_account_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workspace_service_account_token_errors()}
  def create_workspace_service_account_token(
        %Client{} = client,
        service_account_id,
        workspace_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/serviceaccounts/#{AWS.Util.encode_uri(service_account_id)}/tokens"

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
  Deletes an Amazon Managed Grafana workspace.
  """
  @spec delete_workspace(map(), String.t(), delete_workspace_request(), list()) ::
          {:ok, delete_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workspace_errors()}
  def delete_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
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
  Deletes a Grafana API key for the workspace.

  In workspaces compatible with Grafana version 9 or above, use workspace service
  accounts instead of API keys. API keys will be removed in a future release.
  """
  @spec delete_workspace_api_key(
          map(),
          String.t(),
          String.t(),
          delete_workspace_api_key_request(),
          list()
        ) ::
          {:ok, delete_workspace_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workspace_api_key_errors()}
  def delete_workspace_api_key(%Client{} = client, key_name, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/apikeys/#{AWS.Util.encode_uri(key_name)}"

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
  Deletes a workspace service account from the workspace.

  This will delete any tokens created for the service account, as well. If the
  tokens
  are currently in use, the will fail to authenticate / authorize after they are
  deleted.

  Service accounts are only available for workspaces that are compatible with
  Grafana
  version 9 and above.
  """
  @spec delete_workspace_service_account(
          map(),
          String.t(),
          String.t(),
          delete_workspace_service_account_request(),
          list()
        ) ::
          {:ok, delete_workspace_service_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workspace_service_account_errors()}
  def delete_workspace_service_account(
        %Client{} = client,
        service_account_id,
        workspace_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/serviceaccounts/#{AWS.Util.encode_uri(service_account_id)}"

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
  Deletes a token for the workspace service account.

  This will disable the key associated with the token. If any automation is
  currently
  using the key, it will no longer be authenticated or authorized to perform
  actions with
  the Grafana HTTP APIs.

  Service accounts are only available for workspaces that are compatible with
  Grafana
  version 9 and above.
  """
  @spec delete_workspace_service_account_token(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_workspace_service_account_token_request(),
          list()
        ) ::
          {:ok, delete_workspace_service_account_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workspace_service_account_token_errors()}
  def delete_workspace_service_account_token(
        %Client{} = client,
        service_account_id,
        token_id,
        workspace_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/serviceaccounts/#{AWS.Util.encode_uri(service_account_id)}/tokens/#{AWS.Util.encode_uri(token_id)}"

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
  Displays information about one Amazon Managed Grafana workspace.
  """
  @spec describe_workspace(map(), String.t(), list()) ::
          {:ok, describe_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_errors()}
  def describe_workspace(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays information about the authentication methods used in one Amazon Managed
  Grafana
  workspace.
  """
  @spec describe_workspace_authentication(map(), String.t(), list()) ::
          {:ok, describe_workspace_authentication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_authentication_errors()}
  def describe_workspace_authentication(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/authentication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the current configuration string for the given workspace.
  """
  @spec describe_workspace_configuration(map(), String.t(), list()) ::
          {:ok, describe_workspace_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_workspace_configuration_errors()}
  def describe_workspace_configuration(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Removes the Grafana Enterprise license from a workspace.
  """
  @spec disassociate_license(
          map(),
          String.t(),
          String.t(),
          disassociate_license_request(),
          list()
        ) ::
          {:ok, disassociate_license_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_license_errors()}
  def disassociate_license(%Client{} = client, license_type, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/licenses/#{AWS.Util.encode_uri(license_type)}"

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
  Lists the users and groups who have the Grafana `Admin` and
  `Editor` roles in this workspace.

  If you use this operation without
  specifying `userId` or `groupId`, the operation returns the roles
  of all users and groups. If you specify a `userId` or a `groupId`,
  only the roles for that user or group are returned. If you do this, you can
  specify only
  one `userId` or one `groupId`.
  """
  @spec list_permissions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_permissions_errors()}
  def list_permissions(
        %Client{} = client,
        workspace_id,
        group_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        user_id \\ nil,
        user_type \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/permissions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_type) do
        [{"userType", user_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(user_id) do
        [{"userId", user_id} | query_params]
      else
        query_params
      end

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
      if !is_nil(group_id) do
        [{"groupId", group_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `ListTagsForResource` operation returns the tags that are associated
  with the Amazon Managed Service for Grafana resource specified by the
  `resourceArn`.

  Currently, the only resource that can be tagged is a
  workspace.
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
  Lists available versions of Grafana.

  These are available when calling
  `CreateWorkspace`. Optionally, include a workspace to list the versions
  to which it can be upgraded.
  """
  @spec list_versions(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_versions_errors()}
  def list_versions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        workspace_id \\ nil,
        options \\ []
      ) do
    url_path = "/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workspace_id) do
        [{"workspace-id", workspace_id} | query_params]
      else
        query_params
      end

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
  Returns a list of tokens for a workspace service account.

  This does not return the key for each token. You cannot access keys after they
  are created. To create a new key, delete the token and recreate it.

  Service accounts are only available for workspaces that are compatible with
  Grafana
  version 9 and above.
  """
  @spec list_workspace_service_account_tokens(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_workspace_service_account_tokens_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workspace_service_account_tokens_errors()}
  def list_workspace_service_account_tokens(
        %Client{} = client,
        service_account_id,
        workspace_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/serviceaccounts/#{AWS.Util.encode_uri(service_account_id)}/tokens"

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
  Returns a list of service accounts for a workspace.

  Service accounts are only available for workspaces that are compatible with
  Grafana
  version 9 and above.
  """
  @spec list_workspace_service_accounts(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_workspace_service_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workspace_service_accounts_errors()}
  def list_workspace_service_accounts(
        %Client{} = client,
        workspace_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/serviceaccounts"
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
  Returns a list of Amazon Managed Grafana workspaces in the account, with some
  information
  about each workspace.

  For more complete information about one workspace, use
  [DescribeWorkspace](https://docs.aws.amazon.com/AAMG/latest/APIReference/API_DescribeWorkspace.html).
  """
  @spec list_workspaces(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_workspaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workspaces_errors()}
  def list_workspaces(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/workspaces"
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
  The `TagResource` operation associates tags with an Amazon Managed Grafana
  resource.

  Currently, the only resource that can be tagged is workspaces.

  If you specify a new tag key for the resource, this tag is appended to the list
  of
  tags associated with the resource. If you specify a tag key that is already
  associated
  with the resource, the new tag value that you specify replaces the previous
  value for
  that tag.
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
  The `UntagResource` operation removes the association of the tag with the
  Amazon Managed Grafana resource.
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
        {"tagKeys", "tagKeys"}
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
  Updates which users in a workspace have the Grafana `Admin` or
  `Editor` roles.
  """
  @spec update_permissions(map(), String.t(), update_permissions_request(), list()) ::
          {:ok, update_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_permissions_errors()}
  def update_permissions(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/permissions"
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
  Modifies an existing Amazon Managed Grafana workspace.

  If you use this operation and omit
  any optional parameters, the existing values of those parameters are not
  changed.

  To modify the user authentication methods that the workspace uses, such as SAML
  or
  IAM Identity Center, use
  [UpdateWorkspaceAuthentication](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspaceAuthentication.html).   To modify which users in the workspace have the `Admin` and
  `Editor` Grafana roles, use
  [UpdatePermissions](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html).
  """
  @spec update_workspace(map(), String.t(), update_workspace_request(), list()) ::
          {:ok, update_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workspace_errors()}
  def update_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Use this operation to define the identity provider (IdP) that this workspace
  authenticates users from, using SAML.

  You can also map SAML assertion attributes to
  workspace user information and define which groups in the assertion attribute
  are to
  have the `Admin` and `Editor` roles in the workspace.

  Changes to the authentication method for a workspace may take a few minutes to
  take effect.
  """
  @spec update_workspace_authentication(
          map(),
          String.t(),
          update_workspace_authentication_request(),
          list()
        ) ::
          {:ok, update_workspace_authentication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workspace_authentication_errors()}
  def update_workspace_authentication(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/authentication"
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
  Updates the configuration string for the given workspace
  """
  @spec update_workspace_configuration(
          map(),
          String.t(),
          update_workspace_configuration_request(),
          list()
        ) ::
          {:ok, update_workspace_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workspace_configuration_errors()}
  def update_workspace_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end
end
