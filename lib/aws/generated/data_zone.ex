# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataZone do
  @moduledoc """
  Amazon DataZone is a data management service that enables you to catalog,
  discover, govern, share, and analyze your data.

  With Amazon DataZone, you can share and access your data across accounts and
  supported regions. Amazon DataZone simplifies your experience across Amazon Web
  Services services, including, but not limited to, Amazon Redshift, Amazon
  Athena, Amazon Web Services Glue, and Amazon Web Services Lake Formation.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      policy_grant_member() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "detail" => list(),
        "grantId" => String.t() | atom(),
        "principal" => list()
      }

  """
  @type policy_grant_member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_revision() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "revision" => String.t() | atom()
      }

  """
  @type asset_revision() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_project_profiles_output() :: %{
        "items" => list(project_profile_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_project_profiles_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metadata_form_enforcement_detail() :: %{
        "requiredMetadataForms" => list(metadata_form_reference())
      }

  """
  @type metadata_form_enforcement_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_group_profile_input() :: %{
        required("status") => list(any())
      }

  """
  @type update_group_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_domain_output() :: %{
        "description" => [String.t() | atom()],
        "domainExecutionRole" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => [String.t() | atom()],
        "rootDomainUnitId" => String.t() | atom(),
        "serviceRole" => String.t() | atom(),
        "singleSignOn" => single_sign_on()
      }

  """
  @type update_domain_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_metadata_generation_runs_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any()),
        optional("type") => list(any())
      }

  """
  @type list_metadata_generation_runs_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("externalIdentifier") => String.t() | atom(),
        optional("formsInput") => list(form_input()),
        optional("glossaryTerms") => list(String.t() | atom()),
        optional("predictionConfiguration") => prediction_configuration(),
        optional("typeRevision") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("owningProjectIdentifier") => String.t() | atom(),
        required("typeIdentifier") => String.t() | atom()
      }

  """
  @type create_asset_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_user_profiles_output() :: %{
        "items" => list(user_profile_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type search_user_profiles_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_item() :: %{
        "additionalAttributes" => asset_item_additional_attributes(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "externalIdentifier" => String.t() | atom(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t() | atom(),
        "glossaryTerms" => list(String.t() | atom()),
        "governedGlossaryTerms" => list(String.t() | atom()),
        "identifier" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "typeIdentifier" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type asset_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_pool_summary() :: %{
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resolutionStrategy" => list(any()),
        "updatedBy" => String.t() | atom()
      }

  """
  @type account_pool_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      business_name_generation_configuration() :: %{
        "enabled" => [boolean()]
      }

  """
  @type business_name_generation_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_form_type_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type create_form_type_policy_grant_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_product_listing() :: %{
        "createdAt" => non_neg_integer(),
        "dataProductId" => String.t() | atom(),
        "dataProductRevision" => String.t() | atom(),
        "forms" => String.t() | atom(),
        "glossaryTerms" => list(detailed_glossary_term()),
        "items" => list(listing_summary()),
        "owningProjectId" => String.t() | atom()
      }

  """
  @type data_product_listing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_action_input() :: %{
        optional("description") => [String.t() | atom()],
        required("name") => [String.t() | atom()],
        required("parameters") => list()
      }

  """
  @type create_environment_action_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environment_actions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_environment_actions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      listing_summary_item() :: %{
        "glossaryTerms" => list(detailed_glossary_term()),
        "listingId" => String.t() | atom(),
        "listingRevision" => String.t() | atom()
      }

  """
  @type listing_summary_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_filter_summary() :: %{
        "assetId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "effectiveColumnNames" => list([String.t() | atom()]()),
        "effectiveRowFilter" => [String.t() | atom()],
        "errorMessage" => [String.t() | atom()],
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type asset_filter_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      redshift_credential_configuration() :: %{
        "secretManagerArn" => [String.t() | atom()]
      }

  """
  @type redshift_credential_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_glossary_term_output() :: %{
        "domainId" => String.t() | atom(),
        "glossaryId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "longDescription" => String.t() | atom(),
        "name" => String.t() | atom(),
        "shortDescription" => String.t() | atom(),
        "status" => list(any()),
        "termRelations" => term_relations(),
        "usageRestrictions" => list(list(any())())
      }

  """
  @type update_glossary_term_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_time_series_data_points_output() :: %{}

  """
  @type delete_time_series_data_points_output() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environment_blueprint_configurations_output() :: %{
        "items" => list(environment_blueprint_configuration_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_environment_blueprint_configurations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_source_runs_output() :: %{
        "items" => list(data_source_run_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_data_source_runs_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      redshift_run_configuration_input() :: %{
        "dataAccessRole" => [String.t() | atom()],
        "redshiftCredentialConfiguration" => redshift_credential_configuration(),
        "redshiftStorage" => list(),
        "relationalFilterConfigurations" => list(relational_filter_configuration())
      }

  """
  @type redshift_run_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_filters_output() :: %{
        "items" => list(asset_filter_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_asset_filters_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      redshift_properties_input() :: %{
        "credentials" => list(),
        "databaseName" => [String.t() | atom()],
        "host" => [String.t() | atom()],
        "lineageSync" => redshift_lineage_sync_configuration_input(),
        "port" => [integer()],
        "storage" => list()
      }

  """
  @type redshift_properties_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_source_runs_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_data_source_runs_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_type_input() :: %{
        optional("revision") => String.t() | atom()
      }

  """
  @type get_asset_type_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_sort() :: %{
        "attribute" => String.t() | atom(),
        "order" => list(any())
      }

  """
  @type search_sort() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscription_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "retainPermissions" => [boolean()],
        "status" => list(any()),
        "subscribedListing" => subscribed_listing(),
        "subscribedPrincipal" => list(),
        "subscriptionRequestId" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type subscription_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscription_target_form() :: %{
        "content" => [String.t() | atom()],
        "formName" => String.t() | atom()
      }

  """
  @type subscription_target_form() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_project_memberships_output() :: %{
        "members" => list(project_member()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_project_memberships_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_profile_input() :: %{
        optional("awsAccountId") => String.t() | atom(),
        optional("awsAccountRegion") => String.t() | atom(),
        optional("description") => [String.t() | atom()],
        optional("name") => String.t() | atom(),
        optional("userParameters") => list(environment_parameter())
      }

  """
  @type update_environment_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_project_profile_input() :: %{}

  """
  @type get_project_profile_input() :: %{}

  @typedoc """

  ## Example:

      s3_properties_patch() :: %{
        "s3AccessGrantLocationId" => String.t() | atom(),
        "s3Uri" => String.t() | atom()
      }

  """
  @type s3_properties_patch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_subscription_target_output() :: %{
        "applicableAssetTypes" => list(String.t() | atom()),
        "authorizedPrincipals" => list(String.t() | atom()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "manageAccessRole" => String.t() | atom(),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "provider" => [String.t() | atom()],
        "subscriptionTargetConfig" => list(subscription_target_form()),
        "type" => [String.t() | atom()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type update_subscription_target_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_subscription_request_input() :: %{
        optional("decisionComment") => String.t() | atom()
      }

  """
  @type reject_subscription_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_connection_input() :: %{}

  """
  @type delete_connection_input() :: %{}

  @typedoc """

  ## Example:

      update_group_profile_output() :: %{
        "domainId" => String.t() | atom(),
        "groupName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type update_group_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_job_runs_output() :: %{
        "items" => list(job_run_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_job_runs_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_input() :: %{}

  """
  @type get_domain_input() :: %{}

  @typedoc """

  ## Example:

      get_environment_action_input() :: %{}

  """
  @type get_environment_action_input() :: %{}

  @typedoc """

  ## Example:

      list_policy_grants_output() :: %{
        "grantList" => list(policy_grant_member()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_policy_grants_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_endpoint_credentials() :: %{
        "id" => [String.t() | atom()],
        "token" => [String.t() | atom()]
      }

  """
  @type managed_endpoint_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metadata_form_reference() :: %{
        "typeIdentifier" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type metadata_form_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_filter_output() :: %{
        "assetId" => String.t() | atom(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "effectiveColumnNames" => list([String.t() | atom()]()),
        "effectiveRowFilter" => [String.t() | atom()],
        "errorMessage" => [String.t() | atom()],
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type get_asset_filter_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_form_type_output() :: %{}

  """
  @type delete_form_type_output() :: %{}

  @typedoc """

  ## Example:

      remove_entity_owner_output() :: %{}

  """
  @type remove_entity_owner_output() :: %{}

  @typedoc """

  ## Example:

      redshift_properties_output() :: %{
        "credentials" => list(),
        "databaseName" => [String.t() | atom()],
        "isProvisionedSecret" => [boolean()],
        "jdbcIamUrl" => [String.t() | atom()],
        "jdbcUrl" => [String.t() | atom()],
        "lineageSync" => redshift_lineage_sync_configuration_output(),
        "redshiftTempDir" => [String.t() | atom()],
        "status" => list(any()),
        "storage" => list()
      }

  """
  @type redshift_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_listing_details() :: %{
        "listingId" => String.t() | atom(),
        "listingStatus" => list(any())
      }

  """
  @type asset_listing_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      all_users_grant_filter() :: %{}

  """
  @type all_users_grant_filter() :: %{}

  @typedoc """

  ## Example:

      environment_configuration_parameters_details() :: %{
        "parameterOverrides" => list(environment_configuration_parameter()),
        "resolvedParameters" => list(environment_configuration_parameter()),
        "ssmPath" => String.t() | atom()
      }

  """
  @type environment_configuration_parameters_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lineage_sync_schedule() :: %{
        "schedule" => [String.t() | atom()]
      }

  """
  @type lineage_sync_schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_account_pool_output() :: %{
        "accountSource" => list(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "resolutionStrategy" => list(any()),
        "updatedBy" => String.t() | atom()
      }

  """
  @type create_account_pool_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment() :: %{
        "deploymentId" => [String.t() | atom()],
        "deploymentStatus" => list(any()),
        "deploymentType" => list(any()),
        "failureReason" => environment_error(),
        "isDeploymentComplete" => [boolean()],
        "messages" => list(String.t() | atom())
      }

  """
  @type deployment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_output() :: %{
        "awsAccountId" => String.t() | atom(),
        "awsAccountRegion" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "environmentActions" => list(configurable_environment_action()),
        "environmentBlueprintId" => String.t() | atom(),
        "environmentConfigurationId" => String.t() | atom(),
        "environmentProfileId" => String.t() | atom(),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "lastDeployment" => deployment(),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "provider" => [String.t() | atom()],
        "provisionedResources" => list(resource()),
        "provisioningProperties" => list(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter())
      }

  """
  @type get_environment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_project_input() :: %{
        optional("description") => String.t() | atom(),
        optional("domainUnitId") => String.t() | atom(),
        optional("environmentDeploymentDetails") => environment_deployment_details(),
        optional("glossaryTerms") => list(String.t() | atom()),
        optional("name") => String.t() | atom(),
        optional("projectProfileVersion") => [String.t() | atom()],
        optional("resourceTags") => map(),
        optional("userParameters") => list(environment_configuration_user_parameter())
      }

  """
  @type update_project_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_source_input() :: %{}

  """
  @type get_data_source_input() :: %{}

  @typedoc """

  ## Example:

      get_lineage_node_input() :: %{
        optional("eventTimestamp") => [non_neg_integer()]
      }

  """
  @type get_lineage_node_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      project_member() :: %{
        "designation" => list(any()),
        "memberDetails" => list()
      }

  """
  @type project_member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      project_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "failureReasons" => list(project_deletion_error()),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "projectStatus" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type project_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_resolved_account() :: %{
        "awsAccountId" => String.t() | atom(),
        "regionName" => String.t() | atom(),
        "sourceAccountPoolId" => String.t() | atom()
      }

  """
  @type environment_resolved_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      glue_connection() :: %{
        "athenaProperties" => map(),
        "authenticationConfiguration" => authentication_configuration(),
        "compatibleComputeEnvironments" => list(list(any())()),
        "connectionProperties" => map(),
        "connectionSchemaVersion" => [integer()],
        "connectionType" => list(any()),
        "creationTime" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "lastConnectionValidationTime" => [non_neg_integer()],
        "lastUpdatedBy" => [String.t() | atom()],
        "lastUpdatedTime" => [non_neg_integer()],
        "matchCriteria" => list([String.t() | atom()]()),
        "name" => [String.t() | atom()],
        "physicalConnectionRequirements" => physical_connection_requirements(),
        "pythonProperties" => map(),
        "sparkProperties" => map(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }

  """
  @type glue_connection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_type_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type create_asset_type_policy_grant_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_accounts_in_account_pool_output() :: %{
        "items" => list(account_info()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_accounts_in_account_pool_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      project_deletion_error() :: %{
        "code" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type project_deletion_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_action_output() :: %{
        "description" => [String.t() | atom()],
        "domainId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "parameters" => list()
      }

  """
  @type create_environment_action_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authentication_configuration_input() :: %{
        "authenticationType" => list(any()),
        "basicAuthenticationCredentials" => basic_authentication_credentials(),
        "customAuthenticationCredentials" => map(),
        "kmsKeyArn" => [String.t() | atom()],
        "oAuth2Properties" => o_auth2_properties(),
        "secretArn" => [String.t() | atom()]
      }

  """
  @type authentication_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_project_profile_output() :: %{
        "allowCustomProjectResourceTags" => [boolean()],
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "environmentConfigurations" => list(environment_configuration()),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "projectResourceTags" => list(resource_tag_parameter()),
        "projectResourceTagsDescription" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type update_project_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_listing_change_set_output() :: %{
        "listingId" => String.t() | atom(),
        "listingRevision" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_listing_change_set_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_group_profile_output() :: %{
        "domainId" => String.t() | atom(),
        "groupName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type get_group_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_blueprint_output() :: %{
        "createdAt" => [non_neg_integer()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t() | atom(),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "provider" => [String.t() | atom()],
        "provisioningProperties" => list(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter())
      }

  """
  @type create_environment_blueprint_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_input() :: %{
        optional("deploymentOrder") => [integer()],
        optional("description") => [String.t() | atom()],
        optional("environmentAccountIdentifier") => [String.t() | atom()],
        optional("environmentAccountRegion") => [String.t() | atom()],
        optional("environmentBlueprintIdentifier") => [String.t() | atom()],
        optional("environmentConfigurationId") => [String.t() | atom()],
        optional("environmentProfileIdentifier") => String.t() | atom(),
        optional("glossaryTerms") => list(String.t() | atom()),
        optional("userParameters") => list(environment_parameter()),
        required("name") => [String.t() | atom()],
        required("projectIdentifier") => String.t() | atom()
      }

  """
  @type create_environment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authorization_code_properties() :: %{
        "authorizationCode" => [String.t() | atom()],
        "redirectUri" => [String.t() | atom()]
      }

  """
  @type authorization_code_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_profile_output() :: %{
        "awsAccountId" => String.t() | atom(),
        "awsAccountRegion" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "environmentBlueprintId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter())
      }

  """
  @type update_environment_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      term_relations() :: %{
        "classifies" => list(String.t() | atom()),
        "isA" => list(String.t() | atom())
      }

  """
  @type term_relations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_subscription_target_input() :: %{}

  """
  @type get_subscription_target_input() :: %{}

  @typedoc """

  ## Example:

      list_lineage_events_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("processingStatus") => list(any()),
        optional("sortOrder") => list(any()),
        optional("timestampAfter") => [non_neg_integer()],
        optional("timestampBefore") => [non_neg_integer()]
      }

  """
  @type list_lineage_events_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_time_series_data_points_output() :: %{
        "items" => list(time_series_data_point_summary_form_output()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_time_series_data_points_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_product_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("formsInput") => list(form_input()),
        optional("glossaryTerms") => list(String.t() | atom()),
        optional("items") => list(data_product_item()),
        required("name") => String.t() | atom(),
        required("owningProjectIdentifier") => String.t() | atom()
      }

  """
  @type create_data_product_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_governed_terms_output() :: %{}

  """
  @type associate_governed_terms_output() :: %{}

  @typedoc """

  ## Example:

      domain_summary() :: %{
        "arn" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainVersion" => list(any()),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "managedAccountId" => [String.t() | atom()],
        "name" => String.t() | atom(),
        "portalUrl" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type domain_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_project_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type create_project_policy_grant_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_product_revision() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "revision" => String.t() | atom()
      }

  """
  @type data_product_revision() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_subscription_target_output() :: %{
        "applicableAssetTypes" => list(String.t() | atom()),
        "authorizedPrincipals" => list(String.t() | atom()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "manageAccessRole" => String.t() | atom(),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "provider" => [String.t() | atom()],
        "subscriptionTargetConfig" => list(subscription_target_form()),
        "type" => [String.t() | atom()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type create_subscription_target_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_run_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "domainId" => String.t() | atom(),
        "endTime" => [non_neg_integer()],
        "error" => job_run_error(),
        "jobId" => [String.t() | atom()],
        "jobType" => list(any()),
        "runId" => [String.t() | atom()],
        "runMode" => list(any()),
        "startTime" => [non_neg_integer()],
        "status" => list(any())
      }

  """
  @type job_run_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_subscription_request_input() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("metadataForms") => list(form_input()),
        required("requestReason") => String.t() | atom(),
        required("subscribedListings") => list(subscribed_listing_input()),
        required("subscribedPrincipals") => list(list())
      }

  """
  @type create_subscription_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      owner_group_properties_output() :: %{
        "groupId" => [String.t() | atom()]
      }

  """
  @type owner_group_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      amazon_q_properties_input() :: %{
        "authMode" => [String.t() | atom()],
        "isEnabled" => [boolean()],
        "profileArn" => [String.t() | atom()]
      }

  """
  @type amazon_q_properties_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_account_pools_input() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_account_pools_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_product_revision_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t() | atom(),
        "formsOutput" => list(form_output()),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "items" => list(data_product_item()),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "revision" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_data_product_revision_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_source_input() :: %{
        optional("assetFormsInput") => list(form_input()),
        optional("clientToken") => [String.t() | atom()],
        optional("configuration") => list(),
        optional("connectionIdentifier") => [String.t() | atom()],
        optional("description") => String.t() | atom(),
        optional("enableSetting") => list(any()),
        optional("environmentIdentifier") => [String.t() | atom()],
        optional("publishOnImport") => [boolean()],
        optional("recommendation") => recommendation_configuration(),
        optional("schedule") => schedule_configuration(),
        required("name") => String.t() | atom(),
        required("projectIdentifier") => [String.t() | atom()],
        required("type") => String.t() | atom()
      }

  """
  @type create_data_source_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_form_type_input() :: %{
        optional("description") => String.t() | atom(),
        optional("status") => list(any()),
        required("model") => list(),
        required("name") => String.t() | atom(),
        required("owningProjectIdentifier") => String.t() | atom()
      }

  """
  @type create_form_type_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_project_profile_output() :: %{
        "allowCustomProjectResourceTags" => [boolean()],
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "environmentConfigurations" => list(environment_configuration()),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "projectResourceTags" => list(resource_tag_parameter()),
        "projectResourceTagsDescription" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type get_project_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_policy_grant_output() :: %{
        "grantId" => String.t() | atom()
      }

  """
  @type add_policy_grant_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_summary() :: %{
        "awsAccountId" => String.t() | atom(),
        "awsAccountRegion" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "environmentConfigurationId" => String.t() | atom(),
        "environmentProfileId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "provider" => [String.t() | atom()],
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type environment_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_accounts_in_account_pool_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_accounts_in_account_pool_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notification_resource() :: %{
        "id" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "type" => list(any())
      }

  """
  @type notification_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_source_run_activity() :: %{
        "createdAt" => non_neg_integer(),
        "dataAssetId" => [String.t() | atom()],
        "dataAssetStatus" => list(any()),
        "dataSourceRunId" => String.t() | atom(),
        "database" => String.t() | atom(),
        "errorMessage" => data_source_error_message(),
        "lineageSummary" => lineage_info(),
        "projectId" => String.t() | atom(),
        "technicalDescription" => String.t() | atom(),
        "technicalName" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type data_source_run_activity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_environment_input() :: %{}

  """
  @type delete_environment_input() :: %{}

  @typedoc """

  ## Example:

      search_input() :: %{
        optional("additionalAttributes") => list(list(any())()),
        optional("filters") => list(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("owningProjectIdentifier") => String.t() | atom(),
        optional("searchIn") => list(search_in_item()),
        optional("searchText") => String.t() | atom(),
        optional("sort") => search_sort(),
        required("searchScope") => list(any())
      }

  """
  @type search_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_pool_output() :: %{
        "accountSource" => list(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "resolutionStrategy" => list(any()),
        "updatedBy" => String.t() | atom()
      }

  """
  @type get_account_pool_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      single_sign_on() :: %{
        "idcInstanceArn" => [String.t() | atom()],
        "type" => list(any()),
        "userAssignment" => list(any())
      }

  """
  @type single_sign_on() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "externalIdentifier" => String.t() | atom(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t() | atom(),
        "formsOutput" => list(form_output()),
        "glossaryTerms" => list(String.t() | atom()),
        "governedGlossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "latestTimeSeriesDataPointFormsOutput" => list(time_series_data_point_summary_form_output()),
        "listing" => asset_listing_details(),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "predictionConfiguration" => prediction_configuration(),
        "readOnlyFormsOutput" => list(form_output()),
        "revision" => String.t() | atom(),
        "typeIdentifier" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type create_asset_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_subscription_grants_output() :: %{
        "items" => list(subscription_grant_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_subscription_grants_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_configuration_user_parameter() :: %{
        "environmentConfigurationName" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "environmentParameters" => list(environment_parameter()),
        "environmentResolvedAccount" => environment_resolved_account()
      }

  """
  @type environment_configuration_user_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      less_than_expression() :: %{
        "columnName" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type less_than_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      revoke_subscription_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "retainPermissions" => [boolean()],
        "status" => list(any()),
        "subscribedListing" => subscribed_listing(),
        "subscribedPrincipal" => list(),
        "subscriptionRequestId" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type revoke_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_rule_output() :: %{
        "action" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "detail" => list(),
        "identifier" => String.t() | atom(),
        "lastUpdatedBy" => String.t() | atom(),
        "name" => String.t() | atom(),
        "revision" => String.t() | atom(),
        "ruleType" => list(any()),
        "scope" => rule_scope(),
        "target" => list(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_user_profile_output() :: %{
        "details" => list(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type get_user_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_entity_owner_output() :: %{}

  """
  @type add_entity_owner_output() :: %{}

  @typedoc """

  ## Example:

      list_connections_output() :: %{
        "items" => list(connection_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_connections_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_details() :: %{
        "userId" => [String.t() | atom()]
      }

  """
  @type user_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_unit_input() :: %{}

  """
  @type delete_domain_unit_input() :: %{}

  @typedoc """

  ## Example:

      get_data_product_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t() | atom(),
        "formsOutput" => list(form_output()),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "items" => list(data_product_item()),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "revision" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type get_data_product_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_connection_input() :: %{
        optional("awsLocation") => aws_location(),
        optional("description") => String.t() | atom(),
        optional("props") => list()
      }

  """
  @type update_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_job_runs_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any()),
        optional("status") => list(any())
      }

  """
  @type list_job_runs_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_profile_policy_grant_detail() :: %{
        "domainUnitId" => String.t() | atom()
      }

  """
  @type create_environment_profile_policy_grant_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_time_series_data_points_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("formName") => String.t() | atom()
      }

  """
  @type delete_time_series_data_points_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group_profile_summary() :: %{
        "domainId" => String.t() | atom(),
        "groupName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type group_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_revision_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("formsInput") => list(form_input()),
        optional("glossaryTerms") => list(String.t() | atom()),
        optional("predictionConfiguration") => prediction_configuration(),
        optional("typeRevision") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_asset_revision_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_info() :: %{
        "awsAccountId" => String.t() | atom(),
        "awsAccountName" => String.t() | atom(),
        "supportedRegions" => list(String.t() | atom())
      }

  """
  @type account_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      is_not_null_expression() :: %{
        "columnName" => [String.t() | atom()]
      }

  """
  @type is_not_null_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_tag_parameter() :: %{
        "isValueEditable" => [boolean()],
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type resource_tag_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_subscription_request_input() :: %{
        required("requestReason") => String.t() | atom()
      }

  """
  @type update_subscription_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unit() :: %{}

  """
  @type unit() :: %{}

  @typedoc """

  ## Example:

      update_domain_unit_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "lastUpdatedBy" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owners" => list(list()),
        "parentDomainUnitId" => String.t() | atom()
      }

  """
  @type update_domain_unit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_listing_input() :: %{
        optional("listingRevision") => String.t() | atom()
      }

  """
  @type get_listing_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      redshift_self_grant_status_output() :: %{
        "selfGrantStatusDetails" => list(self_grant_status_detail())
      }

  """
  @type redshift_self_grant_status_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_project_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "environmentDeploymentDetails" => environment_deployment_details(),
        "failureReasons" => list(project_deletion_error()),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "projectProfileId" => String.t() | atom(),
        "projectStatus" => list(any()),
        "resourceTags" => list(resource_tag()),
        "userParameters" => list(environment_configuration_user_parameter())
      }

  """
  @type create_project_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_blueprint_configuration_input() :: %{}

  """
  @type get_environment_blueprint_configuration_input() :: %{}

  @typedoc """

  ## Example:

      match_offset() :: %{
        "endOffset" => [integer()],
        "startOffset" => [integer()]
      }

  """
  @type match_offset() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscription_target_summary() :: %{
        "applicableAssetTypes" => list(String.t() | atom()),
        "authorizedPrincipals" => list(String.t() | atom()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "manageAccessRole" => String.t() | atom(),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "provider" => [String.t() | atom()],
        "subscriptionTargetConfig" => list(subscription_target_form()),
        "type" => [String.t() | atom()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type subscription_target_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lineage_node_history_input() :: %{
        optional("direction") => list(any()),
        optional("eventTimestampGTE") => [non_neg_integer()],
        optional("eventTimestampLTE") => [non_neg_integer()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any())
      }

  """
  @type list_lineage_node_history_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      revoke_subscription_input() :: %{
        optional("retainPermissions") => [boolean()]
      }

  """
  @type revoke_subscription_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_types_input() :: %{
        optional("filters") => list(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("searchIn") => list(search_in_item()),
        optional("searchText") => String.t() | atom(),
        optional("sort") => search_sort(),
        required("managed") => [boolean()],
        required("searchScope") => list(any())
      }

  """
  @type search_types_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_connection_output() :: %{
        "connectionId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "physicalEndpoints" => list(physical_endpoint()),
        "projectId" => String.t() | atom(),
        "props" => list(),
        "scope" => list(any()),
        "type" => list(any())
      }

  """
  @type create_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      override_project_owners_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type override_project_owners_policy_grant_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_environment_role_input() :: %{}

  """
  @type disassociate_environment_role_input() :: %{}

  @typedoc """

  ## Example:

      greater_than_or_equal_to_expression() :: %{
        "columnName" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type greater_than_or_equal_to_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_account_pool_output() :: %{}

  """
  @type delete_account_pool_output() :: %{}

  @typedoc """

  ## Example:

      list_policy_grants_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("policyType") => list(any())
      }

  """
  @type list_policy_grants_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_lineage_event_input() :: %{}

  """
  @type get_lineage_event_input() :: %{}

  @typedoc """

  ## Example:

      domain_unit_filter_for_project() :: %{
        "domainUnit" => String.t() | atom(),
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type domain_unit_filter_for_project() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_filter_input() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("description") => String.t() | atom(),
        required("configuration") => list(),
        required("name") => String.t() | atom()
      }

  """
  @type create_asset_filter_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mlflow_properties_patch() :: %{
        "trackingServerArn" => [String.t() | atom()],
        "trackingServerName" => [String.t() | atom()]
      }

  """
  @type mlflow_properties_patch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      post_time_series_data_points_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("forms") => list(time_series_data_point_form_input())
      }

  """
  @type post_time_series_data_points_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glue_properties_output() :: %{
        "errorMessage" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type glue_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_unit_input() :: %{}

  """
  @type get_domain_unit_input() :: %{}

  @typedoc """

  ## Example:

      get_data_source_run_input() :: %{}

  """
  @type get_data_source_run_input() :: %{}

  @typedoc """

  ## Example:

      subscription_grant_summary() :: %{
        "assets" => list(subscribed_asset()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "grantedEntity" => list(),
        "id" => String.t() | atom(),
        "status" => list(any()),
        "subscriptionId" => String.t() | atom(),
        "subscriptionTargetId" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type subscription_grant_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      athena_properties_output() :: %{
        "workgroupName" => [String.t() | atom()]
      }

  """
  @type athena_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_project_profile_input() :: %{
        optional("allowCustomProjectResourceTags") => [boolean()],
        optional("description") => String.t() | atom(),
        optional("domainUnitIdentifier") => String.t() | atom(),
        optional("environmentConfigurations") => list(environment_configuration()),
        optional("name") => String.t() | atom(),
        optional("projectResourceTags") => list(resource_tag_parameter()),
        optional("projectResourceTagsDescription") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type update_project_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_source_output() :: %{
        "assetFormsOutput" => list(form_output()),
        "configuration" => list(),
        "connectionId" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "enableSetting" => list(any()),
        "environmentId" => String.t() | atom(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t() | atom(),
        "lastRunAssetCount" => [integer()],
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "publishOnImport" => [boolean()],
        "recommendation" => recommendation_configuration(),
        "schedule" => schedule_configuration(),
        "selfGrantStatus" => list(),
        "status" => list(any()),
        "type" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_data_source_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_product_revision_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("formsInput") => list(form_input()),
        optional("glossaryTerms") => list(String.t() | atom()),
        optional("items") => list(data_product_item()),
        required("name") => String.t() | atom()
      }

  """
  @type create_data_product_revision_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_notifications_input() :: %{
        optional("afterTimestamp") => [non_neg_integer()],
        optional("beforeTimestamp") => [non_neg_integer()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("subjects") => list([String.t() | atom()]()),
        optional("taskStatus") => list(any()),
        required("type") => list(any())
      }

  """
  @type list_notifications_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      redshift_serverless_storage() :: %{
        "workgroupName" => [String.t() | atom()]
      }

  """
  @type redshift_serverless_storage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_subscriptions_input() :: %{
        optional("approverProjectId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("owningProjectId") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("status") => list(any()),
        optional("subscribedListingId") => String.t() | atom(),
        optional("subscriptionRequestIdentifier") => String.t() | atom()
      }

  """
  @type list_subscriptions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_filter_input() :: %{}

  """
  @type delete_asset_filter_input() :: %{}

  @typedoc """

  ## Example:

      update_user_profile_input() :: %{
        optional("type") => list(any()),
        required("status") => list(any())
      }

  """
  @type update_user_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_type_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "formsOutput" => map(),
        "name" => String.t() | atom(),
        "originDomainId" => String.t() | atom(),
        "originProjectId" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "revision" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type get_asset_type_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environment_blueprint_configurations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_environment_blueprint_configurations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environments_input() :: %{
        optional("awsAccountId") => String.t() | atom(),
        optional("awsAccountRegion") => String.t() | atom(),
        optional("environmentBlueprintIdentifier") => String.t() | atom(),
        optional("environmentProfileIdentifier") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("name") => [String.t() | atom()],
        optional("nextToken") => String.t() | atom(),
        optional("provider") => [String.t() | atom()],
        optional("status") => list(any()),
        required("projectIdentifier") => String.t() | atom()
      }

  """
  @type list_environments_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_environment_role_input() :: %{}

  """
  @type associate_environment_role_input() :: %{}

  @typedoc """

  ## Example:

      cancel_metadata_generation_run_output() :: %{}

  """
  @type cancel_metadata_generation_run_output() :: %{}

  @typedoc """

  ## Example:

      list_environment_actions_output() :: %{
        "items" => list(environment_action_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_environment_actions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_metadata_generation_run_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("owningProjectIdentifier") => String.t() | atom(),
        required("target") => metadata_generation_run_target(),
        required("type") => list(any())
      }

  """
  @type start_metadata_generation_run_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_item_additional_attributes() :: %{
        "formsOutput" => list(form_output()),
        "latestTimeSeriesDataPointFormsOutput" => list(time_series_data_point_summary_form_output()),
        "matchRationale" => list(list()),
        "readOnlyFormsOutput" => list(form_output())
      }

  """
  @type asset_item_additional_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authentication_configuration_patch() :: %{
        "basicAuthenticationCredentials" => basic_authentication_credentials(),
        "secretArn" => [String.t() | atom()]
      }

  """
  @type authentication_configuration_patch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_blueprint_configuration_item() :: %{
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t() | atom(),
        "enabledRegions" => list(String.t() | atom()),
        "environmentBlueprintId" => String.t() | atom(),
        "environmentRolePermissionBoundary" => String.t() | atom(),
        "manageAccessRoleArn" => String.t() | atom(),
        "provisioningConfigurations" => list(list()),
        "provisioningRoleArn" => String.t() | atom(),
        "regionalParameters" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type environment_blueprint_configuration_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_action_input() :: %{
        optional("description") => [String.t() | atom()],
        optional("name") => [String.t() | atom()],
        optional("parameters") => list()
      }

  """
  @type update_environment_action_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_entity_owner_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("owner") => list()
      }

  """
  @type remove_entity_owner_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_rule_output() :: %{
        "action" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "detail" => list(),
        "identifier" => String.t() | atom(),
        "name" => String.t() | atom(),
        "ruleType" => list(any()),
        "scope" => rule_scope(),
        "target" => list(),
        "targetType" => list(any())
      }

  """
  @type create_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_job_run_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "details" => list(),
        "domainId" => String.t() | atom(),
        "endTime" => [non_neg_integer()],
        "error" => job_run_error(),
        "id" => [String.t() | atom()],
        "jobId" => [String.t() | atom()],
        "jobType" => list(any()),
        "runMode" => list(any()),
        "startTime" => [non_neg_integer()],
        "status" => list(any())
      }

  """
  @type get_job_run_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_product_input() :: %{}

  """
  @type delete_data_product_input() :: %{}

  @typedoc """

  ## Example:

      start_data_source_run_output() :: %{
        "createdAt" => non_neg_integer(),
        "dataSourceConfigurationSnapshot" => [String.t() | atom()],
        "dataSourceId" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "runStatisticsForAssets" => run_statistics_for_assets(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "stoppedAt" => non_neg_integer(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type start_data_source_run_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_choice() :: %{
        "predictionChoices" => list([integer()]()),
        "predictionTarget" => [String.t() | atom()]
      }

  """
  @type reject_choice() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_source_run_activities_output() :: %{
        "items" => list(data_source_run_activity()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_data_source_run_activities_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_unit_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "lastUpdatedBy" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owners" => list(list()),
        "parentDomainUnitId" => String.t() | atom()
      }

  """
  @type get_domain_unit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metadata_form_summary() :: %{
        "formName" => String.t() | atom(),
        "typeName" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type metadata_form_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_predictions_output() :: %{
        "assetId" => String.t() | atom(),
        "assetRevision" => String.t() | atom(),
        "domainId" => String.t() | atom()
      }

  """
  @type reject_predictions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_input() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("description") => [String.t() | atom()],
        optional("domainVersion") => list(any()),
        optional("kmsKeyIdentifier") => String.t() | atom(),
        optional("serviceRole") => String.t() | atom(),
        optional("singleSignOn") => single_sign_on(),
        optional("tags") => map(),
        required("domainExecutionRole") => String.t() | atom(),
        required("name") => [String.t() | atom()]
      }

  """
  @type create_domain_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iam_properties_output() :: %{
        "environmentId" => [String.t() | atom()],
        "glueLineageSyncEnabled" => [boolean()]
      }

  """
  @type iam_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_subscription_target_input() :: %{}

  """
  @type delete_subscription_target_input() :: %{}

  @typedoc """

  ## Example:

      hyper_pod_properties_output() :: %{
        "clusterArn" => [String.t() | atom()],
        "clusterName" => [String.t() | atom()],
        "orchestrator" => list(any())
      }

  """
  @type hyper_pod_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_time_series_data_points_input() :: %{
        optional("endedAt") => [non_neg_integer()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("startedAt") => [non_neg_integer()],
        required("formName") => String.t() | atom()
      }

  """
  @type list_time_series_data_points_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_subscription_request_details_input() :: %{}

  """
  @type get_subscription_request_details_input() :: %{}

  @typedoc """

  ## Example:

      lineage_node_type_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => [String.t() | atom()],
        "domainId" => String.t() | atom(),
        "formsOutput" => map(),
        "name" => [String.t() | atom()],
        "revision" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type lineage_node_type_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_metadata_generation_run_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "status" => list(any()),
        "target" => metadata_generation_run_target(),
        "type" => list(any())
      }

  """
  @type get_metadata_generation_run_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_rule_output() :: %{
        "action" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "detail" => list(),
        "identifier" => String.t() | atom(),
        "lastUpdatedBy" => String.t() | atom(),
        "name" => String.t() | atom(),
        "revision" => String.t() | atom(),
        "ruleType" => list(any()),
        "scope" => rule_scope(),
        "target" => list(),
        "targetType" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_run_error() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type job_run_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lineage_event_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "eventSummary" => list(),
        "eventTime" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "processingStatus" => list(any())
      }

  """
  @type lineage_event_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glue_connection_input() :: %{
        "athenaProperties" => map(),
        "authenticationConfiguration" => authentication_configuration_input(),
        "connectionProperties" => map(),
        "connectionType" => list(any()),
        "description" => [String.t() | atom()],
        "matchCriteria" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "physicalConnectionRequirements" => physical_connection_requirements(),
        "pythonProperties" => map(),
        "sparkProperties" => map(),
        "validateCredentials" => [boolean()],
        "validateForComputeEnvironments" => list(list(any())())
      }

  """
  @type glue_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_source_error_message() :: %{
        "errorDetail" => [String.t() | atom()],
        "errorType" => list(any())
      }

  """
  @type data_source_error_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      redshift_cluster_storage() :: %{
        "clusterName" => [String.t() | atom()]
      }

  """
  @type redshift_cluster_storage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_type_output() :: %{}

  """
  @type delete_asset_type_output() :: %{}

  @typedoc """

  ## Example:

      update_account_pool_output() :: %{
        "accountSource" => list(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "resolutionStrategy" => list(any()),
        "updatedBy" => String.t() | atom()
      }

  """
  @type update_account_pool_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_rule() :: %{
        "rule" => list(any()),
        "threshold" => [float()]
      }

  """
  @type reject_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_user_profile_input() :: %{
        optional("type") => list(any())
      }

  """
  @type get_user_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glossary_term_item() :: %{
        "additionalAttributes" => glossary_term_item_additional_attributes(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "glossaryId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "longDescription" => String.t() | atom(),
        "name" => String.t() | atom(),
        "shortDescription" => String.t() | atom(),
        "status" => list(any()),
        "termRelations" => term_relations(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom(),
        "usageRestrictions" => list(list(any())())
      }

  """
  @type glossary_term_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      override_domain_unit_owners_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type override_domain_unit_owners_policy_grant_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_target_name_map() :: %{
        "assetId" => String.t() | atom(),
        "targetName" => [String.t() | atom()]
      }

  """
  @type asset_target_name_map() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_environment_blueprint_configuration_output() :: %{
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t() | atom(),
        "enabledRegions" => list(String.t() | atom()),
        "environmentBlueprintId" => String.t() | atom(),
        "environmentRolePermissionBoundary" => String.t() | atom(),
        "manageAccessRoleArn" => String.t() | atom(),
        "provisioningConfigurations" => list(list()),
        "provisioningRoleArn" => String.t() | atom(),
        "regionalParameters" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type put_environment_blueprint_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_subscription_grant_input() :: %{
        optional("assetTargetNames") => list(asset_target_name_map()),
        optional("clientToken") => [String.t() | atom()],
        optional("subscriptionTargetIdentifier") => String.t() | atom(),
        required("environmentIdentifier") => String.t() | atom(),
        required("grantedEntity") => list()
      }

  """
  @type create_subscription_grant_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_profile_input() :: %{
        optional("awsAccountId") => String.t() | atom(),
        optional("awsAccountRegion") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("userParameters") => list(environment_parameter()),
        required("environmentBlueprintIdentifier") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("projectIdentifier") => String.t() | atom()
      }

  """
  @type create_environment_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_output() :: %{
        "awsAccountId" => String.t() | atom(),
        "awsAccountRegion" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "environmentActions" => list(configurable_environment_action()),
        "environmentBlueprintId" => String.t() | atom(),
        "environmentConfigurationId" => String.t() | atom(),
        "environmentProfileId" => String.t() | atom(),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "lastDeployment" => deployment(),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "provider" => [String.t() | atom()],
        "provisionedResources" => list(resource()),
        "provisioningProperties" => list(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter())
      }

  """
  @type create_environment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      post_lineage_event_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("event") => binary()
      }

  """
  @type post_lineage_event_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iam_user_profile_details() :: %{
        "arn" => [String.t() | atom()],
        "principalId" => [String.t() | atom()]
      }

  """
  @type iam_user_profile_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_predictions_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("rejectChoices") => list(reject_choice()),
        optional("rejectRule") => reject_rule(),
        optional("revision") => String.t() | atom()
      }

  """
  @type reject_predictions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_series_data_point_form_input() :: %{
        "content" => [String.t() | atom()],
        "formName" => String.t() | atom(),
        "timestamp" => [non_neg_integer()],
        "typeIdentifier" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type time_series_data_point_form_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_output() :: %{
        "items" => list(list()),
        "nextToken" => String.t() | atom(),
        "totalMatchCount" => [integer()]
      }

  """
  @type search_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_subscription_grant_input() :: %{}

  """
  @type get_subscription_grant_input() :: %{}

  @typedoc """

  ## Example:

      delete_rule_output() :: %{}

  """
  @type delete_rule_output() :: %{}

  @typedoc """

  ## Example:

      o_auth2_client_application() :: %{
        "aWSManagedClientApplicationReference" => [String.t() | atom()],
        "userManagedClientApplicationClientId" => [String.t() | atom()]
      }

  """
  @type o_auth2_client_application() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_user_profile_input() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("userType") => list(any()),
        required("userIdentifier") => String.t() | atom()
      }

  """
  @type create_user_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_environment_blueprint_configuration_input() :: %{}

  """
  @type delete_environment_blueprint_configuration_input() :: %{}

  @typedoc """

  ## Example:

      lineage_info() :: %{
        "errorMessage" => String.t() | atom(),
        "eventId" => [String.t() | atom()],
        "eventStatus" => list(any())
      }

  """
  @type lineage_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscribed_listing() :: %{
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "item" => list(),
        "name" => String.t() | atom(),
        "ownerProjectId" => String.t() | atom(),
        "ownerProjectName" => [String.t() | atom()],
        "revision" => String.t() | atom()
      }

  """
  @type subscribed_listing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_blueprint_output() :: %{
        "createdAt" => [non_neg_integer()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t() | atom(),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "provider" => [String.t() | atom()],
        "provisioningProperties" => list(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter())
      }

  """
  @type update_environment_blueprint_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_form_type_output() :: %{
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "originDomainId" => String.t() | atom(),
        "originProjectId" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "revision" => String.t() | atom()
      }

  """
  @type create_form_type_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_pool_input() :: %{}

  """
  @type get_account_pool_input() :: %{}

  @typedoc """

  ## Example:

      list_entity_owners_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_entity_owners_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aggregation_output_item() :: %{
        "count" => [integer()],
        "displayValue" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type aggregation_output_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_metadata_generation_run_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type start_metadata_generation_run_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_subscription_target_input() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("provider") => [String.t() | atom()],
        required("applicableAssetTypes") => list(String.t() | atom()),
        required("authorizedPrincipals") => list(String.t() | atom()),
        required("manageAccessRole") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("subscriptionTargetConfig") => list(subscription_target_form()),
        required("type") => [String.t() | atom()]
      }

  """
  @type create_subscription_target_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_source_input() :: %{
        optional("assetFormsInput") => list(form_input()),
        optional("configuration") => list(),
        optional("description") => String.t() | atom(),
        optional("enableSetting") => list(any()),
        optional("name") => String.t() | atom(),
        optional("publishOnImport") => [boolean()],
        optional("recommendation") => recommendation_configuration(),
        optional("retainPermissionsOnRevokeFailure") => [boolean()],
        optional("schedule") => schedule_configuration()
      }

  """
  @type update_data_source_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_in_data_product_listing_item() :: %{
        "entityId" => [String.t() | atom()],
        "entityRevision" => [String.t() | atom()],
        "entityType" => [String.t() | atom()]
      }

  """
  @type asset_in_data_product_listing_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      form_entry_input() :: %{
        "required" => [boolean()],
        "typeIdentifier" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type form_entry_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_listing() :: %{
        "assetId" => String.t() | atom(),
        "assetRevision" => String.t() | atom(),
        "assetType" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "forms" => String.t() | atom(),
        "glossaryTerms" => list(detailed_glossary_term()),
        "governedGlossaryTerms" => list(detailed_glossary_term()),
        "latestTimeSeriesDataPointForms" => list(time_series_data_point_summary_form_output()),
        "owningProjectId" => String.t() | atom()
      }

  """
  @type asset_listing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_environment_blueprint_input() :: %{}

  """
  @type delete_environment_blueprint_input() :: %{}

  @typedoc """

  ## Example:

      domain_unit_user_properties() :: %{
        "userId" => [String.t() | atom()]
      }

  """
  @type domain_unit_user_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_input() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("skipDeletionCheck") => [boolean()]
      }

  """
  @type delete_domain_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_rule_input() :: %{
        optional("revision") => String.t() | atom()
      }

  """
  @type get_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domain_units_for_parent_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("parentDomainUnitIdentifier") => String.t() | atom()
      }

  """
  @type list_domain_units_for_parent_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_parameter() :: %{
        "defaultValue" => [String.t() | atom()],
        "description" => String.t() | atom(),
        "fieldType" => [String.t() | atom()],
        "isEditable" => [boolean()],
        "isOptional" => [boolean()],
        "isUpdateSupported" => [boolean()],
        "keyName" => [String.t() | atom()]
      }

  """
  @type custom_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_input() :: %{
        optional("revision") => String.t() | atom()
      }

  """
  @type get_asset_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      projects_for_rule() :: %{
        "selectionMode" => list(any()),
        "specificProjects" => list(String.t() | atom())
      }

  """
  @type projects_for_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_profile_output() :: %{
        "details" => list(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type update_user_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_project_membership_output() :: %{}

  """
  @type create_project_membership_output() :: %{}

  @typedoc """

  ## Example:

      is_null_expression() :: %{
        "columnName" => [String.t() | atom()]
      }

  """
  @type is_null_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      text_match_item() :: %{
        "attribute" => String.t() | atom(),
        "matchOffsets" => list(match_offset()),
        "text" => [String.t() | atom()]
      }

  """
  @type text_match_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_policy_grant_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("detail") => list(),
        required("policyType") => list(any()),
        required("principal") => list()
      }

  """
  @type add_policy_grant_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_glossary_output() :: %{}

  """
  @type delete_glossary_output() :: %{}

  @typedoc """

  ## Example:

      get_glossary_term_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "glossaryId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "longDescription" => String.t() | atom(),
        "name" => String.t() | atom(),
        "shortDescription" => String.t() | atom(),
        "status" => list(any()),
        "termRelations" => term_relations(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom(),
        "usageRestrictions" => list(list(any())())
      }

  """
  @type get_glossary_term_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domains_output() :: %{
        "items" => list(domain_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_domains_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_output() :: %{
        "awsAccountId" => String.t() | atom(),
        "awsAccountRegion" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "environmentActions" => list(configurable_environment_action()),
        "environmentBlueprintId" => String.t() | atom(),
        "environmentConfigurationId" => String.t() | atom(),
        "environmentProfileId" => String.t() | atom(),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "lastDeployment" => deployment(),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "provider" => [String.t() | atom()],
        "provisionedResources" => list(resource()),
        "provisioningProperties" => list(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter())
      }

  """
  @type update_environment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      like_expression() :: %{
        "columnName" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type like_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_source_output() :: %{
        "assetFormsOutput" => list(form_output()),
        "configuration" => list(),
        "connectionId" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "enableSetting" => list(any()),
        "environmentId" => String.t() | atom(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t() | atom(),
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "publishOnImport" => [boolean()],
        "recommendation" => recommendation_configuration(),
        "schedule" => schedule_configuration(),
        "status" => list(any()),
        "type" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_data_source_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      spark_glue_args() :: %{
        "connection" => [String.t() | atom()]
      }

  """
  @type spark_glue_args() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      equal_to_expression() :: %{
        "columnName" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type equal_to_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_iam_portal_login_url_output() :: %{
        "authCodeUrl" => [String.t() | atom()],
        "userProfileId" => [String.t() | atom()]
      }

  """
  @type get_iam_portal_login_url_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscribed_product_listing() :: %{
        "assetListings" => list(asset_in_data_product_listing_item()),
        "description" => [String.t() | atom()],
        "entityId" => String.t() | atom(),
        "entityRevision" => String.t() | atom(),
        "glossaryTerms" => list(detailed_glossary_term()),
        "name" => [String.t() | atom()]
      }

  """
  @type subscribed_product_listing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_rule() :: %{
        "rule" => list(any()),
        "threshold" => [float()]
      }

  """
  @type accept_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metadata_generation_run_target() :: %{
        "identifier" => [String.t() | atom()],
        "revision" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type metadata_generation_run_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_source_output() :: %{
        "assetFormsOutput" => list(form_output()),
        "configuration" => list(),
        "connectionId" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "enableSetting" => list(any()),
        "environmentId" => String.t() | atom(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t() | atom(),
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "publishOnImport" => [boolean()],
        "retainPermissionsOnRevokeFailure" => [boolean()],
        "schedule" => schedule_configuration(),
        "selfGrantStatus" => list(),
        "status" => list(any()),
        "type" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type delete_data_source_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_connection_input() :: %{
        optional("withSecret") => [boolean()]
      }

  """
  @type get_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_connection_output() :: %{
        "connectionCredentials" => connection_credentials(),
        "connectionId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "environmentUserRole" => [String.t() | atom()],
        "name" => String.t() | atom(),
        "physicalEndpoints" => list(physical_endpoint()),
        "projectId" => String.t() | atom(),
        "props" => list(),
        "scope" => list(any()),
        "type" => list(any())
      }

  """
  @type get_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_glossary_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom(),
        "usageRestrictions" => list(list(any())())
      }

  """
  @type get_glossary_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_listing_item_additional_attributes() :: %{
        "forms" => String.t() | atom(),
        "latestTimeSeriesDataPointForms" => list(time_series_data_point_summary_form_output()),
        "matchRationale" => list(list())
      }

  """
  @type asset_listing_item_additional_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environment_blueprints_input() :: %{
        optional("managed") => [boolean()],
        optional("maxResults") => integer(),
        optional("name") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_environment_blueprints_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_sources_input() :: %{
        optional("connectionIdentifier") => [String.t() | atom()],
        optional("environmentIdentifier") => [String.t() | atom()],
        optional("maxResults") => integer(),
        optional("name") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any()),
        optional("type") => String.t() | atom(),
        required("projectIdentifier") => [String.t() | atom()]
      }

  """
  @type list_data_sources_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lineage_events_output() :: %{
        "items" => list(lineage_event_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_lineage_events_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iam_properties_input() :: %{
        "glueLineageSyncEnabled" => [boolean()]
      }

  """
  @type iam_properties_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_projects_output() :: %{
        "items" => list(project_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_projects_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_user_profile_output() :: %{
        "details" => list(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type create_user_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_user_profiles_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("searchText") => String.t() | atom(),
        required("userType") => list(any())
      }

  """
  @type search_user_profiles_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_action_output() :: %{
        "description" => [String.t() | atom()],
        "domainId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "parameters" => list()
      }

  """
  @type get_environment_action_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_source_run_lineage_summary() :: %{
        "importStatus" => list(any())
      }

  """
  @type data_source_run_lineage_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_subscription_request_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "decisionComment" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "existingSubscriptionId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadataForms" => list(form_output()),
        "requestReason" => String.t() | atom(),
        "reviewerId" => [String.t() | atom()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()),
        "subscribedPrincipals" => list(list()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type reject_subscription_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hyper_pod_properties_input() :: %{
        "clusterName" => [String.t() | atom()]
      }

  """
  @type hyper_pod_properties_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      topic() :: %{
        "resource" => notification_resource(),
        "role" => list(any()),
        "subject" => [String.t() | atom()]
      }

  """
  @type topic() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configurable_environment_action() :: %{
        "auth" => list(any()),
        "parameters" => list(configurable_action_parameter()),
        "type" => [String.t() | atom()]
      }

  """
  @type configurable_environment_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_output() :: %{
        "arn" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "description" => [String.t() | atom()],
        "domainExecutionRole" => String.t() | atom(),
        "domainVersion" => list(any()),
        "id" => String.t() | atom(),
        "kmsKeyIdentifier" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => [String.t() | atom()],
        "portalUrl" => [String.t() | atom()],
        "rootDomainUnitId" => String.t() | atom(),
        "serviceRole" => String.t() | atom(),
        "singleSignOn" => single_sign_on(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type get_domain_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_listings_output() :: %{
        "aggregates" => list(aggregation_output()),
        "items" => list(list()),
        "nextToken" => String.t() | atom(),
        "totalMatchCount" => [integer()]
      }

  """
  @type search_listings_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aggregation_output() :: %{
        "attribute" => String.t() | atom(),
        "displayValue" => String.t() | atom(),
        "items" => list(aggregation_output_item())
      }

  """
  @type aggregation_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prediction_configuration() :: %{
        "businessNameGeneration" => business_name_generation_configuration()
      }

  """
  @type prediction_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_action_summary() :: %{
        "description" => [String.t() | atom()],
        "domainId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "parameters" => list()
      }

  """
  @type environment_action_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_blueprint_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "provider" => [String.t() | atom()],
        "provisioningProperties" => list(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type environment_blueprint_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_input() :: %{}

  """
  @type get_environment_input() :: %{}

  @typedoc """

  ## Example:

      create_glossary_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("status") => list(any()),
        optional("usageRestrictions") => list(list(any())()),
        required("name") => String.t() | atom(),
        required("owningProjectIdentifier") => String.t() | atom()
      }

  """
  @type create_glossary_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      listing_revision_input() :: %{
        "identifier" => String.t() | atom(),
        "revision" => String.t() | atom()
      }

  """
  @type listing_revision_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_account_pool_handler() :: %{
        "lambdaExecutionRoleArn" => String.t() | atom(),
        "lambdaFunctionArn" => String.t() | atom()
      }

  """
  @type custom_account_pool_handler() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environments_output() :: %{
        "items" => list(environment_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_environments_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      run_statistics_for_assets() :: %{
        "added" => [integer()],
        "failed" => [integer()],
        "skipped" => [integer()],
        "unchanged" => [integer()],
        "updated" => [integer()]
      }

  """
  @type run_statistics_for_assets() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glue_properties_patch() :: %{
        "glueConnectionInput" => glue_connection_patch()
      }

  """
  @type glue_properties_patch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_subscription_grant_status_output() :: %{
        "assets" => list(subscribed_asset()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "grantedEntity" => list(),
        "id" => String.t() | atom(),
        "status" => list(any()),
        "subscriptionId" => String.t() | atom(),
        "subscriptionTargetId" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type update_subscription_grant_status_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_input() :: %{
        optional("blueprintVersion") => [String.t() | atom()],
        optional("description") => [String.t() | atom()],
        optional("glossaryTerms") => list(String.t() | atom()),
        optional("name") => [String.t() | atom()],
        optional("userParameters") => list(environment_parameter())
      }

  """
  @type update_environment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_subscription_targets_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_subscription_targets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sage_maker_run_configuration_input() :: %{
        "trackingAssets" => map()
      }

  """
  @type sage_maker_run_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_filter_input() :: %{}

  """
  @type get_asset_filter_input() :: %{}

  @typedoc """

  ## Example:

      post_lineage_event_output() :: %{
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom()
      }

  """
  @type post_lineage_event_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      use_asset_type_policy_grant_detail() :: %{
        "domainUnitId" => String.t() | atom()
      }

  """
  @type use_asset_type_policy_grant_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_equal_to_expression() :: %{
        "columnName" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type not_equal_to_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_series_data_point_form_output() :: %{
        "content" => [String.t() | atom()],
        "formName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "timestamp" => [non_neg_integer()],
        "typeIdentifier" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type time_series_data_point_form_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_like_expression() :: %{
        "columnName" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type not_like_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_subscription_request_input() :: %{}

  """
  @type delete_subscription_request_input() :: %{}

  @typedoc """

  ## Example:

      owner_group_properties() :: %{
        "groupIdentifier" => String.t() | atom()
      }

  """
  @type owner_group_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_type_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "formsOutput" => map(),
        "name" => String.t() | atom(),
        "originDomainId" => String.t() | atom(),
        "originProjectId" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "revision" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type asset_type_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glue_o_auth2_credentials() :: %{
        "accessToken" => [String.t() | atom()],
        "jwtToken" => [String.t() | atom()],
        "refreshToken" => [String.t() | atom()],
        "userManagedClientApplicationClientSecret" => [String.t() | atom()]
      }

  """
  @type glue_o_auth2_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glue_run_configuration_input() :: %{
        "autoImportDataQualityResult" => [boolean()],
        "catalogName" => [String.t() | atom()],
        "dataAccessRole" => [String.t() | atom()],
        "relationalFilterConfigurations" => list(relational_filter_configuration())
      }

  """
  @type glue_run_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      athena_properties_input() :: %{
        "workgroupName" => [String.t() | atom()]
      }

  """
  @type athena_properties_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_product_revisions_output() :: %{
        "items" => list(data_product_revision()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_data_product_revisions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_source_run_activities_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_data_source_run_activities_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mlflow_properties_input() :: %{
        "trackingServerArn" => [String.t() | atom()],
        "trackingServerName" => [String.t() | atom()]
      }

  """
  @type mlflow_properties_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_properties_output() :: %{
        "errorMessage" => [String.t() | atom()],
        "s3AccessGrantLocationId" => String.t() | atom(),
        "s3Uri" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type s3_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_glossary_input() :: %{}

  """
  @type delete_glossary_input() :: %{}

  @typedoc """

  ## Example:

      owner_user_properties() :: %{
        "userIdentifier" => String.t() | atom()
      }

  """
  @type owner_user_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lineage_node_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => [String.t() | atom()],
        "domainId" => String.t() | atom(),
        "eventTimestamp" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "sourceIdentifier" => [String.t() | atom()],
        "typeName" => [String.t() | atom()],
        "typeRevision" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type lineage_node_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      spark_glue_properties_input() :: %{
        "additionalArgs" => spark_glue_args(),
        "glueConnectionName" => [String.t() | atom()],
        "glueVersion" => [String.t() | atom()],
        "idleTimeout" => [integer()],
        "javaVirtualEnv" => [String.t() | atom()],
        "numberOfWorkers" => [integer()],
        "pythonVirtualEnv" => [String.t() | atom()],
        "workerType" => [String.t() | atom()]
      }

  """
  @type spark_glue_properties_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_subscription_grant_output() :: %{
        "assets" => list(subscribed_asset()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "grantedEntity" => list(),
        "id" => String.t() | atom(),
        "status" => list(any()),
        "subscriptionId" => String.t() | atom(),
        "subscriptionTargetId" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type create_subscription_grant_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_glossary_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type create_glossary_policy_grant_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_glossary_term_output() :: %{}

  """
  @type delete_glossary_term_output() :: %{}

  @typedoc """

  ## Example:

      athena_properties_patch() :: %{
        "workgroupName" => [String.t() | atom()]
      }

  """
  @type athena_properties_patch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_subscription_requests_input() :: %{
        optional("approverProjectId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("owningProjectId") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("status") => list(any()),
        optional("subscribedListingId") => String.t() | atom()
      }

  """
  @type list_subscription_requests_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      form_type_data() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "imports" => list(import()),
        "model" => list(),
        "name" => String.t() | atom(),
        "originDomainId" => String.t() | atom(),
        "originProjectId" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "revision" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type form_type_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscribed_project() :: %{
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type subscribed_project() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_profile_output() :: %{
        "awsAccountId" => String.t() | atom(),
        "awsAccountRegion" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "environmentBlueprintId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter())
      }

  """
  @type get_environment_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_scope() :: %{
        "assetType" => asset_types_for_rule(),
        "dataProduct" => [boolean()],
        "project" => projects_for_rule()
      }

  """
  @type rule_scope() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_glossary_term_output() :: %{
        "domainId" => String.t() | atom(),
        "glossaryId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "longDescription" => String.t() | atom(),
        "name" => String.t() | atom(),
        "shortDescription" => String.t() | atom(),
        "status" => list(any()),
        "termRelations" => term_relations(),
        "usageRestrictions" => list(list(any())())
      }

  """
  @type create_glossary_term_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_profile_input() :: %{}

  """
  @type get_environment_profile_input() :: %{}

  @typedoc """

  ## Example:

      create_data_product_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t() | atom(),
        "formsOutput" => list(form_output()),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "items" => list(data_product_item()),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "revision" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_data_product_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_profile_output() :: %{
        "awsAccountId" => String.t() | atom(),
        "awsAccountRegion" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "environmentBlueprintId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter())
      }

  """
  @type create_environment_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_listings_input() :: %{
        optional("additionalAttributes") => list(list(any())()),
        optional("aggregations") => list(aggregation_list_item()),
        optional("filters") => list(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("searchIn") => list(search_in_item()),
        optional("searchText") => [String.t() | atom()],
        optional("sort") => search_sort()
      }

  """
  @type search_listings_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_expression() :: %{
        "expression" => [String.t() | atom()],
        "type" => list(any())
      }

  """
  @type filter_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glue_properties_input() :: %{
        "glueConnectionInput" => glue_connection_input()
      }

  """
  @type glue_properties_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_filters_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_asset_filters_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_job_run_input() :: %{}

  """
  @type get_job_run_input() :: %{}

  @typedoc """

  ## Example:

      glossary_item() :: %{
        "additionalAttributes" => glossary_item_additional_attributes(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom(),
        "usageRestrictions" => list(list(any())())
      }

  """
  @type glossary_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_subscription_grants_input() :: %{
        optional("environmentId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("owningProjectId") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("subscribedListingId") => String.t() | atom(),
        optional("subscriptionId") => String.t() | atom(),
        optional("subscriptionTargetId") => String.t() | atom()
      }

  """
  @type list_subscription_grants_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "attribute" => String.t() | atom(),
        "value" => [String.t() | atom()]
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_type_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "formsOutput" => map(),
        "name" => String.t() | atom(),
        "originDomainId" => String.t() | atom(),
        "originProjectId" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "revision" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type create_asset_type_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_data_source_run_input() :: %{
        optional("clientToken") => [String.t() | atom()]
      }

  """
  @type start_data_source_run_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_rule_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        required("action") => list(any()),
        required("detail") => list(),
        required("name") => String.t() | atom(),
        required("scope") => rule_scope(),
        required("target") => list()
      }

  """
  @type create_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_in_item() :: %{
        "attribute" => String.t() | atom()
      }

  """
  @type search_in_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_subscription_target_output() :: %{
        "applicableAssetTypes" => list(String.t() | atom()),
        "authorizedPrincipals" => list(String.t() | atom()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "manageAccessRole" => String.t() | atom(),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "provider" => [String.t() | atom()],
        "subscriptionTargetConfig" => list(subscription_target_form()),
        "type" => [String.t() | atom()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type get_subscription_target_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_revision_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "externalIdentifier" => String.t() | atom(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t() | atom(),
        "formsOutput" => list(form_output()),
        "glossaryTerms" => list(String.t() | atom()),
        "governedGlossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "latestTimeSeriesDataPointFormsOutput" => list(time_series_data_point_summary_form_output()),
        "listing" => asset_listing_details(),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "predictionConfiguration" => prediction_configuration(),
        "readOnlyFormsOutput" => list(form_output()),
        "revision" => String.t() | atom(),
        "typeIdentifier" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type create_asset_revision_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_project_membership_input() :: %{
        required("member") => list()
      }

  """
  @type delete_project_membership_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_to_project_member_pool_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type add_to_project_member_pool_policy_grant_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      owner_user_properties_output() :: %{
        "userId" => [String.t() | atom()]
      }

  """
  @type owner_user_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connection_credentials() :: %{
        "accessKeyId" => [String.t() | atom()],
        "expiration" => [non_neg_integer()],
        "secretAccessKey" => [String.t() | atom()],
        "sessionToken" => [String.t() | atom()]
      }

  """
  @type connection_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_unit_output() :: %{
        "ancestorDomainUnitIds" => list(String.t() | atom()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owners" => list(list()),
        "parentDomainUnitId" => String.t() | atom()
      }

  """
  @type create_domain_unit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_product_result_item() :: %{
        "additionalAttributes" => data_product_item_additional_attributes(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t() | atom(),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom()
      }

  """
  @type data_product_result_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_time_series_data_point_output() :: %{
        "domainId" => String.t() | atom(),
        "entityId" => String.t() | atom(),
        "entityType" => list(any()),
        "form" => time_series_data_point_form_output(),
        "formName" => String.t() | atom()
      }

  """
  @type get_time_series_data_point_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_blueprint_input() :: %{
        optional("description") => String.t() | atom(),
        optional("userParameters") => list(custom_parameter()),
        required("name") => String.t() | atom(),
        required("provisioningProperties") => list()
      }

  """
  @type create_environment_blueprint_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glue_connection_patch() :: %{
        "authenticationConfiguration" => authentication_configuration_patch(),
        "connectionProperties" => map(),
        "description" => [String.t() | atom()]
      }

  """
  @type glue_connection_patch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environment_profiles_input() :: %{
        optional("awsAccountId") => String.t() | atom(),
        optional("awsAccountRegion") => String.t() | atom(),
        optional("environmentBlueprintIdentifier") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("name") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("projectIdentifier") => String.t() | atom()
      }

  """
  @type list_environment_profiles_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_source_output() :: %{
        "assetFormsOutput" => list(form_output()),
        "configuration" => list(),
        "connectionId" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "enableSetting" => list(any()),
        "environmentId" => String.t() | atom(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t() | atom(),
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "publishOnImport" => [boolean()],
        "recommendation" => recommendation_configuration(),
        "retainPermissionsOnRevokeFailure" => [boolean()],
        "schedule" => schedule_configuration(),
        "selfGrantStatus" => list(),
        "status" => list(any()),
        "type" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_data_source_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_project_input() :: %{
        optional("description") => String.t() | atom(),
        optional("domainUnitId") => String.t() | atom(),
        optional("glossaryTerms") => list(String.t() | atom()),
        optional("projectProfileId") => String.t() | atom(),
        optional("resourceTags") => map(),
        optional("userParameters") => list(environment_configuration_user_parameter()),
        required("name") => String.t() | atom()
      }

  """
  @type create_project_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_rules_input() :: %{
        optional("action") => list(any()),
        optional("assetTypes") => list(String.t() | atom()),
        optional("dataProduct") => [boolean()],
        optional("includeCascaded") => [boolean()],
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("projectIds") => list(String.t() | atom()),
        optional("ruleType") => list(any())
      }

  """
  @type list_rules_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_subscription_grant_input() :: %{}

  """
  @type delete_subscription_grant_input() :: %{}

  @typedoc """

  ## Example:

      get_environment_blueprint_output() :: %{
        "createdAt" => [non_neg_integer()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t() | atom(),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "provider" => [String.t() | atom()],
        "provisioningProperties" => list(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter())
      }

  """
  @type get_environment_blueprint_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_console_link_parameters() :: %{
        "uri" => [String.t() | atom()]
      }

  """
  @type aws_console_link_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_form_type_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "imports" => list(import()),
        "model" => list(),
        "name" => String.t() | atom(),
        "originDomainId" => String.t() | atom(),
        "originProjectId" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "revision" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type get_form_type_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_filter_output() :: %{
        "assetId" => String.t() | atom(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "effectiveColumnNames" => list([String.t() | atom()]()),
        "effectiveRowFilter" => [String.t() | atom()],
        "errorMessage" => [String.t() | atom()],
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_asset_filter_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glossary_term_item_additional_attributes() :: %{
        "matchRationale" => list(list())
      }

  """
  @type glossary_term_item_additional_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notification_output() :: %{
        "actionLink" => String.t() | atom(),
        "creationTimestamp" => [non_neg_integer()],
        "domainIdentifier" => String.t() | atom(),
        "identifier" => String.t() | atom(),
        "lastUpdatedTimestamp" => [non_neg_integer()],
        "message" => String.t() | atom(),
        "metadata" => map(),
        "status" => list(any()),
        "title" => String.t() | atom(),
        "topic" => topic(),
        "type" => list(any())
      }

  """
  @type notification_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_governed_terms_input() :: %{
        required("governedGlossaryTerms") => list(String.t() | atom())
      }

  """
  @type disassociate_governed_terms_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      row_filter_configuration() :: %{
        "rowFilter" => list(),
        "sensitive" => [boolean()]
      }

  """
  @type row_filter_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_glossary_term_input() :: %{
        optional("glossaryIdentifier") => String.t() | atom(),
        optional("longDescription") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("shortDescription") => String.t() | atom(),
        optional("status") => list(any()),
        optional("termRelations") => term_relations()
      }

  """
  @type update_glossary_term_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_action_output() :: %{
        "description" => [String.t() | atom()],
        "domainId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "parameters" => list()
      }

  """
  @type update_environment_action_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_product_listing_item_additional_attributes() :: %{
        "forms" => String.t() | atom(),
        "matchRationale" => list(list())
      }

  """
  @type data_product_listing_item_additional_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      column_filter_configuration() :: %{
        "includedColumnNames" => list([String.t() | atom()]())
      }

  """
  @type column_filter_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_blueprint_configuration_output() :: %{
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t() | atom(),
        "enabledRegions" => list(String.t() | atom()),
        "environmentBlueprintId" => String.t() | atom(),
        "environmentRolePermissionBoundary" => String.t() | atom(),
        "manageAccessRoleArn" => String.t() | atom(),
        "provisioningConfigurations" => list(list()),
        "provisioningRoleArn" => String.t() | atom(),
        "regionalParameters" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_environment_blueprint_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_output() :: %{
        "arn" => [String.t() | atom()],
        "description" => [String.t() | atom()],
        "domainExecutionRole" => String.t() | atom(),
        "domainVersion" => list(any()),
        "id" => String.t() | atom(),
        "kmsKeyIdentifier" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "portalUrl" => [String.t() | atom()],
        "rootDomainUnitId" => String.t() | atom(),
        "serviceRole" => String.t() | atom(),
        "singleSignOn" => single_sign_on(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type create_domain_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      listing_summary() :: %{
        "glossaryTerms" => list(detailed_glossary_term()),
        "listingId" => String.t() | atom(),
        "listingRevision" => String.t() | atom()
      }

  """
  @type listing_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_type_input() :: %{
        optional("description") => String.t() | atom(),
        required("formsInput") => map(),
        required("name") => String.t() | atom(),
        required("owningProjectIdentifier") => String.t() | atom()
      }

  """
  @type create_asset_type_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_summary() :: %{
        "action" => list(any()),
        "identifier" => String.t() | atom(),
        "lastUpdatedBy" => String.t() | atom(),
        "name" => String.t() | atom(),
        "revision" => String.t() | atom(),
        "ruleType" => list(any()),
        "scope" => rule_scope(),
        "target" => list(),
        "targetType" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type rule_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_subscription_input() :: %{}

  """
  @type cancel_subscription_input() :: %{}

  @typedoc """

  ## Example:

      redshift_properties_patch() :: %{
        "credentials" => list(),
        "databaseName" => [String.t() | atom()],
        "host" => [String.t() | atom()],
        "lineageSync" => redshift_lineage_sync_configuration_input(),
        "port" => [integer()],
        "storage" => list()
      }

  """
  @type redshift_properties_patch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accepted_asset_scope() :: %{
        "assetId" => String.t() | atom(),
        "filterIds" => list(String.t() | atom())
      }

  """
  @type accepted_asset_scope() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      redshift_lineage_sync_configuration_output() :: %{
        "enabled" => [boolean()],
        "lineageJobId" => [String.t() | atom()],
        "schedule" => lineage_sync_schedule()
      }

  """
  @type redshift_lineage_sync_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_subscription_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "retainPermissions" => [boolean()],
        "status" => list(any()),
        "subscribedListing" => subscribed_listing(),
        "subscribedPrincipal" => list(),
        "subscriptionRequestId" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type cancel_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sso_user_profile_details() :: %{
        "firstName" => String.t() | atom(),
        "lastName" => String.t() | atom(),
        "username" => String.t() | atom()
      }

  """
  @type sso_user_profile_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_metadata_generation_run_input() :: %{}

  """
  @type cancel_metadata_generation_run_input() :: %{}

  @typedoc """

  ## Example:

      resource_tag() :: %{
        "key" => String.t() | atom(),
        "source" => list(any()),
        "value" => String.t() | atom()
      }

  """
  @type resource_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_subscription_targets_output() :: %{
        "items" => list(subscription_target_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_subscription_targets_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_input() :: %{}

  """
  @type delete_asset_input() :: %{}

  @typedoc """

  ## Example:

      physical_connection_requirements() :: %{
        "availabilityZone" => [String.t() | atom()],
        "securityGroupIdList" => list([String.t() | atom()]()),
        "subnetId" => String.t() | atom(),
        "subnetIdList" => list(String.t() | atom())
      }

  """
  @type physical_connection_requirements() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_policy_grant_output() :: %{}

  """
  @type remove_policy_grant_output() :: %{}

  @typedoc """

  ## Example:

      delete_project_membership_output() :: %{}

  """
  @type delete_project_membership_output() :: %{}

  @typedoc """

  ## Example:

      data_source_summary() :: %{
        "connectionId" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "dataSourceId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "enableSetting" => list(any()),
        "environmentId" => [String.t() | atom()],
        "lastRunAssetCount" => [integer()],
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t() | atom(),
        "schedule" => schedule_configuration(),
        "status" => list(any()),
        "type" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type data_source_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_listing_item() :: %{
        "additionalAttributes" => asset_listing_item_additional_attributes(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "entityId" => String.t() | atom(),
        "entityRevision" => String.t() | atom(),
        "entityType" => String.t() | atom(),
        "glossaryTerms" => list(detailed_glossary_term()),
        "governedGlossaryTerms" => list(detailed_glossary_term()),
        "listingCreatedBy" => String.t() | atom(),
        "listingId" => String.t() | atom(),
        "listingRevision" => String.t() | atom(),
        "listingUpdatedBy" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom()
      }

  """
  @type asset_listing_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_credentials_input() :: %{}

  """
  @type get_environment_credentials_input() :: %{}

  @typedoc """

  ## Example:

      aggregation_list_item() :: %{
        "attribute" => String.t() | atom(),
        "displayValue" => String.t() | atom()
      }

  """
  @type aggregation_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_environment_blueprint_configuration_output() :: %{}

  """
  @type delete_environment_blueprint_configuration_output() :: %{}

  @typedoc """

  ## Example:

      delete_account_pool_input() :: %{}

  """
  @type delete_account_pool_input() :: %{}

  @typedoc """

  ## Example:

      search_group_profiles_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("searchText") => String.t() | atom(),
        required("groupType") => list(any())
      }

  """
  @type search_group_profiles_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environment_blueprints_output() :: %{
        "items" => list(environment_blueprint_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_environment_blueprints_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      spark_emr_properties_output() :: %{
        "certificateData" => [String.t() | atom()],
        "computeArn" => [String.t() | atom()],
        "credentials" => username_password(),
        "credentialsExpiration" => [non_neg_integer()],
        "governanceType" => list(any()),
        "instanceProfileArn" => [String.t() | atom()],
        "javaVirtualEnv" => [String.t() | atom()],
        "livyEndpoint" => [String.t() | atom()],
        "logUri" => [String.t() | atom()],
        "managedEndpointArn" => [String.t() | atom()],
        "managedEndpointCredentials" => managed_endpoint_credentials(),
        "pythonVirtualEnv" => [String.t() | atom()],
        "runtimeRole" => [String.t() | atom()],
        "trustedCertificatesS3Uri" => [String.t() | atom()]
      }

  """
  @type spark_emr_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_output() :: %{}

  """
  @type delete_asset_output() :: %{}

  @typedoc """

  ## Example:

      get_iam_portal_login_url_input() :: %{}

  """
  @type get_iam_portal_login_url_input() :: %{}

  @typedoc """

  ## Example:

      delete_project_profile_input() :: %{}

  """
  @type delete_project_profile_input() :: %{}

  @typedoc """

  ## Example:

      list_notifications_output() :: %{
        "nextToken" => String.t() | atom(),
        "notifications" => list(notification_output())
      }

  """
  @type list_notifications_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_asset_filter_output() :: %{
        "assetId" => String.t() | atom(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "effectiveColumnNames" => list([String.t() | atom()]()),
        "effectiveRowFilter" => [String.t() | atom()],
        "errorMessage" => [String.t() | atom()],
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type update_asset_filter_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_project_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "environmentDeploymentDetails" => environment_deployment_details(),
        "failureReasons" => list(project_deletion_error()),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "projectProfileId" => String.t() | atom(),
        "projectStatus" => list(any()),
        "resourceTags" => list(resource_tag()),
        "userParameters" => list(environment_configuration_user_parameter())
      }

  """
  @type update_project_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_product_item() :: %{
        "glossaryTerms" => list(String.t() | atom()),
        "identifier" => String.t() | atom(),
        "itemType" => list(any()),
        "revision" => String.t() | atom()
      }

  """
  @type data_product_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lineage_node_reference() :: %{
        "eventTimestamp" => [non_neg_integer()],
        "id" => String.t() | atom()
      }

  """
  @type lineage_node_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_glossary_term_input() :: %{}

  """
  @type delete_glossary_term_input() :: %{}

  @typedoc """

  ## Example:

      in_expression() :: %{
        "columnName" => [String.t() | atom()],
        "values" => list([String.t() | atom()]())
      }

  """
  @type in_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_group_profile_input() :: %{
        optional("clientToken") => [String.t() | atom()],
        required("groupIdentifier") => String.t() | atom()
      }

  """
  @type create_group_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lineage_node_history_output() :: %{
        "nextToken" => String.t() | atom(),
        "nodes" => list(lineage_node_summary())
      }

  """
  @type list_lineage_node_history_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_product_revisions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_data_product_revisions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_governed_terms_input() :: %{
        required("governedGlossaryTerms") => list(String.t() | atom())
      }

  """
  @type associate_governed_terms_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_profile_summary() :: %{
        "details" => list(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type user_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_product_output() :: %{}

  """
  @type delete_data_product_output() :: %{}

  @typedoc """

  ## Example:

      data_source_run_summary() :: %{
        "createdAt" => non_neg_integer(),
        "dataSourceId" => String.t() | atom(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t() | atom(),
        "lineageSummary" => data_source_run_lineage_summary(),
        "projectId" => String.t() | atom(),
        "runStatisticsForAssets" => run_statistics_for_assets(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "stoppedAt" => non_neg_integer(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type data_source_run_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_account_pools_output() :: %{
        "items" => list(account_pool_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_account_pools_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      username_password() :: %{
        "password" => String.t() | atom(),
        "username" => String.t() | atom()
      }

  """
  @type username_password() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_domain_unit_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("parentDomainUnitIdentifier") => String.t() | atom()
      }

  """
  @type create_domain_unit_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_unit_target() :: %{
        "domainUnitId" => String.t() | atom(),
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type domain_unit_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_product_input() :: %{
        optional("revision") => String.t() | atom()
      }

  """
  @type get_data_product_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_predictions_input() :: %{
        optional("acceptChoices") => list(accept_choice()),
        optional("acceptRule") => accept_rule(),
        optional("clientToken") => String.t() | atom(),
        optional("revision") => String.t() | atom()
      }

  """
  @type accept_predictions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_entity_owners_output() :: %{
        "nextToken" => String.t() | atom(),
        "owners" => list(list())
      }

  """
  @type list_entity_owners_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_projects_input() :: %{
        optional("groupIdentifier") => [String.t() | atom()],
        optional("maxResults") => integer(),
        optional("name") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("userIdentifier") => [String.t() | atom()]
      }

  """
  @type list_projects_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_profile_summary() :: %{
        "awsAccountId" => String.t() | atom(),
        "awsAccountRegion" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "environmentBlueprintId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "projectId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type environment_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscription_request_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "decisionComment" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "existingSubscriptionId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadataFormsSummary" => list(metadata_form_summary()),
        "requestReason" => String.t() | atom(),
        "reviewerId" => [String.t() | atom()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()),
        "subscribedPrincipals" => list(list()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type subscription_request_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_predictions_output() :: %{
        "assetId" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "revision" => String.t() | atom()
      }

  """
  @type accept_predictions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscribed_asset_listing() :: %{
        "assetScope" => asset_scope(),
        "entityId" => String.t() | atom(),
        "entityRevision" => String.t() | atom(),
        "entityType" => String.t() | atom(),
        "forms" => String.t() | atom(),
        "glossaryTerms" => list(detailed_glossary_term())
      }

  """
  @type subscribed_asset_listing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connection_summary() :: %{
        "connectionId" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "physicalEndpoints" => list(physical_endpoint()),
        "projectId" => String.t() | atom(),
        "props" => list(),
        "scope" => list(any()),
        "type" => list(any())
      }

  """
  @type connection_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      self_grant_status_detail() :: %{
        "databaseName" => [String.t() | atom()],
        "failureCause" => [String.t() | atom()],
        "schemaName" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type self_grant_status_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_policy_grant_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("grantIdentifier") => String.t() | atom(),
        required("policyType") => list(any()),
        required("principal") => list()
      }

  """
  @type remove_policy_grant_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_connection_output() :: %{
        "status" => [String.t() | atom()]
      }

  """
  @type delete_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_pool_input() :: %{
        optional("accountSource") => list(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("resolutionStrategy") => list(any())
      }

  """
  @type update_account_pool_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_listing_change_set_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("entityRevision") => String.t() | atom(),
        required("action") => list(any()),
        required("entityIdentifier") => String.t() | atom(),
        required("entityType") => list(any())
      }

  """
  @type create_listing_change_set_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_unit_policy_grant_principal() :: %{
        "domainUnitDesignation" => list(any()),
        "domainUnitGrantFilter" => list(),
        "domainUnitIdentifier" => String.t() | atom()
      }

  """
  @type domain_unit_policy_grant_principal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      relational_filter_configuration() :: %{
        "databaseName" => [String.t() | atom()],
        "filterExpressions" => list(filter_expression()),
        "schemaName" => [String.t() | atom()]
      }

  """
  @type relational_filter_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_form_type_input() :: %{}

  """
  @type delete_form_type_input() :: %{}

  @typedoc """

  ## Example:

      less_than_or_equal_to_expression() :: %{
        "columnName" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type less_than_or_equal_to_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_unit_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type create_domain_unit_policy_grant_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_subscription_request_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "decisionComment" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "existingSubscriptionId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadataForms" => list(form_output()),
        "requestReason" => String.t() | atom(),
        "reviewerId" => [String.t() | atom()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()),
        "subscribedPrincipals" => list(list()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type accept_subscription_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_governed_terms_output() :: %{}

  """
  @type disassociate_governed_terms_output() :: %{}

  @typedoc """

  ## Example:

      update_subscription_request_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "decisionComment" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "existingSubscriptionId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadataForms" => list(form_output()),
        "requestReason" => String.t() | atom(),
        "reviewerId" => [String.t() | atom()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()),
        "subscribedPrincipals" => list(list()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type update_subscription_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_rules_output() :: %{
        "items" => list(rule_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_rules_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      spark_glue_properties_output() :: %{
        "additionalArgs" => spark_glue_args(),
        "glueConnectionName" => [String.t() | atom()],
        "glueVersion" => [String.t() | atom()],
        "idleTimeout" => [integer()],
        "javaVirtualEnv" => [String.t() | atom()],
        "numberOfWorkers" => [integer()],
        "pythonVirtualEnv" => [String.t() | atom()],
        "workerType" => [String.t() | atom()]
      }

  """
  @type spark_glue_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domain_units_for_parent_output() :: %{
        "items" => list(domain_unit_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_domain_units_for_parent_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_formation_properties() :: %{
        "templateUrl" => [String.t() | atom()]
      }

  """
  @type cloud_formation_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_type_input() :: %{}

  """
  @type delete_asset_type_input() :: %{}

  @typedoc """

  ## Example:

      create_account_pool_input() :: %{
        optional("description") => String.t() | atom(),
        required("accountSource") => list(),
        required("name") => String.t() | atom(),
        required("resolutionStrategy") => list(any())
      }

  """
  @type create_account_pool_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schedule_configuration() :: %{
        "schedule" => String.t() | atom(),
        "timezone" => list(any())
      }

  """
  @type schedule_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_environment_role_output() :: %{}

  """
  @type associate_environment_role_output() :: %{}

  @typedoc """

  ## Example:

      environment_deployment_details() :: %{
        "environmentFailureReasons" => map(),
        "overallDeploymentStatus" => list(any())
      }

  """
  @type environment_deployment_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_glossary_input() :: %{}

  """
  @type get_glossary_input() :: %{}

  @typedoc """

  ## Example:

      recommendation_configuration() :: %{
        "enableBusinessNameGeneration" => [boolean()]
      }

  """
  @type recommendation_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_project_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "environmentDeploymentDetails" => environment_deployment_details(),
        "failureReasons" => list(project_deletion_error()),
        "glossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "projectProfileId" => String.t() | atom(),
        "projectStatus" => list(any()),
        "resourceTags" => list(resource_tag()),
        "userParameters" => list(environment_configuration_user_parameter())
      }

  """
  @type get_project_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_project_profiles_input() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_project_profiles_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_listing_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "item" => list(),
        "listingRevision" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type get_listing_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_in_expression() :: %{
        "columnName" => [String.t() | atom()],
        "values" => list([String.t() | atom()]())
      }

  """
  @type not_in_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_group_profile_input() :: %{}

  """
  @type get_group_profile_input() :: %{}

  @typedoc """

  ## Example:

      list_environment_profiles_output() :: %{
        "items" => list(environment_profile_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_environment_profiles_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_asset_filter_input() :: %{
        optional("configuration") => list(),
        optional("description") => String.t() | atom(),
        optional("name") => [String.t() | atom()]
      }

  """
  @type update_asset_filter_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_unit_summary() :: %{
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()]
      }

  """
  @type domain_unit_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_source_run_output() :: %{
        "createdAt" => non_neg_integer(),
        "dataSourceConfigurationSnapshot" => [String.t() | atom()],
        "dataSourceId" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t() | atom(),
        "lineageSummary" => data_source_run_lineage_summary(),
        "projectId" => String.t() | atom(),
        "runStatisticsForAssets" => run_statistics_for_assets(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "stoppedAt" => non_neg_integer(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_data_source_run_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_lineage_event_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "event" => binary(),
        "eventTime" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "processingStatus" => list(any())
      }

  """
  @type get_lineage_event_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      spark_emr_properties_patch() :: %{
        "computeArn" => [String.t() | atom()],
        "instanceProfileArn" => [String.t() | atom()],
        "javaVirtualEnv" => [String.t() | atom()],
        "logUri" => [String.t() | atom()],
        "managedEndpointArn" => [String.t() | atom()],
        "pythonVirtualEnv" => [String.t() | atom()],
        "runtimeRole" => [String.t() | atom()],
        "trustedCertificatesS3Uri" => [String.t() | atom()]
      }

  """
  @type spark_emr_properties_patch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      open_lineage_run_event_summary() :: %{
        "eventType" => list(any()),
        "inputs" => list(name_identifier()),
        "job" => name_identifier(),
        "outputs" => list(name_identifier()),
        "runId" => [String.t() | atom()]
      }

  """
  @type open_lineage_run_event_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_glossary_term_input() :: %{}

  """
  @type get_glossary_term_input() :: %{}

  @typedoc """

  ## Example:

      update_domain_unit_input() :: %{
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom()
      }

  """
  @type update_domain_unit_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_project_input() :: %{}

  """
  @type get_project_input() :: %{}

  @typedoc """

  ## Example:

      delete_project_output() :: %{}

  """
  @type delete_project_output() :: %{}

  @typedoc """

  ## Example:

      list_metadata_generation_runs_output() :: %{
        "items" => list(metadata_generation_run_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_metadata_generation_runs_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lineage_run_details() :: %{
        "sqlQueryRunDetails" => lineage_sql_query_run_details()
      }

  """
  @type lineage_run_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_project_input() :: %{
        optional("skipDeletionCheck") => [boolean()]
      }

  """
  @type delete_project_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_choice() :: %{
        "editedValue" => String.t() | atom(),
        "predictionChoice" => [integer()],
        "predictionTarget" => [String.t() | atom()]
      }

  """
  @type accept_choice() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      listing_revision() :: %{
        "id" => String.t() | atom(),
        "revision" => String.t() | atom()
      }

  """
  @type listing_revision() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metadata_generation_run_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "status" => list(any()),
        "target" => metadata_generation_run_target(),
        "type" => list(any())
      }

  """
  @type metadata_generation_run_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscribed_asset() :: %{
        "assetId" => String.t() | atom(),
        "assetRevision" => String.t() | atom(),
        "assetScope" => asset_scope(),
        "failureCause" => failure_cause(),
        "failureTimestamp" => [non_neg_integer()],
        "grantedTimestamp" => [non_neg_integer()],
        "status" => list(any()),
        "targetName" => [String.t() | atom()]
      }

  """
  @type subscribed_asset() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_project_profile_input() :: %{
        optional("allowCustomProjectResourceTags") => [boolean()],
        optional("description") => String.t() | atom(),
        optional("domainUnitIdentifier") => String.t() | atom(),
        optional("environmentConfigurations") => list(environment_configuration()),
        optional("projectResourceTags") => list(resource_tag_parameter()),
        optional("projectResourceTagsDescription") => String.t() | atom(),
        optional("status") => list(any()),
        required("name") => String.t() | atom()
      }

  """
  @type create_project_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_project_memberships_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_project_memberships_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_configuration() :: %{
        "accountPools" => list(String.t() | atom()),
        "awsAccount" => list(),
        "awsRegion" => list(),
        "configurationParameters" => environment_configuration_parameters_details(),
        "deploymentMode" => list(any()),
        "deploymentOrder" => integer(),
        "description" => String.t() | atom(),
        "environmentBlueprintId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type environment_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      amazon_q_properties_patch() :: %{
        "authMode" => [String.t() | atom()],
        "isEnabled" => [boolean()],
        "profileArn" => [String.t() | atom()]
      }

  """
  @type amazon_q_properties_patch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_series_data_point_summary_form_output() :: %{
        "contentSummary" => [String.t() | atom()],
        "formName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "timestamp" => [non_neg_integer()],
        "typeIdentifier" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type time_series_data_point_summary_form_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      post_time_series_data_points_output() :: %{
        "domainId" => String.t() | atom(),
        "entityId" => String.t() | atom(),
        "entityType" => list(any()),
        "forms" => list(time_series_data_point_form_output())
      }

  """
  @type post_time_series_data_points_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_subscription_grant_output() :: %{
        "assets" => list(subscribed_asset()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "grantedEntity" => list(),
        "id" => String.t() | atom(),
        "status" => list(any()),
        "subscriptionId" => String.t() | atom(),
        "subscriptionTargetId" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type get_subscription_grant_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      name_identifier() :: %{
        "name" => [String.t() | atom()],
        "namespace" => [String.t() | atom()]
      }

  """
  @type name_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      o_auth2_properties() :: %{
        "authorizationCodeProperties" => authorization_code_properties(),
        "oAuth2ClientApplication" => o_auth2_client_application(),
        "oAuth2Credentials" => glue_o_auth2_credentials(),
        "oAuth2GrantType" => list(any()),
        "tokenUrl" => [String.t() | atom()],
        "tokenUrlParametersMap" => map()
      }

  """
  @type o_auth2_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glue_run_configuration_output() :: %{
        "accountId" => [String.t() | atom()],
        "autoImportDataQualityResult" => [boolean()],
        "catalogName" => [String.t() | atom()],
        "dataAccessRole" => [String.t() | atom()],
        "region" => [String.t() | atom()],
        "relationalFilterConfigurations" => list(relational_filter_configuration())
      }

  """
  @type glue_run_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscribed_project_input() :: %{
        "identifier" => String.t() | atom()
      }

  """
  @type subscribed_project_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      physical_endpoint() :: %{
        "awsLocation" => aws_location(),
        "enableTrustedIdentityPropagation" => [boolean()],
        "glueConnection" => glue_connection(),
        "glueConnectionName" => [String.t() | atom()],
        "host" => [String.t() | atom()],
        "port" => [integer()],
        "protocol" => list(any()),
        "stage" => [String.t() | atom()]
      }

  """
  @type physical_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_subscription_grant_status_input() :: %{
        optional("failureCause") => failure_cause(),
        optional("targetName") => [String.t() | atom()],
        required("status") => list(any())
      }

  """
  @type update_subscription_grant_status_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      form_output() :: %{
        "content" => [String.t() | atom()],
        "formName" => String.t() | atom(),
        "typeName" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type form_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_properties() :: %{
        "endTimeoutMinutes" => [integer()],
        "startTimeoutMinutes" => [integer()]
      }

  """
  @type deployment_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_environment_role_output() :: %{}

  """
  @type disassociate_environment_role_output() :: %{}

  @typedoc """

  ## Example:

      get_subscription_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "retainPermissions" => [boolean()],
        "status" => list(any()),
        "subscribedListing" => subscribed_listing(),
        "subscribedPrincipal" => list(),
        "subscriptionRequestId" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type get_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_rule_input() :: %{}

  """
  @type delete_rule_input() :: %{}

  @typedoc """

  ## Example:

      subscribed_listing_input() :: %{
        "identifier" => String.t() | atom()
      }

  """
  @type subscribed_listing_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failure_cause() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type failure_cause() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      spark_emr_properties_input() :: %{
        "computeArn" => [String.t() | atom()],
        "instanceProfileArn" => [String.t() | atom()],
        "javaVirtualEnv" => [String.t() | atom()],
        "logUri" => [String.t() | atom()],
        "managedEndpointArn" => [String.t() | atom()],
        "pythonVirtualEnv" => [String.t() | atom()],
        "runtimeRole" => [String.t() | atom()],
        "trustedCertificatesS3Uri" => [String.t() | atom()]
      }

  """
  @type spark_emr_properties_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lineage_sql_query_run_details() :: %{
        "errorMessages" => list([String.t() | atom()]()),
        "numQueriesFailed" => [integer()],
        "queryEndTime" => [non_neg_integer()],
        "queryStartTime" => [non_neg_integer()],
        "totalQueriesProcessed" => [integer()]
      }

  """
  @type lineage_sql_query_run_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_scope() :: %{
        "assetId" => String.t() | atom(),
        "errorMessage" => [String.t() | atom()],
        "filterIds" => list(String.t() | atom()),
        "status" => [String.t() | atom()]
      }

  """
  @type asset_scope() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_connections_input() :: %{
        optional("environmentIdentifier") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("name") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("projectIdentifier") => String.t() | atom(),
        optional("scope") => list(any()),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("type") => list(any())
      }

  """
  @type list_connections_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_types_for_rule() :: %{
        "selectionMode" => list(any()),
        "specificAssetTypes" => list(String.t() | atom())
      }

  """
  @type asset_types_for_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_revisions_output() :: %{
        "items" => list(asset_revision()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_asset_revisions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group_details() :: %{
        "groupId" => [String.t() | atom()]
      }

  """
  @type group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_environment_action_input() :: %{}

  """
  @type delete_environment_action_input() :: %{}

  @typedoc """

  ## Example:

      all_domain_units_grant_filter() :: %{}

  """
  @type all_domain_units_grant_filter() :: %{}

  @typedoc """

  ## Example:

      environment_error() :: %{
        "code" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type environment_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detailed_glossary_term() :: %{
        "name" => String.t() | atom(),
        "shortDescription" => String.t() | atom()
      }

  """
  @type detailed_glossary_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_project_membership_input() :: %{
        required("designation") => list(any()),
        required("member") => list()
      }

  """
  @type create_project_membership_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_output() :: %{
        "status" => list(any())
      }

  """
  @type delete_domain_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_location() :: %{
        "accessRole" => [String.t() | atom()],
        "awsAccountId" => String.t() | atom(),
        "awsRegion" => String.t() | atom(),
        "iamConnectionId" => String.t() | atom()
      }

  """
  @type aws_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authentication_configuration() :: %{
        "authenticationType" => list(any()),
        "oAuth2Properties" => o_auth2_properties(),
        "secretArn" => [String.t() | atom()]
      }

  """
  @type authentication_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_unit_output() :: %{}

  """
  @type delete_domain_unit_output() :: %{}

  @typedoc """

  ## Example:

      create_project_from_project_profile_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()],
        "projectProfiles" => list([String.t() | atom()]())
      }

  """
  @type create_project_from_project_profile_policy_grant_detail() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      glossary_item_additional_attributes() :: %{
        "matchRationale" => list(list())
      }

  """
  @type glossary_item_additional_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_listing_input() :: %{}

  """
  @type delete_listing_input() :: %{}

  @typedoc """

  ## Example:

      sage_maker_run_configuration_output() :: %{
        "accountId" => [String.t() | atom()],
        "region" => [String.t() | atom()],
        "trackingAssets" => map()
      }

  """
  @type sage_maker_run_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_connection_input() :: %{
        optional("awsLocation") => aws_location(),
        optional("clientToken") => [String.t() | atom()],
        optional("description") => String.t() | atom(),
        optional("enableTrustedIdentityPropagation") => [boolean()],
        optional("environmentIdentifier") => String.t() | atom(),
        optional("props") => list(),
        optional("scope") => list(any()),
        required("name") => String.t() | atom()
      }

  """
  @type create_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_lineage_node_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => [String.t() | atom()],
        "domainId" => String.t() | atom(),
        "downstreamNodes" => list(lineage_node_reference()),
        "eventTimestamp" => [non_neg_integer()],
        "formsOutput" => list(form_output()),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "sourceIdentifier" => [String.t() | atom()],
        "typeName" => [String.t() | atom()],
        "typeRevision" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom(),
        "upstreamNodes" => list(lineage_node_reference())
      }

  """
  @type get_lineage_node_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_form_type_input() :: %{
        optional("revision") => String.t() | atom()
      }

  """
  @type get_form_type_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      greater_than_expression() :: %{
        "columnName" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type greater_than_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_project_profile_output() :: %{
        "allowCustomProjectResourceTags" => [boolean()],
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "environmentConfigurations" => list(environment_configuration()),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "projectResourceTags" => list(resource_tag_parameter()),
        "projectResourceTagsDescription" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_project_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_subscription_request_details_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "decisionComment" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "existingSubscriptionId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadataForms" => list(form_output()),
        "requestReason" => String.t() | atom(),
        "reviewerId" => [String.t() | atom()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()),
        "subscribedPrincipals" => list(list()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type get_subscription_request_details_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      form_entry_output() :: %{
        "required" => [boolean()],
        "typeName" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type form_entry_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_glossary_output() :: %{
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "status" => list(any()),
        "usageRestrictions" => list(list(any())())
      }

  """
  @type update_glossary_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domains_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_domains_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      project_policy_grant_principal() :: %{
        "projectDesignation" => list(any()),
        "projectGrantFilter" => list(),
        "projectIdentifier" => String.t() | atom()
      }

  """
  @type project_policy_grant_principal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_entity_owner_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("owner") => list()
      }

  """
  @type add_entity_owner_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glue_self_grant_status_output() :: %{
        "selfGrantStatusDetails" => list(self_grant_status_detail())
      }

  """
  @type glue_self_grant_status_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      redshift_lineage_sync_configuration_input() :: %{
        "enabled" => [boolean()],
        "schedule" => lineage_sync_schedule()
      }

  """
  @type redshift_lineage_sync_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_blueprint_input() :: %{}

  """
  @type get_environment_blueprint_input() :: %{}

  @typedoc """

  ## Example:

      list_data_sources_output() :: %{
        "items" => list(data_source_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_data_sources_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_rule_input() :: %{
        optional("description") => String.t() | atom(),
        optional("detail") => list(),
        optional("includeChildDomainUnits") => [boolean()],
        optional("name") => String.t() | atom(),
        optional("scope") => rule_scope()
      }

  """
  @type update_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "externalIdentifier" => String.t() | atom(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t() | atom(),
        "formsOutput" => list(form_output()),
        "glossaryTerms" => list(String.t() | atom()),
        "governedGlossaryTerms" => list(String.t() | atom()),
        "id" => String.t() | atom(),
        "latestTimeSeriesDataPointFormsOutput" => list(time_series_data_point_summary_form_output()),
        "listing" => asset_listing_details(),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "readOnlyFormsOutput" => list(form_output()),
        "revision" => String.t() | atom(),
        "typeIdentifier" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type get_asset_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_parameter() :: %{
        "name" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type environment_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import() :: %{
        "name" => String.t() | atom(),
        "revision" => String.t() | atom()
      }

  """
  @type import() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_types_output() :: %{
        "items" => list(list()),
        "nextToken" => String.t() | atom(),
        "totalMatchCount" => [integer()]
      }

  """
  @type search_types_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_source_input() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("retainPermissionsOnRevokeFailure") => [boolean()]
      }

  """
  @type delete_data_source_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iam_properties_patch() :: %{
        "glueLineageSyncEnabled" => [boolean()]
      }

  """
  @type iam_properties_patch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_credentials_output() :: %{
        "accessKeyId" => [String.t() | atom()],
        "expiration" => [non_neg_integer()],
        "secretAccessKey" => [String.t() | atom()],
        "sessionToken" => [String.t() | atom()]
      }

  """
  @type get_environment_credentials_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_time_series_data_point_input() :: %{
        required("formName") => String.t() | atom()
      }

  """
  @type get_time_series_data_point_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      project_profile_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type project_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_subscription_request_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "decisionComment" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "existingSubscriptionId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadataForms" => list(form_output()),
        "requestReason" => String.t() | atom(),
        "reviewerId" => [String.t() | atom()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()),
        "subscribedPrincipals" => list(list()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type create_subscription_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_unit_group_properties() :: %{
        "groupId" => [String.t() | atom()]
      }

  """
  @type domain_unit_group_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_subscription_request_input() :: %{
        optional("assetScopes") => list(accepted_asset_scope()),
        optional("decisionComment") => String.t() | atom()
      }

  """
  @type accept_subscription_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_subscription_input() :: %{}

  """
  @type get_subscription_input() :: %{}

  @typedoc """

  ## Example:

      list_subscription_requests_output() :: %{
        "items" => list(subscription_request_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_subscription_requests_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_glossary_term_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("longDescription") => String.t() | atom(),
        optional("shortDescription") => String.t() | atom(),
        optional("status") => list(any()),
        optional("termRelations") => term_relations(),
        required("glossaryIdentifier") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_glossary_term_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_glossary_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type update_glossary_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_metadata_generation_run_input() :: %{}

  """
  @type get_metadata_generation_run_input() :: %{}

  @typedoc """

  ## Example:

      delete_environment_profile_input() :: %{}

  """
  @type delete_environment_profile_input() :: %{}

  @typedoc """

  ## Example:

      update_environment_blueprint_input() :: %{
        optional("description") => [String.t() | atom()],
        optional("provisioningProperties") => list(),
        optional("userParameters") => list(custom_parameter())
      }

  """
  @type update_environment_blueprint_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_group_profile_output() :: %{
        "domainId" => String.t() | atom(),
        "groupName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_group_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_project_profile_output() :: %{}

  """
  @type delete_project_profile_output() :: %{}

  @typedoc """

  ## Example:

      data_product_item_additional_attributes() :: %{
        "matchRationale" => list(list())
      }

  """
  @type data_product_item_additional_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_connection_output() :: %{
        "connectionId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "domainUnitId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "physicalEndpoints" => list(physical_endpoint()),
        "projectId" => String.t() | atom(),
        "props" => list(),
        "scope" => list(any()),
        "type" => list(any())
      }

  """
  @type update_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_group_profiles_output() :: %{
        "items" => list(group_profile_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type search_group_profiles_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_subscriptions_output() :: %{
        "items" => list(subscription_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_subscriptions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_subscription_target_input() :: %{
        optional("applicableAssetTypes") => list(String.t() | atom()),
        optional("authorizedPrincipals") => list(String.t() | atom()),
        optional("manageAccessRole") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("provider") => [String.t() | atom()],
        optional("subscriptionTargetConfig") => list(subscription_target_form())
      }

  """
  @type update_subscription_target_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_revisions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_asset_revisions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_domain_input() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("description") => [String.t() | atom()],
        optional("domainExecutionRole") => String.t() | atom(),
        optional("name") => [String.t() | atom()],
        optional("serviceRole") => String.t() | atom(),
        optional("singleSignOn") => single_sign_on()
      }

  """
  @type update_domain_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_subscription_grant_output() :: %{
        "assets" => list(subscribed_asset()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "grantedEntity" => list(),
        "id" => String.t() | atom(),
        "status" => list(any()),
        "subscriptionId" => String.t() | atom(),
        "subscriptionTargetId" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t() | atom()
      }

  """
  @type delete_subscription_grant_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lake_formation_configuration() :: %{
        "locationRegistrationExcludeS3Locations" => list(String.t() | atom()),
        "locationRegistrationRole" => String.t() | atom()
      }

  """
  @type lake_formation_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_properties_input() :: %{
        "s3AccessGrantLocationId" => String.t() | atom(),
        "s3Uri" => String.t() | atom()
      }

  """
  @type s3_properties_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_listing_output() :: %{}

  """
  @type delete_listing_output() :: %{}

  @typedoc """

  ## Example:

      form_input() :: %{
        "content" => [String.t() | atom()],
        "formName" => String.t() | atom(),
        "typeIdentifier" => String.t() | atom(),
        "typeRevision" => String.t() | atom()
      }

  """
  @type form_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_glossary_output() :: %{
        "description" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom(),
        "status" => list(any()),
        "usageRestrictions" => list(list(any())())
      }

  """
  @type create_glossary_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mlflow_properties_output() :: %{
        "trackingServerArn" => [String.t() | atom()],
        "trackingServerName" => [String.t() | atom()]
      }

  """
  @type mlflow_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      basic_authentication_credentials() :: %{
        "password" => [String.t() | atom()],
        "userName" => [String.t() | atom()]
      }

  """
  @type basic_authentication_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_configuration_parameter() :: %{
        "isEditable" => [boolean()],
        "name" => String.t() | atom(),
        "value" => [String.t() | atom()]
      }

  """
  @type environment_configuration_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configurable_action_parameter() :: %{
        "key" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type configurable_action_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      amazon_q_properties_output() :: %{
        "authMode" => [String.t() | atom()],
        "isEnabled" => [boolean()],
        "profileArn" => [String.t() | atom()]
      }

  """
  @type amazon_q_properties_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "name" => [String.t() | atom()],
        "provider" => [String.t() | atom()],
        "type" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      redshift_run_configuration_output() :: %{
        "accountId" => [String.t() | atom()],
        "dataAccessRole" => [String.t() | atom()],
        "redshiftCredentialConfiguration" => redshift_credential_configuration(),
        "redshiftStorage" => list(),
        "region" => [String.t() | atom()],
        "relationalFilterConfigurations" => list(relational_filter_configuration())
      }

  """
  @type redshift_run_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_environment_blueprint_configuration_input() :: %{
        optional("environmentRolePermissionBoundary") => String.t() | atom(),
        optional("globalParameters") => map(),
        optional("manageAccessRoleArn") => String.t() | atom(),
        optional("provisioningConfigurations") => list(list()),
        optional("provisioningRoleArn") => String.t() | atom(),
        optional("regionalParameters") => map(),
        required("enabledRegions") => list(String.t() | atom())
      }

  """
  @type put_environment_blueprint_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_product_listing_item() :: %{
        "additionalAttributes" => data_product_listing_item_additional_attributes(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "entityId" => String.t() | atom(),
        "entityRevision" => String.t() | atom(),
        "glossaryTerms" => list(detailed_glossary_term()),
        "items" => list(listing_summary_item()),
        "listingCreatedBy" => String.t() | atom(),
        "listingId" => String.t() | atom(),
        "listingRevision" => String.t() | atom(),
        "listingUpdatedBy" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owningProjectId" => String.t() | atom()
      }

  """
  @type data_product_listing_item() :: %{(String.t() | atom()) => any()}

  @type accept_predictions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type accept_subscription_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type add_entity_owner_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type add_policy_grant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type associate_environment_role_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_governed_terms_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_metadata_generation_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_account_pool_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_asset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_asset_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_asset_revision_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_asset_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_product_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_product_revision_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_domain_unit_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_environment_action_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_environment_blueprint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_environment_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_form_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_glossary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_glossary_term_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_group_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_listing_change_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_project_membership_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_project_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_subscription_grant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_subscription_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_subscription_target_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_user_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_account_pool_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_asset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_asset_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_asset_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_data_product_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_domain_unit_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_environment_action_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_blueprint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_blueprint_configuration_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type delete_environment_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_form_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_glossary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_glossary_term_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_listing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_project_membership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_project_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_subscription_grant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_subscription_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_subscription_target_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_time_series_data_points_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_environment_role_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_governed_terms_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_account_pool_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_asset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_asset_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_asset_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_product_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_data_source_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_domain_unit_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_action_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_blueprint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_blueprint_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_credentials_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_form_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_glossary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_glossary_term_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_group_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_iam_portal_login_url_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_job_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_lineage_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_lineage_node_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_listing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_metadata_generation_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_project_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_subscription_grant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_subscription_request_details_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_subscription_target_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_time_series_data_point_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_user_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_account_pools_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_accounts_in_account_pool_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_asset_filters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_asset_revisions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_connections_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_data_product_revisions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_source_run_activities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_data_source_runs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_data_sources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_domain_units_for_parent_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_domains_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_entity_owners_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_environment_actions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_environment_blueprint_configurations_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_environment_blueprints_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_environment_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_environments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_job_runs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_lineage_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_lineage_node_history_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_metadata_generation_runs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_notifications_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_policy_grants_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_project_memberships_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_project_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_projects_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_rules_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_subscription_grants_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_subscription_requests_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_subscription_targets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_subscriptions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_time_series_data_points_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type post_lineage_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type post_time_series_data_points_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_environment_blueprint_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type reject_predictions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type reject_subscription_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type remove_entity_owner_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type remove_policy_grant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type revoke_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type search_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type search_group_profiles_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type search_listings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type search_types_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type search_user_profiles_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_data_source_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_metadata_generation_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: internal_server_exception() | resource_not_found_exception()

  @type update_account_pool_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_asset_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_domain_unit_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type update_environment_action_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_environment_blueprint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_environment_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_glossary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_glossary_term_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_group_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_project_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_subscription_grant_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_subscription_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_subscription_target_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_user_profile_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "datazone",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "DataZone",
      signature_version: "v4",
      signing_name: "datazone",
      target_prefix: nil
    }
  end

  @doc """
  Accepts automatically generated business-friendly metadata for your Amazon
  DataZone assets.
  """
  @spec accept_predictions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          accept_predictions_input(),
          list()
        ) ::
          {:ok, accept_predictions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_predictions_errors()}
  def accept_predictions(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/accept-predictions"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"revision", "revision"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Accepts a subscription request to a specific asset.
  """
  @spec accept_subscription_request(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          accept_subscription_request_input(),
          list()
        ) ::
          {:ok, accept_subscription_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_subscription_request_errors()}
  def accept_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}/accept"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds the owner of an entity (a domain unit).
  """
  @spec add_entity_owner(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          add_entity_owner_input(),
          list()
        ) ::
          {:ok, add_entity_owner_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_entity_owner_errors()}
  def add_entity_owner(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/addOwner"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Adds a policy grant (an authorization policy) to a specified entity, including
  domain units, environment blueprint configurations, or environment profiles.
  """
  @spec add_policy_grant(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          add_policy_grant_input(),
          list()
        ) ::
          {:ok, add_policy_grant_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_policy_grant_errors()}
  def add_policy_grant(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/policies/managed/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/addGrant"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Associates the environment role in Amazon DataZone.
  """
  @spec associate_environment_role(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          associate_environment_role_input(),
          list()
        ) ::
          {:ok, associate_environment_role_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_environment_role_errors()}
  def associate_environment_role(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        environment_role_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/roles/#{AWS.Util.encode_uri(environment_role_arn)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates governed terms with an asset.
  """
  @spec associate_governed_terms(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          associate_governed_terms_input(),
          list()
        ) ::
          {:ok, associate_governed_terms_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_governed_terms_errors()}
  def associate_governed_terms(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/associate-governed-terms"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Cancels the metadata generation run.

  Prerequisites:

    * The run must exist and be in a cancelable status (e.g., SUBMITTED,
  IN_PROGRESS).

    * Runs in SUCCEEDED status cannot be cancelled.

    * User must have access to the run and cancel permissions.
  """
  @spec cancel_metadata_generation_run(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          cancel_metadata_generation_run_input(),
          list()
        ) ::
          {:ok, cancel_metadata_generation_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_metadata_generation_run_errors()}
  def cancel_metadata_generation_run(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/metadata-generation-runs/#{AWS.Util.encode_uri(identifier)}/cancel"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Cancels the subscription to the specified asset.
  """
  @spec cancel_subscription(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          cancel_subscription_input(),
          list()
        ) ::
          {:ok, cancel_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_subscription_errors()}
  def cancel_subscription(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions/#{AWS.Util.encode_uri(identifier)}/cancel"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an account pool.
  """
  @spec create_account_pool(map(), String.t() | atom(), create_account_pool_input(), list()) ::
          {:ok, create_account_pool_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_account_pool_errors()}
  def create_account_pool(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/account-pools"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an asset in Amazon DataZone catalog.

  Before creating assets, make sure that the following requirements are met:

    * `--domain-identifier` must refer to an existing domain.

    * `--owning-project-identifier` must be a valid project within the
  domain.

    * Asset type must be created beforehand using `create-asset-type`,
  or be a supported system-defined type. For more information, see
  [create-asset-type](https://docs.aws.amazon.com/cli/latest/reference/datazone/create-asset-type.html).     * `--type-revision` (if used) must match a valid revision of the
  asset type.

    * `formsInput` is required when it is associated as required in the
  `asset-type`. For more information, see
  [create-form-type](https://docs.aws.amazon.com/cli/latest/reference/datazone/create-form-type.html).

    * Form content must include all required fields as per the form
  schema (e.g., `bucketArn`).

  You must invoke the following pre-requisite commands before invoking this API:

    *
  [CreateFormType](https://docs.aws.amazon.com/datazone/latest/APIReference/API_CreateFormType.html)     *
  [CreateAssetType](https://docs.aws.amazon.com/datazone/latest/APIReference/API_CreateAssetType.html)
  """
  @spec create_asset(map(), String.t() | atom(), create_asset_input(), list()) ::
          {:ok, create_asset_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_asset_errors()}
  def create_asset(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a data asset filter.

  Asset filters provide a sophisticated way to create controlled views of data
  assets by selecting specific columns or applying row-level filters. This
  capability is crucial for organizations that need to share data while
  maintaining security and privacy controls. For example, your database might be
  filtered to show only non-PII fields to certain users, or sales data might be
  filtered by region for different regional teams. Asset filters enable
  fine-grained access control while maintaining a single source of truth.

  Prerequisites:

    * A valid domain (`--domain-identifier`) must exist.

    * A data asset (`--asset-identifier`) must already be created under
  that domain.

    * The asset must have the referenced columns available in its schema
  for column-based filtering.

    * You cannot specify both (`columnConfiguration`,
  `rowConfiguration`)at the same time.
  """
  @spec create_asset_filter(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_asset_filter_input(),
          list()
        ) ::
          {:ok, create_asset_filter_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_asset_filter_errors()}
  def create_asset_filter(
        %Client{} = client,
        asset_identifier,
        domain_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(asset_identifier)}/filters"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a revision of the asset.

  Asset revisions represent new versions of existing assets, capturing changes to
  either the underlying data or its metadata. They maintain a historical record of
  how assets evolve over time, who made changes, and when those changes occurred.
  This versioning capability is crucial for governance and compliance, allowing
  organizations to track changes, understand their impact, and roll back if
  necessary.

  Prerequisites:

    * Asset must already exist in the domain with identifier.

    * `formsInput` is required when asset has the form type.
  `typeRevision` should be the latest version of form type.

    * The form content must include all required fields (e.g.,
  `bucketArn` for `S3ObjectCollectionForm`).

    * The owning project of the original asset must still exist and be
  active.

    * User must have write access to the project and domain.
  """
  @spec create_asset_revision(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_asset_revision_input(),
          list()
        ) ::
          {:ok, create_asset_revision_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_asset_revision_errors()}
  def create_asset_revision(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/revisions"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a custom asset type.

  Prerequisites:

    * The `formsInput` field is required, however, can be passed as
  empty (e.g. `-forms-input {})`.

    * You must have `CreateAssetType` permissions.

    * The domain-identifier and owning-project-identifier must be valid
  and active.

    * The name of the asset type must be unique within the domain —
  duplicate names will cause failure.

    * JSON input must be valid — incorrect formatting causes Invalid
  JSON errors.
  """
  @spec create_asset_type(map(), String.t() | atom(), create_asset_type_input(), list()) ::
          {:ok, create_asset_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_asset_type_errors()}
  def create_asset_type(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/asset-types"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new connection.

  In Amazon DataZone, a connection enables you to connect your resources (domains,
  projects, and environments) to external resources and services.
  """
  @spec create_connection(map(), String.t() | atom(), create_connection_input(), list()) ::
          {:ok, create_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connection_errors()}
  def create_connection(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/connections"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a data product.

  A data product is a comprehensive package that combines data assets with their
  associated metadata, documentation, and access controls. It's designed to serve
  specific business needs or use cases, making it easier for users to find and
  consume data appropriately. Data products include important information about
  data quality, freshness, and usage guidelines, effectively bridging the gap
  between data producers and consumers while ensuring proper governance.

  Prerequisites:

    * The domain must exist and be accessible.

    * The owning project must be valid and active.

    * The name must be unique within the domain (no existing data
  product with the same name).

    * User must have create permissions for data products in the
  project.
  """
  @spec create_data_product(map(), String.t() | atom(), create_data_product_input(), list()) ::
          {:ok, create_data_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_product_errors()}
  def create_data_product(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-products"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a data product revision.

  Prerequisites:

    * The original data product must exist in the given domain.

    * User must have permissions on the data product.

    * The domain must be valid and accessible.

    * The new revision name must comply with naming constraints (if
  required).
  """
  @spec create_data_product_revision(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_data_product_revision_input(),
          list()
        ) ::
          {:ok, create_data_product_revision_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_product_revision_errors()}
  def create_data_product_revision(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-products/#{AWS.Util.encode_uri(identifier)}/revisions"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an Amazon DataZone data source.
  """
  @spec create_data_source(map(), String.t() | atom(), create_data_source_input(), list()) ::
          {:ok, create_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_source_errors()}
  def create_data_source(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an Amazon DataZone domain.
  """
  @spec create_domain(map(), create_domain_input(), list()) ::
          {:ok, create_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, input, options \\ []) do
    url_path = "/v2/domains"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a domain unit in Amazon DataZone.
  """
  @spec create_domain_unit(map(), String.t() | atom(), create_domain_unit_input(), list()) ::
          {:ok, create_domain_unit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_unit_errors()}
  def create_domain_unit(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/domain-units"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Create an Amazon DataZone environment.
  """
  @spec create_environment(map(), String.t() | atom(), create_environment_input(), list()) ::
          {:ok, create_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an action for the environment, for example, creates a console link for
  an analytics tool that is available in this environment.
  """
  @spec create_environment_action(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_environment_action_input(),
          list()
        ) ::
          {:ok, create_environment_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_action_errors()}
  def create_environment_action(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/actions"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a Amazon DataZone blueprint.
  """
  @spec create_environment_blueprint(
          map(),
          String.t() | atom(),
          create_environment_blueprint_input(),
          list()
        ) ::
          {:ok, create_environment_blueprint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_blueprint_errors()}
  def create_environment_blueprint(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprints"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an Amazon DataZone environment profile.
  """
  @spec create_environment_profile(
          map(),
          String.t() | atom(),
          create_environment_profile_input(),
          list()
        ) ::
          {:ok, create_environment_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_profile_errors()}
  def create_environment_profile(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a metadata form type.

  Prerequisites:

    * The domain must exist and be in an `ENABLED` state.

    * The owning project must exist and be accessible.

    * The name must be unique within the domain.

  For custom form types, to indicate that a field should be searchable, annotate
  it with `@amazon.datazone#searchable`. By default, searchable fields are indexed
  for semantic search, where related query terms will match the attribute value
  even if they are not stemmed or keyword matches. To indicate that a field should
  be indexed for lexical search (which disables semantic search but supports
  stemmed and partial matches), annotate it with
  `@amazon.datazone#searchable(modes:["LEXICAL"])`. To indicate that a field should be indexed for technical identifier search (for more information on
  technical identifier search, see:
  [https://aws.amazon.com/blogs/big-data/streamline-data-discovery-with-precise-technical-identifier-search-in-amazon-sagemaker-unified-studio/](https://aws.amazon.com/blogs/big-data/streamline-data-discovery-with-precise-technical-identifier-search-in-amazon-sagemaker-unified-studio/)),
  annotate it with `@amazon.datazone#searchable(modes:["TECHNICAL"])`.

  To denote that a field will store glossary term ids (which are filterable via
  the Search/SearchListings APIs), annotate it with
  `@amazon.datazone#glossaryterm("${GLOSSARY_ID}")`, where `${GLOSSARY_ID}` is the
  id of the glossary that the glossary terms stored in the field belong to.
  """
  @spec create_form_type(map(), String.t() | atom(), create_form_type_input(), list()) ::
          {:ok, create_form_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_form_type_errors()}
  def create_form_type(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/form-types"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an Amazon DataZone business glossary.

  Specifies that this is a create glossary policy.

  A glossary serves as the central repository for business terminology and
  definitions within an organization. It helps establish and maintain a common
  language across different departments and teams, reducing miscommunication and
  ensuring consistent interpretation of business concepts. Glossaries can include
  hierarchical relationships between terms, cross-references, and links to actual
  data assets, making them invaluable for both business users and technical teams
  trying to understand and use data correctly.

  Prerequisites:

    * Domain must exist and be in an active state.

    * Owning project must exist and be accessible by the caller.

    * The glossary name must be unique within the domain.
  """
  @spec create_glossary(map(), String.t() | atom(), create_glossary_input(), list()) ::
          {:ok, create_glossary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_glossary_errors()}
  def create_glossary(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a business glossary term.

  A glossary term represents an individual entry within the Amazon DataZone
  glossary, serving as a standardized definition for a specific business concept
  or data element. Each term can include rich metadata such as detailed
  definitions, synonyms, related terms, and usage examples. Glossary terms can be
  linked directly to data assets, providing business context to technical data
  elements. This linking capability helps users understand the business meaning of
  data fields and ensures consistent interpretation across different systems and
  teams. Terms can also have relationships with other terms, creating a semantic
  network that reflects the complexity of business concepts.

  Prerequisites:

    * Domain must exist.

    * Glossary must exist.

    * The term name must be unique within the glossary.

    * Ensure term does not conflict with existing terms in hierarchy.
  """
  @spec create_glossary_term(map(), String.t() | atom(), create_glossary_term_input(), list()) ::
          {:ok, create_glossary_term_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_glossary_term_errors()}
  def create_glossary_term(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a group profile in Amazon DataZone.
  """
  @spec create_group_profile(map(), String.t() | atom(), create_group_profile_input(), list()) ::
          {:ok, create_group_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_group_profile_errors()}
  def create_group_profile(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/group-profiles"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Publishes a listing (a record of an asset at a given time) or removes a listing
  from the catalog.
  """
  @spec create_listing_change_set(
          map(),
          String.t() | atom(),
          create_listing_change_set_input(),
          list()
        ) ::
          {:ok, create_listing_change_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_listing_change_set_errors()}
  def create_listing_change_set(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/change-set"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an Amazon DataZone project.
  """
  @spec create_project(map(), String.t() | atom(), create_project_input(), list()) ::
          {:ok, create_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a project membership in Amazon DataZone.
  """
  @spec create_project_membership(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_project_membership_input(),
          list()
        ) ::
          {:ok, create_project_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_project_membership_errors()}
  def create_project_membership(
        %Client{} = client,
        domain_identifier,
        project_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(project_identifier)}/createMembership"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a project profile.
  """
  @spec create_project_profile(map(), String.t() | atom(), create_project_profile_input(), list()) ::
          {:ok, create_project_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_project_profile_errors()}
  def create_project_profile(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/project-profiles"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a rule in Amazon DataZone.

  A rule is a formal agreement that enforces specific requirements across user
  workflows (e.g., publishing assets to the catalog, requesting subscriptions,
  creating projects) within the Amazon DataZone data portal. These rules help
  maintain consistency, ensure compliance, and uphold governance standards in data
  management processes. For instance, a metadata enforcement rule can specify the
  required information for creating a subscription request or publishing a data
  asset to the catalog, ensuring alignment with organizational standards.
  """
  @spec create_rule(map(), String.t() | atom(), create_rule_input(), list()) ::
          {:ok, create_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rule_errors()}
  def create_rule(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/rules"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a subsscription grant in Amazon DataZone.
  """
  @spec create_subscription_grant(
          map(),
          String.t() | atom(),
          create_subscription_grant_input(),
          list()
        ) ::
          {:ok, create_subscription_grant_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_subscription_grant_errors()}
  def create_subscription_grant(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a subscription request in Amazon DataZone.
  """
  @spec create_subscription_request(
          map(),
          String.t() | atom(),
          create_subscription_request_input(),
          list()
        ) ::
          {:ok, create_subscription_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_subscription_request_errors()}
  def create_subscription_request(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a subscription target in Amazon DataZone.
  """
  @spec create_subscription_target(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_subscription_target_input(),
          list()
        ) ::
          {:ok, create_subscription_target_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_subscription_target_errors()}
  def create_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a user profile in Amazon DataZone.
  """
  @spec create_user_profile(map(), String.t() | atom(), create_user_profile_input(), list()) ::
          {:ok, create_user_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_profile_errors()}
  def create_user_profile(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/user-profiles"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes an account pool.
  """
  @spec delete_account_pool(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_account_pool_input(),
          list()
        ) ::
          {:ok, delete_account_pool_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_account_pool_errors()}
  def delete_account_pool(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/account-pools/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an asset in Amazon DataZone.

    * --domain-identifier must refer to a valid and existing domain.

    * --identifier must refer to an existing asset in the specified
  domain.

    * Asset must not be referenced in any existing asset filters.

    * Asset must not be linked to any draft or published data product.

    * User must have delete permissions for the domain and project.
  """
  @spec delete_asset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_asset_input(),
          list()
        ) ::
          {:ok, delete_asset_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_asset_errors()}
  def delete_asset(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an asset filter.

  Prerequisites:

    * The asset filter must exist.

    * The domain and asset must not have been deleted.

    * Ensure the --identifier refers to a valid filter ID.
  """
  @spec delete_asset_filter(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_asset_filter_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_asset_filter_errors()}
  def delete_asset_filter(
        %Client{} = client,
        asset_identifier,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(asset_identifier)}/filters/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an asset type in Amazon DataZone.

  Prerequisites:

    * The asset type must exist in the domain.

    * You must have DeleteAssetType permission.

    * The asset type must not be in use (e.g., assigned to any asset).
  If used, deletion will fail.

    * You should retrieve the asset type using get-asset-type to confirm
  its presence before deletion.
  """
  @spec delete_asset_type(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_asset_type_input(),
          list()
        ) ::
          {:ok, delete_asset_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_asset_type_errors()}
  def delete_asset_type(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/asset-types/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes and connection.

  In Amazon DataZone, a connection enables you to connect your resources (domains,
  projects, and environments) to external resources and services.
  """
  @spec delete_connection(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_connection_input(),
          list()
        ) ::
          {:ok, delete_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connection_errors()}
  def delete_connection(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/connections/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a data product in Amazon DataZone.

  Prerequisites:

    * The data product must exist and not be deleted or archived.

    * The user must have delete permissions for the data product.

    * Domain and project must be active.
  """
  @spec delete_data_product(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_data_product_input(),
          list()
        ) ::
          {:ok, delete_data_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_product_errors()}
  def delete_data_product(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-products/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a data source in Amazon DataZone.
  """
  @spec delete_data_source(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_data_source_input(),
          list()
        ) ::
          {:ok, delete_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_source_errors()}
  def delete_data_source(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"},
        {"retainPermissionsOnRevokeFailure", "retainPermissionsOnRevokeFailure"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a Amazon DataZone domain.
  """
  @spec delete_domain(map(), String.t() | atom(), delete_domain_input(), list()) ::
          {:ok, delete_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"},
        {"skipDeletionCheck", "skipDeletionCheck"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a domain unit.
  """
  @spec delete_domain_unit(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_domain_unit_input(),
          list()
        ) ::
          {:ok, delete_domain_unit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_unit_errors()}
  def delete_domain_unit(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/domain-units/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an environment in Amazon DataZone.
  """
  @spec delete_environment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_environment_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an action for the environment, for example, deletes a console link for
  an analytics tool that is available in this environment.
  """
  @spec delete_environment_action(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_environment_action_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_environment_action_errors()}
  def delete_environment_action(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/actions/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a blueprint in Amazon DataZone.
  """
  @spec delete_environment_blueprint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_environment_blueprint_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_environment_blueprint_errors()}
  def delete_environment_blueprint(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprints/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the blueprint configuration in Amazon DataZone.
  """
  @spec delete_environment_blueprint_configuration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_environment_blueprint_configuration_input(),
          list()
        ) ::
          {:ok, delete_environment_blueprint_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_environment_blueprint_configuration_errors()}
  def delete_environment_blueprint_configuration(
        %Client{} = client,
        domain_identifier,
        environment_blueprint_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations/#{AWS.Util.encode_uri(environment_blueprint_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an environment profile in Amazon DataZone.
  """
  @spec delete_environment_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_environment_profile_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_environment_profile_errors()}
  def delete_environment_profile(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes and metadata form type in Amazon DataZone.

  Prerequisites:

    * The form type must exist in the domain.

    * The form type must not be in use by any asset types or assets.

    * The domain must be valid and accessible.

    * User must have delete permissions on the form type.

    * Any dependencies (such as linked asset types) must be removed
  first.
  """
  @spec delete_form_type(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_form_type_input(),
          list()
        ) ::
          {:ok, delete_form_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_form_type_errors()}
  def delete_form_type(
        %Client{} = client,
        domain_identifier,
        form_type_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/form-types/#{AWS.Util.encode_uri(form_type_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a business glossary in Amazon DataZone.

  Prerequisites:

    * The glossary must be in DISABLED state.

    * The glossary must not have any glossary terms associated with it.

    * The glossary must exist in the specified domain.

    * The caller must have the `datazone:DeleteGlossary` permission in
  the domain and glossary.

    * Glossary should not be linked to any active metadata forms.
  """
  @spec delete_glossary(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_glossary_input(),
          list()
        ) ::
          {:ok, delete_glossary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_glossary_errors()}
  def delete_glossary(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a business glossary term in Amazon DataZone.

  Prerequisites:

    * Glossary term must exist and be active.

    * The term must not be linked to other assets or child terms.

    * Caller must have delete permissions in the domain/glossary.

    * Ensure all associations (such as to assets or parent terms) are
  removed before deletion.
  """
  @spec delete_glossary_term(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_glossary_term_input(),
          list()
        ) ::
          {:ok, delete_glossary_term_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_glossary_term_errors()}
  def delete_glossary_term(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a listing (a record of an asset at a given time).
  """
  @spec delete_listing(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_listing_input(),
          list()
        ) ::
          {:ok, delete_listing_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_listing_errors()}
  def delete_listing(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a project in Amazon DataZone.
  """
  @spec delete_project(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_project_input(),
          list()
        ) ::
          {:ok, delete_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"skipDeletionCheck", "skipDeletionCheck"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes project membership in Amazon DataZone.
  """
  @spec delete_project_membership(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_project_membership_input(),
          list()
        ) ::
          {:ok, delete_project_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_project_membership_errors()}
  def delete_project_membership(
        %Client{} = client,
        domain_identifier,
        project_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(project_identifier)}/deleteMembership"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a project profile.
  """
  @spec delete_project_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_project_profile_input(),
          list()
        ) ::
          {:ok, delete_project_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_project_profile_errors()}
  def delete_project_profile(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/project-profiles/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a rule in Amazon DataZone.

  A rule is a formal agreement that enforces specific requirements across user
  workflows (e.g., publishing assets to the catalog, requesting subscriptions,
  creating projects) within the Amazon DataZone data portal. These rules help
  maintain consistency, ensure compliance, and uphold governance standards in data
  management processes. For instance, a metadata enforcement rule can specify the
  required information for creating a subscription request or publishing a data
  asset to the catalog, ensuring alignment with organizational standards.
  """
  @spec delete_rule(map(), String.t() | atom(), String.t() | atom(), delete_rule_input(), list()) ::
          {:ok, delete_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rule_errors()}
  def delete_rule(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/rules/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes and subscription grant in Amazon DataZone.
  """
  @spec delete_subscription_grant(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_subscription_grant_input(),
          list()
        ) ::
          {:ok, delete_subscription_grant_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_subscription_grant_errors()}
  def delete_subscription_grant(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a subscription request in Amazon DataZone.
  """
  @spec delete_subscription_request(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_subscription_request_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_subscription_request_errors()}
  def delete_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a subscription target in Amazon DataZone.
  """
  @spec delete_subscription_target(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_subscription_target_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_subscription_target_errors()}
  def delete_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the specified time series form for the specified asset.
  """
  @spec delete_time_series_data_points(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_time_series_data_points_input(),
          list()
        ) ::
          {:ok, delete_time_series_data_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_time_series_data_points_errors()}
  def delete_time_series_data_points(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/time-series-data-points"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"},
        {"formName", "formName"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disassociates the environment role in Amazon DataZone.
  """
  @spec disassociate_environment_role(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_environment_role_input(),
          list()
        ) ::
          {:ok, disassociate_environment_role_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_environment_role_errors()}
  def disassociate_environment_role(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        environment_role_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/roles/#{AWS.Util.encode_uri(environment_role_arn)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates restricted terms from an asset.
  """
  @spec disassociate_governed_terms(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_governed_terms_input(),
          list()
        ) ::
          {:ok, disassociate_governed_terms_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_governed_terms_errors()}
  def disassociate_governed_terms(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/disassociate-governed-terms"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets the details of the account pool.
  """
  @spec get_account_pool(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_account_pool_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_pool_errors()}
  def get_account_pool(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/account-pools/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone asset.

  An asset is the fundamental building block in Amazon DataZone, representing any
  data resource that needs to be cataloged and managed. It can take many forms,
  from Amazon S3 buckets and database tables to dashboards and machine learning
  models. Each asset contains comprehensive metadata about the resource, including
  its location, schema, ownership, and lineage information. Assets are essential
  for organizing and managing data resources across an organization, making them
  discoverable and usable while maintaining proper governance.

  Before using the Amazon DataZone GetAsset command, ensure the following
  prerequisites are met:

    * Domain identifier must exist and be valid

    * Asset identifier must exist

    * User must have the required permissions to perform the action
  """
  @spec get_asset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_asset_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_asset_errors()}
  def get_asset(%Client{} = client, domain_identifier, identifier, revision \\ nil, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(revision) do
        [{"revision", revision} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an asset filter.

  Prerequisites:

    * Domain (`--domain-identifier`), asset (`--asset-identifier`), and
  filter (`--identifier`) must all exist.

    * The asset filter should not have been deleted.

    * The asset must still exist (since the filter is linked to it).
  """
  @spec get_asset_filter(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_asset_filter_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_asset_filter_errors()}
  def get_asset_filter(
        %Client{} = client,
        asset_identifier,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(asset_identifier)}/filters/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone asset type.

  Asset types define the categories and characteristics of different kinds of data
  assets within Amazon DataZone.. They determine what metadata fields are
  required, what operations are possible, and how the asset integrates with other
  Amazon Web Services services. Asset types can range from built-in types like
  Amazon S3 buckets and Amazon Web Services Glue tables to custom types defined
  for specific organizational needs. Understanding asset types is crucial for
  properly organizing and managing different kinds of data resources.

  Prerequisites:

    * The asset type with identifier must exist in the domain.
  ResourceNotFoundException.

    * You must have the GetAssetType permission.

    * Ensure the domain-identifier value is correct and accessible.
  """
  @spec get_asset_type(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_asset_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_asset_type_errors()}
  def get_asset_type(
        %Client{} = client,
        domain_identifier,
        identifier,
        revision \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/asset-types/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(revision) do
        [{"revision", revision} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a connection.

  In Amazon DataZone, a connection enables you to connect your resources (domains,
  projects, and environments) to external resources and services.
  """
  @spec get_connection(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connection_errors()}
  def get_connection(
        %Client{} = client,
        domain_identifier,
        identifier,
        with_secret \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/connections/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(with_secret) do
        [{"withSecret", with_secret} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the data product.

  Prerequisites:

    * The data product ID must exist.

    * The domain must be valid and accessible.

    * User must have read or discovery permissions for the data product.
  """
  @spec get_data_product(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_data_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_product_errors()}
  def get_data_product(
        %Client{} = client,
        domain_identifier,
        identifier,
        revision \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-products/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(revision) do
        [{"revision", revision} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone data source.
  """
  @spec get_data_source(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_source_errors()}
  def get_data_source(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone data source run.
  """
  @spec get_data_source_run(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_data_source_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_source_run_errors()}
  def get_data_source_run(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-source-runs/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone domain.
  """
  @spec get_domain(map(), String.t() | atom(), list()) ::
          {:ok, get_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_errors()}
  def get_domain(%Client{} = client, identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of the specified domain unit.
  """
  @spec get_domain_unit(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_domain_unit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_unit_errors()}
  def get_domain_unit(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/domain-units/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone environment.
  """
  @spec get_environment(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_errors()}
  def get_environment(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the specified environment action.
  """
  @spec get_environment_action(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_environment_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_action_errors()}
  def get_environment_action(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/actions/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone blueprint.
  """
  @spec get_environment_blueprint(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_environment_blueprint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_blueprint_errors()}
  def get_environment_blueprint(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprints/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the blueprint configuration in Amazon DataZone.
  """
  @spec get_environment_blueprint_configuration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_environment_blueprint_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_blueprint_configuration_errors()}
  def get_environment_blueprint_configuration(
        %Client{} = client,
        domain_identifier,
        environment_blueprint_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations/#{AWS.Util.encode_uri(environment_blueprint_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the credentials of an environment in Amazon DataZone.
  """
  @spec get_environment_credentials(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_environment_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_credentials_errors()}
  def get_environment_credentials(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/credentials"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an evinronment profile in Amazon DataZone.
  """
  @spec get_environment_profile(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_environment_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_profile_errors()}
  def get_environment_profile(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a metadata form type in Amazon DataZone.

  Form types define the structure and validation rules for collecting metadata
  about assets in Amazon DataZone. They act as templates that ensure consistent
  metadata capture across similar types of assets, while allowing for
  customization to meet specific organizational needs. Form types can include
  required fields, validation rules, and dependencies, helping maintain
  high-quality metadata that makes data assets more discoverable and usable.

    * The form type with the specified identifier must exist in the
  given domain.

    * The domain must be valid and active.

    * User must have permission on the form type.

    * The form type should not be deleted or in an invalid state.

  One use case for this API is to determine whether a form field is indexed for
  search.

  A searchable field will be annotated with `@amazon.datazone#searchable`. By
  default, searchable fields are indexed for semantic search, where related query
  terms will match the attribute value even if they are not stemmed or keyword
  matches. If a field is indexed technical identifier search, it will be annotated
  with `@amazon.datazone#searchable(modes:["TECHNICAL"])`. If a field is indexed for lexical search (supports stemmed and prefix matches but not semantic
  matches), it will be annotated with
  `@amazon.datazone#searchable(modes:["LEXICAL"])`.

  A field storing glossary term IDs (which is filterable) will be annotated with
  `@amazon.datazone#glossaryterm("${glossaryId}")`.
  """
  @spec get_form_type(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_form_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_form_type_errors()}
  def get_form_type(
        %Client{} = client,
        domain_identifier,
        form_type_identifier,
        revision \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/form-types/#{AWS.Util.encode_uri(form_type_identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(revision) do
        [{"revision", revision} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a business glossary in Amazon DataZone.

  Prerequisites:

    * The specified glossary ID must exist and be associated with the
  given domain.

    * The caller must have the `datazone:GetGlossary` permission on the
  domain.
  """
  @spec get_glossary(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_glossary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_glossary_errors()}
  def get_glossary(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a business glossary term in Amazon DataZone.

  Prerequisites:

    * Glossary term with identifier must exist in the domain.

    * User must have permission on the glossary term.

    * Domain must be accessible and active.
  """
  @spec get_glossary_term(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_glossary_term_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_glossary_term_errors()}
  def get_glossary_term(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a group profile in Amazon DataZone.
  """
  @spec get_group_profile(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_group_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_group_profile_errors()}
  def get_group_profile(%Client{} = client, domain_identifier, group_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/group-profiles/#{AWS.Util.encode_uri(group_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the data portal URL for the specified Amazon DataZone domain.
  """
  @spec get_iam_portal_login_url(
          map(),
          String.t() | atom(),
          get_iam_portal_login_url_input(),
          list()
        ) ::
          {:ok, get_iam_portal_login_url_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_iam_portal_login_url_errors()}
  def get_iam_portal_login_url(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/get-portal-login-url"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  The details of the job run.
  """
  @spec get_job_run(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_job_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_run_errors()}
  def get_job_run(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/jobRuns/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the lineage event.
  """
  @spec get_lineage_event(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_lineage_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_lineage_event_errors()}
  def get_lineage_event(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/lineage/events/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Created-At", "createdAt"},
          {"Created-By", "createdBy"},
          {"Domain-Id", "domainId"},
          {"Event-Time", "eventTime"},
          {"Id", "id"},
          {"Processing-Status", "processingStatus"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the data lineage node.
  """
  @spec get_lineage_node(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_lineage_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_lineage_node_errors()}
  def get_lineage_node(
        %Client{} = client,
        domain_identifier,
        identifier,
        event_timestamp \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/lineage/nodes/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(event_timestamp) do
        [{"timestamp", event_timestamp} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a listing (a record of an asset at a given time).

  If you specify a listing version, only details that are specific to that version
  are returned.
  """
  @spec get_listing(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_listing_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_listing_errors()}
  def get_listing(
        %Client{} = client,
        domain_identifier,
        identifier,
        listing_revision \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(listing_revision) do
        [{"listingRevision", listing_revision} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a metadata generation run in Amazon DataZone.

  Prerequisites:

    * Valid domain and run identifier.

    * The metadata generation run must exist.

    * User must have read access to the metadata run.
  """
  @spec get_metadata_generation_run(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_metadata_generation_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_metadata_generation_run_errors()}
  def get_metadata_generation_run(
        %Client{} = client,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/metadata-generation-runs/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a project in Amazon DataZone.
  """
  @spec get_project(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_project_errors()}
  def get_project(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The details of the project profile.
  """
  @spec get_project_profile(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_project_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_project_profile_errors()}
  def get_project_profile(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/project-profiles/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of a rule in Amazon DataZone.

  A rule is a formal agreement that enforces specific requirements across user
  workflows (e.g., publishing assets to the catalog, requesting subscriptions,
  creating projects) within the Amazon DataZone data portal. These rules help
  maintain consistency, ensure compliance, and uphold governance standards in data
  management processes. For instance, a metadata enforcement rule can specify the
  required information for creating a subscription request or publishing a data
  asset to the catalog, ensuring alignment with organizational standards.
  """
  @spec get_rule(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rule_errors()}
  def get_rule(%Client{} = client, domain_identifier, identifier, revision \\ nil, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/rules/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(revision) do
        [{"revision", revision} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a subscription in Amazon DataZone.
  """
  @spec get_subscription(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_subscription_errors()}
  def get_subscription(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the subscription grant in Amazon DataZone.
  """
  @spec get_subscription_grant(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_subscription_grant_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_subscription_grant_errors()}
  def get_subscription_grant(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of the specified subscription request.
  """
  @spec get_subscription_request_details(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_subscription_request_details_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_subscription_request_details_errors()}
  def get_subscription_request_details(
        %Client{} = client,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the subscription target in Amazon DataZone.
  """
  @spec get_subscription_target(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_subscription_target_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_subscription_target_errors()}
  def get_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the existing data point for the asset.
  """
  @spec get_time_series_data_point(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_time_series_data_point_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_time_series_data_point_errors()}
  def get_time_series_data_point(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        identifier,
        form_name,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/time-series-data-points/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(form_name) do
        [{"formName", form_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a user profile in Amazon DataZone.
  """
  @spec get_user_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_user_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_profile_errors()}
  def get_user_profile(
        %Client{} = client,
        domain_identifier,
        user_identifier,
        type \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/user-profiles/#{AWS.Util.encode_uri(user_identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists existing account pools.
  """
  @spec list_account_pools(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_account_pools_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_pools_errors()}
  def list_account_pools(
        %Client{} = client,
        domain_identifier,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/account-pools"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
  Lists the accounts in the specified account pool.
  """
  @spec list_accounts_in_account_pool(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_accounts_in_account_pool_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_accounts_in_account_pool_errors()}
  def list_accounts_in_account_pool(
        %Client{} = client,
        domain_identifier,
        identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/account-pools/#{AWS.Util.encode_uri(identifier)}/accounts"

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
  Lists asset filters.

  Prerequisites:

    * A valid domain and asset must exist.

    * The asset must have at least one filter created to return results.
  """
  @spec list_asset_filters(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_asset_filters_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_asset_filters_errors()}
  def list_asset_filters(
        %Client{} = client,
        asset_identifier,
        domain_identifier,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(asset_identifier)}/filters"

    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists the revisions for the asset.

  Prerequisites:

    * The asset must exist in the domain.

    * There must be at least one revision of the asset (which happens
  automatically after creation).

    * The domain must be valid and active.

    * User must have permissions on the asset and domain.
  """
  @spec list_asset_revisions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_asset_revisions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_asset_revisions_errors()}
  def list_asset_revisions(
        %Client{} = client,
        domain_identifier,
        identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/revisions"

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
  Lists connections.

  In Amazon DataZone, a connection enables you to connect your resources (domains,
  projects, and environments) to external resources and services.
  """
  @spec list_connections(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_connections_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connections_errors()}
  def list_connections(
        %Client{} = client,
        domain_identifier,
        environment_identifier \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        project_identifier \\ nil,
        scope \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/connections"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(scope) do
        [{"scope", scope} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(project_identifier) do
        [{"projectIdentifier", project_identifier} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(environment_identifier) do
        [{"environmentIdentifier", environment_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists data product revisions.

  Prerequisites:

    * The data product ID must exist within the domain.

    * User must have view permissions on the data product.

    * The domain must be in a valid and accessible state.
  """
  @spec list_data_product_revisions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_product_revisions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_product_revisions_errors()}
  def list_data_product_revisions(
        %Client{} = client,
        domain_identifier,
        identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-products/#{AWS.Util.encode_uri(identifier)}/revisions"

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
  Lists data source run activities.
  """
  @spec list_data_source_run_activities(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_source_run_activities_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_source_run_activities_errors()}
  def list_data_source_run_activities(
        %Client{} = client,
        domain_identifier,
        identifier,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-source-runs/#{AWS.Util.encode_uri(identifier)}/activities"

    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists data source runs in Amazon DataZone.
  """
  @spec list_data_source_runs(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_source_runs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_source_runs_errors()}
  def list_data_source_runs(
        %Client{} = client,
        data_source_identifier,
        domain_identifier,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(data_source_identifier)}/runs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists data sources in Amazon DataZone.
  """
  @spec list_data_sources(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_sources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_sources_errors()}
  def list_data_sources(
        %Client{} = client,
        domain_identifier,
        connection_identifier \\ nil,
        environment_identifier \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        project_identifier,
        status \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(project_identifier) do
        [{"projectIdentifier", project_identifier} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(environment_identifier) do
        [{"environmentIdentifier", environment_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(connection_identifier) do
        [{"connectionIdentifier", connection_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists child domain units for the specified parent domain unit.
  """
  @spec list_domain_units_for_parent(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_domain_units_for_parent_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_domain_units_for_parent_errors()}
  def list_domain_units_for_parent(
        %Client{} = client,
        domain_identifier,
        max_results \\ nil,
        next_token \\ nil,
        parent_domain_unit_identifier,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/domain-units"
    headers = []
    query_params = []

    query_params =
      if !is_nil(parent_domain_unit_identifier) do
        [{"parentDomainUnitIdentifier", parent_domain_unit_identifier} | query_params]
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
  Lists Amazon DataZone domains.
  """
  @spec list_domains(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_domains_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_domains_errors()}
  def list_domains(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists the entity (domain units) owners.
  """
  @spec list_entity_owners(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_entity_owners_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_entity_owners_errors()}
  def list_entity_owners(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/owners"

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
  Lists existing environment actions.
  """
  @spec list_environment_actions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_environment_actions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environment_actions_errors()}
  def list_environment_actions(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/actions"

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
  Lists blueprint configurations for a Amazon DataZone environment.
  """
  @spec list_environment_blueprint_configurations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_environment_blueprint_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environment_blueprint_configurations_errors()}
  def list_environment_blueprint_configurations(
        %Client{} = client,
        domain_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations"

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
  Lists blueprints in an Amazon DataZone environment.
  """
  @spec list_environment_blueprints(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_environment_blueprints_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environment_blueprints_errors()}
  def list_environment_blueprints(
        %Client{} = client,
        domain_identifier,
        managed \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprints"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(managed) do
        [{"managed", managed} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone environment profiles.
  """
  @spec list_environment_profiles(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_environment_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environment_profiles_errors()}
  def list_environment_profiles(
        %Client{} = client,
        domain_identifier,
        aws_account_id \\ nil,
        aws_account_region \\ nil,
        environment_blueprint_identifier \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        project_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(project_identifier) do
        [{"projectIdentifier", project_identifier} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(environment_blueprint_identifier) do
        [{"environmentBlueprintIdentifier", environment_blueprint_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_account_region) do
        [{"awsAccountRegion", aws_account_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_account_id) do
        [{"awsAccountId", aws_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone environments.
  """
  @spec list_environments(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_environments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environments_errors()}
  def list_environments(
        %Client{} = client,
        domain_identifier,
        aws_account_id \\ nil,
        aws_account_region \\ nil,
        environment_blueprint_identifier \\ nil,
        environment_profile_identifier \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        project_identifier,
        provider \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(provider) do
        [{"provider", provider} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(project_identifier) do
        [{"projectIdentifier", project_identifier} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(environment_profile_identifier) do
        [{"environmentProfileIdentifier", environment_profile_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(environment_blueprint_identifier) do
        [{"environmentBlueprintIdentifier", environment_blueprint_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_account_region) do
        [{"awsAccountRegion", aws_account_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_account_id) do
        [{"awsAccountId", aws_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists job runs.
  """
  @spec list_job_runs(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_job_runs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_job_runs_errors()}
  def list_job_runs(
        %Client{} = client,
        domain_identifier,
        job_identifier,
        max_results \\ nil,
        next_token \\ nil,
        sort_order \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/jobs/#{AWS.Util.encode_uri(job_identifier)}/runs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
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
  Lists lineage events.
  """
  @spec list_lineage_events(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_lineage_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_lineage_events_errors()}
  def list_lineage_events(
        %Client{} = client,
        domain_identifier,
        max_results \\ nil,
        next_token \\ nil,
        processing_status \\ nil,
        sort_order \\ nil,
        timestamp_after \\ nil,
        timestamp_before \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/lineage/events"
    headers = []
    query_params = []

    query_params =
      if !is_nil(timestamp_before) do
        [{"timestampBefore", timestamp_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(timestamp_after) do
        [{"timestampAfter", timestamp_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(processing_status) do
        [{"processingStatus", processing_status} | query_params]
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
  Lists the history of the specified data lineage node.
  """
  @spec list_lineage_node_history(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_lineage_node_history_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_lineage_node_history_errors()}
  def list_lineage_node_history(
        %Client{} = client,
        domain_identifier,
        identifier,
        direction \\ nil,
        event_timestamp_g_t_e \\ nil,
        event_timestamp_l_t_e \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/lineage/nodes/#{AWS.Util.encode_uri(identifier)}/history"

    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
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
      if !is_nil(event_timestamp_l_t_e) do
        [{"timestampLTE", event_timestamp_l_t_e} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(event_timestamp_g_t_e) do
        [{"timestampGTE", event_timestamp_g_t_e} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(direction) do
        [{"direction", direction} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all metadata generation runs.

  Metadata generation runs represent automated processes that leverage AI/ML
  capabilities to create or enhance asset metadata at scale. This feature helps
  organizations maintain comprehensive and consistent metadata across large
  numbers of assets without manual intervention. It can automatically generate
  business descriptions, tags, and other metadata elements, significantly reducing
  the time and effort required for metadata management while improving consistency
  and completeness.

  Prerequisites:

    * Valid domain identifier.

    * User must have access to metadata generation runs in the domain.
  """
  @spec list_metadata_generation_runs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_metadata_generation_runs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_metadata_generation_runs_errors()}
  def list_metadata_generation_runs(
        %Client{} = client,
        domain_identifier,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/metadata-generation-runs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists all Amazon DataZone notifications.
  """
  @spec list_notifications(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_notifications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_notifications_errors()}
  def list_notifications(
        %Client{} = client,
        domain_identifier,
        after_timestamp \\ nil,
        before_timestamp \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        subjects \\ nil,
        task_status \\ nil,
        type,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/notifications"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(task_status) do
        [{"taskStatus", task_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(subjects) do
        [{"subjects", subjects} | query_params]
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
      if !is_nil(before_timestamp) do
        [{"beforeTimestamp", before_timestamp} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(after_timestamp) do
        [{"afterTimestamp", after_timestamp} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists policy grants.
  """
  @spec list_policy_grants(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_policy_grants_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policy_grants_errors()}
  def list_policy_grants(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        max_results \\ nil,
        next_token \\ nil,
        policy_type,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/policies/managed/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/grants"

    headers = []
    query_params = []

    query_params =
      if !is_nil(policy_type) do
        [{"policyType", policy_type} | query_params]
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
  Lists all members of the specified project.
  """
  @spec list_project_memberships(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_project_memberships_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_project_memberships_errors()}
  def list_project_memberships(
        %Client{} = client,
        domain_identifier,
        project_identifier,
        max_results \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(project_identifier)}/memberships"

    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
  Lists project profiles.
  """
  @spec list_project_profiles(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_project_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_project_profiles_errors()}
  def list_project_profiles(
        %Client{} = client,
        domain_identifier,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/project-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
  Lists Amazon DataZone projects.
  """
  @spec list_projects(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_projects_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_projects_errors()}
  def list_projects(
        %Client{} = client,
        domain_identifier,
        group_identifier \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        user_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_identifier) do
        [{"userIdentifier", user_identifier} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(group_identifier) do
        [{"groupIdentifier", group_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists existing rules.

  In Amazon DataZone, a rule is a formal agreement that enforces specific
  requirements across user workflows (e.g., publishing assets to the catalog,
  requesting subscriptions, creating projects) within the Amazon DataZone data
  portal. These rules help maintain consistency, ensure compliance, and uphold
  governance standards in data management processes. For instance, a metadata
  enforcement rule can specify the required information for creating a
  subscription request or publishing a data asset to the catalog, ensuring
  alignment with organizational standards.
  """
  @spec list_rules(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rules_errors()}
  def list_rules(
        %Client{} = client,
        domain_identifier,
        target_identifier,
        target_type,
        action \\ nil,
        asset_types \\ nil,
        data_product \\ nil,
        include_cascaded \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        project_ids \\ nil,
        rule_type \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/list-rules/#{AWS.Util.encode_uri(target_type)}/#{AWS.Util.encode_uri(target_identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(rule_type) do
        [{"ruleType", rule_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(project_ids) do
        [{"projectIds", project_ids} | query_params]
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
      if !is_nil(include_cascaded) do
        [{"includeCascaded", include_cascaded} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(data_product) do
        [{"dataProduct", data_product} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_types) do
        [{"assetTypes", asset_types} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(action) do
        [{"ruleAction", action} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists subscription grants.
  """
  @spec list_subscription_grants(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_subscription_grants_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_subscription_grants_errors()}
  def list_subscription_grants(
        %Client{} = client,
        domain_identifier,
        environment_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        owning_project_id \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        subscribed_listing_id \\ nil,
        subscription_id \\ nil,
        subscription_target_id \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants"
    headers = []
    query_params = []

    query_params =
      if !is_nil(subscription_target_id) do
        [{"subscriptionTargetId", subscription_target_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(subscription_id) do
        [{"subscriptionId", subscription_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(subscribed_listing_id) do
        [{"subscribedListingId", subscribed_listing_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owning_project_id) do
        [{"owningProjectId", owning_project_id} | query_params]
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
      if !is_nil(environment_id) do
        [{"environmentId", environment_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone subscription requests.
  """
  @spec list_subscription_requests(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_subscription_requests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_subscription_requests_errors()}
  def list_subscription_requests(
        %Client{} = client,
        domain_identifier,
        approver_project_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        owning_project_id \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        status \\ nil,
        subscribed_listing_id \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests"
    headers = []
    query_params = []

    query_params =
      if !is_nil(subscribed_listing_id) do
        [{"subscribedListingId", subscribed_listing_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owning_project_id) do
        [{"owningProjectId", owning_project_id} | query_params]
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
      if !is_nil(approver_project_id) do
        [{"approverProjectId", approver_project_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists subscription targets in Amazon DataZone.
  """
  @spec list_subscription_targets(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_subscription_targets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_subscription_targets_errors()}
  def list_subscription_targets(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        max_results \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets"

    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
  Lists subscriptions in Amazon DataZone.
  """
  @spec list_subscriptions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_subscriptions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_subscriptions_errors()}
  def list_subscriptions(
        %Client{} = client,
        domain_identifier,
        approver_project_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        owning_project_id \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        status \\ nil,
        subscribed_listing_id \\ nil,
        subscription_request_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(subscription_request_identifier) do
        [{"subscriptionRequestIdentifier", subscription_request_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(subscribed_listing_id) do
        [{"subscribedListingId", subscribed_listing_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owning_project_id) do
        [{"owningProjectId", owning_project_id} | query_params]
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
      if !is_nil(approver_project_id) do
        [{"approverProjectId", approver_project_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for the specified resource in Amazon DataZone.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists time series data points.
  """
  @spec list_time_series_data_points(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_time_series_data_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_time_series_data_points_errors()}
  def list_time_series_data_points(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        ended_at \\ nil,
        form_name,
        max_results \\ nil,
        next_token \\ nil,
        started_at \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/time-series-data-points"

    headers = []
    query_params = []

    query_params =
      if !is_nil(started_at) do
        [{"startedAt", started_at} | query_params]
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
      if !is_nil(form_name) do
        [{"formName", form_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ended_at) do
        [{"endedAt", ended_at} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Posts a data lineage event.
  """
  @spec post_lineage_event(map(), String.t() | atom(), post_lineage_event_input(), list()) ::
          {:ok, post_lineage_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, post_lineage_event_errors()}
  def post_lineage_event(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/lineage/events"

    {headers, input} =
      [
        {"clientToken", "Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Posts time series data points to Amazon DataZone for the specified asset.
  """
  @spec post_time_series_data_points(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          post_time_series_data_points_input(),
          list()
        ) ::
          {:ok, post_time_series_data_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, post_time_series_data_points_errors()}
  def post_time_series_data_points(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/time-series-data-points"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Writes the configuration for the specified environment blueprint in Amazon
  DataZone.
  """
  @spec put_environment_blueprint_configuration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_environment_blueprint_configuration_input(),
          list()
        ) ::
          {:ok, put_environment_blueprint_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_environment_blueprint_configuration_errors()}
  def put_environment_blueprint_configuration(
        %Client{} = client,
        domain_identifier,
        environment_blueprint_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations/#{AWS.Util.encode_uri(environment_blueprint_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Rejects automatically generated business-friendly metadata for your Amazon
  DataZone assets.
  """
  @spec reject_predictions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          reject_predictions_input(),
          list()
        ) ::
          {:ok, reject_predictions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_predictions_errors()}
  def reject_predictions(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/reject-predictions"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"revision", "revision"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Rejects the specified subscription request.
  """
  @spec reject_subscription_request(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          reject_subscription_request_input(),
          list()
        ) ::
          {:ok, reject_subscription_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_subscription_request_errors()}
  def reject_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}/reject"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes an owner from an entity.
  """
  @spec remove_entity_owner(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          remove_entity_owner_input(),
          list()
        ) ::
          {:ok, remove_entity_owner_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_entity_owner_errors()}
  def remove_entity_owner(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/entities/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/removeOwner"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes a policy grant.
  """
  @spec remove_policy_grant(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          remove_policy_grant_input(),
          list()
        ) ::
          {:ok, remove_policy_grant_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_policy_grant_errors()}
  def remove_policy_grant(
        %Client{} = client,
        domain_identifier,
        entity_identifier,
        entity_type,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/policies/managed/#{AWS.Util.encode_uri(entity_type)}/#{AWS.Util.encode_uri(entity_identifier)}/removeGrant"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Revokes a specified subscription in Amazon DataZone.
  """
  @spec revoke_subscription(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          revoke_subscription_input(),
          list()
        ) ::
          {:ok, revoke_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_subscription_errors()}
  def revoke_subscription(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions/#{AWS.Util.encode_uri(identifier)}/revoke"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Searches for assets in Amazon DataZone.

  Search in Amazon DataZone is a powerful capability that enables users to
  discover and explore data assets, glossary terms, and data products across their
  organization. It provides both basic and advanced search functionality, allowing
  users to find resources based on names, descriptions, metadata, and other
  attributes. Search can be scoped to specific types of resources (like assets,
  glossary terms, or data products) and can be filtered using various criteria
  such as creation date, owner, or status. The search functionality is essential
  for making the wealth of data resources in an organization discoverable and
  usable, helping users find the right data for their needs quickly and
  efficiently.

  Many search commands in Amazon DataZone are paginated, including `search` and
  `search-types`. When the result set is large, Amazon DataZone returns a
  `nextToken` in the response. This token can be used to retrieve the next page of
  results.

  Prerequisites:

    * The --domain-identifier must refer to an existing Amazon DataZone
  domain.

    * --search-scope must be one of: ASSET, GLOSSARY_TERM, DATA_PRODUCT,
  or GLOSSARY.

    * The user must have search permissions in the specified domain.

    * If using --filters, ensure that the JSON is well-formed and that
  each filter includes valid attribute and value keys.

    * For paginated results, be prepared to use --next-token to fetch
  additional pages.
  """
  @spec search(map(), String.t() | atom(), search_input(), list()) ::
          {:ok, search_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_errors()}
  def search(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/search"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Searches group profiles in Amazon DataZone.
  """
  @spec search_group_profiles(map(), String.t() | atom(), search_group_profiles_input(), list()) ::
          {:ok, search_group_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_group_profiles_errors()}
  def search_group_profiles(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/search-group-profiles"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Searches listings in Amazon DataZone.

  SearchListings is a powerful capability that enables users to discover and
  explore published assets and data products across their organization. It
  provides both basic and advanced search functionality, allowing users to find
  resources based on names, descriptions, metadata, and other attributes.
  SearchListings also supports filtering using various criteria such as creation
  date, owner, or status. This API is essential for making the wealth of data
  resources in an organization discoverable and usable, helping users find the
  right data for their needs quickly and efficiently.

  SearchListings returns results in a paginated format. When the result set is
  large, the response will include a nextToken, which can be used to retrieve the
  next page of results.

  The SearchListings API gives users flexibility in specifying what kind of search
  is run.

  To run a free-text search, the `searchText` parameter must be supplied. By
  default, all searchable fields are indexed for semantic search and will return
  semantic matches for SearchListings queries. To prevent semantic search indexing
  for a custom form attribute, see the [CreateFormType API documentation](https://docs.aws.amazon.com/datazone/latest/APIReference/API_CreateFormType.html).
  To run a lexical search query, enclose the query with double quotes (""). This
  will disable semantic search even for fields that have semantic search enabled
  and will only return results that contain the keywords wrapped by double quotes
  (order of tokens in the query is not enforced). Free-text search is supported
  for all attributes annotated with @amazon.datazone#searchable.

  To run a filtered search, provide filter clause using the filters parameter. To
  filter on glossary terms, use the special attribute `__DataZoneGlossaryTerms`.

  To find out whether an attribute has been annotated and indexed for a given
  search type, use the GetFormType API to retrieve the form containing the
  attribute.
  """
  @spec search_listings(map(), String.t() | atom(), search_listings_input(), list()) ::
          {:ok, search_listings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_listings_errors()}
  def search_listings(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/search"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Searches for types in Amazon DataZone.

  Prerequisites:

    * The --domain-identifier must refer to an existing Amazon DataZone
  domain.

    * --search-scope must be one of the valid values including:
  ASSET_TYPE, GLOSSARY_TERM_TYPE, DATA_PRODUCT_TYPE.

    * The --managed flag must be present without a value.

    * The user must have permissions for form or asset types in the
  domain.

    * If using --filters, ensure that the JSON is valid.

    * Filters contain correct structure (attribute, value, operator).
  """
  @spec search_types(map(), String.t() | atom(), search_types_input(), list()) ::
          {:ok, search_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_types_errors()}
  def search_types(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/types-search"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Searches user profiles in Amazon DataZone.
  """
  @spec search_user_profiles(map(), String.t() | atom(), search_user_profiles_input(), list()) ::
          {:ok, search_user_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_user_profiles_errors()}
  def search_user_profiles(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/search-user-profiles"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Start the run of the specified data source in Amazon DataZone.
  """
  @spec start_data_source_run(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          start_data_source_run_input(),
          list()
        ) ::
          {:ok, start_data_source_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_data_source_run_errors()}
  def start_data_source_run(
        %Client{} = client,
        data_source_identifier,
        domain_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(data_source_identifier)}/runs"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts the metadata generation run.

  Prerequisites:

    * Asset must be created and belong to the specified domain and
  project.

    * Asset type must be supported for metadata generation (e.g., Amazon
  Web Services Glue table).

    * Asset must have a structured schema with valid rows and columns.

    * Valid values for --type: BUSINESS_DESCRIPTIONS, BUSINESS_NAMES.

    * The user must have permission to run metadata generation in the
  domain/project.
  """
  @spec start_metadata_generation_run(
          map(),
          String.t() | atom(),
          start_metadata_generation_run_input(),
          list()
        ) ::
          {:ok, start_metadata_generation_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_metadata_generation_run_errors()}
  def start_metadata_generation_run(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/metadata-generation-runs"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Tags a resource in Amazon DataZone.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Untags a resource in Amazon DataZone.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the account pool.
  """
  @spec update_account_pool(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_account_pool_input(),
          list()
        ) ::
          {:ok, update_account_pool_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_account_pool_errors()}
  def update_account_pool(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/account-pools/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an asset filter.

  Prerequisites:

    * The domain, asset, and asset filter identifier must all exist.

    * The asset must contain the columns being referenced in the update.

    * If applying a row filter, ensure the column referenced in the
  expression exists in the asset schema.
  """
  @spec update_asset_filter(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_asset_filter_input(),
          list()
        ) ::
          {:ok, update_asset_filter_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_asset_filter_errors()}
  def update_asset_filter(
        %Client{} = client,
        asset_identifier,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(asset_identifier)}/filters/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a connection.

  In Amazon DataZone, a connection enables you to connect your resources (domains,
  projects, and environments) to external resources and services.
  """
  @spec update_connection(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_connection_input(),
          list()
        ) ::
          {:ok, update_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connection_errors()}
  def update_connection(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/connections/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified data source in Amazon DataZone.
  """
  @spec update_data_source(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_data_source_input(),
          list()
        ) ::
          {:ok, update_data_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_source_errors()}
  def update_data_source(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a Amazon DataZone domain.
  """
  @spec update_domain(map(), String.t() | atom(), update_domain_input(), list()) ::
          {:ok, update_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_domain_errors()}
  def update_domain(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the domain unit.
  """
  @spec update_domain_unit(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_domain_unit_input(),
          list()
        ) ::
          {:ok, update_domain_unit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_domain_unit_errors()}
  def update_domain_unit(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/domain-units/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified environment in Amazon DataZone.
  """
  @spec update_environment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_environment_input(),
          list()
        ) ::
          {:ok, update_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an environment action.
  """
  @spec update_environment_action(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_environment_action_input(),
          list()
        ) ::
          {:ok, update_environment_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_environment_action_errors()}
  def update_environment_action(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/actions/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an environment blueprint in Amazon DataZone.
  """
  @spec update_environment_blueprint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_environment_blueprint_input(),
          list()
        ) ::
          {:ok, update_environment_blueprint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_environment_blueprint_errors()}
  def update_environment_blueprint(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprints/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified environment profile in Amazon DataZone.
  """
  @spec update_environment_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_environment_profile_input(),
          list()
        ) ::
          {:ok, update_environment_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_environment_profile_errors()}
  def update_environment_profile(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the business glossary in Amazon DataZone.

  Prerequisites:

    * The glossary must exist in the given domain.

    * The caller must have the `datazone:UpdateGlossary` permission to
  update it.

    * When updating the name, the new name must be unique within the
  domain.

    * The glossary must not be deleted or in a terminal state.
  """
  @spec update_glossary(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_glossary_input(),
          list()
        ) ::
          {:ok, update_glossary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_glossary_errors()}
  def update_glossary(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a business glossary term in Amazon DataZone.

  Prerequisites:

    * Glossary term must exist in the specified domain.

    * New name must not conflict with existing terms in the same
  glossary.

    * User must have permissions on the term.

    * The term must not be in DELETED status.
  """
  @spec update_glossary_term(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_glossary_term_input(),
          list()
        ) ::
          {:ok, update_glossary_term_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_glossary_term_errors()}
  def update_glossary_term(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified group profile in Amazon DataZone.
  """
  @spec update_group_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_group_profile_input(),
          list()
        ) ::
          {:ok, update_group_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_group_profile_errors()}
  def update_group_profile(
        %Client{} = client,
        domain_identifier,
        group_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/group-profiles/#{AWS.Util.encode_uri(group_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified project in Amazon DataZone.
  """
  @spec update_project(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_project_input(),
          list()
        ) ::
          {:ok, update_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a project profile.
  """
  @spec update_project_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_project_profile_input(),
          list()
        ) ::
          {:ok, update_project_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_project_profile_errors()}
  def update_project_profile(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/project-profiles/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a rule.

  In Amazon DataZone, a rule is a formal agreement that enforces specific
  requirements across user workflows (e.g., publishing assets to the catalog,
  requesting subscriptions, creating projects) within the Amazon DataZone data
  portal. These rules help maintain consistency, ensure compliance, and uphold
  governance standards in data management processes. For instance, a metadata
  enforcement rule can specify the required information for creating a
  subscription request or publishing a data asset to the catalog, ensuring
  alignment with organizational standards.
  """
  @spec update_rule(map(), String.t() | atom(), String.t() | atom(), update_rule_input(), list()) ::
          {:ok, update_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rule_errors()}
  def update_rule(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/rules/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the status of the specified subscription grant status in Amazon
  DataZone.
  """
  @spec update_subscription_grant_status(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_subscription_grant_status_input(),
          list()
        ) ::
          {:ok, update_subscription_grant_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_subscription_grant_status_errors()}
  def update_subscription_grant_status(
        %Client{} = client,
        asset_identifier,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants/#{AWS.Util.encode_uri(identifier)}/status/#{AWS.Util.encode_uri(asset_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a specified subscription request in Amazon DataZone.
  """
  @spec update_subscription_request(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_subscription_request_input(),
          list()
        ) ::
          {:ok, update_subscription_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_subscription_request_errors()}
  def update_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified subscription target in Amazon DataZone.
  """
  @spec update_subscription_target(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_subscription_target_input(),
          list()
        ) ::
          {:ok, update_subscription_target_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_subscription_target_errors()}
  def update_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified user profile in Amazon DataZone.
  """
  @spec update_user_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_user_profile_input(),
          list()
        ) ::
          {:ok, update_user_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_profile_errors()}
  def update_user_profile(
        %Client{} = client,
        domain_identifier,
        user_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/user-profiles/#{AWS.Util.encode_uri(user_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
