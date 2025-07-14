# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.VerifiedPermissions do
  @moduledoc """
  Amazon Verified Permissions is a permissions management service from Amazon Web
  Services.

  You can use Verified Permissions to manage permissions for your application, and
  authorize user access based on those permissions. Using Verified Permissions,
  application developers can grant access based on information about the users,
  resources, and requested actions. You can also evaluate additional information
  like group membership, attributes of the resources, and session context, such as
  time of request and IP addresses. Verified Permissions manages these permissions
  by letting you create and store authorization policies for your applications,
  such as consumer-facing web sites and enterprise business systems.

  Verified Permissions uses Cedar as the policy language to express your
  permission requirements. Cedar supports both role-based access control (RBAC)
  and attribute-based access control (ABAC) authorization models.

  For more information about configuring, administering, and using Amazon Verified
  Permissions in your applications, see the [Amazon Verified Permissions User Guide](https://docs.aws.amazon.com/verifiedpermissions/latest/userguide/).

  For more information about the Cedar policy language, see the [Cedar Policy Language Guide](https://docs.cedarpolicy.com/).

  When you write Cedar policies that reference principals, resources and actions,
  you can define the unique identifiers used for each of those elements. We
  strongly recommend that you follow these best practices:

     ## Use values like universally unique identifiers (UUIDs) for all
  principal and resource identifiers.

  For example, if user `jane` leaves the company, and you later let someone else
  use the name `jane`, then that new user automatically gets access to everything
  granted by policies that still reference `User::"jane"`. Cedar can’t distinguish
  between the new user and the old. This applies to both principal and resource
  identifiers. Always use identifiers that are guaranteed unique and never reused
  to ensure that you don’t unintentionally grant access because of the presence of
  an old identifier in a policy.

  Where you use a UUID for an entity, we recommend that you follow it with the //
  comment specifier and the ‘friendly’ name of your entity. This helps to make
  your policies easier to understand. For example: principal ==
  User::"a1b2c3d4-e5f6-a1b2-c3d4-EXAMPLE11111", // alice

     ## Do not include personally identifying, confidential, or sensitive
  information as part of the unique identifier for your principals or resources.
  These identifiers are included in log entries shared in CloudTrail trails.

  Several operations return structures that appear similar, but have different
  purposes. As new functionality is added to the product, the structure used in a
  parameter of one operation might need to change in a way that wouldn't make
  sense for the same parameter in a different operation. To help you understand
  the purpose of each, the following naming convention is used for the structures:

    * Parameter type structures that end in `Detail` are used in `Get`
  operations.

    * Parameter type structures that end in `Item` are used in `List`
  operations.

    * Parameter type structures that use neither suffix are used in the
  mutating (create and update) operations.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      is_authorized_with_token_input() :: %{
        optional("accessToken") => String.t(),
        optional("action") => action_identifier(),
        optional("context") => list(),
        optional("entities") => list(),
        optional("identityToken") => String.t(),
        optional("resource") => entity_identifier(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type is_authorized_with_token_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      is_authorized_input() :: %{
        optional("action") => action_identifier(),
        optional("context") => list(),
        optional("entities") => list(),
        optional("principal") => entity_identifier(),
        optional("resource") => entity_identifier(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type is_authorized_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_policy_template_output() :: %{
        "createdDate" => non_neg_integer(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyStoreId" => String.t(),
        "policyTemplateId" => String.t()
      }
      
  """
  @type create_policy_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_is_authorized_with_token_input_item() :: %{
        "action" => action_identifier(),
        "context" => list(),
        "resource" => entity_identifier()
      }
      
  """
  @type batch_is_authorized_with_token_input_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_identity_source_input() :: %{
        optional("principalEntityType") => String.t(),
        required("identitySourceId") => String.t(),
        required("policyStoreId") => String.t(),
        required("updateConfiguration") => list()
      }
      
  """
  @type update_identity_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      is_authorized_output() :: %{
        "decision" => list(any()),
        "determiningPolicies" => list(determining_policy_item()),
        "errors" => list(evaluation_error_item())
      }
      
  """
  @type is_authorized_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_policy_template_input() :: %{
        required("policyStoreId") => String.t(),
        required("policyTemplateId") => String.t()
      }
      
  """
  @type delete_policy_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_identity_token_configuration() :: %{
        "clientIds" => list(String.t()),
        "principalIdClaim" => String.t()
      }
      
  """
  @type open_id_connect_identity_token_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policy_templates_output() :: %{
        "nextToken" => String.t(),
        "policyTemplates" => list(policy_template_item())
      }
      
  """
  @type list_policy_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      determining_policy_item() :: %{
        "policyId" => String.t()
      }
      
  """
  @type determining_policy_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_policy_store_input() :: %{
        required("policyStoreId") => String.t()
      }
      
  """
  @type delete_policy_store_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policy_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type list_policy_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_linked_policy_definition() :: %{
        "policyTemplateId" => String.t(),
        "principal" => entity_identifier(),
        "resource" => entity_identifier()
      }
      
  """
  @type template_linked_policy_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_access_token_configuration() :: %{
        "audiences" => list(String.t()),
        "principalIdClaim" => String.t()
      }
      
  """
  @type open_id_connect_access_token_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_access_token_configuration_detail() :: %{
        "audiences" => list(String.t()),
        "principalIdClaim" => String.t()
      }
      
  """
  @type open_id_connect_access_token_configuration_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_policy_store_input() :: %{
        optional("clientToken") => String.t(),
        optional("deletionProtection") => list(any()),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("validationSettings") => validation_settings()
      }
      
  """
  @type create_policy_store_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_input() :: %{
        required("policyId") => String.t(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type get_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_identity_source_output() :: %{
        "createdDate" => non_neg_integer(),
        "identitySourceId" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyStoreId" => String.t()
      }
      
  """
  @type update_identity_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_source_input() :: %{
        required("identitySourceId") => String.t(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type get_identity_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_template_item() :: %{
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyStoreId" => String.t(),
        "policyTemplateId" => String.t()
      }
      
  """
  @type policy_template_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_policy_store_output() :: %{
        "arn" => String.t(),
        "createdDate" => non_neg_integer(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyStoreId" => String.t()
      }
      
  """
  @type update_policy_store_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_policy_input() :: %{
        required("requests") => list(batch_get_policy_input_item())
      }
      
  """
  @type batch_get_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_is_authorized_with_token_output_item() :: %{
        "decision" => list(any()),
        "determiningPolicies" => list(determining_policy_item()),
        "errors" => list(evaluation_error_item()),
        "request" => batch_is_authorized_with_token_input_item()
      }
      
  """
  @type batch_is_authorized_with_token_output_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_item() :: %{
        "actions" => list(action_identifier()),
        "createdDate" => non_neg_integer(),
        "definition" => list(),
        "effect" => list(any()),
        "lastUpdatedDate" => non_neg_integer(),
        "policyId" => String.t(),
        "policyStoreId" => String.t(),
        "policyType" => list(any()),
        "principal" => entity_identifier(),
        "resource" => entity_identifier()
      }
      
  """
  @type policy_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cognito_group_configuration_detail() :: %{
        "groupEntityType" => String.t()
      }
      
  """
  @type cognito_group_configuration_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      static_policy_definition_item() :: %{
        "description" => String.t()
      }
      
  """
  @type static_policy_definition_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_configuration_detail() :: %{
        "entityIdPrefix" => String.t(),
        "groupConfiguration" => open_id_connect_group_configuration_detail(),
        "issuer" => String.t(),
        "tokenSelection" => list()
      }
      
  """
  @type open_id_connect_configuration_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_state_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_policy_store_output() :: %{
        "arn" => String.t(),
        "createdDate" => non_neg_integer(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyStoreId" => String.t()
      }
      
  """
  @type create_policy_store_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_policy_error_item() :: %{
        "code" => list(any()),
        "message" => [String.t()],
        "policyId" => [String.t()],
        "policyStoreId" => [String.t()]
      }
      
  """
  @type batch_get_policy_error_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_is_authorized_output() :: %{
        "results" => list(batch_is_authorized_output_item())
      }
      
  """
  @type batch_is_authorized_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_is_authorized_input_item() :: %{
        "action" => action_identifier(),
        "context" => list(),
        "principal" => entity_identifier(),
        "resource" => entity_identifier()
      }
      
  """
  @type batch_is_authorized_input_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_policy_input() :: %{
        required("definition") => list(),
        required("policyId") => String.t(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type update_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_identifier() :: %{
        "actionId" => String.t(),
        "actionType" => String.t()
      }
      
  """
  @type action_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_output() :: %{
        "nextToken" => String.t(),
        "policies" => list(policy_item())
      }
      
  """
  @type list_policies_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_schema_output() :: %{
        "createdDate" => non_neg_integer(),
        "lastUpdatedDate" => non_neg_integer(),
        "namespaces" => list(String.t()),
        "policyStoreId" => String.t()
      }
      
  """
  @type put_schema_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_open_id_connect_group_configuration() :: %{
        "groupClaim" => String.t(),
        "groupEntityType" => String.t()
      }
      
  """
  @type update_open_id_connect_group_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evaluation_error_item() :: %{
        "errorDescription" => [String.t()]
      }
      
  """
  @type evaluation_error_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cognito_group_configuration() :: %{
        "groupEntityType" => String.t()
      }
      
  """
  @type update_cognito_group_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_policy_store_input() :: %{
        optional("deletionProtection") => list(any()),
        optional("description") => String.t(),
        required("policyStoreId") => String.t(),
        required("validationSettings") => validation_settings()
      }
      
  """
  @type update_policy_store_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policy_stores_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_policy_stores_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()],
        "resources" => list(resource_conflict())
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => list(any())
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cognito_user_pool_configuration_item() :: %{
        "clientIds" => list(String.t()),
        "groupConfiguration" => cognito_group_configuration_item(),
        "issuer" => String.t(),
        "userPoolArn" => String.t()
      }
      
  """
  @type cognito_user_pool_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_is_authorized_with_token_input() :: %{
        optional("accessToken") => String.t(),
        optional("entities") => list(),
        optional("identityToken") => String.t(),
        required("policyStoreId") => String.t(),
        required("requests") => list(batch_is_authorized_with_token_input_item())
      }
      
  """
  @type batch_is_authorized_with_token_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_configuration() :: %{
        "entityIdPrefix" => String.t(),
        "groupConfiguration" => open_id_connect_group_configuration(),
        "issuer" => String.t(),
        "tokenSelection" => list()
      }
      
  """
  @type open_id_connect_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_policy_template_output() :: %{
        "createdDate" => non_neg_integer(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyStoreId" => String.t(),
        "policyTemplateId" => String.t()
      }
      
  """
  @type update_policy_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identity_sources_output() :: %{
        "identitySources" => list(identity_source_item()),
        "nextToken" => String.t()
      }
      
  """
  @type list_identity_sources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_store_item() :: %{
        "arn" => String.t(),
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyStoreId" => String.t()
      }
      
  """
  @type policy_store_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_source_details() :: %{
        "clientIds" => list(String.t()),
        "discoveryUrl" => String.t(),
        "openIdIssuer" => list(any()),
        "userPoolArn" => String.t()
      }
      
  """
  @type identity_source_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => list(any()),
        "serviceCode" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_open_id_connect_configuration() :: %{
        "entityIdPrefix" => String.t(),
        "groupConfiguration" => update_open_id_connect_group_configuration(),
        "issuer" => String.t(),
        "tokenSelection" => list()
      }
      
  """
  @type update_open_id_connect_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_policy_input() :: %{
        required("policyId") => String.t(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type delete_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_schema_output() :: %{
        "createdDate" => non_neg_integer(),
        "lastUpdatedDate" => non_neg_integer(),
        "namespaces" => list(String.t()),
        "policyStoreId" => String.t(),
        "schema" => String.t()
      }
      
  """
  @type get_schema_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cognito_group_configuration() :: %{
        "groupEntityType" => String.t()
      }
      
  """
  @type cognito_group_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_policy_store_output() :: %{}
      
  """
  @type delete_policy_store_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_identity_source_output() :: %{}
      
  """
  @type delete_identity_source_output() :: %{}

  @typedoc """

  ## Example:
      
      cognito_user_pool_configuration_detail() :: %{
        "clientIds" => list(String.t()),
        "groupConfiguration" => cognito_group_configuration_detail(),
        "issuer" => String.t(),
        "userPoolArn" => String.t()
      }
      
  """
  @type cognito_user_pool_configuration_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      static_policy_definition() :: %{
        "description" => String.t(),
        "statement" => String.t()
      }
      
  """
  @type static_policy_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_store_input() :: %{
        optional("tags") => [boolean()],
        required("policyStoreId") => String.t()
      }
      
  """
  @type get_policy_store_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_schema_input() :: %{
        required("definition") => list(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type put_schema_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_configuration_item() :: %{
        "entityIdPrefix" => String.t(),
        "groupConfiguration" => open_id_connect_group_configuration_item(),
        "issuer" => String.t(),
        "tokenSelection" => list()
      }
      
  """
  @type open_id_connect_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t()],
        "path" => [String.t()]
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_source_item_details() :: %{
        "clientIds" => list(String.t()),
        "discoveryUrl" => String.t(),
        "openIdIssuer" => list(any()),
        "userPoolArn" => String.t()
      }
      
  """
  @type identity_source_item_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_policy_template_output() :: %{}
      
  """
  @type delete_policy_template_output() :: %{}

  @typedoc """

  ## Example:
      
      validation_settings() :: %{
        "mode" => list(any())
      }
      
  """
  @type validation_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_identity_source_input() :: %{
        required("identitySourceId") => String.t(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type delete_identity_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("resourceArn") => String.t(),
        required("tags") => map()
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_open_id_connect_identity_token_configuration() :: %{
        "clientIds" => list(String.t()),
        "principalIdClaim" => String.t()
      }
      
  """
  @type update_open_id_connect_identity_token_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_group_configuration_item() :: %{
        "groupClaim" => String.t(),
        "groupEntityType" => String.t()
      }
      
  """
  @type open_id_connect_group_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cognito_user_pool_configuration() :: %{
        "clientIds" => list(String.t()),
        "groupConfiguration" => cognito_group_configuration(),
        "userPoolArn" => String.t()
      }
      
  """
  @type cognito_user_pool_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policies_input() :: %{
        optional("filter") => policy_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type list_policies_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      policy_filter() :: %{
        "policyTemplateId" => String.t(),
        "policyType" => list(any()),
        "principal" => list(),
        "resource" => list()
      }
      
  """
  @type policy_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_policy_input() :: %{
        optional("clientToken") => String.t(),
        required("definition") => list(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type create_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_is_authorized_input() :: %{
        optional("entities") => list(),
        required("policyStoreId") => String.t(),
        required("requests") => list(batch_is_authorized_input_item())
      }
      
  """
  @type batch_is_authorized_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_linked_policy_definition_detail() :: %{
        "policyTemplateId" => String.t(),
        "principal" => entity_identifier(),
        "resource" => entity_identifier()
      }
      
  """
  @type template_linked_policy_definition_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cognito_user_pool_configuration() :: %{
        "clientIds" => list(String.t()),
        "groupConfiguration" => update_cognito_group_configuration(),
        "userPoolArn" => String.t()
      }
      
  """
  @type update_cognito_user_pool_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_policy_template_input() :: %{
        optional("description") => String.t(),
        required("policyStoreId") => String.t(),
        required("policyTemplateId") => String.t(),
        required("statement") => String.t()
      }
      
  """
  @type update_policy_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      is_authorized_with_token_output() :: %{
        "decision" => list(any()),
        "determiningPolicies" => list(determining_policy_item()),
        "errors" => list(evaluation_error_item()),
        "principal" => entity_identifier()
      }
      
  """
  @type is_authorized_with_token_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_policy_template_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("policyStoreId") => String.t(),
        required("statement") => String.t()
      }
      
  """
  @type create_policy_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cognito_group_configuration_item() :: %{
        "groupEntityType" => String.t()
      }
      
  """
  @type cognito_group_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_store_output() :: %{
        "arn" => String.t(),
        "cedarVersion" => list(any()),
        "createdDate" => non_neg_integer(),
        "deletionProtection" => list(any()),
        "description" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyStoreId" => String.t(),
        "tags" => map(),
        "validationSettings" => validation_settings()
      }
      
  """
  @type get_policy_store_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_linked_policy_definition_item() :: %{
        "policyTemplateId" => String.t(),
        "principal" => entity_identifier(),
        "resource" => entity_identifier()
      }
      
  """
  @type template_linked_policy_definition_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_identity_source_output() :: %{
        "createdDate" => non_neg_integer(),
        "identitySourceId" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyStoreId" => String.t()
      }
      
  """
  @type create_identity_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_static_policy_definition() :: %{
        "description" => String.t(),
        "statement" => String.t()
      }
      
  """
  @type update_static_policy_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_schema_input() :: %{
        required("policyStoreId") => String.t()
      }
      
  """
  @type get_schema_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_conflict() :: %{
        "resourceId" => [String.t()],
        "resourceType" => list(any())
      }
      
  """
  @type resource_conflict() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_access_token_configuration_item() :: %{
        "audiences" => list(String.t()),
        "principalIdClaim" => String.t()
      }
      
  """
  @type open_id_connect_access_token_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t()]
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_template_output() :: %{
        "createdDate" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyStoreId" => String.t(),
        "policyTemplateId" => String.t(),
        "statement" => String.t()
      }
      
  """
  @type get_policy_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_policy_output() :: %{
        "errors" => list(batch_get_policy_error_item()),
        "results" => list(batch_get_policy_output_item())
      }
      
  """
  @type batch_get_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_policy_output() :: %{
        "actions" => list(action_identifier()),
        "createdDate" => non_neg_integer(),
        "effect" => list(any()),
        "lastUpdatedDate" => non_neg_integer(),
        "policyId" => String.t(),
        "policyStoreId" => String.t(),
        "policyType" => list(any()),
        "principal" => entity_identifier(),
        "resource" => entity_identifier()
      }
      
  """
  @type create_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      create_identity_source_input() :: %{
        optional("clientToken") => String.t(),
        optional("principalEntityType") => String.t(),
        required("configuration") => list(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type create_identity_source_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_identifier() :: %{
        "entityId" => String.t(),
        "entityType" => String.t()
      }
      
  """
  @type entity_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_template_input() :: %{
        required("policyStoreId") => String.t(),
        required("policyTemplateId") => String.t()
      }
      
  """
  @type get_policy_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_open_id_connect_access_token_configuration() :: %{
        "audiences" => list(String.t()),
        "principalIdClaim" => String.t()
      }
      
  """
  @type update_open_id_connect_access_token_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_group_configuration_detail() :: %{
        "groupClaim" => String.t(),
        "groupEntityType" => String.t()
      }
      
  """
  @type open_id_connect_group_configuration_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_source_item() :: %{
        "configuration" => list(),
        "createdDate" => non_neg_integer(),
        "details" => identity_source_item_details(),
        "identitySourceId" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyStoreId" => String.t(),
        "principalEntityType" => String.t()
      }
      
  """
  @type identity_source_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_group_configuration() :: %{
        "groupClaim" => String.t(),
        "groupEntityType" => String.t()
      }
      
  """
  @type open_id_connect_group_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_source_filter() :: %{
        "principalEntityType" => String.t()
      }
      
  """
  @type identity_source_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_is_authorized_with_token_output() :: %{
        "principal" => entity_identifier(),
        "results" => list(batch_is_authorized_with_token_output_item())
      }
      
  """
  @type batch_is_authorized_with_token_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_identity_sources_input() :: %{
        optional("filters") => list(identity_source_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("policyStoreId") => String.t()
      }
      
  """
  @type list_identity_sources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_is_authorized_output_item() :: %{
        "decision" => list(any()),
        "determiningPolicies" => list(determining_policy_item()),
        "errors" => list(evaluation_error_item()),
        "request" => batch_is_authorized_input_item()
      }
      
  """
  @type batch_is_authorized_output_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_policy_output() :: %{
        "actions" => list(action_identifier()),
        "createdDate" => non_neg_integer(),
        "effect" => list(any()),
        "lastUpdatedDate" => non_neg_integer(),
        "policyId" => String.t(),
        "policyStoreId" => String.t(),
        "policyType" => list(any()),
        "principal" => entity_identifier(),
        "resource" => entity_identifier()
      }
      
  """
  @type update_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_policy_input_item() :: %{
        "policyId" => String.t(),
        "policyStoreId" => String.t()
      }
      
  """
  @type batch_get_policy_input_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      static_policy_definition_detail() :: %{
        "description" => String.t(),
        "statement" => String.t()
      }
      
  """
  @type static_policy_definition_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_policy_output() :: %{}
      
  """
  @type delete_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      entity_item() :: %{
        "attributes" => map(),
        "identifier" => entity_identifier(),
        "parents" => list(entity_identifier())
      }
      
  """
  @type entity_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_policy_output_item() :: %{
        "createdDate" => non_neg_integer(),
        "definition" => list(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyId" => String.t(),
        "policyStoreId" => String.t(),
        "policyType" => list(any())
      }
      
  """
  @type batch_get_policy_output_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => [String.t()],
        "resourceName" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_policy_stores_output() :: %{
        "nextToken" => String.t(),
        "policyStores" => list(policy_store_item())
      }
      
  """
  @type list_policy_stores_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_identity_token_configuration_item() :: %{
        "clientIds" => list(String.t()),
        "principalIdClaim" => String.t()
      }
      
  """
  @type open_id_connect_identity_token_configuration_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_identity_source_output() :: %{
        "configuration" => list(),
        "createdDate" => non_neg_integer(),
        "details" => identity_source_details(),
        "identitySourceId" => String.t(),
        "lastUpdatedDate" => non_neg_integer(),
        "policyStoreId" => String.t(),
        "principalEntityType" => String.t()
      }
      
  """
  @type get_identity_source_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_id_connect_identity_token_configuration_detail() :: %{
        "clientIds" => list(String.t()),
        "principalIdClaim" => String.t()
      }
      
  """
  @type open_id_connect_identity_token_configuration_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_policy_output() :: %{
        "actions" => list(action_identifier()),
        "createdDate" => non_neg_integer(),
        "definition" => list(),
        "effect" => list(any()),
        "lastUpdatedDate" => non_neg_integer(),
        "policyId" => String.t(),
        "policyStoreId" => String.t(),
        "policyType" => list(any()),
        "principal" => entity_identifier(),
        "resource" => entity_identifier()
      }
      
  """
  @type get_policy_output() :: %{String.t() => any()}

  @type batch_is_authorized_errors() :: resource_not_found_exception()

  @type batch_is_authorized_with_token_errors() :: resource_not_found_exception()

  @type create_identity_source_errors() ::
          service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_policy_errors() ::
          service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_policy_store_errors() :: service_quota_exceeded_exception() | conflict_exception()

  @type create_policy_template_errors() ::
          service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_identity_source_errors() :: resource_not_found_exception() | conflict_exception()

  @type delete_policy_errors() :: resource_not_found_exception() | conflict_exception()

  @type delete_policy_store_errors() :: invalid_state_exception()

  @type delete_policy_template_errors() :: resource_not_found_exception() | conflict_exception()

  @type get_identity_source_errors() :: resource_not_found_exception()

  @type get_policy_errors() :: resource_not_found_exception()

  @type get_policy_store_errors() :: resource_not_found_exception()

  @type get_policy_template_errors() :: resource_not_found_exception()

  @type get_schema_errors() :: resource_not_found_exception()

  @type is_authorized_errors() :: resource_not_found_exception()

  @type is_authorized_with_token_errors() :: resource_not_found_exception()

  @type list_identity_sources_errors() :: resource_not_found_exception()

  @type list_policies_errors() :: resource_not_found_exception()

  @type list_policy_templates_errors() :: resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_schema_errors() ::
          service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_identity_source_errors() :: resource_not_found_exception() | conflict_exception()

  @type update_policy_errors() ::
          service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_policy_store_errors() :: resource_not_found_exception() | conflict_exception()

  @type update_policy_template_errors() :: resource_not_found_exception() | conflict_exception()

  def metadata do
    %{
      api_version: "2021-12-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "verifiedpermissions",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "VerifiedPermissions",
      signature_version: "v4",
      signing_name: "verifiedpermissions",
      target_prefix: "VerifiedPermissions"
    }
  end

  @doc """
  Retrieves information about a group (batch) of policies.

  The `BatchGetPolicy` operation doesn't have its own IAM permission. To authorize
  this operation for Amazon Web Services principals, include the permission
  `verifiedpermissions:GetPolicy` in their IAM policies.
  """
  @spec batch_get_policy(map(), batch_get_policy_input(), list()) ::
          {:ok, batch_get_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def batch_get_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetPolicy", input, options)
  end

  @doc """
  Makes a series of decisions about multiple authorization requests for one
  principal or resource.

  Each request contains the equivalent content of an `IsAuthorized` request:
  principal, action, resource, and context. Either the `principal` or the
  `resource` parameter must be identical across all requests. For example,
  Verified Permissions won't evaluate a pair of requests where `bob` views
  `photo1` and `alice` views `photo2`. Authorization of `bob` to view `photo1` and
  `photo2`, or `bob` and `alice` to view `photo1`, are valid batches.

  The request is evaluated against all policies in the specified policy store that
  match the entities that you declare. The result of the decisions is a series of
  `Allow` or `Deny` responses, along with the IDs of the policies that produced
  each decision.

  The `entities` of a `BatchIsAuthorized` API request can contain up to 100
  principals and up to 100 resources. The `requests` of a `BatchIsAuthorized` API
  request can contain up to 30 requests.

  The `BatchIsAuthorized` operation doesn't have its own IAM permission. To
  authorize this operation for Amazon Web Services principals, include the
  permission `verifiedpermissions:IsAuthorized` in their IAM policies.
  """
  @spec batch_is_authorized(map(), batch_is_authorized_input(), list()) ::
          {:ok, batch_is_authorized_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_is_authorized_errors()}
  def batch_is_authorized(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchIsAuthorized", input, options)
  end

  @doc """
  Makes a series of decisions about multiple authorization requests for one token.

  The principal in this request comes from an external identity source in the form
  of an identity or access token, formatted as a [JSON web token (JWT)](https://wikipedia.org/wiki/JSON_Web_Token). The information in the
  parameters can also define additional context that Verified Permissions can
  include in the evaluations.

  The request is evaluated against all policies in the specified policy store that
  match the entities that you provide in the entities declaration and in the
  token. The result of the decisions is a series of `Allow` or `Deny` responses,
  along with the IDs of the policies that produced each decision.

  The `entities` of a `BatchIsAuthorizedWithToken` API request can contain up to
  100 resources and up to 99 user groups. The `requests` of a
  `BatchIsAuthorizedWithToken` API request can contain up to 30 requests.

  The `BatchIsAuthorizedWithToken` operation doesn't have its own IAM permission.
  To authorize this operation for Amazon Web Services principals, include the
  permission `verifiedpermissions:IsAuthorizedWithToken` in their IAM policies.
  """
  @spec batch_is_authorized_with_token(map(), batch_is_authorized_with_token_input(), list()) ::
          {:ok, batch_is_authorized_with_token_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_is_authorized_with_token_errors()}
  def batch_is_authorized_with_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchIsAuthorizedWithToken", input, options)
  end

  @doc """
  Adds an identity source to a policy store–an Amazon Cognito user pool or OpenID
  Connect (OIDC) identity provider (IdP).

  After you create an identity source, you can use the identities provided by the
  IdP as proxies for the principal in authorization queries that use the
  [IsAuthorizedWithToken](https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html) or
  [BatchIsAuthorizedWithToken](https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_BatchIsAuthorizedWithToken.html)
  API operations. These identities take the form of tokens that contain claims
  about the user, such as IDs, attributes and group memberships. Identity sources
  provide identity (ID) tokens and access tokens. Verified Permissions derives
  information about your user and session from token claims. Access tokens provide
  action `context` to your policies, and ID tokens provide principal `Attributes`.

  Tokens from an identity source user continue to be usable until they expire.
  Token revocation and resource deletion have no effect on the validity of a token
  in your policy store

  To reference a user from this identity source in your Cedar policies, refer to
  the following syntax examples.

     Amazon Cognito user pool: `Namespace::[Entity type]::[User pool ID]|[user principal attribute]`, for example `MyCorp::User::us-east-1_EXAMPLE|a1b2c3d4-5678-90ab-cdef-EXAMPLE11111`.

     OpenID Connect (OIDC) provider: `Namespace::[Entity
  type]::[entityIdPrefix]|[user principal attribute]`, for example `MyCorp::User::MyOIDCProvider|a1b2c3d4-5678-90ab-cdef-EXAMPLE22222`.

  Verified Permissions is * [eventually
  consistent](https://wikipedia.org/wiki/Eventual_consistency) *. It can take a
  few seconds for a new or changed element to propagate through the service and be
  visible in the results of other Verified Permissions operations.
  """
  @spec create_identity_source(map(), create_identity_source_input(), list()) ::
          {:ok, create_identity_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_identity_source_errors()}
  def create_identity_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateIdentitySource", input, options)
  end

  @doc """
  Creates a Cedar policy and saves it in the specified policy store.

  You can create either a static policy or a policy linked to a policy template.

    * To create a static policy, provide the Cedar policy text in the
  `StaticPolicy` section of the `PolicyDefinition`.

    * To create a policy that is dynamically linked to a policy
  template, specify the policy template ID and the principal and resource to
  associate with this policy in the `templateLinked` section of the
  `PolicyDefinition`. If the policy template is ever updated, any policies linked
  to the policy template automatically use the updated template.

  Creating a policy causes it to be validated against the schema in the policy
  store. If the policy doesn't pass validation, the operation fails and the policy
  isn't stored.

  Verified Permissions is * [eventually consistent](https://wikipedia.org/wiki/Eventual_consistency) *. It can take a
  few seconds for a new or changed element to propagate through the service and be
  visible in the results of other Verified Permissions operations.
  """
  @spec create_policy(map(), create_policy_input(), list()) ::
          {:ok, create_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_policy_errors()}
  def create_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePolicy", input, options)
  end

  @doc """
  Creates a policy store.

  A policy store is a container for policy resources.

  Although [Cedar supports multiple namespaces](https://docs.cedarpolicy.com/schema/schema.html#namespace), Verified
  Permissions currently supports only one namespace per policy store.

  Verified Permissions is * [eventually consistent](https://wikipedia.org/wiki/Eventual_consistency) *. It can take a
  few seconds for a new or changed element to propagate through the service and be
  visible in the results of other Verified Permissions operations.
  """
  @spec create_policy_store(map(), create_policy_store_input(), list()) ::
          {:ok, create_policy_store_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_policy_store_errors()}
  def create_policy_store(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePolicyStore", input, options)
  end

  @doc """
  Creates a policy template.

  A template can use placeholders for the principal and resource. A template must
  be instantiated into a policy by associating it with specific principals and
  resources to use for the placeholders. That instantiated policy can then be
  considered in authorization decisions. The instantiated policy works identically
  to any other policy, except that it is dynamically linked to the template. If
  the template changes, then any policies that are linked to that template are
  immediately updated as well.

  Verified Permissions is * [eventually consistent](https://wikipedia.org/wiki/Eventual_consistency) *. It can take a
  few seconds for a new or changed element to propagate through the service and be
  visible in the results of other Verified Permissions operations.
  """
  @spec create_policy_template(map(), create_policy_template_input(), list()) ::
          {:ok, create_policy_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_policy_template_errors()}
  def create_policy_template(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePolicyTemplate", input, options)
  end

  @doc """
  Deletes an identity source that references an identity provider (IdP) such as
  Amazon Cognito.

  After you delete the identity source, you can no longer use tokens for
  identities from that identity source to represent principals in authorization
  queries made using
  [IsAuthorizedWithToken](https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html).
  operations.
  """
  @spec delete_identity_source(map(), delete_identity_source_input(), list()) ::
          {:ok, delete_identity_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_identity_source_errors()}
  def delete_identity_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteIdentitySource", input, options)
  end

  @doc """
  Deletes the specified policy from the policy store.

  This operation is idempotent; if you specify a policy that doesn't exist, the
  request response returns a successful `HTTP 200` status code.
  """
  @spec delete_policy(map(), delete_policy_input(), list()) ::
          {:ok, delete_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_policy_errors()}
  def delete_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePolicy", input, options)
  end

  @doc """
  Deletes the specified policy store.

  This operation is idempotent. If you specify a policy store that does not exist,
  the request response will still return a successful HTTP 200 status code.
  """
  @spec delete_policy_store(map(), delete_policy_store_input(), list()) ::
          {:ok, delete_policy_store_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_policy_store_errors()}
  def delete_policy_store(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePolicyStore", input, options)
  end

  @doc """
  Deletes the specified policy template from the policy store.

  This operation also deletes any policies that were created from the specified
  policy template. Those policies are immediately removed from all future API
  responses, and are asynchronously deleted from the policy store.
  """
  @spec delete_policy_template(map(), delete_policy_template_input(), list()) ::
          {:ok, delete_policy_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_policy_template_errors()}
  def delete_policy_template(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePolicyTemplate", input, options)
  end

  @doc """
  Retrieves the details about the specified identity source.
  """
  @spec get_identity_source(map(), get_identity_source_input(), list()) ::
          {:ok, get_identity_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_identity_source_errors()}
  def get_identity_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIdentitySource", input, options)
  end

  @doc """
  Retrieves information about the specified policy.
  """
  @spec get_policy(map(), get_policy_input(), list()) ::
          {:ok, get_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_errors()}
  def get_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPolicy", input, options)
  end

  @doc """
  Retrieves details about a policy store.
  """
  @spec get_policy_store(map(), get_policy_store_input(), list()) ::
          {:ok, get_policy_store_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_store_errors()}
  def get_policy_store(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPolicyStore", input, options)
  end

  @doc """
  Retrieve the details for the specified policy template in the specified policy
  store.
  """
  @spec get_policy_template(map(), get_policy_template_input(), list()) ::
          {:ok, get_policy_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_template_errors()}
  def get_policy_template(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPolicyTemplate", input, options)
  end

  @doc """
  Retrieve the details for the specified schema in the specified policy store.
  """
  @spec get_schema(map(), get_schema_input(), list()) ::
          {:ok, get_schema_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_schema_errors()}
  def get_schema(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSchema", input, options)
  end

  @doc """
  Makes an authorization decision about a service request described in the
  parameters.

  The information in the parameters can also define additional context that
  Verified Permissions can include in the evaluation. The request is evaluated
  against all matching policies in the specified policy store. The result of the
  decision is either `Allow` or `Deny`, along with a list of the policies that
  resulted in the decision.
  """
  @spec is_authorized(map(), is_authorized_input(), list()) ::
          {:ok, is_authorized_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, is_authorized_errors()}
  def is_authorized(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "IsAuthorized", input, options)
  end

  @doc """
  Makes an authorization decision about a service request described in the
  parameters.

  The principal in this request comes from an external identity source in the form
  of an identity token formatted as a [JSON web token (JWT)](https://wikipedia.org/wiki/JSON_Web_Token). The information in the
  parameters can also define additional context that Verified Permissions can
  include in the evaluation. The request is evaluated against all matching
  policies in the specified policy store. The result of the decision is either
  `Allow` or `Deny`, along with a list of the policies that resulted in the
  decision.

  Verified Permissions validates each token that is specified in a request by
  checking its expiration date and its signature.

  Tokens from an identity source user continue to be usable until they expire.
  Token revocation and resource deletion have no effect on the validity of a token
  in your policy store
  """
  @spec is_authorized_with_token(map(), is_authorized_with_token_input(), list()) ::
          {:ok, is_authorized_with_token_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, is_authorized_with_token_errors()}
  def is_authorized_with_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "IsAuthorizedWithToken", input, options)
  end

  @doc """
  Returns a paginated list of all of the identity sources defined in the specified
  policy store.
  """
  @spec list_identity_sources(map(), list_identity_sources_input(), list()) ::
          {:ok, list_identity_sources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_identity_sources_errors()}
  def list_identity_sources(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListIdentitySources", input, options)
  end

  @doc """
  Returns a paginated list of all policies stored in the specified policy store.
  """
  @spec list_policies(map(), list_policies_input(), list()) ::
          {:ok, list_policies_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policies_errors()}
  def list_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPolicies", input, options)
  end

  @doc """
  Returns a paginated list of all policy stores in the calling Amazon Web Services
  account.
  """
  @spec list_policy_stores(map(), list_policy_stores_input(), list()) ::
          {:ok, list_policy_stores_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_policy_stores(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPolicyStores", input, options)
  end

  @doc """
  Returns a paginated list of all policy templates in the specified policy store.
  """
  @spec list_policy_templates(map(), list_policy_templates_input(), list()) ::
          {:ok, list_policy_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policy_templates_errors()}
  def list_policy_templates(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPolicyTemplates", input, options)
  end

  @doc """
  Returns the tags associated with the specified Amazon Verified Permissions
  resource.

  In Verified Permissions, policy stores can be tagged.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates the policy schema in the specified policy store.

  The schema is used to validate any Cedar policies and policy templates submitted
  to the policy store. Any changes to the schema validate only policies and
  templates submitted after the schema change. Existing policies and templates are
  not re-evaluated against the changed schema. If you later update a policy, then
  it is evaluated against the new schema at that time.

  Verified Permissions is * [eventually consistent](https://wikipedia.org/wiki/Eventual_consistency) *. It can take a
  few seconds for a new or changed element to propagate through the service and be
  visible in the results of other Verified Permissions operations.
  """
  @spec put_schema(map(), put_schema_input(), list()) ::
          {:ok, put_schema_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_schema_errors()}
  def put_schema(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutSchema", input, options)
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified Amazon Verified
  Permissions resource.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions by granting a user permission to access or change only
  resources with certain tag values. In Verified Permissions, policy stores can be
  tagged.

  Tags don't have any semantic meaning to Amazon Web Services and are interpreted
  strictly as strings of characters.

  You can use the TagResource action with a resource that already has tags. If you
  specify a new tag key, this tag is appended to the list of tags associated with
  the resource. If you specify a tag key that is already associated with the
  resource, the new tag value that you specify replaces the previous value for
  that tag.

  You can associate as many as 50 tags with a resource.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from the specified Amazon Verified Permissions
  resource.

  In Verified Permissions, policy stores can be tagged.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the specified identity source to use a new identity provider (IdP), or
  to change the mapping of identities from the IdP to a different principal entity
  type.

  Verified Permissions is * [eventually consistent](https://wikipedia.org/wiki/Eventual_consistency) *. It can take a
  few seconds for a new or changed element to propagate through the service and be
  visible in the results of other Verified Permissions operations.
  """
  @spec update_identity_source(map(), update_identity_source_input(), list()) ::
          {:ok, update_identity_source_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_identity_source_errors()}
  def update_identity_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateIdentitySource", input, options)
  end

  @doc """
  Modifies a Cedar static policy in the specified policy store.

  You can change only certain elements of the
  [UpdatePolicyDefinition](https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyInput.html#amazonverifiedpermissions-UpdatePolicy-request-UpdatePolicyDefinition) parameter. You can directly update only static policies. To change a
  template-linked policy, you must update the template instead, using
  [UpdatePolicyTemplate](https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html).

     If policy validation is enabled in the policy store, then updating
  a static policy causes Verified Permissions to validate the policy against the
  schema in the policy store. If the updated static policy doesn't pass
  validation, the operation fails and the update isn't stored.

     When you edit a static policy, you can change only certain elements
  of a static policy:

       The action referenced by the policy.

       A condition clause, such as when and unless.

  You can't change these elements of a static policy:

       Changing a policy from a static policy to a
  template-linked policy.

       Changing the effect of a static policy from permit or
  forbid.

       The principal referenced by a static policy.

       The resource referenced by a static policy.

     To update a template-linked policy, you must update the template
  instead.

  Verified Permissions is * [eventually consistent](https://wikipedia.org/wiki/Eventual_consistency) *. It can take a
  few seconds for a new or changed element to propagate through the service and be
  visible in the results of other Verified Permissions operations.
  """
  @spec update_policy(map(), update_policy_input(), list()) ::
          {:ok, update_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_policy_errors()}
  def update_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePolicy", input, options)
  end

  @doc """
  Modifies the validation setting for a policy store.

  Verified Permissions is * [eventually consistent](https://wikipedia.org/wiki/Eventual_consistency) *. It can take a
  few seconds for a new or changed element to propagate through the service and be
  visible in the results of other Verified Permissions operations.
  """
  @spec update_policy_store(map(), update_policy_store_input(), list()) ::
          {:ok, update_policy_store_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_policy_store_errors()}
  def update_policy_store(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePolicyStore", input, options)
  end

  @doc """
  Updates the specified policy template.

  You can update only the description and the some elements of the
  [policyBody](https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html#amazonverifiedpermissions-UpdatePolicyTemplate-request-policyBody).  Changes you make to the policy template content are immediately (within the
  constraints of eventual consistency) reflected in authorization decisions that
  involve all template-linked policies instantiated from this template.

  Verified Permissions is * [eventually
  consistent](https://wikipedia.org/wiki/Eventual_consistency) *. It can take a
  few seconds for a new or changed element to propagate through the service and be
  visible in the results of other Verified Permissions operations.
  """
  @spec update_policy_template(map(), update_policy_template_input(), list()) ::
          {:ok, update_policy_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_policy_template_errors()}
  def update_policy_template(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePolicyTemplate", input, options)
  end
end
