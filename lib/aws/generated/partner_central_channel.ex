# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PartnerCentralChannel do
  @moduledoc """
  AWS Partner Central Channel service for managing partner relationships,
  handshakes, and program management accounts.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      accept_channel_handshake_detail() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type accept_channel_handshake_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      program_management_account_type_sort() :: %{
        "sortBy" => list(any()),
        "sortOrder" => list(any())
      }
      
  """
  @type program_management_account_type_sort() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_program_management_account_response() :: %{
        "programManagementAccountDetail" => update_program_management_account_detail()
      }
      
  """
  @type update_program_management_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_program_management_account_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("catalog") => String.t() | atom(),
        required("identifier") => String.t() | atom()
      }
      
  """
  @type delete_program_management_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      partner_led_support() :: %{
        "coverage" => list(any()),
        "provider" => list(any()),
        "tamLocation" => [String.t() | atom()]
      }
      
  """
  @type partner_led_support() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_relationship_request() :: %{
        optional("displayName") => String.t() | atom(),
        optional("requestedSupportPlan") => list(),
        optional("revision") => String.t() | atom(),
        required("catalog") => String.t() | atom(),
        required("identifier") => String.t() | atom(),
        required("programManagementAccountIdentifier") => String.t() | atom()
      }
      
  """
  @type update_relationship_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_program_management_account_response() :: %{}
      
  """
  @type delete_program_management_account_response() :: %{}

  @typedoc """

  ## Example:
      
      reject_channel_handshake_detail() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type reject_channel_handshake_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revoke_service_period_payload() :: %{
        "note" => String.t() | atom(),
        "programManagementAccountIdentifier" => String.t() | atom()
      }
      
  """
  @type revoke_service_period_payload() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_channel_handshake_response() :: %{
        "channelHandshakeDetail" => cancel_channel_handshake_detail()
      }
      
  """
  @type cancel_channel_handshake_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_relationships_request() :: %{
        optional("associatedAccountIds") => list(String.t() | atom()),
        optional("associationTypes") => list(list(any())()),
        optional("displayNames") => list(String.t() | atom()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("programManagementAccountIdentifiers") => list(String.t() | atom()),
        optional("sort") => list_relationships_sort_base(),
        required("catalog") => String.t() | atom()
      }
      
  """
  @type list_relationships_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_relationship_response() :: %{
        "relationshipDetail" => update_relationship_detail()
      }
      
  """
  @type update_relationship_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      channel_handshake_summary() :: %{
        "arn" => String.t() | atom(),
        "associatedResourceId" => String.t() | atom(),
        "catalog" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "detail" => list(),
        "handshakeType" => list(any()),
        "id" => String.t() | atom(),
        "ownerAccountId" => String.t() | atom(),
        "receiverAccountId" => String.t() | atom(),
        "senderAccountId" => String.t() | atom(),
        "senderDisplayName" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type channel_handshake_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_relationship_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("requestedSupportPlan") => list(),
        optional("resaleAccountModel") => list(any()),
        optional("tags") => list(tag()),
        required("associatedAccountId") => String.t() | atom(),
        required("associationType") => list(any()),
        required("catalog") => String.t() | atom(),
        required("displayName") => String.t() | atom(),
        required("programManagementAccountIdentifier") => String.t() | atom(),
        required("sector") => list(any())
      }
      
  """
  @type create_relationship_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_channel_handshake_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("payload") => list(),
        optional("tags") => list(tag()),
        required("associatedResourceIdentifier") => String.t() | atom(),
        required("catalog") => String.t() | atom(),
        required("handshakeType") => list(any())
      }
      
  """
  @type create_channel_handshake_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revoke_service_period_handshake_detail() :: %{
        "endDate" => non_neg_integer(),
        "minimumNoticeDays" => String.t() | atom(),
        "note" => String.t() | atom(),
        "servicePeriodType" => list(any()),
        "startDate" => non_neg_integer()
      }
      
  """
  @type revoke_service_period_handshake_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reject_channel_handshake_request() :: %{
        required("catalog") => String.t() | atom(),
        required("identifier") => String.t() | atom()
      }
      
  """
  @type reject_channel_handshake_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_program_management_account_request() :: %{
        optional("displayName") => String.t() | atom(),
        optional("revision") => String.t() | atom(),
        required("catalog") => String.t() | atom(),
        required("identifier") => String.t() | atom()
      }
      
  """
  @type update_program_management_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_program_management_account_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => list(tag()),
        required("accountId") => String.t() | atom(),
        required("catalog") => String.t() | atom(),
        required("displayName") => String.t() | atom(),
        required("program") => list(any())
      }
      
  """
  @type create_program_management_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_program_management_accounts_request() :: %{
        optional("accountIds") => list(String.t() | atom()),
        optional("displayNames") => list(String.t() | atom()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("programs") => list(list(any())()),
        optional("sort") => list_program_management_accounts_sort_base(),
        optional("statuses") => list(list(any())()),
        required("catalog") => String.t() | atom()
      }
      
  """
  @type list_program_management_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_channel_handshake_response() :: %{
        "channelHandshakeDetail" => create_channel_handshake_detail()
      }
      
  """
  @type create_channel_handshake_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_program_management_accounts_response() :: %{
        "items" => list(program_management_account_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_program_management_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_relationships_sort_base() :: %{
        "sortBy" => list(any()),
        "sortOrder" => list(any())
      }
      
  """
  @type list_relationships_sort_base() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_channel_handshake_detail() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type cancel_channel_handshake_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      relationship_detail() :: %{
        "arn" => String.t() | atom(),
        "associatedAccountId" => String.t() | atom(),
        "associationType" => list(any()),
        "catalog" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "displayName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "programManagementAccountId" => String.t() | atom(),
        "resaleAccountModel" => list(any()),
        "revision" => String.t() | atom(),
        "sector" => list(any()),
        "startDate" => non_neg_integer(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type relationship_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_program_management_account_response() :: %{
        "programManagementAccountDetail" => create_program_management_account_detail()
      }
      
  """
  @type create_program_management_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relationship_request() :: %{
        required("catalog") => String.t() | atom(),
        required("identifier") => String.t() | atom(),
        required("programManagementAccountIdentifier") => String.t() | atom()
      }
      
  """
  @type get_relationship_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resold_enterprise() :: %{
        "chargeAccountId" => String.t() | atom(),
        "coverage" => list(any()),
        "tamLocation" => [String.t() | atom()]
      }
      
  """
  @type resold_enterprise() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_relationship_detail() :: %{
        "arn" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "revision" => String.t() | atom()
      }
      
  """
  @type update_relationship_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revoke_service_period_type_filters() :: %{
        "servicePeriodTypes" => list(list(any())())
      }
      
  """
  @type revoke_service_period_type_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      relationship_summary() :: %{
        "arn" => String.t() | atom(),
        "associatedAccountId" => String.t() | atom(),
        "associationType" => list(any()),
        "catalog" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "displayName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "programManagementAccountId" => String.t() | atom(),
        "revision" => String.t() | atom(),
        "sector" => list(any()),
        "startDate" => non_neg_integer(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type relationship_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_program_management_account_detail() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom()
      }
      
  """
  @type create_program_management_account_detail() :: %{(String.t() | atom()) => any()}

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
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_channel_handshakes_response() :: %{
        "items" => list(channel_handshake_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_channel_handshakes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_relationships_response() :: %{
        "items" => list(relationship_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_relationships_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "code" => [String.t() | atom()],
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_service_period_handshake_detail() :: %{
        "endDate" => non_neg_integer(),
        "minimumNoticeDays" => String.t() | atom(),
        "note" => String.t() | atom(),
        "servicePeriodType" => list(any()),
        "startDate" => non_neg_integer()
      }
      
  """
  @type start_service_period_handshake_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reject_channel_handshake_response() :: %{
        "channelHandshakeDetail" => reject_channel_handshake_detail()
      }
      
  """
  @type reject_channel_handshake_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_channel_handshake_request() :: %{
        required("catalog") => String.t() | atom(),
        required("identifier") => String.t() | atom()
      }
      
  """
  @type accept_channel_handshake_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_channel_handshakes_request() :: %{
        optional("associatedResourceIdentifiers") => list(String.t() | atom()),
        optional("handshakeTypeFilters") => list(),
        optional("handshakeTypeSort") => list(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("statuses") => list(list(any())()),
        required("catalog") => String.t() | atom(),
        required("handshakeType") => list(any()),
        required("participantType") => list(any())
      }
      
  """
  @type list_channel_handshakes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_channel_handshake_detail() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom()
      }
      
  """
  @type create_channel_handshake_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_relationship_response() :: %{}
      
  """
  @type delete_relationship_response() :: %{}

  @typedoc """

  ## Example:
      
      create_relationship_detail() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom()
      }
      
  """
  @type create_relationship_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t() | atom()],
        "reason" => [String.t() | atom()]
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_channel_handshake_request() :: %{
        required("catalog") => String.t() | atom(),
        required("identifier") => String.t() | atom()
      }
      
  """
  @type cancel_channel_handshake_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_program_management_accounts_sort_base() :: %{
        "sortBy" => list(any()),
        "sortOrder" => list(any())
      }
      
  """
  @type list_program_management_accounts_sort_base() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_service_period_type_filters() :: %{
        "servicePeriodTypes" => list(list(any())())
      }
      
  """
  @type start_service_period_type_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      program_management_account_handshake_detail() :: %{
        "program" => list(any())
      }
      
  """
  @type program_management_account_handshake_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_relationship_response() :: %{
        "relationshipDetail" => create_relationship_detail()
      }
      
  """
  @type create_relationship_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_program_management_account_detail() :: %{
        "arn" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "revision" => String.t() | atom()
      }
      
  """
  @type update_program_management_account_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_relationship_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("catalog") => String.t() | atom(),
        required("identifier") => String.t() | atom(),
        required("programManagementAccountIdentifier") => String.t() | atom()
      }
      
  """
  @type delete_relationship_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      program_management_account_summary() :: %{
        "accountId" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "catalog" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "displayName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "program" => list(any()),
        "revision" => String.t() | atom(),
        "startDate" => non_neg_integer(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type program_management_account_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revoke_service_period_type_sort() :: %{
        "sortBy" => list(any()),
        "sortOrder" => list(any())
      }
      
  """
  @type revoke_service_period_type_sort() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resold_business() :: %{
        "coverage" => list(any())
      }
      
  """
  @type resold_business() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_channel_handshake_response() :: %{
        "channelHandshakeDetail" => accept_channel_handshake_detail()
      }
      
  """
  @type accept_channel_handshake_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_service_period_type_sort() :: %{
        "sortBy" => list(any()),
        "sortOrder" => list(any())
      }
      
  """
  @type start_service_period_type_sort() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_relationship_response() :: %{
        "relationshipDetail" => relationship_detail()
      }
      
  """
  @type get_relationship_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_service_period_payload() :: %{
        "endDate" => non_neg_integer(),
        "minimumNoticeDays" => String.t() | atom(),
        "note" => String.t() | atom(),
        "programManagementAccountIdentifier" => String.t() | atom(),
        "servicePeriodType" => list(any())
      }
      
  """
  @type start_service_period_payload() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      program_management_account_type_filters() :: %{
        "programs" => list(list(any())())
      }
      
  """
  @type program_management_account_type_filters() :: %{(String.t() | atom()) => any()}

  @type accept_channel_handshake_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_channel_handshake_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_channel_handshake_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_program_management_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_relationship_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_program_management_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_relationship_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_relationship_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_channel_handshakes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_program_management_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_relationships_errors() ::
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

  @type reject_channel_handshake_errors() ::
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
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_program_management_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_relationship_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2024-03-18",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "partnercentral-channel",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "PartnerCentral Channel",
      signature_version: "aws.auth#sigv4",
      signing_name: "partnercentral-channel",
      target_prefix: "PartnerCentralChannel"
    }
  end

  @doc """
  Accepts a pending channel handshake request from another AWS account.
  """
  @spec accept_channel_handshake(map(), accept_channel_handshake_request(), list()) ::
          {:ok, accept_channel_handshake_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_channel_handshake_errors()}
  def accept_channel_handshake(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptChannelHandshake", input, options)
  end

  @doc """
  Cancels a pending channel handshake request.
  """
  @spec cancel_channel_handshake(map(), cancel_channel_handshake_request(), list()) ::
          {:ok, cancel_channel_handshake_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_channel_handshake_errors()}
  def cancel_channel_handshake(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelChannelHandshake", input, options)
  end

  @doc """
  Creates a new channel handshake request to establish a partnership with another
  AWS account.
  """
  @spec create_channel_handshake(map(), create_channel_handshake_request(), list()) ::
          {:ok, create_channel_handshake_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_channel_handshake_errors()}
  def create_channel_handshake(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateChannelHandshake", input, options)
  end

  @doc """
  Creates a new program management account for managing partner relationships.
  """
  @spec create_program_management_account(
          map(),
          create_program_management_account_request(),
          list()
        ) ::
          {:ok, create_program_management_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_program_management_account_errors()}
  def create_program_management_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProgramManagementAccount", input, options)
  end

  @doc """
  Creates a new partner relationship between accounts.
  """
  @spec create_relationship(map(), create_relationship_request(), list()) ::
          {:ok, create_relationship_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_relationship_errors()}
  def create_relationship(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRelationship", input, options)
  end

  @doc """
  Deletes a program management account.
  """
  @spec delete_program_management_account(
          map(),
          delete_program_management_account_request(),
          list()
        ) ::
          {:ok, delete_program_management_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_program_management_account_errors()}
  def delete_program_management_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProgramManagementAccount", input, options)
  end

  @doc """
  Deletes a partner relationship.
  """
  @spec delete_relationship(map(), delete_relationship_request(), list()) ::
          {:ok, delete_relationship_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_relationship_errors()}
  def delete_relationship(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRelationship", input, options)
  end

  @doc """
  Retrieves details of a specific partner relationship.
  """
  @spec get_relationship(map(), get_relationship_request(), list()) ::
          {:ok, get_relationship_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relationship_errors()}
  def get_relationship(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRelationship", input, options)
  end

  @doc """
  Lists channel handshakes based on specified criteria.
  """
  @spec list_channel_handshakes(map(), list_channel_handshakes_request(), list()) ::
          {:ok, list_channel_handshakes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_channel_handshakes_errors()}
  def list_channel_handshakes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListChannelHandshakes", input, options)
  end

  @doc """
  Lists program management accounts based on specified criteria.
  """
  @spec list_program_management_accounts(
          map(),
          list_program_management_accounts_request(),
          list()
        ) ::
          {:ok, list_program_management_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_program_management_accounts_errors()}
  def list_program_management_accounts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProgramManagementAccounts", input, options)
  end

  @doc """
  Lists partner relationships based on specified criteria.
  """
  @spec list_relationships(map(), list_relationships_request(), list()) ::
          {:ok, list_relationships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_relationships_errors()}
  def list_relationships(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRelationships", input, options)
  end

  @doc """
  Lists tags associated with a specific resource.
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
  Rejects a pending channel handshake request.
  """
  @spec reject_channel_handshake(map(), reject_channel_handshake_request(), list()) ::
          {:ok, reject_channel_handshake_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_channel_handshake_errors()}
  def reject_channel_handshake(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectChannelHandshake", input, options)
  end

  @doc """
  Adds or updates tags for a specified resource.
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
  Removes tags from a specified resource.
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
  Updates the properties of a program management account.
  """
  @spec update_program_management_account(
          map(),
          update_program_management_account_request(),
          list()
        ) ::
          {:ok, update_program_management_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_program_management_account_errors()}
  def update_program_management_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProgramManagementAccount", input, options)
  end

  @doc """
  Updates the properties of a partner relationship.
  """
  @spec update_relationship(map(), update_relationship_request(), list()) ::
          {:ok, update_relationship_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_relationship_errors()}
  def update_relationship(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRelationship", input, options)
  end
end
