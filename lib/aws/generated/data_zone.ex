# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataZone do
  @moduledoc """
  Amazon DataZone is a data management service that enables you to catalog,
  discover,
  govern, share, and analyze your data.

  With Amazon DataZone, you can share and access your
  data across accounts and supported regions. Amazon DataZone simplifies your
  experience
  across Amazon Web Services services, including, but not limited to, Amazon
  Redshift, Amazon
  Athena, Amazon Web Services Glue, and Amazon Web Services Lake Formation.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      policy_grant_member() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "detail" => list(),
        "principal" => list()
      }

  """
  @type policy_grant_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_revision() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "revision" => String.t()
      }

  """
  @type asset_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_project_profiles_output() :: %{
        "items" => list(project_profile_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_project_profiles_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metadata_form_enforcement_detail() :: %{
        "requiredMetadataForms" => list(metadata_form_reference()())
      }

  """
  @type metadata_form_enforcement_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_profile_input() :: %{
        required("status") => list(any())
      }

  """
  @type update_group_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_output() :: %{
        "description" => [String.t()],
        "domainExecutionRole" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => [String.t()],
        "rootDomainUnitId" => String.t(),
        "serviceRole" => String.t(),
        "singleSignOn" => single_sign_on()
      }

  """
  @type update_domain_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_metadata_generation_runs_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any()),
        optional("type") => list(any())
      }

  """
  @type list_metadata_generation_runs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("externalIdentifier") => String.t(),
        optional("formsInput") => list(form_input()()),
        optional("glossaryTerms") => list(String.t()()),
        optional("predictionConfiguration") => prediction_configuration(),
        optional("typeRevision") => String.t(),
        required("name") => String.t(),
        required("owningProjectIdentifier") => String.t(),
        required("typeIdentifier") => String.t()
      }

  """
  @type create_asset_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_user_profiles_output() :: %{
        "items" => list(user_profile_summary()()),
        "nextToken" => String.t()
      }

  """
  @type search_user_profiles_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_item() :: %{
        "additionalAttributes" => asset_item_additional_attributes(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "externalIdentifier" => String.t(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t(),
        "glossaryTerms" => list(String.t()()),
        "identifier" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type asset_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      business_name_generation_configuration() :: %{
        "enabled" => [boolean()]
      }

  """
  @type business_name_generation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_form_type_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type create_form_type_policy_grant_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_listing() :: %{
        "createdAt" => non_neg_integer(),
        "dataProductId" => String.t(),
        "dataProductRevision" => String.t(),
        "forms" => String.t(),
        "glossaryTerms" => list(detailed_glossary_term()()),
        "items" => list(listing_summary()()),
        "owningProjectId" => String.t()
      }

  """
  @type data_product_listing() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_action_input() :: %{
        optional("description") => [String.t()],
        required("name") => [String.t()],
        required("parameters") => list()
      }

  """
  @type create_environment_action_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environment_actions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_environment_actions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      listing_summary_item() :: %{
        "glossaryTerms" => list(detailed_glossary_term()()),
        "listingId" => String.t(),
        "listingRevision" => String.t()
      }

  """
  @type listing_summary_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_filter_summary() :: %{
        "assetId" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "effectiveColumnNames" => list([String.t()]()),
        "effectiveRowFilter" => [String.t()],
        "errorMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type asset_filter_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redshift_credential_configuration() :: %{
        "secretManagerArn" => [String.t()]
      }

  """
  @type redshift_credential_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_glossary_term_output() :: %{
        "domainId" => String.t(),
        "glossaryId" => String.t(),
        "id" => String.t(),
        "longDescription" => String.t(),
        "name" => String.t(),
        "shortDescription" => String.t(),
        "status" => list(any()),
        "termRelations" => term_relations()
      }

  """
  @type update_glossary_term_output() :: %{String.t() => any()}

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
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environment_blueprint_configurations_output() :: %{
        "items" => list(environment_blueprint_configuration_item()()),
        "nextToken" => String.t()
      }

  """
  @type list_environment_blueprint_configurations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_source_runs_output() :: %{
        "items" => list(data_source_run_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_source_runs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redshift_run_configuration_input() :: %{
        "dataAccessRole" => [String.t()],
        "redshiftCredentialConfiguration" => redshift_credential_configuration(),
        "redshiftStorage" => list(),
        "relationalFilterConfigurations" => list(relational_filter_configuration()())
      }

  """
  @type redshift_run_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_filters_output() :: %{
        "items" => list(asset_filter_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_filters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redshift_properties_input() :: %{
        "credentials" => list(),
        "databaseName" => [String.t()],
        "host" => [String.t()],
        "lineageSync" => redshift_lineage_sync_configuration_input(),
        "port" => [integer()],
        "storage" => list()
      }

  """
  @type redshift_properties_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_source_runs_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_data_source_runs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_type_input() :: %{
        optional("revision") => String.t()
      }

  """
  @type get_asset_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_sort() :: %{
        "attribute" => String.t(),
        "order" => list(any())
      }

  """
  @type search_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscription_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "retainPermissions" => [boolean()],
        "status" => list(any()),
        "subscribedListing" => subscribed_listing(),
        "subscribedPrincipal" => list(),
        "subscriptionRequestId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type subscription_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscription_target_form() :: %{
        "content" => [String.t()],
        "formName" => String.t()
      }

  """
  @type subscription_target_form() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_project_memberships_output() :: %{
        "members" => list(project_member()()),
        "nextToken" => String.t()
      }

  """
  @type list_project_memberships_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_environment_profile_input() :: %{
        optional("awsAccountId") => String.t(),
        optional("awsAccountRegion") => String.t(),
        optional("description") => [String.t()],
        optional("name") => String.t(),
        optional("userParameters") => list(environment_parameter()())
      }

  """
  @type update_environment_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_project_profile_input() :: %{}

  """
  @type get_project_profile_input() :: %{}

  @typedoc """

  ## Example:

      update_subscription_target_output() :: %{
        "applicableAssetTypes" => list(String.t()()),
        "authorizedPrincipals" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "manageAccessRole" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "subscriptionTargetConfig" => list(subscription_target_form()()),
        "type" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type update_subscription_target_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_subscription_request_input() :: %{
        optional("decisionComment") => String.t()
      }

  """
  @type reject_subscription_request_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connection_input() :: %{}

  """
  @type delete_connection_input() :: %{}

  @typedoc """

  ## Example:

      update_group_profile_output() :: %{
        "domainId" => String.t(),
        "groupName" => String.t(),
        "id" => String.t(),
        "status" => list(any())
      }

  """
  @type update_group_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_runs_output() :: %{
        "items" => list(job_run_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_job_runs_output() :: %{String.t() => any()}

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
        "grantList" => list(policy_grant_member()()),
        "nextToken" => String.t()
      }

  """
  @type list_policy_grants_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metadata_form_reference() :: %{
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type metadata_form_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_filter_output() :: %{
        "assetId" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "effectiveColumnNames" => list([String.t()]()),
        "effectiveRowFilter" => [String.t()],
        "errorMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type get_asset_filter_output() :: %{String.t() => any()}

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
        "databaseName" => [String.t()],
        "isProvisionedSecret" => [boolean()],
        "jdbcIamUrl" => [String.t()],
        "jdbcUrl" => [String.t()],
        "lineageSync" => redshift_lineage_sync_configuration_output(),
        "redshiftTempDir" => [String.t()],
        "status" => list(any()),
        "storage" => list()
      }

  """
  @type redshift_properties_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_listing_details() :: %{
        "listingId" => String.t(),
        "listingStatus" => list(any())
      }

  """
  @type asset_listing_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      all_users_grant_filter() :: %{}

  """
  @type all_users_grant_filter() :: %{}

  @typedoc """

  ## Example:

      environment_configuration_parameters_details() :: %{
        "parameterOverrides" => list(environment_configuration_parameter()()),
        "resolvedParameters" => list(environment_configuration_parameter()()),
        "ssmPath" => String.t()
      }

  """
  @type environment_configuration_parameters_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lineage_sync_schedule() :: %{
        "schedule" => [String.t()]
      }

  """
  @type lineage_sync_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment() :: %{
        "deploymentId" => [String.t()],
        "deploymentStatus" => list(any()),
        "deploymentType" => list(any()),
        "failureReason" => environment_error(),
        "isDeploymentComplete" => [boolean()],
        "messages" => list(String.t()())
      }

  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_output() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentActions" => list(configurable_environment_action()()),
        "environmentBlueprintId" => String.t(),
        "environmentConfigurationId" => String.t(),
        "environmentProfileId" => String.t(),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "lastDeployment" => deployment(),
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "provisionedResources" => list(resource()()),
        "provisioningProperties" => list(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }

  """
  @type get_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_project_input() :: %{
        optional("description") => String.t(),
        optional("environmentDeploymentDetails") => environment_deployment_details(),
        optional("glossaryTerms") => list(String.t()()),
        optional("name") => String.t(),
        optional("projectProfileVersion") => [String.t()],
        optional("userParameters") => list(environment_configuration_user_parameter()())
      }

  """
  @type update_project_input() :: %{String.t() => any()}

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
  @type get_lineage_node_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_member() :: %{
        "designation" => list(any()),
        "memberDetails" => list()
      }

  """
  @type project_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "domainUnitId" => String.t(),
        "failureReasons" => list(project_deletion_error()()),
        "id" => String.t(),
        "name" => String.t(),
        "projectStatus" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type project_summary() :: %{String.t() => any()}

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
        "description" => [String.t()],
        "lastConnectionValidationTime" => [non_neg_integer()],
        "lastUpdatedBy" => [String.t()],
        "lastUpdatedTime" => [non_neg_integer()],
        "matchCriteria" => list([String.t()]()),
        "name" => [String.t()],
        "physicalConnectionRequirements" => physical_connection_requirements(),
        "pythonProperties" => map(),
        "sparkProperties" => map(),
        "status" => list(any()),
        "statusReason" => [String.t()]
      }

  """
  @type glue_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_type_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type create_asset_type_policy_grant_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_deletion_error() :: %{
        "code" => [String.t()],
        "message" => [String.t()]
      }

  """
  @type project_deletion_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_action_output() :: %{
        "description" => [String.t()],
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "parameters" => list()
      }

  """
  @type create_environment_action_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authentication_configuration_input() :: %{
        "authenticationType" => list(any()),
        "basicAuthenticationCredentials" => basic_authentication_credentials(),
        "customAuthenticationCredentials" => map(),
        "kmsKeyArn" => [String.t()],
        "oAuth2Properties" => o_auth2_properties(),
        "secretArn" => [String.t()]
      }

  """
  @type authentication_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_project_profile_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "domainUnitId" => String.t(),
        "environmentConfigurations" => list(environment_configuration()()),
        "id" => String.t(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type update_project_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_listing_change_set_output() :: %{
        "listingId" => String.t(),
        "listingRevision" => String.t(),
        "status" => list(any())
      }

  """
  @type create_listing_change_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_profile_output() :: %{
        "domainId" => String.t(),
        "groupName" => String.t(),
        "id" => String.t(),
        "status" => list(any())
      }

  """
  @type get_group_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_input() :: %{
        optional("deploymentOrder") => [integer()],
        optional("description") => [String.t()],
        optional("environmentAccountIdentifier") => [String.t()],
        optional("environmentAccountRegion") => [String.t()],
        optional("environmentBlueprintIdentifier") => [String.t()],
        optional("environmentConfigurationId") => [String.t()],
        optional("glossaryTerms") => list(String.t()()),
        optional("userParameters") => list(environment_parameter()()),
        required("environmentProfileIdentifier") => String.t(),
        required("name") => [String.t()],
        required("projectIdentifier") => String.t()
      }

  """
  @type create_environment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authorization_code_properties() :: %{
        "authorizationCode" => [String.t()],
        "redirectUri" => [String.t()]
      }

  """
  @type authorization_code_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_environment_profile_output() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentBlueprintId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }

  """
  @type update_environment_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      term_relations() :: %{
        "classifies" => list(String.t()()),
        "isA" => list(String.t()())
      }

  """
  @type term_relations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_subscription_target_input() :: %{}

  """
  @type get_subscription_target_input() :: %{}

  @typedoc """

  ## Example:

      list_lineage_events_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("processingStatus") => list(any()),
        optional("sortOrder") => list(any()),
        optional("timestampAfter") => [non_neg_integer()],
        optional("timestampBefore") => [non_neg_integer()]
      }

  """
  @type list_lineage_events_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_time_series_data_points_output() :: %{
        "items" => list(time_series_data_point_summary_form_output()()),
        "nextToken" => String.t()
      }

  """
  @type list_time_series_data_points_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_product_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("formsInput") => list(form_input()()),
        optional("glossaryTerms") => list(String.t()()),
        optional("items") => list(data_product_item()()),
        required("name") => String.t(),
        required("owningProjectIdentifier") => String.t()
      }

  """
  @type create_data_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_summary() :: %{
        "arn" => [String.t()],
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainVersion" => list(any()),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "managedAccountId" => [String.t()],
        "name" => String.t(),
        "portalUrl" => [String.t()],
        "status" => list(any())
      }

  """
  @type domain_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type create_project_policy_grant_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_revision() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "revision" => String.t()
      }

  """
  @type data_product_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_subscription_target_output() :: %{
        "applicableAssetTypes" => list(String.t()()),
        "authorizedPrincipals" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "manageAccessRole" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "subscriptionTargetConfig" => list(subscription_target_form()()),
        "type" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type create_subscription_target_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_run_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "domainId" => String.t(),
        "endTime" => [non_neg_integer()],
        "error" => job_run_error(),
        "jobId" => [String.t()],
        "jobType" => list(any()),
        "runId" => [String.t()],
        "runMode" => list(any()),
        "startTime" => [non_neg_integer()],
        "status" => list(any())
      }

  """
  @type job_run_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_subscription_request_input() :: %{
        optional("clientToken") => [String.t()],
        optional("metadataForms") => list(form_input()()),
        required("requestReason") => String.t(),
        required("subscribedListings") => list(subscribed_listing_input()()),
        required("subscribedPrincipals") => list(list()())
      }

  """
  @type create_subscription_request_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      owner_group_properties_output() :: %{
        "groupId" => [String.t()]
      }

  """
  @type owner_group_properties_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_product_revision_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t(),
        "formsOutput" => list(form_output()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "items" => list(data_product_item()()),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "status" => list(any())
      }

  """
  @type create_data_product_revision_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_source_input() :: %{
        optional("assetFormsInput") => list(form_input()()),
        optional("clientToken") => [String.t()],
        optional("configuration") => list(),
        optional("connectionIdentifier") => [String.t()],
        optional("description") => String.t(),
        optional("enableSetting") => list(any()),
        optional("environmentIdentifier") => [String.t()],
        optional("publishOnImport") => [boolean()],
        optional("recommendation") => recommendation_configuration(),
        optional("schedule") => schedule_configuration(),
        required("name") => String.t(),
        required("projectIdentifier") => [String.t()],
        required("type") => String.t()
      }

  """
  @type create_data_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_form_type_input() :: %{
        optional("description") => String.t(),
        optional("status") => list(any()),
        required("model") => list(),
        required("name") => String.t(),
        required("owningProjectIdentifier") => String.t()
      }

  """
  @type create_form_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_project_profile_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "domainUnitId" => String.t(),
        "environmentConfigurations" => list(environment_configuration()()),
        "id" => String.t(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type get_project_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_policy_grant_output() :: %{}

  """
  @type add_policy_grant_output() :: %{}

  @typedoc """

  ## Example:

      environment_summary() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentConfigurationId" => String.t(),
        "environmentProfileId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type environment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification_resource() :: %{
        "id" => [String.t()],
        "name" => [String.t()],
        "type" => list(any())
      }

  """
  @type notification_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_run_activity() :: %{
        "createdAt" => non_neg_integer(),
        "dataAssetId" => [String.t()],
        "dataAssetStatus" => list(any()),
        "dataSourceRunId" => String.t(),
        "database" => String.t(),
        "errorMessage" => data_source_error_message(),
        "lineageSummary" => lineage_info(),
        "projectId" => String.t(),
        "technicalDescription" => String.t(),
        "technicalName" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type data_source_run_activity() :: %{String.t() => any()}

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
        optional("nextToken") => String.t(),
        optional("owningProjectIdentifier") => String.t(),
        optional("searchIn") => list(search_in_item()()),
        optional("searchText") => String.t(),
        optional("sort") => search_sort(),
        required("searchScope") => list(any())
      }

  """
  @type search_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      single_sign_on() :: %{
        "idcInstanceArn" => [String.t()],
        "type" => list(any()),
        "userAssignment" => list(any())
      }

  """
  @type single_sign_on() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "externalIdentifier" => String.t(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t(),
        "formsOutput" => list(form_output()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "latestTimeSeriesDataPointFormsOutput" => list(time_series_data_point_summary_form_output()()),
        "listing" => asset_listing_details(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "predictionConfiguration" => prediction_configuration(),
        "readOnlyFormsOutput" => list(form_output()()),
        "revision" => String.t(),
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type create_asset_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_subscription_grants_output() :: %{
        "items" => list(subscription_grant_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_subscription_grants_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_configuration_user_parameter() :: %{
        "environmentConfigurationName" => String.t(),
        "environmentId" => String.t(),
        "environmentParameters" => list(environment_parameter()())
      }

  """
  @type environment_configuration_user_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      less_than_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type less_than_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      revoke_subscription_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "retainPermissions" => [boolean()],
        "status" => list(any()),
        "subscribedListing" => subscribed_listing(),
        "subscribedPrincipal" => list(),
        "subscriptionRequestId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type revoke_subscription_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_rule_output() :: %{
        "action" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "detail" => list(),
        "identifier" => String.t(),
        "lastUpdatedBy" => String.t(),
        "name" => String.t(),
        "revision" => String.t(),
        "ruleType" => list(any()),
        "scope" => rule_scope(),
        "target" => list(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_profile_output() :: %{
        "details" => list(),
        "domainId" => String.t(),
        "id" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type get_user_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_entity_owner_output() :: %{}

  """
  @type add_entity_owner_output() :: %{}

  @typedoc """

  ## Example:

      list_connections_output() :: %{
        "items" => list(connection_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_connections_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_details() :: %{
        "userId" => [String.t()]
      }

  """
  @type user_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_unit_input() :: %{}

  """
  @type delete_domain_unit_input() :: %{}

  @typedoc """

  ## Example:

      get_data_product_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t(),
        "formsOutput" => list(form_output()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "items" => list(data_product_item()()),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "status" => list(any())
      }

  """
  @type get_data_product_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_connection_input() :: %{
        optional("awsLocation") => aws_location(),
        optional("description") => String.t(),
        optional("props") => list()
      }

  """
  @type update_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_runs_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortOrder") => list(any()),
        optional("status") => list(any())
      }

  """
  @type list_job_runs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_profile_policy_grant_detail() :: %{
        "domainUnitId" => String.t()
      }

  """
  @type create_environment_profile_policy_grant_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_time_series_data_points_input() :: %{
        optional("clientToken") => String.t(),
        required("formName") => String.t()
      }

  """
  @type delete_time_series_data_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_profile_summary() :: %{
        "domainId" => String.t(),
        "groupName" => String.t(),
        "id" => String.t(),
        "status" => list(any())
      }

  """
  @type group_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_revision_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("formsInput") => list(form_input()()),
        optional("glossaryTerms") => list(String.t()()),
        optional("predictionConfiguration") => prediction_configuration(),
        optional("typeRevision") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_asset_revision_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      is_not_null_expression() :: %{
        "columnName" => [String.t()]
      }

  """
  @type is_not_null_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_subscription_request_input() :: %{
        required("requestReason") => String.t()
      }

  """
  @type update_subscription_request_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unit() :: %{}

  """
  @type unit() :: %{}

  @typedoc """

  ## Example:

      update_domain_unit_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "lastUpdatedBy" => String.t(),
        "name" => String.t(),
        "owners" => list(list()()),
        "parentDomainUnitId" => String.t()
      }

  """
  @type update_domain_unit_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_listing_input() :: %{
        optional("listingRevision") => String.t()
      }

  """
  @type get_listing_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redshift_self_grant_status_output() :: %{
        "selfGrantStatusDetails" => list(self_grant_status_detail()())
      }

  """
  @type redshift_self_grant_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "domainUnitId" => String.t(),
        "environmentDeploymentDetails" => environment_deployment_details(),
        "failureReasons" => list(project_deletion_error()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t(),
        "projectProfileId" => String.t(),
        "projectStatus" => list(any()),
        "userParameters" => list(environment_configuration_user_parameter()())
      }

  """
  @type create_project_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_blueprint_configuration_input() :: %{}

  """
  @type get_environment_blueprint_configuration_input() :: %{}

  @typedoc """

  ## Example:

      subscription_target_summary() :: %{
        "applicableAssetTypes" => list(String.t()()),
        "authorizedPrincipals" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "manageAccessRole" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "subscriptionTargetConfig" => list(subscription_target_form()()),
        "type" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type subscription_target_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lineage_node_history_input() :: %{
        optional("direction") => list(any()),
        optional("eventTimestampGTE") => [non_neg_integer()],
        optional("eventTimestampLTE") => [non_neg_integer()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortOrder") => list(any())
      }

  """
  @type list_lineage_node_history_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      revoke_subscription_input() :: %{
        optional("retainPermissions") => [boolean()]
      }

  """
  @type revoke_subscription_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_types_input() :: %{
        optional("filters") => list(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("searchIn") => list(search_in_item()()),
        optional("searchText") => String.t(),
        optional("sort") => search_sort(),
        required("managed") => [boolean()],
        required("searchScope") => list(any())
      }

  """
  @type search_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connection_output() :: %{
        "connectionId" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "domainUnitId" => String.t(),
        "environmentId" => String.t(),
        "name" => String.t(),
        "physicalEndpoints" => list(physical_endpoint()()),
        "projectId" => String.t(),
        "props" => list(),
        "type" => list(any())
      }

  """
  @type create_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      override_project_owners_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type override_project_owners_policy_grant_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_environment_role_input() :: %{}

  """
  @type disassociate_environment_role_input() :: %{}

  @typedoc """

  ## Example:

      greater_than_or_equal_to_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type greater_than_or_equal_to_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_policy_grants_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("policyType") => list(any())
      }

  """
  @type list_policy_grants_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lineage_event_input() :: %{}

  """
  @type get_lineage_event_input() :: %{}

  @typedoc """

  ## Example:

      domain_unit_filter_for_project() :: %{
        "domainUnit" => String.t(),
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type domain_unit_filter_for_project() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_filter_input() :: %{
        optional("clientToken") => [String.t()],
        optional("description") => String.t(),
        required("configuration") => list(),
        required("name") => String.t()
      }

  """
  @type create_asset_filter_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_time_series_data_points_input() :: %{
        optional("clientToken") => String.t(),
        required("forms") => list(time_series_data_point_form_input()())
      }

  """
  @type post_time_series_data_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_properties_output() :: %{
        "errorMessage" => [String.t()],
        "status" => list(any())
      }

  """
  @type glue_properties_output() :: %{String.t() => any()}

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
        "assets" => list(subscribed_asset()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "grantedEntity" => list(),
        "id" => String.t(),
        "status" => list(any()),
        "subscriptionId" => String.t(),
        "subscriptionTargetId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type subscription_grant_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      athena_properties_output() :: %{
        "workgroupName" => [String.t()]
      }

  """
  @type athena_properties_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_project_profile_input() :: %{
        optional("description") => String.t(),
        optional("domainUnitIdentifier") => String.t(),
        optional("environmentConfigurations") => list(environment_configuration()()),
        optional("name") => String.t(),
        optional("status") => list(any())
      }

  """
  @type update_project_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_source_output() :: %{
        "assetFormsOutput" => list(form_output()()),
        "configuration" => list(),
        "connectionId" => [String.t()],
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "enableSetting" => list(any()),
        "environmentId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "lastRunAssetCount" => [integer()],
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t(),
        "projectId" => String.t(),
        "publishOnImport" => [boolean()],
        "recommendation" => recommendation_configuration(),
        "schedule" => schedule_configuration(),
        "selfGrantStatus" => list(),
        "status" => list(any()),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_data_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_product_revision_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("formsInput") => list(form_input()()),
        optional("glossaryTerms") => list(String.t()()),
        optional("items") => list(data_product_item()()),
        required("name") => String.t()
      }

  """
  @type create_data_product_revision_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_notifications_input() :: %{
        optional("afterTimestamp") => [non_neg_integer()],
        optional("beforeTimestamp") => [non_neg_integer()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("subjects") => list([String.t()]()),
        optional("taskStatus") => list(any()),
        required("type") => list(any())
      }

  """
  @type list_notifications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redshift_serverless_storage() :: %{
        "workgroupName" => [String.t()]
      }

  """
  @type redshift_serverless_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_subscriptions_input() :: %{
        optional("approverProjectId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owningProjectId") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("status") => list(any()),
        optional("subscribedListingId") => String.t(),
        optional("subscriptionRequestIdentifier") => String.t()
      }

  """
  @type list_subscriptions_input() :: %{String.t() => any()}

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
  @type update_user_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_type_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "formsOutput" => map(),
        "name" => String.t(),
        "originDomainId" => String.t(),
        "originProjectId" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_asset_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environment_blueprint_configurations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_environment_blueprint_configurations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environments_input() :: %{
        optional("awsAccountId") => String.t(),
        optional("awsAccountRegion") => String.t(),
        optional("environmentBlueprintIdentifier") => String.t(),
        optional("environmentProfileIdentifier") => String.t(),
        optional("maxResults") => integer(),
        optional("name") => [String.t()],
        optional("nextToken") => String.t(),
        optional("provider") => [String.t()],
        optional("status") => list(any()),
        required("projectIdentifier") => String.t()
      }

  """
  @type list_environments_input() :: %{String.t() => any()}

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
        "items" => list(environment_action_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_environment_actions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_metadata_generation_run_input() :: %{
        optional("clientToken") => String.t(),
        required("owningProjectIdentifier") => String.t(),
        required("target") => metadata_generation_run_target(),
        required("type") => list(any())
      }

  """
  @type start_metadata_generation_run_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_item_additional_attributes() :: %{
        "formsOutput" => list(form_output()()),
        "latestTimeSeriesDataPointFormsOutput" => list(time_series_data_point_summary_form_output()()),
        "readOnlyFormsOutput" => list(form_output()())
      }

  """
  @type asset_item_additional_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authentication_configuration_patch() :: %{
        "basicAuthenticationCredentials" => basic_authentication_credentials(),
        "secretArn" => [String.t()]
      }

  """
  @type authentication_configuration_patch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_blueprint_configuration_item() :: %{
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t(),
        "enabledRegions" => list(String.t()()),
        "environmentBlueprintId" => String.t(),
        "environmentRolePermissionBoundary" => String.t(),
        "manageAccessRoleArn" => String.t(),
        "provisioningConfigurations" => list(list()()),
        "provisioningRoleArn" => String.t(),
        "regionalParameters" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type environment_blueprint_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_environment_action_input() :: %{
        optional("description") => [String.t()],
        optional("name") => [String.t()],
        optional("parameters") => list()
      }

  """
  @type update_environment_action_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_entity_owner_input() :: %{
        optional("clientToken") => String.t(),
        required("owner") => list()
      }

  """
  @type remove_entity_owner_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_rule_output() :: %{
        "action" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "detail" => list(),
        "identifier" => String.t(),
        "name" => String.t(),
        "ruleType" => list(any()),
        "scope" => rule_scope(),
        "target" => list(),
        "targetType" => list(any())
      }

  """
  @type create_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_run_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "details" => list(),
        "domainId" => String.t(),
        "endTime" => [non_neg_integer()],
        "error" => job_run_error(),
        "id" => [String.t()],
        "jobId" => [String.t()],
        "jobType" => list(any()),
        "runMode" => list(any()),
        "startTime" => [non_neg_integer()],
        "status" => list(any())
      }

  """
  @type get_job_run_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_product_input() :: %{}

  """
  @type delete_data_product_input() :: %{}

  @typedoc """

  ## Example:

      start_data_source_run_output() :: %{
        "createdAt" => non_neg_integer(),
        "dataSourceConfigurationSnapshot" => [String.t()],
        "dataSourceId" => String.t(),
        "domainId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "projectId" => String.t(),
        "runStatisticsForAssets" => run_statistics_for_assets(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "stoppedAt" => non_neg_integer(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type start_data_source_run_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_choice() :: %{
        "predictionChoices" => list([integer()]()),
        "predictionTarget" => [String.t()]
      }

  """
  @type reject_choice() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_source_run_activities_output() :: %{
        "items" => list(data_source_run_activity()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_source_run_activities_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_unit_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "lastUpdatedBy" => String.t(),
        "name" => String.t(),
        "owners" => list(list()()),
        "parentDomainUnitId" => String.t()
      }

  """
  @type get_domain_unit_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metadata_form_summary() :: %{
        "formName" => String.t(),
        "typeName" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type metadata_form_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_predictions_output() :: %{
        "assetId" => String.t(),
        "assetRevision" => String.t(),
        "domainId" => String.t()
      }

  """
  @type reject_predictions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_input() :: %{
        optional("clientToken") => [String.t()],
        optional("description") => [String.t()],
        optional("domainVersion") => list(any()),
        optional("kmsKeyIdentifier") => String.t(),
        optional("serviceRole") => String.t(),
        optional("singleSignOn") => single_sign_on(),
        optional("tags") => map(),
        required("domainExecutionRole") => String.t(),
        required("name") => [String.t()]
      }

  """
  @type create_domain_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iam_properties_output() :: %{
        "environmentId" => [String.t()],
        "glueLineageSyncEnabled" => [boolean()]
      }

  """
  @type iam_properties_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_subscription_target_input() :: %{}

  """
  @type delete_subscription_target_input() :: %{}

  @typedoc """

  ## Example:

      hyper_pod_properties_output() :: %{
        "clusterArn" => [String.t()],
        "clusterName" => [String.t()],
        "orchestrator" => list(any())
      }

  """
  @type hyper_pod_properties_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_time_series_data_points_input() :: %{
        optional("endedAt") => [non_neg_integer()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("startedAt") => [non_neg_integer()],
        required("formName") => String.t()
      }

  """
  @type list_time_series_data_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_subscription_request_details_input() :: %{}

  """
  @type get_subscription_request_details_input() :: %{}

  @typedoc """

  ## Example:

      lineage_node_type_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => [String.t()],
        "domainId" => String.t(),
        "formsOutput" => map(),
        "name" => [String.t()],
        "revision" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type lineage_node_type_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_metadata_generation_run_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any()),
        "target" => metadata_generation_run_target(),
        "type" => list(any())
      }

  """
  @type get_metadata_generation_run_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_rule_output() :: %{
        "action" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "detail" => list(),
        "identifier" => String.t(),
        "lastUpdatedBy" => String.t(),
        "name" => String.t(),
        "revision" => String.t(),
        "ruleType" => list(any()),
        "scope" => rule_scope(),
        "target" => list(),
        "targetType" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_run_error() :: %{
        "message" => [String.t()]
      }

  """
  @type job_run_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lineage_event_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "eventSummary" => list(),
        "eventTime" => [non_neg_integer()],
        "id" => String.t(),
        "processingStatus" => list(any())
      }

  """
  @type lineage_event_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_connection_input() :: %{
        "athenaProperties" => map(),
        "authenticationConfiguration" => authentication_configuration_input(),
        "connectionProperties" => map(),
        "connectionType" => list(any()),
        "description" => [String.t()],
        "matchCriteria" => [String.t()],
        "name" => [String.t()],
        "physicalConnectionRequirements" => physical_connection_requirements(),
        "pythonProperties" => map(),
        "sparkProperties" => map(),
        "validateCredentials" => [boolean()],
        "validateForComputeEnvironments" => list(list(any())())
      }

  """
  @type glue_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_error_message() :: %{
        "errorDetail" => [String.t()],
        "errorType" => list(any())
      }

  """
  @type data_source_error_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redshift_cluster_storage() :: %{
        "clusterName" => [String.t()]
      }

  """
  @type redshift_cluster_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_type_output() :: %{}

  """
  @type delete_asset_type_output() :: %{}

  @typedoc """

  ## Example:

      reject_rule() :: %{
        "rule" => list(any()),
        "threshold" => [float()]
      }

  """
  @type reject_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_profile_input() :: %{
        optional("type") => list(any())
      }

  """
  @type get_user_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glossary_term_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "glossaryId" => String.t(),
        "id" => String.t(),
        "longDescription" => String.t(),
        "name" => String.t(),
        "shortDescription" => String.t(),
        "status" => list(any()),
        "termRelations" => term_relations(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type glossary_term_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      override_domain_unit_owners_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type override_domain_unit_owners_policy_grant_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_target_name_map() :: %{
        "assetId" => String.t(),
        "targetName" => [String.t()]
      }

  """
  @type asset_target_name_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_environment_blueprint_configuration_output() :: %{
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t(),
        "enabledRegions" => list(String.t()()),
        "environmentBlueprintId" => String.t(),
        "environmentRolePermissionBoundary" => String.t(),
        "manageAccessRoleArn" => String.t(),
        "provisioningConfigurations" => list(list()()),
        "provisioningRoleArn" => String.t(),
        "regionalParameters" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type put_environment_blueprint_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_subscription_grant_input() :: %{
        optional("assetTargetNames") => list(asset_target_name_map()()),
        optional("clientToken") => [String.t()],
        optional("subscriptionTargetIdentifier") => String.t(),
        required("environmentIdentifier") => String.t(),
        required("grantedEntity") => list()
      }

  """
  @type create_subscription_grant_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_profile_input() :: %{
        optional("awsAccountId") => String.t(),
        optional("awsAccountRegion") => String.t(),
        optional("description") => String.t(),
        optional("userParameters") => list(environment_parameter()()),
        required("environmentBlueprintIdentifier") => String.t(),
        required("name") => String.t(),
        required("projectIdentifier") => String.t()
      }

  """
  @type create_environment_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_output() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentActions" => list(configurable_environment_action()()),
        "environmentBlueprintId" => String.t(),
        "environmentConfigurationId" => String.t(),
        "environmentProfileId" => String.t(),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "lastDeployment" => deployment(),
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "provisionedResources" => list(resource()()),
        "provisioningProperties" => list(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }

  """
  @type create_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_lineage_event_input() :: %{
        optional("clientToken") => String.t(),
        required("event") => binary()
      }

  """
  @type post_lineage_event_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iam_user_profile_details() :: %{
        "arn" => [String.t()]
      }

  """
  @type iam_user_profile_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_predictions_input() :: %{
        optional("clientToken") => String.t(),
        optional("rejectChoices") => list(reject_choice()()),
        optional("rejectRule") => reject_rule(),
        optional("revision") => String.t()
      }

  """
  @type reject_predictions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_series_data_point_form_input() :: %{
        "content" => [String.t()],
        "formName" => String.t(),
        "timestamp" => [non_neg_integer()],
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type time_series_data_point_form_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_output() :: %{
        "items" => list(list()()),
        "nextToken" => String.t(),
        "totalMatchCount" => [integer()]
      }

  """
  @type search_output() :: %{String.t() => any()}

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
        "aWSManagedClientApplicationReference" => [String.t()],
        "userManagedClientApplicationClientId" => [String.t()]
      }

  """
  @type o_auth2_client_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_profile_input() :: %{
        optional("clientToken") => [String.t()],
        optional("userType") => list(any()),
        required("userIdentifier") => String.t()
      }

  """
  @type create_user_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_environment_blueprint_configuration_input() :: %{}

  """
  @type delete_environment_blueprint_configuration_input() :: %{}

  @typedoc """

  ## Example:

      lineage_info() :: %{
        "errorMessage" => String.t(),
        "eventId" => [String.t()],
        "eventStatus" => list(any())
      }

  """
  @type lineage_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscribed_listing() :: %{
        "description" => String.t(),
        "id" => String.t(),
        "item" => list(),
        "name" => String.t(),
        "ownerProjectId" => String.t(),
        "ownerProjectName" => [String.t()],
        "revision" => String.t()
      }

  """
  @type subscribed_listing() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_form_type_output() :: %{
        "description" => String.t(),
        "domainId" => String.t(),
        "name" => String.t(),
        "originDomainId" => String.t(),
        "originProjectId" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t()
      }

  """
  @type create_form_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_entity_owners_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_entity_owners_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_metadata_generation_run_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type start_metadata_generation_run_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_subscription_target_input() :: %{
        optional("clientToken") => [String.t()],
        optional("provider") => [String.t()],
        required("applicableAssetTypes") => list(String.t()()),
        required("authorizedPrincipals") => list(String.t()()),
        required("manageAccessRole") => String.t(),
        required("name") => String.t(),
        required("subscriptionTargetConfig") => list(subscription_target_form()()),
        required("type") => [String.t()]
      }

  """
  @type create_subscription_target_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_input() :: %{
        optional("assetFormsInput") => list(form_input()()),
        optional("configuration") => list(),
        optional("description") => String.t(),
        optional("enableSetting") => list(any()),
        optional("name") => String.t(),
        optional("publishOnImport") => [boolean()],
        optional("recommendation") => recommendation_configuration(),
        optional("retainPermissionsOnRevokeFailure") => [boolean()],
        optional("schedule") => schedule_configuration()
      }

  """
  @type update_data_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_in_data_product_listing_item() :: %{
        "entityId" => [String.t()],
        "entityRevision" => [String.t()],
        "entityType" => [String.t()]
      }

  """
  @type asset_in_data_product_listing_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      form_entry_input() :: %{
        "required" => [boolean()],
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type form_entry_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_listing() :: %{
        "assetId" => String.t(),
        "assetRevision" => String.t(),
        "assetType" => String.t(),
        "createdAt" => non_neg_integer(),
        "forms" => String.t(),
        "glossaryTerms" => list(detailed_glossary_term()()),
        "latestTimeSeriesDataPointForms" => list(time_series_data_point_summary_form_output()()),
        "owningProjectId" => String.t()
      }

  """
  @type asset_listing() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_unit_user_properties() :: %{
        "userId" => [String.t()]
      }

  """
  @type domain_unit_user_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_input() :: %{
        optional("clientToken") => [String.t()],
        optional("skipDeletionCheck") => [boolean()]
      }

  """
  @type delete_domain_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_rule_input() :: %{
        optional("revision") => String.t()
      }

  """
  @type get_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_units_for_parent_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("parentDomainUnitIdentifier") => String.t()
      }

  """
  @type list_domain_units_for_parent_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_parameter() :: %{
        "defaultValue" => [String.t()],
        "description" => String.t(),
        "fieldType" => [String.t()],
        "isEditable" => [boolean()],
        "isOptional" => [boolean()],
        "keyName" => [String.t()]
      }

  """
  @type custom_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_input() :: %{
        optional("revision") => String.t()
      }

  """
  @type get_asset_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      projects_for_rule() :: %{
        "selectionMode" => list(any()),
        "specificProjects" => list(String.t()())
      }

  """
  @type projects_for_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_profile_output() :: %{
        "details" => list(),
        "domainId" => String.t(),
        "id" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type update_user_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_membership_output() :: %{}

  """
  @type create_project_membership_output() :: %{}

  @typedoc """

  ## Example:

      is_null_expression() :: %{
        "columnName" => [String.t()]
      }

  """
  @type is_null_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_policy_grant_input() :: %{
        optional("clientToken") => String.t(),
        required("detail") => list(),
        required("policyType") => list(any()),
        required("principal") => list()
      }

  """
  @type add_policy_grant_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_glossary_output() :: %{}

  """
  @type delete_glossary_output() :: %{}

  @typedoc """

  ## Example:

      get_glossary_term_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "glossaryId" => String.t(),
        "id" => String.t(),
        "longDescription" => String.t(),
        "name" => String.t(),
        "shortDescription" => String.t(),
        "status" => list(any()),
        "termRelations" => term_relations(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_glossary_term_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domains_output() :: %{
        "items" => list(domain_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_domains_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_environment_output() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "deploymentProperties" => deployment_properties(),
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentActions" => list(configurable_environment_action()()),
        "environmentBlueprintId" => String.t(),
        "environmentConfigurationId" => String.t(),
        "environmentProfileId" => String.t(),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "lastDeployment" => deployment(),
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "provisionedResources" => list(resource()()),
        "provisioningProperties" => list(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }

  """
  @type update_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      like_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type like_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_source_output() :: %{
        "assetFormsOutput" => list(form_output()()),
        "configuration" => list(),
        "connectionId" => [String.t()],
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "enableSetting" => list(any()),
        "environmentId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t(),
        "projectId" => String.t(),
        "publishOnImport" => [boolean()],
        "recommendation" => recommendation_configuration(),
        "schedule" => schedule_configuration(),
        "status" => list(any()),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_data_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spark_glue_args() :: %{
        "connection" => [String.t()]
      }

  """
  @type spark_glue_args() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      equal_to_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type equal_to_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_iam_portal_login_url_output() :: %{
        "authCodeUrl" => [String.t()],
        "userProfileId" => [String.t()]
      }

  """
  @type get_iam_portal_login_url_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscribed_product_listing() :: %{
        "assetListings" => list(asset_in_data_product_listing_item()()),
        "description" => [String.t()],
        "entityId" => String.t(),
        "entityRevision" => String.t(),
        "glossaryTerms" => list(detailed_glossary_term()()),
        "name" => [String.t()]
      }

  """
  @type subscribed_product_listing() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_rule() :: %{
        "rule" => list(any()),
        "threshold" => [float()]
      }

  """
  @type accept_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metadata_generation_run_target() :: %{
        "identifier" => [String.t()],
        "revision" => String.t(),
        "type" => list(any())
      }

  """
  @type metadata_generation_run_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_source_output() :: %{
        "assetFormsOutput" => list(form_output()()),
        "configuration" => list(),
        "connectionId" => [String.t()],
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "enableSetting" => list(any()),
        "environmentId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t(),
        "projectId" => String.t(),
        "publishOnImport" => [boolean()],
        "retainPermissionsOnRevokeFailure" => [boolean()],
        "schedule" => schedule_configuration(),
        "selfGrantStatus" => list(),
        "status" => list(any()),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type delete_data_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connection_input() :: %{
        optional("withSecret") => [boolean()]
      }

  """
  @type get_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connection_output() :: %{
        "connectionCredentials" => connection_credentials(),
        "connectionId" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "domainUnitId" => String.t(),
        "environmentId" => String.t(),
        "environmentUserRole" => [String.t()],
        "name" => String.t(),
        "physicalEndpoints" => list(physical_endpoint()()),
        "projectId" => String.t(),
        "props" => list(),
        "type" => list(any())
      }

  """
  @type get_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_glossary_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_glossary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_listing_item_additional_attributes() :: %{
        "forms" => String.t(),
        "latestTimeSeriesDataPointForms" => list(time_series_data_point_summary_form_output()())
      }

  """
  @type asset_listing_item_additional_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environment_blueprints_input() :: %{
        optional("managed") => [boolean()],
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t()
      }

  """
  @type list_environment_blueprints_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_sources_input() :: %{
        optional("connectionIdentifier") => [String.t()],
        optional("environmentIdentifier") => [String.t()],
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t(),
        optional("status") => list(any()),
        optional("type") => String.t(),
        required("projectIdentifier") => [String.t()]
      }

  """
  @type list_data_sources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lineage_events_output() :: %{
        "items" => list(lineage_event_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_lineage_events_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iam_properties_input() :: %{
        "glueLineageSyncEnabled" => [boolean()]
      }

  """
  @type iam_properties_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_output() :: %{
        "items" => list(project_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_projects_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_profile_output() :: %{
        "details" => list(),
        "domainId" => String.t(),
        "id" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type create_user_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_user_profiles_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("searchText") => String.t(),
        required("userType") => list(any())
      }

  """
  @type search_user_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_action_output() :: %{
        "description" => [String.t()],
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "parameters" => list()
      }

  """
  @type get_environment_action_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_run_lineage_summary() :: %{
        "importStatus" => list(any())
      }

  """
  @type data_source_run_lineage_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reject_subscription_request_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decisionComment" => String.t(),
        "domainId" => String.t(),
        "existingSubscriptionId" => String.t(),
        "id" => String.t(),
        "metadataForms" => list(form_output()()),
        "requestReason" => String.t(),
        "reviewerId" => [String.t()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()()),
        "subscribedPrincipals" => list(list()()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type reject_subscription_request_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hyper_pod_properties_input() :: %{
        "clusterName" => [String.t()]
      }

  """
  @type hyper_pod_properties_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      topic() :: %{
        "resource" => notification_resource(),
        "role" => list(any()),
        "subject" => [String.t()]
      }

  """
  @type topic() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configurable_environment_action() :: %{
        "auth" => list(any()),
        "parameters" => list(configurable_action_parameter()()),
        "type" => [String.t()]
      }

  """
  @type configurable_environment_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_output() :: %{
        "arn" => [String.t()],
        "createdAt" => non_neg_integer(),
        "description" => [String.t()],
        "domainExecutionRole" => String.t(),
        "domainVersion" => list(any()),
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => [String.t()],
        "portalUrl" => [String.t()],
        "rootDomainUnitId" => String.t(),
        "serviceRole" => String.t(),
        "singleSignOn" => single_sign_on(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type get_domain_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_listings_output() :: %{
        "items" => list(list()()),
        "nextToken" => String.t(),
        "totalMatchCount" => [integer()]
      }

  """
  @type search_listings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prediction_configuration() :: %{
        "businessNameGeneration" => business_name_generation_configuration()
      }

  """
  @type prediction_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_action_summary() :: %{
        "description" => [String.t()],
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "parameters" => list()
      }

  """
  @type environment_action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_blueprint_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "provider" => [String.t()],
        "provisioningProperties" => list(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type environment_blueprint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_input() :: %{}

  """
  @type get_environment_input() :: %{}

  @typedoc """

  ## Example:

      create_glossary_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("status") => list(any()),
        required("name") => String.t(),
        required("owningProjectIdentifier") => String.t()
      }

  """
  @type create_glossary_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      listing_revision_input() :: %{
        "identifier" => String.t(),
        "revision" => String.t()
      }

  """
  @type listing_revision_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environments_output() :: %{
        "items" => list(environment_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_environments_output() :: %{String.t() => any()}

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
  @type run_statistics_for_assets() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_properties_patch() :: %{
        "glueConnectionInput" => glue_connection_patch()
      }

  """
  @type glue_properties_patch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_subscription_grant_status_output() :: %{
        "assets" => list(subscribed_asset()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "grantedEntity" => list(),
        "id" => String.t(),
        "status" => list(any()),
        "subscriptionId" => String.t(),
        "subscriptionTargetId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type update_subscription_grant_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_environment_input() :: %{
        optional("blueprintVersion") => [String.t()],
        optional("description") => [String.t()],
        optional("glossaryTerms") => list(String.t()()),
        optional("name") => [String.t()],
        optional("userParameters") => list(environment_parameter()())
      }

  """
  @type update_environment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_subscription_targets_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_subscription_targets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sage_maker_run_configuration_input() :: %{
        "trackingAssets" => map()
      }

  """
  @type sage_maker_run_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_filter_input() :: %{}

  """
  @type get_asset_filter_input() :: %{}

  @typedoc """

  ## Example:

      post_lineage_event_output() :: %{
        "domainId" => String.t(),
        "id" => String.t()
      }

  """
  @type post_lineage_event_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_equal_to_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type not_equal_to_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_series_data_point_form_output() :: %{
        "content" => [String.t()],
        "formName" => String.t(),
        "id" => String.t(),
        "timestamp" => [non_neg_integer()],
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type time_series_data_point_form_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_like_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type not_like_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_subscription_request_input() :: %{}

  """
  @type delete_subscription_request_input() :: %{}

  @typedoc """

  ## Example:

      owner_group_properties() :: %{
        "groupIdentifier" => String.t()
      }

  """
  @type owner_group_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_type_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "formsOutput" => map(),
        "name" => String.t(),
        "originDomainId" => String.t(),
        "originProjectId" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type asset_type_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_o_auth2_credentials() :: %{
        "accessToken" => [String.t()],
        "jwtToken" => [String.t()],
        "refreshToken" => [String.t()],
        "userManagedClientApplicationClientSecret" => [String.t()]
      }

  """
  @type glue_o_auth2_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_run_configuration_input() :: %{
        "autoImportDataQualityResult" => [boolean()],
        "catalogName" => [String.t()],
        "dataAccessRole" => [String.t()],
        "relationalFilterConfigurations" => list(relational_filter_configuration()())
      }

  """
  @type glue_run_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      athena_properties_input() :: %{
        "workgroupName" => [String.t()]
      }

  """
  @type athena_properties_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_product_revisions_output() :: %{
        "items" => list(data_product_revision()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_product_revisions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_source_run_activities_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_data_source_run_activities_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_glossary_input() :: %{}

  """
  @type delete_glossary_input() :: %{}

  @typedoc """

  ## Example:

      owner_user_properties() :: %{
        "userIdentifier" => String.t()
      }

  """
  @type owner_user_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lineage_node_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => [String.t()],
        "domainId" => String.t(),
        "eventTimestamp" => [non_neg_integer()],
        "id" => String.t(),
        "name" => [String.t()],
        "sourceIdentifier" => [String.t()],
        "typeName" => [String.t()],
        "typeRevision" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type lineage_node_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spark_glue_properties_input() :: %{
        "additionalArgs" => spark_glue_args(),
        "glueConnectionName" => [String.t()],
        "glueVersion" => [String.t()],
        "idleTimeout" => [integer()],
        "javaVirtualEnv" => [String.t()],
        "numberOfWorkers" => [integer()],
        "pythonVirtualEnv" => [String.t()],
        "workerType" => [String.t()]
      }

  """
  @type spark_glue_properties_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_subscription_grant_output() :: %{
        "assets" => list(subscribed_asset()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "grantedEntity" => list(),
        "id" => String.t(),
        "status" => list(any()),
        "subscriptionId" => String.t(),
        "subscriptionTargetId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type create_subscription_grant_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_glossary_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type create_glossary_policy_grant_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_glossary_term_output() :: %{}

  """
  @type delete_glossary_term_output() :: %{}

  @typedoc """

  ## Example:

      athena_properties_patch() :: %{
        "workgroupName" => [String.t()]
      }

  """
  @type athena_properties_patch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_subscription_requests_input() :: %{
        optional("approverProjectId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owningProjectId") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("status") => list(any()),
        optional("subscribedListingId") => String.t()
      }

  """
  @type list_subscription_requests_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      form_type_data() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "imports" => list(import()()),
        "model" => list(),
        "name" => String.t(),
        "originDomainId" => String.t(),
        "originProjectId" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "status" => list(any())
      }

  """
  @type form_type_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscribed_project() :: %{
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type subscribed_project() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_profile_output() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentBlueprintId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }

  """
  @type get_environment_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_scope() :: %{
        "assetType" => asset_types_for_rule(),
        "dataProduct" => [boolean()],
        "project" => projects_for_rule()
      }

  """
  @type rule_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_glossary_term_output() :: %{
        "domainId" => String.t(),
        "glossaryId" => String.t(),
        "id" => String.t(),
        "longDescription" => String.t(),
        "name" => String.t(),
        "shortDescription" => String.t(),
        "status" => list(any()),
        "termRelations" => term_relations()
      }

  """
  @type create_glossary_term_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_profile_input() :: %{}

  """
  @type get_environment_profile_input() :: %{}

  @typedoc """

  ## Example:

      create_data_product_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t(),
        "formsOutput" => list(form_output()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "items" => list(data_product_item()()),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "status" => list(any())
      }

  """
  @type create_data_product_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_profile_output() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentBlueprintId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }

  """
  @type create_environment_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_listings_input() :: %{
        optional("additionalAttributes") => list(list(any())()),
        optional("filters") => list(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("searchIn") => list(search_in_item()()),
        optional("searchText") => [String.t()],
        optional("sort") => search_sort()
      }

  """
  @type search_listings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_expression() :: %{
        "expression" => [String.t()],
        "type" => list(any())
      }

  """
  @type filter_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_properties_input() :: %{
        "glueConnectionInput" => glue_connection_input()
      }

  """
  @type glue_properties_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_filters_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_asset_filters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_run_input() :: %{}

  """
  @type get_job_run_input() :: %{}

  @typedoc """

  ## Example:

      glossary_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type glossary_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_subscription_grants_input() :: %{
        optional("environmentId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owningProjectId") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("subscribedListingId") => String.t(),
        optional("subscriptionId") => String.t(),
        optional("subscriptionTargetId") => String.t()
      }

  """
  @type list_subscription_grants_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "attribute" => String.t(),
        "value" => [String.t()]
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_type_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "formsOutput" => map(),
        "name" => String.t(),
        "originDomainId" => String.t(),
        "originProjectId" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type create_asset_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_data_source_run_input() :: %{
        optional("clientToken") => [String.t()]
      }

  """
  @type start_data_source_run_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_rule_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("action") => list(any()),
        required("detail") => list(),
        required("name") => String.t(),
        required("scope") => rule_scope(),
        required("target") => list()
      }

  """
  @type create_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_in_item() :: %{
        "attribute" => String.t()
      }

  """
  @type search_in_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_subscription_target_output() :: %{
        "applicableAssetTypes" => list(String.t()()),
        "authorizedPrincipals" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "manageAccessRole" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "provider" => [String.t()],
        "subscriptionTargetConfig" => list(subscription_target_form()()),
        "type" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_subscription_target_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_revision_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "externalIdentifier" => String.t(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t(),
        "formsOutput" => list(form_output()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "latestTimeSeriesDataPointFormsOutput" => list(time_series_data_point_summary_form_output()()),
        "listing" => asset_listing_details(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "predictionConfiguration" => prediction_configuration(),
        "readOnlyFormsOutput" => list(form_output()()),
        "revision" => String.t(),
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type create_asset_revision_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_membership_input() :: %{
        required("member") => list()
      }

  """
  @type delete_project_membership_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_to_project_member_pool_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type add_to_project_member_pool_policy_grant_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      owner_user_properties_output() :: %{
        "userId" => [String.t()]
      }

  """
  @type owner_user_properties_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_credentials() :: %{
        "accessKeyId" => [String.t()],
        "expiration" => [non_neg_integer()],
        "secretAccessKey" => [String.t()],
        "sessionToken" => [String.t()]
      }

  """
  @type connection_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_unit_output() :: %{
        "ancestorDomainUnitIds" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "owners" => list(list()()),
        "parentDomainUnitId" => String.t()
      }

  """
  @type create_domain_unit_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_result_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t(),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t()
      }

  """
  @type data_product_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_time_series_data_point_output() :: %{
        "domainId" => String.t(),
        "entityId" => String.t(),
        "entityType" => list(any()),
        "form" => time_series_data_point_form_output(),
        "formName" => String.t()
      }

  """
  @type get_time_series_data_point_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_connection_patch() :: %{
        "authenticationConfiguration" => authentication_configuration_patch(),
        "connectionProperties" => map(),
        "description" => [String.t()]
      }

  """
  @type glue_connection_patch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environment_profiles_input() :: %{
        optional("awsAccountId") => String.t(),
        optional("awsAccountRegion") => String.t(),
        optional("environmentBlueprintIdentifier") => String.t(),
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t(),
        optional("projectIdentifier") => String.t()
      }

  """
  @type list_environment_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_output() :: %{
        "assetFormsOutput" => list(form_output()()),
        "configuration" => list(),
        "connectionId" => [String.t()],
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "enableSetting" => list(any()),
        "environmentId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t(),
        "projectId" => String.t(),
        "publishOnImport" => [boolean()],
        "recommendation" => recommendation_configuration(),
        "retainPermissionsOnRevokeFailure" => [boolean()],
        "schedule" => schedule_configuration(),
        "selfGrantStatus" => list(),
        "status" => list(any()),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_data_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_input() :: %{
        optional("description") => String.t(),
        optional("domainUnitId") => String.t(),
        optional("glossaryTerms") => list(String.t()()),
        optional("projectProfileId") => String.t(),
        optional("userParameters") => list(environment_configuration_user_parameter()()),
        required("name") => String.t()
      }

  """
  @type create_project_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rules_input() :: %{
        optional("action") => list(any()),
        optional("assetTypes") => list(String.t()()),
        optional("dataProduct") => [boolean()],
        optional("includeCascaded") => [boolean()],
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("projectIds") => list(String.t()()),
        optional("ruleType") => list(any())
      }

  """
  @type list_rules_input() :: %{String.t() => any()}

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
        "description" => String.t(),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "name" => String.t(),
        "provider" => [String.t()],
        "provisioningProperties" => list(),
        "updatedAt" => [non_neg_integer()],
        "userParameters" => list(custom_parameter()())
      }

  """
  @type get_environment_blueprint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_console_link_parameters() :: %{
        "uri" => [String.t()]
      }

  """
  @type aws_console_link_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_form_type_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "imports" => list(import()()),
        "model" => list(),
        "name" => String.t(),
        "originDomainId" => String.t(),
        "originProjectId" => String.t(),
        "owningProjectId" => String.t(),
        "revision" => String.t(),
        "status" => list(any())
      }

  """
  @type get_form_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_filter_output() :: %{
        "assetId" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "effectiveColumnNames" => list([String.t()]()),
        "effectiveRowFilter" => [String.t()],
        "errorMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type create_asset_filter_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification_output() :: %{
        "actionLink" => String.t(),
        "creationTimestamp" => [non_neg_integer()],
        "domainIdentifier" => String.t(),
        "identifier" => String.t(),
        "lastUpdatedTimestamp" => [non_neg_integer()],
        "message" => String.t(),
        "metadata" => map(),
        "status" => list(any()),
        "title" => String.t(),
        "topic" => topic(),
        "type" => list(any())
      }

  """
  @type notification_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      row_filter_configuration() :: %{
        "rowFilter" => list(),
        "sensitive" => [boolean()]
      }

  """
  @type row_filter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_glossary_term_input() :: %{
        optional("glossaryIdentifier") => String.t(),
        optional("longDescription") => String.t(),
        optional("name") => String.t(),
        optional("shortDescription") => String.t(),
        optional("status") => list(any()),
        optional("termRelations") => term_relations()
      }

  """
  @type update_glossary_term_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_environment_action_output() :: %{
        "description" => [String.t()],
        "domainId" => String.t(),
        "environmentId" => String.t(),
        "id" => String.t(),
        "name" => [String.t()],
        "parameters" => list()
      }

  """
  @type update_environment_action_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_listing_item_additional_attributes() :: %{
        "forms" => String.t()
      }

  """
  @type data_product_listing_item_additional_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_filter_configuration() :: %{
        "includedColumnNames" => list([String.t()]())
      }

  """
  @type column_filter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_blueprint_configuration_output() :: %{
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t(),
        "enabledRegions" => list(String.t()()),
        "environmentBlueprintId" => String.t(),
        "environmentRolePermissionBoundary" => String.t(),
        "manageAccessRoleArn" => String.t(),
        "provisioningConfigurations" => list(list()()),
        "provisioningRoleArn" => String.t(),
        "regionalParameters" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_environment_blueprint_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_output() :: %{
        "arn" => [String.t()],
        "description" => [String.t()],
        "domainExecutionRole" => String.t(),
        "domainVersion" => list(any()),
        "id" => String.t(),
        "kmsKeyIdentifier" => String.t(),
        "name" => [String.t()],
        "portalUrl" => [String.t()],
        "rootDomainUnitId" => String.t(),
        "serviceRole" => String.t(),
        "singleSignOn" => single_sign_on(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type create_domain_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      listing_summary() :: %{
        "glossaryTerms" => list(detailed_glossary_term()()),
        "listingId" => String.t(),
        "listingRevision" => String.t()
      }

  """
  @type listing_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_type_input() :: %{
        optional("description") => String.t(),
        required("formsInput") => map(),
        required("name") => String.t(),
        required("owningProjectIdentifier") => String.t()
      }

  """
  @type create_asset_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_summary() :: %{
        "action" => list(any()),
        "identifier" => String.t(),
        "lastUpdatedBy" => String.t(),
        "name" => String.t(),
        "revision" => String.t(),
        "ruleType" => list(any()),
        "scope" => rule_scope(),
        "target" => list(),
        "targetType" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type rule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_subscription_input() :: %{}

  """
  @type cancel_subscription_input() :: %{}

  @typedoc """

  ## Example:

      redshift_properties_patch() :: %{
        "credentials" => list(),
        "databaseName" => [String.t()],
        "host" => [String.t()],
        "lineageSync" => redshift_lineage_sync_configuration_input(),
        "port" => [integer()],
        "storage" => list()
      }

  """
  @type redshift_properties_patch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accepted_asset_scope() :: %{
        "assetId" => String.t(),
        "filterIds" => list(String.t()())
      }

  """
  @type accepted_asset_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redshift_lineage_sync_configuration_output() :: %{
        "enabled" => [boolean()],
        "lineageJobId" => [String.t()],
        "schedule" => lineage_sync_schedule()
      }

  """
  @type redshift_lineage_sync_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_subscription_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "retainPermissions" => [boolean()],
        "status" => list(any()),
        "subscribedListing" => subscribed_listing(),
        "subscribedPrincipal" => list(),
        "subscriptionRequestId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type cancel_subscription_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sso_user_profile_details() :: %{
        "firstName" => String.t(),
        "lastName" => String.t(),
        "username" => String.t()
      }

  """
  @type sso_user_profile_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_metadata_generation_run_input() :: %{}

  """
  @type cancel_metadata_generation_run_input() :: %{}

  @typedoc """

  ## Example:

      list_subscription_targets_output() :: %{
        "items" => list(subscription_target_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_subscription_targets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_input() :: %{}

  """
  @type delete_asset_input() :: %{}

  @typedoc """

  ## Example:

      physical_connection_requirements() :: %{
        "availabilityZone" => [String.t()],
        "securityGroupIdList" => list([String.t()]()),
        "subnetId" => String.t(),
        "subnetIdList" => list(String.t()())
      }

  """
  @type physical_connection_requirements() :: %{String.t() => any()}

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
        "connectionId" => [String.t()],
        "createdAt" => non_neg_integer(),
        "dataSourceId" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "enableSetting" => list(any()),
        "environmentId" => [String.t()],
        "lastRunAssetCount" => [integer()],
        "lastRunAt" => non_neg_integer(),
        "lastRunErrorMessage" => data_source_error_message(),
        "lastRunStatus" => list(any()),
        "name" => String.t(),
        "schedule" => schedule_configuration(),
        "status" => list(any()),
        "type" => [String.t()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type data_source_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_listing_item() :: %{
        "additionalAttributes" => asset_listing_item_additional_attributes(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "entityId" => String.t(),
        "entityRevision" => String.t(),
        "entityType" => String.t(),
        "glossaryTerms" => list(detailed_glossary_term()()),
        "listingCreatedBy" => String.t(),
        "listingId" => String.t(),
        "listingRevision" => String.t(),
        "listingUpdatedBy" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t()
      }

  """
  @type asset_listing_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_credentials_input() :: %{}

  """
  @type get_environment_credentials_input() :: %{}

  @typedoc """

  ## Example:

      delete_environment_blueprint_configuration_output() :: %{}

  """
  @type delete_environment_blueprint_configuration_output() :: %{}

  @typedoc """

  ## Example:

      search_group_profiles_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("searchText") => String.t(),
        required("groupType") => list(any())
      }

  """
  @type search_group_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environment_blueprints_output() :: %{
        "items" => list(environment_blueprint_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_environment_blueprints_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spark_emr_properties_output() :: %{
        "computeArn" => [String.t()],
        "credentials" => username_password(),
        "credentialsExpiration" => [non_neg_integer()],
        "governanceType" => list(any()),
        "instanceProfileArn" => [String.t()],
        "javaVirtualEnv" => [String.t()],
        "livyEndpoint" => [String.t()],
        "logUri" => [String.t()],
        "pythonVirtualEnv" => [String.t()],
        "runtimeRole" => [String.t()],
        "trustedCertificatesS3Uri" => [String.t()]
      }

  """
  @type spark_emr_properties_output() :: %{String.t() => any()}

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
        "nextToken" => String.t(),
        "notifications" => list(notification_output()())
      }

  """
  @type list_notifications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_filter_output() :: %{
        "assetId" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "domainId" => String.t(),
        "effectiveColumnNames" => list([String.t()]()),
        "effectiveRowFilter" => [String.t()],
        "errorMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type update_asset_filter_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_project_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "domainUnitId" => String.t(),
        "environmentDeploymentDetails" => environment_deployment_details(),
        "failureReasons" => list(project_deletion_error()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t(),
        "projectProfileId" => String.t(),
        "projectStatus" => list(any()),
        "userParameters" => list(environment_configuration_user_parameter()())
      }

  """
  @type update_project_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_item() :: %{
        "glossaryTerms" => list(String.t()()),
        "identifier" => String.t(),
        "itemType" => list(any()),
        "revision" => String.t()
      }

  """
  @type data_product_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lineage_node_reference() :: %{
        "eventTimestamp" => [non_neg_integer()],
        "id" => String.t()
      }

  """
  @type lineage_node_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_glossary_term_input() :: %{}

  """
  @type delete_glossary_term_input() :: %{}

  @typedoc """

  ## Example:

      in_expression() :: %{
        "columnName" => [String.t()],
        "values" => list([String.t()]())
      }

  """
  @type in_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_profile_input() :: %{
        optional("clientToken") => [String.t()],
        required("groupIdentifier") => String.t()
      }

  """
  @type create_group_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lineage_node_history_output() :: %{
        "nextToken" => String.t(),
        "nodes" => list(lineage_node_summary()())
      }

  """
  @type list_lineage_node_history_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_product_revisions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_data_product_revisions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_profile_summary() :: %{
        "details" => list(),
        "domainId" => String.t(),
        "id" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type user_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_product_output() :: %{}

  """
  @type delete_data_product_output() :: %{}

  @typedoc """

  ## Example:

      data_source_run_summary() :: %{
        "createdAt" => non_neg_integer(),
        "dataSourceId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "lineageSummary" => data_source_run_lineage_summary(),
        "projectId" => String.t(),
        "runStatisticsForAssets" => run_statistics_for_assets(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "stoppedAt" => non_neg_integer(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type data_source_run_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      username_password() :: %{
        "password" => String.t(),
        "username" => String.t()
      }

  """
  @type username_password() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_domain_unit_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("name") => String.t(),
        required("parentDomainUnitIdentifier") => String.t()
      }

  """
  @type create_domain_unit_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_unit_target() :: %{
        "domainUnitId" => String.t(),
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type domain_unit_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_product_input() :: %{
        optional("revision") => String.t()
      }

  """
  @type get_data_product_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_predictions_input() :: %{
        optional("acceptChoices") => list(accept_choice()()),
        optional("acceptRule") => accept_rule(),
        optional("clientToken") => String.t(),
        optional("revision") => String.t()
      }

  """
  @type accept_predictions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_entity_owners_output() :: %{
        "nextToken" => String.t(),
        "owners" => list(list()())
      }

  """
  @type list_entity_owners_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_input() :: %{
        optional("groupIdentifier") => [String.t()],
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t(),
        optional("userIdentifier") => [String.t()]
      }

  """
  @type list_projects_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_profile_summary() :: %{
        "awsAccountId" => String.t(),
        "awsAccountRegion" => String.t(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t()],
        "description" => String.t(),
        "domainId" => String.t(),
        "environmentBlueprintId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "projectId" => String.t(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type environment_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscription_request_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decisionComment" => String.t(),
        "domainId" => String.t(),
        "existingSubscriptionId" => String.t(),
        "id" => String.t(),
        "metadataFormsSummary" => list(metadata_form_summary()()),
        "requestReason" => String.t(),
        "reviewerId" => [String.t()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()()),
        "subscribedPrincipals" => list(list()()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type subscription_request_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_predictions_output() :: %{
        "assetId" => String.t(),
        "domainId" => String.t(),
        "revision" => String.t()
      }

  """
  @type accept_predictions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscribed_asset_listing() :: %{
        "assetScope" => asset_scope(),
        "entityId" => String.t(),
        "entityRevision" => String.t(),
        "entityType" => String.t(),
        "forms" => String.t(),
        "glossaryTerms" => list(detailed_glossary_term()())
      }

  """
  @type subscribed_asset_listing() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_summary() :: %{
        "connectionId" => String.t(),
        "domainId" => String.t(),
        "domainUnitId" => String.t(),
        "environmentId" => String.t(),
        "name" => String.t(),
        "physicalEndpoints" => list(physical_endpoint()()),
        "projectId" => String.t(),
        "props" => list(),
        "type" => list(any())
      }

  """
  @type connection_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      self_grant_status_detail() :: %{
        "databaseName" => [String.t()],
        "failureCause" => [String.t()],
        "schemaName" => [String.t()],
        "status" => list(any())
      }

  """
  @type self_grant_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_policy_grant_input() :: %{
        optional("clientToken") => String.t(),
        required("policyType") => list(any()),
        required("principal") => list()
      }

  """
  @type remove_policy_grant_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connection_output() :: %{
        "status" => [String.t()]
      }

  """
  @type delete_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_listing_change_set_input() :: %{
        optional("clientToken") => String.t(),
        optional("entityRevision") => String.t(),
        required("action") => list(any()),
        required("entityIdentifier") => String.t(),
        required("entityType") => list(any())
      }

  """
  @type create_listing_change_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_unit_policy_grant_principal() :: %{
        "domainUnitDesignation" => list(any()),
        "domainUnitGrantFilter" => list(),
        "domainUnitIdentifier" => String.t()
      }

  """
  @type domain_unit_policy_grant_principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      relational_filter_configuration() :: %{
        "databaseName" => [String.t()],
        "filterExpressions" => list(filter_expression()()),
        "schemaName" => [String.t()]
      }

  """
  @type relational_filter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_form_type_input() :: %{}

  """
  @type delete_form_type_input() :: %{}

  @typedoc """

  ## Example:

      less_than_or_equal_to_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type less_than_or_equal_to_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_unit_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()]
      }

  """
  @type create_domain_unit_policy_grant_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_subscription_request_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decisionComment" => String.t(),
        "domainId" => String.t(),
        "existingSubscriptionId" => String.t(),
        "id" => String.t(),
        "metadataForms" => list(form_output()()),
        "requestReason" => String.t(),
        "reviewerId" => [String.t()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()()),
        "subscribedPrincipals" => list(list()()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type accept_subscription_request_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_subscription_request_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decisionComment" => String.t(),
        "domainId" => String.t(),
        "existingSubscriptionId" => String.t(),
        "id" => String.t(),
        "metadataForms" => list(form_output()()),
        "requestReason" => String.t(),
        "reviewerId" => [String.t()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()()),
        "subscribedPrincipals" => list(list()()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type update_subscription_request_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rules_output() :: %{
        "items" => list(rule_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_rules_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
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

      spark_glue_properties_output() :: %{
        "additionalArgs" => spark_glue_args(),
        "glueConnectionName" => [String.t()],
        "glueVersion" => [String.t()],
        "idleTimeout" => [integer()],
        "javaVirtualEnv" => [String.t()],
        "numberOfWorkers" => [integer()],
        "pythonVirtualEnv" => [String.t()],
        "workerType" => [String.t()]
      }

  """
  @type spark_glue_properties_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_units_for_parent_output() :: %{
        "items" => list(domain_unit_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_domain_units_for_parent_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_formation_properties() :: %{
        "templateUrl" => [String.t()]
      }

  """
  @type cloud_formation_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_type_input() :: %{}

  """
  @type delete_asset_type_input() :: %{}

  @typedoc """

  ## Example:

      schedule_configuration() :: %{
        "schedule" => String.t(),
        "timezone" => list(any())
      }

  """
  @type schedule_configuration() :: %{String.t() => any()}

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
  @type environment_deployment_details() :: %{String.t() => any()}

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
  @type recommendation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_project_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "domainUnitId" => String.t(),
        "environmentDeploymentDetails" => environment_deployment_details(),
        "failureReasons" => list(project_deletion_error()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t(),
        "projectProfileId" => String.t(),
        "projectStatus" => list(any()),
        "userParameters" => list(environment_configuration_user_parameter()())
      }

  """
  @type get_project_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_project_profiles_input() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_project_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_listing_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "item" => list(),
        "listingRevision" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_listing_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_in_expression() :: %{
        "columnName" => [String.t()],
        "values" => list([String.t()]())
      }

  """
  @type not_in_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_profile_input() :: %{}

  """
  @type get_group_profile_input() :: %{}

  @typedoc """

  ## Example:

      list_environment_profiles_output() :: %{
        "items" => list(environment_profile_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_environment_profiles_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_asset_filter_input() :: %{
        optional("configuration") => list(),
        optional("description") => String.t(),
        optional("name") => [String.t()]
      }

  """
  @type update_asset_filter_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_unit_summary() :: %{
        "id" => String.t(),
        "name" => [String.t()]
      }

  """
  @type domain_unit_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_source_run_output() :: %{
        "createdAt" => non_neg_integer(),
        "dataSourceConfigurationSnapshot" => [String.t()],
        "dataSourceId" => String.t(),
        "domainId" => String.t(),
        "errorMessage" => data_source_error_message(),
        "id" => String.t(),
        "lineageSummary" => data_source_run_lineage_summary(),
        "projectId" => String.t(),
        "runStatisticsForAssets" => run_statistics_for_assets(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "stoppedAt" => non_neg_integer(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_data_source_run_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lineage_event_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "event" => binary(),
        "eventTime" => [non_neg_integer()],
        "id" => String.t(),
        "processingStatus" => list(any())
      }

  """
  @type get_lineage_event_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spark_emr_properties_patch() :: %{
        "computeArn" => [String.t()],
        "instanceProfileArn" => [String.t()],
        "javaVirtualEnv" => [String.t()],
        "logUri" => [String.t()],
        "pythonVirtualEnv" => [String.t()],
        "runtimeRole" => [String.t()],
        "trustedCertificatesS3Uri" => [String.t()]
      }

  """
  @type spark_emr_properties_patch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      open_lineage_run_event_summary() :: %{
        "eventType" => list(any()),
        "inputs" => list(name_identifier()()),
        "job" => name_identifier(),
        "outputs" => list(name_identifier()()),
        "runId" => [String.t()]
      }

  """
  @type open_lineage_run_event_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_glossary_term_input() :: %{}

  """
  @type get_glossary_term_input() :: %{}

  @typedoc """

  ## Example:

      update_domain_unit_input() :: %{
        optional("description") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_domain_unit_input() :: %{String.t() => any()}

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
        "items" => list(metadata_generation_run_item()()),
        "nextToken" => String.t()
      }

  """
  @type list_metadata_generation_runs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lineage_run_details() :: %{
        "sqlQueryRunDetails" => lineage_sql_query_run_details()
      }

  """
  @type lineage_run_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_input() :: %{
        optional("skipDeletionCheck") => [boolean()]
      }

  """
  @type delete_project_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_choice() :: %{
        "editedValue" => String.t(),
        "predictionChoice" => [integer()],
        "predictionTarget" => [String.t()]
      }

  """
  @type accept_choice() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      listing_revision() :: %{
        "id" => String.t(),
        "revision" => String.t()
      }

  """
  @type listing_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metadata_generation_run_item() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any()),
        "target" => metadata_generation_run_target(),
        "type" => list(any())
      }

  """
  @type metadata_generation_run_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscribed_asset() :: %{
        "assetId" => String.t(),
        "assetRevision" => String.t(),
        "assetScope" => asset_scope(),
        "failureCause" => failure_cause(),
        "failureTimestamp" => [non_neg_integer()],
        "grantedTimestamp" => [non_neg_integer()],
        "status" => list(any()),
        "targetName" => [String.t()]
      }

  """
  @type subscribed_asset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_profile_input() :: %{
        optional("description") => String.t(),
        optional("domainUnitIdentifier") => String.t(),
        optional("environmentConfigurations") => list(environment_configuration()()),
        optional("status") => list(any()),
        required("name") => String.t()
      }

  """
  @type create_project_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_project_memberships_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_project_memberships_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_configuration() :: %{
        "awsAccount" => list(),
        "awsRegion" => list(),
        "configurationParameters" => environment_configuration_parameters_details(),
        "deploymentMode" => list(any()),
        "deploymentOrder" => integer(),
        "description" => String.t(),
        "environmentBlueprintId" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type environment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_series_data_point_summary_form_output() :: %{
        "contentSummary" => [String.t()],
        "formName" => String.t(),
        "id" => String.t(),
        "timestamp" => [non_neg_integer()],
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type time_series_data_point_summary_form_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_time_series_data_points_output() :: %{
        "domainId" => String.t(),
        "entityId" => String.t(),
        "entityType" => list(any()),
        "forms" => list(time_series_data_point_form_output()())
      }

  """
  @type post_time_series_data_points_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_subscription_grant_output() :: %{
        "assets" => list(subscribed_asset()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "grantedEntity" => list(),
        "id" => String.t(),
        "status" => list(any()),
        "subscriptionId" => String.t(),
        "subscriptionTargetId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_subscription_grant_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      name_identifier() :: %{
        "name" => [String.t()],
        "namespace" => [String.t()]
      }

  """
  @type name_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      o_auth2_properties() :: %{
        "authorizationCodeProperties" => authorization_code_properties(),
        "oAuth2ClientApplication" => o_auth2_client_application(),
        "oAuth2Credentials" => glue_o_auth2_credentials(),
        "oAuth2GrantType" => list(any()),
        "tokenUrl" => [String.t()],
        "tokenUrlParametersMap" => map()
      }

  """
  @type o_auth2_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_run_configuration_output() :: %{
        "accountId" => [String.t()],
        "autoImportDataQualityResult" => [boolean()],
        "catalogName" => [String.t()],
        "dataAccessRole" => [String.t()],
        "region" => [String.t()],
        "relationalFilterConfigurations" => list(relational_filter_configuration()())
      }

  """
  @type glue_run_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscribed_project_input() :: %{
        "identifier" => String.t()
      }

  """
  @type subscribed_project_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      physical_endpoint() :: %{
        "awsLocation" => aws_location(),
        "glueConnection" => glue_connection(),
        "glueConnectionName" => [String.t()],
        "host" => [String.t()],
        "port" => [integer()],
        "protocol" => list(any()),
        "stage" => [String.t()]
      }

  """
  @type physical_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_subscription_grant_status_input() :: %{
        optional("failureCause") => failure_cause(),
        optional("targetName") => [String.t()],
        required("status") => list(any())
      }

  """
  @type update_subscription_grant_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      form_output() :: %{
        "content" => [String.t()],
        "formName" => String.t(),
        "typeName" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type form_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment_properties() :: %{
        "endTimeoutMinutes" => [integer()],
        "startTimeoutMinutes" => [integer()]
      }

  """
  @type deployment_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_environment_role_output() :: %{}

  """
  @type disassociate_environment_role_output() :: %{}

  @typedoc """

  ## Example:

      get_subscription_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "retainPermissions" => [boolean()],
        "status" => list(any()),
        "subscribedListing" => subscribed_listing(),
        "subscribedPrincipal" => list(),
        "subscriptionRequestId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_subscription_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_rule_input() :: %{}

  """
  @type delete_rule_input() :: %{}

  @typedoc """

  ## Example:

      subscribed_listing_input() :: %{
        "identifier" => String.t()
      }

  """
  @type subscribed_listing_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failure_cause() :: %{
        "message" => [String.t()]
      }

  """
  @type failure_cause() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spark_emr_properties_input() :: %{
        "computeArn" => [String.t()],
        "instanceProfileArn" => [String.t()],
        "javaVirtualEnv" => [String.t()],
        "logUri" => [String.t()],
        "pythonVirtualEnv" => [String.t()],
        "runtimeRole" => [String.t()],
        "trustedCertificatesS3Uri" => [String.t()]
      }

  """
  @type spark_emr_properties_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lineage_sql_query_run_details() :: %{
        "errorMessages" => list([String.t()]()),
        "numQueriesFailed" => [integer()],
        "queryEndTime" => [non_neg_integer()],
        "queryStartTime" => [non_neg_integer()],
        "totalQueriesProcessed" => [integer()]
      }

  """
  @type lineage_sql_query_run_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_scope() :: %{
        "assetId" => String.t(),
        "errorMessage" => [String.t()],
        "filterIds" => list(String.t()()),
        "status" => [String.t()]
      }

  """
  @type asset_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connections_input() :: %{
        optional("environmentIdentifier") => String.t(),
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("type") => list(any()),
        required("projectIdentifier") => String.t()
      }

  """
  @type list_connections_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_types_for_rule() :: %{
        "selectionMode" => list(any()),
        "specificAssetTypes" => list(String.t()())
      }

  """
  @type asset_types_for_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_revisions_output() :: %{
        "items" => list(asset_revision()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_revisions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_details() :: %{
        "groupId" => [String.t()]
      }

  """
  @type group_details() :: %{String.t() => any()}

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
        "code" => [String.t()],
        "message" => [String.t()]
      }

  """
  @type environment_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      detailed_glossary_term() :: %{
        "name" => String.t(),
        "shortDescription" => String.t()
      }

  """
  @type detailed_glossary_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_membership_input() :: %{
        required("designation") => list(any()),
        required("member") => list()
      }

  """
  @type create_project_membership_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_output() :: %{
        "status" => list(any())
      }

  """
  @type delete_domain_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_location() :: %{
        "accessRole" => [String.t()],
        "awsAccountId" => String.t(),
        "awsRegion" => String.t(),
        "iamConnectionId" => String.t()
      }

  """
  @type aws_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authentication_configuration() :: %{
        "authenticationType" => list(any()),
        "oAuth2Properties" => o_auth2_properties(),
        "secretArn" => [String.t()]
      }

  """
  @type authentication_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_unit_output() :: %{}

  """
  @type delete_domain_unit_output() :: %{}

  @typedoc """

  ## Example:

      create_project_from_project_profile_policy_grant_detail() :: %{
        "includeChildDomainUnits" => [boolean()],
        "projectProfiles" => list([String.t()]())
      }

  """
  @type create_project_from_project_profile_policy_grant_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_listing_input() :: %{}

  """
  @type delete_listing_input() :: %{}

  @typedoc """

  ## Example:

      sage_maker_run_configuration_output() :: %{
        "accountId" => [String.t()],
        "region" => [String.t()],
        "trackingAssets" => map()
      }

  """
  @type sage_maker_run_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connection_input() :: %{
        optional("awsLocation") => aws_location(),
        optional("clientToken") => [String.t()],
        optional("description") => String.t(),
        optional("props") => list(),
        required("environmentIdentifier") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lineage_node_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => [String.t()],
        "domainId" => String.t(),
        "downstreamNodes" => list(lineage_node_reference()()),
        "eventTimestamp" => [non_neg_integer()],
        "formsOutput" => list(form_output()()),
        "id" => String.t(),
        "name" => [String.t()],
        "sourceIdentifier" => [String.t()],
        "typeName" => [String.t()],
        "typeRevision" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "upstreamNodes" => list(lineage_node_reference()())
      }

  """
  @type get_lineage_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_form_type_input() :: %{
        optional("revision") => String.t()
      }

  """
  @type get_form_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      greater_than_expression() :: %{
        "columnName" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type greater_than_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_profile_output() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "domainUnitId" => String.t(),
        "environmentConfigurations" => list(environment_configuration()()),
        "id" => String.t(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type create_project_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_subscription_request_details_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decisionComment" => String.t(),
        "domainId" => String.t(),
        "existingSubscriptionId" => String.t(),
        "id" => String.t(),
        "metadataForms" => list(form_output()()),
        "requestReason" => String.t(),
        "reviewerId" => [String.t()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()()),
        "subscribedPrincipals" => list(list()()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_subscription_request_details_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      form_entry_output() :: %{
        "required" => [boolean()],
        "typeName" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type form_entry_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_glossary_output() :: %{
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any())
      }

  """
  @type update_glossary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domains_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_domains_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_policy_grant_principal() :: %{
        "projectDesignation" => list(any()),
        "projectGrantFilter" => list(),
        "projectIdentifier" => String.t()
      }

  """
  @type project_policy_grant_principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_entity_owner_input() :: %{
        optional("clientToken") => String.t(),
        required("owner") => list()
      }

  """
  @type add_entity_owner_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_self_grant_status_output() :: %{
        "selfGrantStatusDetails" => list(self_grant_status_detail()())
      }

  """
  @type glue_self_grant_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redshift_lineage_sync_configuration_input() :: %{
        "enabled" => [boolean()],
        "schedule" => lineage_sync_schedule()
      }

  """
  @type redshift_lineage_sync_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_blueprint_input() :: %{}

  """
  @type get_environment_blueprint_input() :: %{}

  @typedoc """

  ## Example:

      list_data_sources_output() :: %{
        "items" => list(data_source_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_sources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_rule_input() :: %{
        optional("description") => String.t(),
        optional("detail") => list(),
        optional("includeChildDomainUnits") => [boolean()],
        optional("name") => String.t(),
        optional("scope") => rule_scope()
      }

  """
  @type update_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "externalIdentifier" => String.t(),
        "firstRevisionCreatedAt" => non_neg_integer(),
        "firstRevisionCreatedBy" => String.t(),
        "formsOutput" => list(form_output()()),
        "glossaryTerms" => list(String.t()()),
        "id" => String.t(),
        "latestTimeSeriesDataPointFormsOutput" => list(time_series_data_point_summary_form_output()()),
        "listing" => asset_listing_details(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "readOnlyFormsOutput" => list(form_output()()),
        "revision" => String.t(),
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type get_asset_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_parameter() :: %{
        "name" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type environment_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import() :: %{
        "name" => String.t(),
        "revision" => String.t()
      }

  """
  @type import() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_types_output() :: %{
        "items" => list(list()()),
        "nextToken" => String.t(),
        "totalMatchCount" => [integer()]
      }

  """
  @type search_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_source_input() :: %{
        optional("clientToken") => [String.t()],
        optional("retainPermissionsOnRevokeFailure") => [boolean()]
      }

  """
  @type delete_data_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iam_properties_patch() :: %{
        "glueLineageSyncEnabled" => [boolean()]
      }

  """
  @type iam_properties_patch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_credentials_output() :: %{
        "accessKeyId" => [String.t()],
        "expiration" => [non_neg_integer()],
        "secretAccessKey" => [String.t()],
        "sessionToken" => [String.t()]
      }

  """
  @type get_environment_credentials_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_time_series_data_point_input() :: %{
        required("formName") => String.t()
      }

  """
  @type get_time_series_data_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_profile_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "domainUnitId" => String.t(),
        "id" => String.t(),
        "lastUpdatedAt" => [non_neg_integer()],
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type project_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_subscription_request_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decisionComment" => String.t(),
        "domainId" => String.t(),
        "existingSubscriptionId" => String.t(),
        "id" => String.t(),
        "metadataForms" => list(form_output()()),
        "requestReason" => String.t(),
        "reviewerId" => [String.t()],
        "status" => list(any()),
        "subscribedListings" => list(subscribed_listing()()),
        "subscribedPrincipals" => list(list()()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type create_subscription_request_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_unit_group_properties() :: %{
        "groupId" => [String.t()]
      }

  """
  @type domain_unit_group_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_subscription_request_input() :: %{
        optional("assetScopes") => list(accepted_asset_scope()()),
        optional("decisionComment") => String.t()
      }

  """
  @type accept_subscription_request_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_subscription_input() :: %{}

  """
  @type get_subscription_input() :: %{}

  @typedoc """

  ## Example:

      list_subscription_requests_output() :: %{
        "items" => list(subscription_request_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_subscription_requests_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_glossary_term_input() :: %{
        optional("clientToken") => String.t(),
        optional("longDescription") => String.t(),
        optional("shortDescription") => String.t(),
        optional("status") => list(any()),
        optional("termRelations") => term_relations(),
        required("glossaryIdentifier") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_glossary_term_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_glossary_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("name") => String.t(),
        optional("status") => list(any())
      }

  """
  @type update_glossary_input() :: %{String.t() => any()}

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

      create_group_profile_output() :: %{
        "domainId" => String.t(),
        "groupName" => String.t(),
        "id" => String.t(),
        "status" => list(any())
      }

  """
  @type create_group_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_profile_output() :: %{}

  """
  @type delete_project_profile_output() :: %{}

  @typedoc """

  ## Example:

      update_connection_output() :: %{
        "connectionId" => String.t(),
        "description" => String.t(),
        "domainId" => String.t(),
        "domainUnitId" => String.t(),
        "environmentId" => String.t(),
        "name" => String.t(),
        "physicalEndpoints" => list(physical_endpoint()()),
        "projectId" => String.t(),
        "props" => list(),
        "type" => list(any())
      }

  """
  @type update_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_group_profiles_output() :: %{
        "items" => list(group_profile_summary()()),
        "nextToken" => String.t()
      }

  """
  @type search_group_profiles_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_subscriptions_output() :: %{
        "items" => list(subscription_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_subscriptions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_subscription_target_input() :: %{
        optional("applicableAssetTypes") => list(String.t()()),
        optional("authorizedPrincipals") => list(String.t()()),
        optional("manageAccessRole") => String.t(),
        optional("name") => String.t(),
        optional("provider") => [String.t()],
        optional("subscriptionTargetConfig") => list(subscription_target_form()())
      }

  """
  @type update_subscription_target_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_revisions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_asset_revisions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_input() :: %{
        optional("clientToken") => [String.t()],
        optional("description") => [String.t()],
        optional("domainExecutionRole") => String.t(),
        optional("name") => [String.t()],
        optional("serviceRole") => String.t(),
        optional("singleSignOn") => single_sign_on()
      }

  """
  @type update_domain_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_subscription_grant_output() :: %{
        "assets" => list(subscribed_asset()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "domainId" => String.t(),
        "grantedEntity" => list(),
        "id" => String.t(),
        "status" => list(any()),
        "subscriptionId" => String.t(),
        "subscriptionTargetId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type delete_subscription_grant_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lake_formation_configuration() :: %{
        "locationRegistrationExcludeS3Locations" => list(String.t()()),
        "locationRegistrationRole" => String.t()
      }

  """
  @type lake_formation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_listing_output() :: %{}

  """
  @type delete_listing_output() :: %{}

  @typedoc """

  ## Example:

      form_input() :: %{
        "content" => [String.t()],
        "formName" => String.t(),
        "typeIdentifier" => String.t(),
        "typeRevision" => String.t()
      }

  """
  @type form_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_glossary_output() :: %{
        "description" => String.t(),
        "domainId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t(),
        "status" => list(any())
      }

  """
  @type create_glossary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      basic_authentication_credentials() :: %{
        "password" => [String.t()],
        "userName" => [String.t()]
      }

  """
  @type basic_authentication_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_configuration_parameter() :: %{
        "isEditable" => [boolean()],
        "name" => String.t(),
        "value" => [String.t()]
      }

  """
  @type environment_configuration_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configurable_action_parameter() :: %{
        "key" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type configurable_action_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "name" => [String.t()],
        "provider" => [String.t()],
        "type" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redshift_run_configuration_output() :: %{
        "accountId" => [String.t()],
        "dataAccessRole" => [String.t()],
        "redshiftCredentialConfiguration" => redshift_credential_configuration(),
        "redshiftStorage" => list(),
        "region" => [String.t()],
        "relationalFilterConfigurations" => list(relational_filter_configuration()())
      }

  """
  @type redshift_run_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_environment_blueprint_configuration_input() :: %{
        optional("environmentRolePermissionBoundary") => String.t(),
        optional("manageAccessRoleArn") => String.t(),
        optional("provisioningConfigurations") => list(list()()),
        optional("provisioningRoleArn") => String.t(),
        optional("regionalParameters") => map(),
        required("enabledRegions") => list(String.t()())
      }

  """
  @type put_environment_blueprint_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_listing_item() :: %{
        "additionalAttributes" => data_product_listing_item_additional_attributes(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "entityId" => String.t(),
        "entityRevision" => String.t(),
        "glossaryTerms" => list(detailed_glossary_term()()),
        "items" => list(listing_summary_item()()),
        "listingCreatedBy" => String.t(),
        "listingId" => String.t(),
        "listingRevision" => String.t(),
        "listingUpdatedBy" => String.t(),
        "name" => String.t(),
        "owningProjectId" => String.t()
      }

  """
  @type data_product_listing_item() :: %{String.t() => any()}

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
  DataZone
  assets.
  """
  @spec accept_predictions(map(), String.t(), String.t(), accept_predictions_input(), list()) ::
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
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
          String.t(),
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
  domain
  units, environment blueprint configurations, or environment profiles.
  """
  @spec add_policy_grant(
          map(),
          String.t(),
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
          String.t(),
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
  Cancels the metadata generation run.
  """
  @spec cancel_metadata_generation_run(
          map(),
          String.t(),
          String.t(),
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
  @spec cancel_subscription(map(), String.t(), String.t(), cancel_subscription_input(), list()) ::
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
  Creates an asset in Amazon DataZone catalog.
  """
  @spec create_asset(map(), String.t(), create_asset_input(), list()) ::
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
  """
  @spec create_asset_filter(map(), String.t(), String.t(), create_asset_filter_input(), list()) ::
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
  """
  @spec create_asset_revision(
          map(),
          String.t(),
          String.t(),
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
  """
  @spec create_asset_type(map(), String.t(), create_asset_type_input(), list()) ::
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

  In Amazon DataZone, a connection enables you to connect your
  resources (domains, projects, and environments) to external resources and
  services.
  """
  @spec create_connection(map(), String.t(), create_connection_input(), list()) ::
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
  """
  @spec create_data_product(map(), String.t(), create_data_product_input(), list()) ::
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
  """
  @spec create_data_product_revision(
          map(),
          String.t(),
          String.t(),
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
  @spec create_data_source(map(), String.t(), create_data_source_input(), list()) ::
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
  @spec create_domain_unit(map(), String.t(), create_domain_unit_input(), list()) ::
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
  @spec create_environment(map(), String.t(), create_environment_input(), list()) ::
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
  an
  analytics tool that is available in this environment.
  """
  @spec create_environment_action(
          map(),
          String.t(),
          String.t(),
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
  Creates an Amazon DataZone environment profile.
  """
  @spec create_environment_profile(map(), String.t(), create_environment_profile_input(), list()) ::
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
  """
  @spec create_form_type(map(), String.t(), create_form_type_input(), list()) ::
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
  """
  @spec create_glossary(map(), String.t(), create_glossary_input(), list()) ::
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
  """
  @spec create_glossary_term(map(), String.t(), create_glossary_term_input(), list()) ::
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
  @spec create_group_profile(map(), String.t(), create_group_profile_input(), list()) ::
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
  from the
  catalog.
  """
  @spec create_listing_change_set(map(), String.t(), create_listing_change_set_input(), list()) ::
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
  @spec create_project(map(), String.t(), create_project_input(), list()) ::
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
          String.t(),
          String.t(),
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
  @spec create_project_profile(map(), String.t(), create_project_profile_input(), list()) ::
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

  A rule is a formal agreement that enforces specific
  requirements across user workflows (e.g., publishing assets to the catalog,
  requesting
  subscriptions, creating projects) within the Amazon DataZone data portal. These
  rules help
  maintain consistency, ensure compliance, and uphold governance standards in data
  management
  processes. For instance, a metadata enforcement rule can specify the required
  information
  for creating a subscription request or publishing a data asset to the catalog,
  ensuring
  alignment with organizational standards.
  """
  @spec create_rule(map(), String.t(), create_rule_input(), list()) ::
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
  @spec create_subscription_grant(map(), String.t(), create_subscription_grant_input(), list()) ::
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
          String.t(),
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
          String.t(),
          String.t(),
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
  @spec create_user_profile(map(), String.t(), create_user_profile_input(), list()) ::
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
  Deletes an asset in Amazon DataZone.
  """
  @spec delete_asset(map(), String.t(), String.t(), delete_asset_input(), list()) ::
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
  """
  @spec delete_asset_filter(
          map(),
          String.t(),
          String.t(),
          String.t(),
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
  """
  @spec delete_asset_type(map(), String.t(), String.t(), delete_asset_type_input(), list()) ::
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

  In Amazon DataZone, a connection enables you to connect your
  resources (domains, projects, and environments) to external resources and
  services.
  """
  @spec delete_connection(map(), String.t(), String.t(), delete_connection_input(), list()) ::
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
  """
  @spec delete_data_product(map(), String.t(), String.t(), delete_data_product_input(), list()) ::
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
  @spec delete_data_source(map(), String.t(), String.t(), delete_data_source_input(), list()) ::
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
  @spec delete_domain(map(), String.t(), delete_domain_input(), list()) ::
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
  @spec delete_domain_unit(map(), String.t(), String.t(), delete_domain_unit_input(), list()) ::
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
  @spec delete_environment(map(), String.t(), String.t(), delete_environment_input(), list()) ::
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
  an
  analytics tool that is available in this environment.
  """
  @spec delete_environment_action(
          map(),
          String.t(),
          String.t(),
          String.t(),
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
  Deletes the blueprint configuration in Amazon DataZone.
  """
  @spec delete_environment_blueprint_configuration(
          map(),
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
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
  Delets and metadata form type in Amazon DataZone.
  """
  @spec delete_form_type(map(), String.t(), String.t(), delete_form_type_input(), list()) ::
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
  """
  @spec delete_glossary(map(), String.t(), String.t(), delete_glossary_input(), list()) ::
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
  """
  @spec delete_glossary_term(map(), String.t(), String.t(), delete_glossary_term_input(), list()) ::
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
  @spec delete_listing(map(), String.t(), String.t(), delete_listing_input(), list()) ::
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
  @spec delete_project(map(), String.t(), String.t(), delete_project_input(), list()) ::
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
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
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

  A rule is a formal agreement that enforces specific
  requirements across user workflows (e.g., publishing assets to the catalog,
  requesting
  subscriptions, creating projects) within the Amazon DataZone data portal. These
  rules help
  maintain consistency, ensure compliance, and uphold governance standards in data
  management
  processes. For instance, a metadata enforcement rule can specify the required
  information
  for creating a subscription request or publishing a data asset to the catalog,
  ensuring
  alignment with organizational standards.
  """
  @spec delete_rule(map(), String.t(), String.t(), delete_rule_input(), list()) ::
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
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
          String.t(),
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
  Gets an Amazon DataZone asset.
  """
  @spec get_asset(map(), String.t(), String.t(), String.t() | nil, list()) ::
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
  """
  @spec get_asset_filter(map(), String.t(), String.t(), String.t(), list()) ::
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
  """
  @spec get_asset_type(map(), String.t(), String.t(), String.t() | nil, list()) ::
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

  In Amazon DataZone, a connection enables you to connect your
  resources (domains, projects, and environments) to external resources and
  services.
  """
  @spec get_connection(map(), String.t(), String.t(), String.t() | nil, list()) ::
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
  """
  @spec get_data_product(map(), String.t(), String.t(), String.t() | nil, list()) ::
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
  @spec get_data_source(map(), String.t(), String.t(), list()) ::
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
  @spec get_data_source_run(map(), String.t(), String.t(), list()) ::
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
  @spec get_domain(map(), String.t(), list()) ::
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
  @spec get_domain_unit(map(), String.t(), String.t(), list()) ::
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
  @spec get_environment(map(), String.t(), String.t(), list()) ::
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
  @spec get_environment_action(map(), String.t(), String.t(), String.t(), list()) ::
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
  @spec get_environment_blueprint(map(), String.t(), String.t(), list()) ::
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
  @spec get_environment_blueprint_configuration(map(), String.t(), String.t(), list()) ::
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
  @spec get_environment_credentials(map(), String.t(), String.t(), list()) ::
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
  @spec get_environment_profile(map(), String.t(), String.t(), list()) ::
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
  """
  @spec get_form_type(map(), String.t(), String.t(), String.t() | nil, list()) ::
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
  """
  @spec get_glossary(map(), String.t(), String.t(), list()) ::
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
  """
  @spec get_glossary_term(map(), String.t(), String.t(), list()) ::
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
  @spec get_group_profile(map(), String.t(), String.t(), list()) ::
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
  @spec get_iam_portal_login_url(map(), String.t(), get_iam_portal_login_url_input(), list()) ::
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
  @spec get_job_run(map(), String.t(), String.t(), list()) ::
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
  @spec get_lineage_event(map(), String.t(), String.t(), list()) ::
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
  @spec get_lineage_node(map(), String.t(), String.t(), String.t() | nil, list()) ::
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

  If you specify a listing version,
  only details that are specific to that version are returned.
  """
  @spec get_listing(map(), String.t(), String.t(), String.t() | nil, list()) ::
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
  """
  @spec get_metadata_generation_run(map(), String.t(), String.t(), list()) ::
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
  @spec get_project(map(), String.t(), String.t(), list()) ::
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
  @spec get_project_profile(map(), String.t(), String.t(), list()) ::
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

  A rule is a formal agreement that
  enforces specific requirements across user workflows (e.g., publishing assets to
  the
  catalog, requesting subscriptions, creating projects) within the Amazon DataZone
  data
  portal. These rules help maintain consistency, ensure compliance, and uphold
  governance
  standards in data management processes. For instance, a metadata enforcement
  rule can
  specify the required information for creating a subscription request or
  publishing a data
  asset to the catalog, ensuring alignment with organizational standards.
  """
  @spec get_rule(map(), String.t(), String.t(), String.t() | nil, list()) ::
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
  @spec get_subscription(map(), String.t(), String.t(), list()) ::
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
  @spec get_subscription_grant(map(), String.t(), String.t(), list()) ::
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
  @spec get_subscription_request_details(map(), String.t(), String.t(), list()) ::
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
  @spec get_subscription_target(map(), String.t(), String.t(), String.t(), list()) ::
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
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
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
  @spec get_user_profile(map(), String.t(), String.t(), String.t() | nil, list()) ::
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
  Lists asset filters.
  """
  @spec list_asset_filters(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
  """
  @spec list_asset_revisions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
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

  In Amazon DataZone, a connection enables you to connect your
  resources (domains, projects, and environments) to external resources and
  services.
  """
  @spec list_connections(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
        project_identifier,
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
  """
  @spec list_data_product_revisions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
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
  @spec list_domains(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
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
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
  """
  @spec list_metadata_generation_runs(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
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
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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

  In Amazon DataZone, a rule is a formal agreement that enforces
  specific requirements across user workflows (e.g., publishing assets to the
  catalog,
  requesting subscriptions, creating projects) within the Amazon DataZone data
  portal. These
  rules help maintain consistency, ensure compliance, and uphold governance
  standards in data
  management processes. For instance, a metadata enforcement rule can specify the
  required
  information for creating a subscription request or publishing a data asset to
  the catalog,
  ensuring alignment with organizational standards.
  """
  @spec list_rules(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
  @spec list_tags_for_resource(map(), String.t(), list()) ::
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
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
  @spec post_lineage_event(map(), String.t(), post_lineage_event_input(), list()) ::
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
          String.t(),
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
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
  DataZone
  assets.
  """
  @spec reject_predictions(map(), String.t(), String.t(), reject_predictions_input(), list()) ::
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
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
          String.t(),
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
  @spec revoke_subscription(map(), String.t(), String.t(), revoke_subscription_input(), list()) ::
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
  """
  @spec search(map(), String.t(), search_input(), list()) ::
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
  @spec search_group_profiles(map(), String.t(), search_group_profiles_input(), list()) ::
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
  Searches listings (records of an asset at a given time) in Amazon DataZone.
  """
  @spec search_listings(map(), String.t(), search_listings_input(), list()) ::
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
  """
  @spec search_types(map(), String.t(), search_types_input(), list()) ::
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
  @spec search_user_profiles(map(), String.t(), search_user_profiles_input(), list()) ::
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
          String.t(),
          String.t(),
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
  """
  @spec start_metadata_generation_run(
          map(),
          String.t(),
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
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
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
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
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
  Updates an asset filter.
  """
  @spec update_asset_filter(
          map(),
          String.t(),
          String.t(),
          String.t(),
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

  In Amazon DataZone, a connection enables you to connect your
  resources (domains, projects, and environments) to external resources and
  services.
  """
  @spec update_connection(map(), String.t(), String.t(), update_connection_input(), list()) ::
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
  @spec update_data_source(map(), String.t(), String.t(), update_data_source_input(), list()) ::
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
  @spec update_domain(map(), String.t(), update_domain_input(), list()) ::
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
  @spec update_domain_unit(map(), String.t(), String.t(), update_domain_unit_input(), list()) ::
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
  @spec update_environment(map(), String.t(), String.t(), update_environment_input(), list()) ::
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
          String.t(),
          String.t(),
          String.t(),
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
  Updates the specified environment profile in Amazon DataZone.
  """
  @spec update_environment_profile(
          map(),
          String.t(),
          String.t(),
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
  """
  @spec update_glossary(map(), String.t(), String.t(), update_glossary_input(), list()) ::
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
  """
  @spec update_glossary_term(map(), String.t(), String.t(), update_glossary_term_input(), list()) ::
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
  @spec update_group_profile(map(), String.t(), String.t(), update_group_profile_input(), list()) ::
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
  @spec update_project(map(), String.t(), String.t(), update_project_input(), list()) ::
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
          String.t(),
          String.t(),
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
  requesting
  subscriptions, creating projects) within the Amazon DataZone data portal. These
  rules help
  maintain consistency, ensure compliance, and uphold governance standards in data
  management
  processes. For instance, a metadata enforcement rule can specify the required
  information
  for creating a subscription request or publishing a data asset to the catalog,
  ensuring
  alignment with organizational standards.
  """
  @spec update_rule(map(), String.t(), String.t(), update_rule_input(), list()) ::
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
          String.t(),
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
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
          String.t(),
          String.t(),
          String.t(),
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
  @spec update_user_profile(map(), String.t(), String.t(), update_user_profile_input(), list()) ::
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
